#include "/home/thiago/tensorflow_c/tensorflow/include/tensorflow/c/c_api.h"

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include <iostream>
#include <vector>
#include <numeric>
#include <png.h>
#include <math.h>

// #include "tensorflow/c/c_api.h"


/* A coloured pixel. */
typedef struct
{
    uint8_t red;
    uint8_t green;
    uint8_t blue;
}
pixel_t;

/* A picture. */
typedef struct
{
    pixel_t *pixels;
    size_t width;
    size_t height;
}
bitmap_t;

void NoOpDeallocator(void* data, size_t a, void* b) {}

static void DeallocateTensor(void* data, size_t a, void* b) {
  free(data);
  printf("Deallocate tensor");
}

// int createTensor(std::vector<unsigned char*> &, std::vector<std::int64_t> &, TF_Tensor *);

float * prepare_input(unsigned char * raw, int &width, int &height);
unsigned char* read_png(const char*, int*, int*, int*);
int save_png(unsigned char *, int, int);
static pixel_t * pixel_at (bitmap_t*, int, int);
static int save_png_to_file (bitmap_t *, const char *);

extern unsigned char *Load_Image(char *imagefile, bool Upright,int *width,int *height);

int main()
{
    //********* Read model
    TF_Graph* Graph = TF_NewGraph();
    TF_Status* Status = TF_NewStatus();
    TF_SessionOptions* SessionOpts = TF_NewSessionOptions();
    TF_Buffer* RunOpts = NULL;

    const char* saved_model_dir = "/home/thiago/tensorflow_c/models/14-SGD_lr0.01_mom0.0_bs32_best/";
    const char* tags = "serve"; // default model serving tag; can change in future
    int ntags = 1;

    TF_Session* Session = TF_LoadSessionFromSavedModel(SessionOpts, RunOpts, saved_model_dir, &tags, ntags, Graph, NULL, Status);
    if(TF_GetCode(Status) == TF_OK)
    {
        printf("TF_LoadSessionFromSavedModel OK\n");
    }
    else
    {
        printf("%s",TF_Message(Status));
    }

    //****** Get input tensor
    //TODO : need to use saved_model_cli to read saved_model arch
    int NumInputs = 1;
    TF_Output* Input = (TF_Output*)malloc(sizeof(TF_Output) * NumInputs);

    TF_Output t0 = {TF_GraphOperationByName(Graph, "serving_default_input"), 0};
    
    if(t0.oper == NULL)
        printf("ERROR: Failed TF_GraphOperationByName serving_default_input\n");
    else
	    printf("TF_GraphOperationByName serving_default_input is OK\n");
    
    Input[0] = t0;
    
    //********* Get Output tensor
    int NumOutputs = 1;
    TF_Output* Output = (TF_Output*)malloc(sizeof(TF_Output) * NumOutputs);

    TF_Output t2 = {TF_GraphOperationByName(Graph, "StatefulPartitionedCall"), 0};
    if(t2.oper == NULL)
        printf("ERROR: Failed TF_GraphOperationByName StatefulPartitionedCall\n");
    else	
	printf("TF_GraphOperationByName StatefulPartitionedCall is OK\n");
    
    Output[0] = t2;

    const char *image_path = "/home/thiago/tensorflow_c/examples/left_s0003_10.png";
    // const char *image_path = "/home/thiago/tensorflow_c/examples/right_11_36687269.png";
    //const char *image_path = "/home/thiago/tensorflow_c/examples/arch_s1013_02.png";

    
    int width=0, height=0, channels=0;
    
    // unsigned char *img = (unsigned char *) calloc(width * height * 3, sizeof(float));

    unsigned char *img2;
    // img = Load_Image(image_path, true, &width, &height);
    
    img2 = read_png(image_path, &width, &height, &channels);
    float *img =  prepare_input(img2, width, height);

    std::cout << "img size = " << sizeof(img)/sizeof(float) << std::endl;

    if (img == NULL){
        printf("Error reading image.");
        return -1;
    }
    else{
        printf("Done reading image ! OK\n");
        printf("sizeof(img) = %d\n", sizeof(img));
    }

    // int data[width][height][3];
    // //  = (int*) malloc(sizeof(int)* width * height * 3);
    // for (int k=0; k<3; k++){
    //     for (int i=0; i<width; i++){
    //         for(int j=0; j<height; j++){
                
    //                 data[i][j][k] = img[i*width + j + k*(width*height)];
    //                 // printf("%d ", data[i][j][k]);       
    //         }
    //         // printf("\n");
    //     }
    // }


    // //********* Allocate data for inputs & outputs
    TF_Tensor** InputValues  = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
    TF_Tensor** OutputValues = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumOutputs);


    
    // int ndata = sizeof(float)*1*width*height*3 ;// This is tricky, it number of bytes not number of element
    
    // std::vector<std::int64_t> dims = {1, width, height, 3};
    const int64_t dims[4] = {1, width, height, 1};
    std::vector<unsigned char*> data;
    data.reserve(width*height*3); // preallocate

    
    int r = save_png(img2, width, height);

    // for (int k=0; k<3; k++){
    //     for (int i=0; i<width; i++){
    //         for(int j=0; j<height; j++){
                
    //             data.push_back(&img[i*width + j + k*(width*height)]);
    //             // printf("%d ", data[i][j][k]);       
    //         }
    //         // printf("\n");
    //     }
    // }
    

    // int ndims = 4;
    // int64_t dims[] = {1, width, height, 3};
    // unsigned char *new_img = (unsigned char*) malloc(width*height*3);
    // *new_img[0] = *img;
    // *new_img[width*height] = *img;
    // *new_img[width*height*2] = *img;

    // ndata = width*height*3;

    // TF_Tensor* int_tensor = TF_NewTensor(TF_FLOAT, dims, ndims, data, ndata, &NoOpDeallocator, 0);
    
    // const auto data_size = std::accumulate(dims.begin(), dims.end(), sizeof(unsigned char), std::multiplies<std::int64_t>{});
    // std::cout << "data_size = " << data_size << std::endl;
    // std::cout << "ndims = " << static_cast<int>(dims.size()) << std::endl;
    
    std::cout << "data.data() size = = " << data.size() << std::endl;

/****************************************************/

    // float *img = prepare_input(raw, width,height);
    // //printf("nw=%d nh=%d",width,height);

    // const int64_t dims[4] = {1, height, width, 1};
    
    // std::vector<TF_Tensor*> input_values;
    // TF_Tensor *input_tensor1 = TF_NewTensor(TF_FLOAT, dims, 4, img, sizeof(float)*1*width*height, fake_dealloc, nullptr);
    // assert(input_tensor1);
    // input_values.push_back(input_tensor1);

    // // run
    // TF_Status *s= TF_NewStatus();
    // std::vector<TF_Tensor*> output_values(output_names.size());
    // TF_SessionRun(session, nullptr,  input_names.data(), input_values.data(), input_names.size(),
    //         output_names.data(), output_values.data(), output_names.size(), nullptr, 0, nullptr,s);

    // // TODO: error handling (in all session_runs)
    // assert(TF_GetCode(s) == TF_OK);

/***************************************/


    // TF_Tensor* r_tensor = TF_NewTensor(TF_FLOAT, dims.data(), static_cast<int>(dims.size()), data.data(), data_size, &NoOpDeallocator, 0);
    // TF_Tensor* r_tensor = TF_NewTensor(TF_FLOAT, dims, 4, data.data(), 512*512*3*sizeof(float), &NoOpDeallocator, 0);                        
    TF_Tensor* r_tensor = TF_NewTensor(TF_FLOAT, dims, 4, img, 512*512*sizeof(float), &NoOpDeallocator, 0);                        


    if (r_tensor == nullptr) {
        std::cout << "Wrong create tensor" << std::endl;
        return 1;
    }

    if (TF_TensorType(r_tensor) != TF_FLOAT) {
        std::cout << "Wrong tensor type" << std::endl;
        return 2;
    }

    // if (TF_NumDims(r_tensor) != static_cast<int>(dims.size())) {
    if (TF_NumDims(r_tensor) != static_cast<int>(sizeof(dims)/sizeof(int64_t))) {
        std::cout << "Wrong number of dimensions" << std::endl;
        return 3;
    }

    for (std::size_t i = 0; i < /*dims.size()*/static_cast<int>(sizeof(dims)/sizeof(int64_t)); ++i) {
        if (TF_Dim(r_tensor, static_cast<int>(i)) != dims[i]) {
        std::cout << "Wrong dimension size for dim: " << i << std::endl;
        return 4;
        }
    }

    // if (TF_TensorByteSize(r_tensor) != data_size) {
        if (TF_TensorByteSize(r_tensor) != 512*512*1*sizeof(float)) {
        std::cout << "Wrong tensor byte size" << std::endl;
        return 5;
    }

    auto tensor_data = static_cast<float*>(TF_TensorData(r_tensor));

    if (tensor_data == nullptr) {
        std::cout << "Wrong data tensor" << std::endl;
        return 6;
    }

    std::cout << "Success creating tensor" << std::endl;


    // TF_Tensor *tensor;
    // int r_tensor = createTensor(data, dims, tensor);

    // if (r_tensor != 0){
    //     std::cout << "Failed creating tensor" << std::endl;
    // }


    if (r_tensor != NULL)
    {
        printf("TF_NewTensor is OK\n");
    }
    else{
	    printf("ERROR: Failed TF_NewTensor\n");
    }
    
    printf("Before InputValues[0]\n");
    InputValues[0] = r_tensor;
    printf("Before TF_SessionRun\n");
    
    // //Run the Session
    TF_SessionRun(Session, NULL, Input, InputValues, NumInputs, Output, OutputValues, NumOutputs, NULL, 0, NULL, Status);

    if(TF_GetCode(Status) == TF_OK)
    {
        printf("Session is OK\n");
    }
    else
    {
        printf("%s",TF_Message(Status));
    }

    // //Free memory
    TF_DeleteGraph(Graph);
    TF_DeleteSession(Session, Status);
    TF_DeleteSessionOptions(SessionOpts);
    TF_DeleteStatus(Status);


    void* buff = TF_TensorData(OutputValues[0]);
    float* offsets = (float*)buff;
    printf("Result Tensor :\n");
    for(int i=0;i<5;i++)
    {
        printf("%f\n",offsets[i]);
    }

    // Output[0] = out;
}


// png reading through libpng
unsigned char * read_png(const char* path, int *w, int *h, int *c)
{
  unsigned char header[8];    // 8 is the maximum size that can be checked
  int width, height, i, j, y;
  png_byte color_type;
  png_byte bit_depth;
  
  png_structp png_ptr = NULL;
  png_infop info_ptr = NULL;
  png_bytep * row_pointers;
  unsigned char *img;
 
  /* open file and test for it being a png */
  FILE *fp = fopen(path, "rb");
  if (!fp) return NULL;
  fread(header, 1, 8, fp);
  if (png_sig_cmp(header, 0, 8)) return NULL;
  
  /* initialize stuff */
  png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
  
  if (!png_ptr) return NULL;
  
  info_ptr = png_create_info_struct(png_ptr);

  color_type = png_get_color_type(png_ptr, info_ptr);

  printf("COLOR_TYPE = %d\n", color_type);

  if (!info_ptr) { 
    png_destroy_read_struct(&png_ptr, NULL, NULL);
    fclose(fp);
    return NULL;
  }
  
  color_type = png_get_color_type(png_ptr, info_ptr);

  printf("COLOR_TYPE = %d\n", color_type);

  if (setjmp(png_jmpbuf(png_ptr))) {
    png_destroy_read_struct(&png_ptr, &info_ptr, NULL);
    fclose(fp);
    return NULL;
  }
  png_init_io(png_ptr, fp);
  png_set_sig_bytes(png_ptr, 8);
	
  png_read_info(png_ptr, info_ptr);
	
  width = png_get_image_width(png_ptr, info_ptr);
  height = png_get_image_height(png_ptr, info_ptr);
  int channels = png_get_channels(png_ptr, info_ptr);
  color_type = png_get_color_type(png_ptr, info_ptr);

  printf("COLOR_TYPE = %d\n", color_type);
  
  // make it 8-bit non-palette
  if (color_type & PNG_COLOR_MASK_ALPHA) png_set_strip_alpha(png_ptr);
  if (color_type == PNG_COLOR_TYPE_PALETTE) png_set_expand(png_ptr);

  color_type = png_get_color_type(png_ptr, info_ptr);
  bit_depth = png_get_bit_depth(png_ptr, info_ptr);

  if (bit_depth != 8) { 
    fprintf(stderr,"bitdepth=%d\n",bit_depth); 
    png_destroy_read_struct(&png_ptr, &info_ptr, NULL);
    return NULL; 
  }

  //number_of_passes = png_set_interlace_handling(png_ptr);
  png_read_update_info(png_ptr, info_ptr);  

  /* read file */
  if (setjmp(png_jmpbuf(png_ptr))) {
    fclose(fp);
    png_destroy_read_struct(&png_ptr, &info_ptr, NULL);
    return NULL;
  }
  
  row_pointers = (png_bytep*) malloc(sizeof(png_bytep) * height);
  for (y=0; y<height; y++)
    row_pointers[y] = (png_byte*) malloc(png_get_rowbytes(png_ptr,info_ptr));
  
  png_read_image(png_ptr, row_pointers);  
  fclose(fp);
  
  *w = width;
  *h = height;
  *c = channels;
  img = (unsigned char *) malloc(width * height);

  //fprintf(stderr,"here: w=%d h=%d\n",width,height);

  if ( (color_type & PNG_COLOR_TYPE_RGB) == PNG_COLOR_TYPE_RGB ) {
      printf("COLOR RGB\n");
    
    for (int k=0;k<channels;k++){
        for(j=0;j<height;j++){
            for(i=0;i<width;i++){
                // img[i+j*width] = row_pointers[j][3*i];
                // img[i+j*width + k*(width*height)] = row_pointers[j][3*i + k];
                printf("img[%d+%d*%d + %d(%d*%d)] = row_pointers[%d][3*%d + %d] -> img[%d] = row_pointers[%d][%d]\n",i, j, width, k, width, height, j, i, k, i+j*width + k*(width*height), j, 3*i + k);
            }
        }
    }

  } else if ( color_type == PNG_COLOR_TYPE_GRAY ) {
    printf("COLOR GRAY\n");
    int count = 0;
    for (int k=0;k<channels;k++){
        for(j=0;j<height;j++){
            for(i=0;i<width;i++){
                count++;
                img[i+j*width] = row_pointers[j][i];
                // img[i+j*width] = row_pointers[j][3*i];
                
                // img[i+j*width + k*(width*height)] = row_pointers[j][3*i + k];

                // printf("img[i+j*width + k*(width*height)] = %d", img[i+j*width + k*(width*height)]);
                // printf("img[%d+%d*%d + %d(%d*%d)] = %d\n",i, j, width, k, width, height, img[i+j*width + k*(width*height)]);
                // printf("img[%d+%d*%d + %d(%d*%d)] = row_pointers[%d][3*%d + %d] -> img[%d] = row_pointers[%d][%d]\n",i, j, width, k, width, height, j, i, k, i+j*width + k*(width*height), j, 3*i + k);
            }
        }
    }
    printf("COUNT = %d\n", count);
    // for(j=0;j<height;j++)
    //   for(i=0;i<width;i++)
	//     img[i+j*width] = row_pointers[j][i];

  } else {
      printf("ERRORRRRRRRRRRRRRRr\n");
    //fprintf(stderr,"here: color_type=%d\n",color_type);
    free(img);
    for(j=0;j<height;j++)
      free(row_pointers[j]);
    free(row_pointers);
    *w = *h = 0;
    png_destroy_read_struct(&png_ptr, &info_ptr, NULL);
    return NULL;
  }

  for(j=0;j<height;j++)
    free(row_pointers[j]);
  free(row_pointers);

  png_destroy_read_struct(&png_ptr, &info_ptr, NULL);
  return img;
}


// int createTensor(std::vector<unsigned char*> &data, std::vector<std::int64_t> &dims, TF_Tensor *tensor){

//     const auto data_size = std::accumulate(dims.begin(), dims.end(), sizeof(float), std::multiplies<std::int64_t>{});
//     std::cout << "Total img size = " << data_size << std::endl;
    
//     tensor = TF_NewTensor(TF_FLOAT, dims.data(), static_cast<int>(dims.size()), data, data_size, DeallocateTensor, nullptr);
  
//     if (tensor == nullptr) {
//         std::cout << "Wrong creat tensor" << std::endl;
//         return 1;
//     }

//     if (TF_TensorType(tensor) != TF_FLOAT) {
//         std::cout << "Wrong tensor type" << std::endl;
//         return 2;
//     }

//     if (TF_NumDims(tensor) != static_cast<int>(dims.size())) {
//         std::cout << "Wrong number of dimensions" << std::endl;
//         return 3;
//     }

//     for (std::size_t i = 0; i < dims.size(); ++i) {
//         if (TF_Dim(tensor, static_cast<int>(i)) != dims[i]) {
//         std::cout << "Wrong dimension size for dim: " << i << std::endl;
//         return 4;
//         }
//     }

//     if (TF_TensorByteSize(tensor) != data_size) {
//         std::cout << "Wrong tensor byte size" << std::endl;
//         return 5;
//     }

//     auto tensor_data = static_cast<float*>(TF_TensorData(tensor));

//     if (tensor_data == nullptr) {
//         std::cout << "Wrong data tensor" << std::endl;
//         return 6;
//     }

//     std::cout << "Success creat tensor" << std::endl;

//     return 0;
// }


int save_png(unsigned char *img, int width, int height){



    bitmap_t fruit;
    int x;
    int y;
    int status;

    status = 0;

    /* Create an image. */

    // char *image_path = "/home/thiago/tensorflow_c/examples/s0003_10.png";
    // int width=0, height=0;
    
    // unsigned char *img = (unsigned char *) calloc(width * height * 3, sizeof(float));

    // uint8_t *img;
    // img = (uint8_t*)Load_Image(image_path, true, &width, &height);

    if (img == NULL){
        printf("Error reading image.");
        return -1;
    }
    else{
        printf("Done reading image ! OK\n");
        printf("height = %d\n", height);
        printf("width  = %d\n", width);
        printf("sizeof(img) = %d\n", sizeof(img));

    }


    pixel_t *data = (pixel_t*) calloc (width * height, sizeof (pixel_t));
    printf("Done calloc data\n");

    //  = (int*) malloc(sizeof(int)* width * height * 3);
    // for (int k=0; k<3; k++){
        for (int i=0; i<width; i++){
            for(int j=0; j<height; j++){
                    // printf("%d, %d, %d\n", i, j, k);
                    // data[i][j][k] = img[i*width + j + k*(width*height)];
                    
                    data[i*width + j].red   = img[i*width + j];
                    data[i*width + j].green = img[i*width + j];
                    data[i*width + j].blue  = img[i*width + j];
                
                    // if (k == 0)
                    //     data[i*width + j].green = img[i*width + j + k*(width*height)];        
                    // else if (k ==1)
                    //     data[i*width + j].green = img[i*width + j + k*(width*height)];
                    // else if (k ==2)
                    //     data[i*width + j].blue  = img[i*width + j + k*(width*height)];

                    // printf("%d ", data[i][j][k]);       
            }
            // printf("\n");
        }
    // }
    printf("Done filling data\n");

    fruit.width = width;
    fruit.height = height;

    // fruit.pixels = calloc (fruit.width * fruit.height, sizeof (pixel_t));
    fruit.pixels = data;

    printf("Done passing data to pixels\n");

    if (! fruit.pixels) {
	return -1;
    }

    // for (y = 0; y < fruit.height; y++) {
    //     for (x = 0; x < fruit.width; x++) {
    //         pixel_t * pixel = pixel_at (& fruit, x, y);
    //         pixel->red = pix (x, fruit.width);
    //         pixel->green = pix (y, fruit.height);
    //     }
    // }

    /* Write the image to a file 'fruit.png'. */

    if (save_png_to_file (& fruit, "test2.png")) {
	fprintf (stderr, "Error writing file.\n");
	status = -1;
    }

    free (fruit.pixels);

    return 0;

}

static pixel_t * pixel_at (bitmap_t * bitmap, int x, int y)
{
    return bitmap->pixels + bitmap->width * y + x;
}
    
/* Write "bitmap" to a PNG file specified by "path"; returns 0 on
   success, non-zero on error. */

static int save_png_to_file (bitmap_t *bitmap, const char *path)
{
    FILE * fp;
    png_structp png_ptr = NULL;
    png_infop info_ptr = NULL;
    size_t x, y;
    png_byte ** row_pointers = NULL;
    /* "status" contains the return value of this function. At first
       it is set to a value which means 'failure'. When the routine
       has finished its work, it is set to a value which means
       'success'. */
    int status = -1;
    /* The following number is set by trial and error only. I cannot
       see where it it is documented in the libpng manual.
    */
    int pixel_size = 3;
    int depth = 8;
    
    fp = fopen (path, "wb");
    if (! fp) {
        goto fopen_failed;
    }

    png_ptr = png_create_write_struct (PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    if (png_ptr == NULL) {
        goto png_create_write_struct_failed;
    }
    
    info_ptr = png_create_info_struct (png_ptr);
    if (info_ptr == NULL) {
        goto png_create_info_struct_failed;
    }
    
    /* Set up error handling. */

    if (setjmp (png_jmpbuf (png_ptr))) {
        goto png_failure;
    }
    
    /* Set image attributes. */

    png_set_IHDR (png_ptr,
                  info_ptr,
                  bitmap->width,
                  bitmap->height,
                  depth,
                  PNG_COLOR_TYPE_RGB,
                  PNG_INTERLACE_NONE,
                  PNG_COMPRESSION_TYPE_DEFAULT,
                  PNG_FILTER_TYPE_DEFAULT);
    
    /* Initialize rows of PNG. */

    row_pointers = (png_byte**) png_malloc (png_ptr, bitmap->height * sizeof (png_byte *));
    for (y = 0; y < bitmap->height; y++) {
        png_byte *row = (png_byte*) png_malloc (png_ptr, sizeof (uint8_t) * bitmap->width * pixel_size);
        row_pointers[y] = row;
        for (x = 0; x < bitmap->width; x++) {
            pixel_t * pixel = pixel_at (bitmap, x, y);
            *row++ = pixel->red;
            *row++ = pixel->green;
            *row++ = pixel->blue;
        }
    }
    
    /* Write the image data to "fp". */

    png_init_io (png_ptr, fp);
    png_set_rows (png_ptr, info_ptr, row_pointers);
    png_write_png (png_ptr, info_ptr, PNG_TRANSFORM_IDENTITY, NULL);

    /* The routine has successfully written the file, so we set
       "status" to a value which indicates success. */

    status = 0;
    
    for (y = 0; y < bitmap->height; y++) {
        png_free (png_ptr, row_pointers[y]);
    }
    png_free (png_ptr, row_pointers);
    
 png_failure:
 png_create_info_struct_failed:
    png_destroy_write_struct (&png_ptr, &info_ptr);
 png_create_write_struct_failed:
    fclose (fp);
 fopen_failed:
    return status;
}

//prepare the input tensor, converting the image buffer from unsigned char to float and making the dimension multipy of 64
float * prepare_input(unsigned char * raw, int &width, int &height)
{
   int nw=ceil(width/64.0)*64;
   int nh=ceil(height/64.0)*64;

   float *img = (float *) malloc(1 * nw * nh * sizeof(float));
   for(int i=0;i<nw*nh;i++)
      img[i]=255.0;
   for(int i=0;i<height;i++)
      for(int j=0;j<width;j++)      
         img[i*nw+j]=raw[i*width+j];
 
   width=nw;
   height=nh;
   return img;
   
}