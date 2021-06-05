import * as ApiProductUtil from '../util/product_api_util';
export const RECEIVE_PRODUCTS = "RECEIVE_PRODUCTS";
export const RECEIVE_PRODUCT = "RECEIVE_PRODUCT";


export const receiveProducts = products => ({
    type: RECEIVE_PRODUCTS,
    products
});

export const receiveProduct = product => ({
    type: RECEIVE_PRODUCT,
    product
});

export const fetchProduct = productId => dispatch => (
    ApiProductUtil.fetchProduct(productId)
        .then(product => (dispatch(receiveProduct(product))))
);

export const fetchProducts = () => dispatch => (
    ApiProductUtil.fetchProducts()
        .then(products => (dispatch(receiveProducts(products))))
);