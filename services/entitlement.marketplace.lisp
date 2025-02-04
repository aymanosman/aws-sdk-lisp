;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/entitlement.marketplace
  (:nicknames #:aws/entitlement.marketplace)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api))
(common-lisp:in-package #:aws-sdk/services/entitlement.marketplace)
(common-lisp:deftype boolean () 'common-lisp:boolean)
(common-lisp:deftype double () 'common-lisp:double-float)
(common-lisp:progn
 (common-lisp:defstruct (entitlement (:copier common-lisp:nil))
   (product-code common-lisp:nil :type
    (common-lisp:or product-code common-lisp:null))
   (dimension common-lisp:nil :type
    (common-lisp:or non-empty-string common-lisp:null))
   (customer-identifier common-lisp:nil :type
    (common-lisp:or non-empty-string common-lisp:null))
   (value common-lisp:nil :type
    (common-lisp:or entitlement-value common-lisp:null))
   (expiration-date common-lisp:nil :type
    (common-lisp:or timestamp common-lisp:null)))
 (common-lisp:export (common-lisp:list 'entitlement 'make-entitlement))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape entitlement))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ProductCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'product-code)))
    (aws-sdk/generator/shape::to-query-params "Dimension"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'dimension)))
    (aws-sdk/generator/shape::to-query-params "CustomerIdentifier"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'customer-identifier)))
    (aws-sdk/generator/shape::to-query-params "Value"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'value)))
    (aws-sdk/generator/shape::to-query-params "ExpirationDate"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'expiration-date))))))
(common-lisp:progn
 (common-lisp:deftype entitlement-list ()
   '(trivial-types:proper-list entitlement))
 (common-lisp:defun |make-entitlement-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list entitlement))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:defstruct (entitlement-value (:copier common-lisp:nil))
   (integer-value common-lisp:nil :type
    (common-lisp:or integer common-lisp:null))
   (double-value common-lisp:nil :type
    (common-lisp:or double common-lisp:null))
   (boolean-value common-lisp:nil :type
    (common-lisp:or boolean common-lisp:null))
   (string-value common-lisp:nil :type
    (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'entitlement-value 'make-entitlement-value))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape entitlement-value))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "IntegerValue"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'integer-value)))
    (aws-sdk/generator/shape::to-query-params "DoubleValue"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'double-value)))
    (aws-sdk/generator/shape::to-query-params "BooleanValue"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'boolean-value)))
    (aws-sdk/generator/shape::to-query-params "StringValue"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'string-value))))))
(common-lisp:deftype error-message () 'common-lisp:string)
(common-lisp:deftype filter-value () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype filter-value-list ()
   '(trivial-types:proper-list filter-value))
 (common-lisp:defun |make-filter-value-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list filter-value))
   aws-sdk/generator/shape::members))
(common-lisp:deftype get-entitlement-filter-name () 'common-lisp:string)
(common-lisp:defstruct
    (get-entitlement-filters
     (:constructor |make-get-entitlement-filters|
      (aws-sdk/generator/shape::key aws-sdk/generator/shape::value)))
  aws-sdk/generator/shape::key
  aws-sdk/generator/shape::value)
(common-lisp:progn
 (common-lisp:defstruct (get-entitlements-request (:copier common-lisp:nil))
   (product-code (common-lisp:error ":product-code is required") :type
    (common-lisp:or product-code common-lisp:null))
   (filter common-lisp:nil :type
    (common-lisp:or get-entitlement-filters common-lisp:null))
   (next-token common-lisp:nil :type
    (common-lisp:or non-empty-string common-lisp:null))
   (max-results common-lisp:nil :type
    (common-lisp:or integer common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-entitlements-request 'make-get-entitlements-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          get-entitlements-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ProductCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'product-code)))
    (aws-sdk/generator/shape::to-query-params "Filter"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'filter)))
    (aws-sdk/generator/shape::to-query-params "NextToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'next-token)))
    (aws-sdk/generator/shape::to-query-params "MaxResults"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'max-results))))))
(common-lisp:progn
 (common-lisp:defstruct (get-entitlements-result (:copier common-lisp:nil))
   (entitlements common-lisp:nil :type
    (common-lisp:or entitlement-list common-lisp:null))
   (next-token common-lisp:nil :type
    (common-lisp:or non-empty-string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-entitlements-result 'make-get-entitlements-result))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          get-entitlements-result))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Entitlements"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'entitlements)))
    (aws-sdk/generator/shape::to-query-params "NextToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'next-token))))))
(common-lisp:deftype integer () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct
     (internal-service-error-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'internal-service-error-exception
                    'make-internal-service-error-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          internal-service-error-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (invalid-parameter-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-parameter-exception
                    'make-invalid-parameter-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-parameter-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype non-empty-string () 'common-lisp:string)
(common-lisp:deftype product-code () 'common-lisp:string)
(common-lisp:deftype string () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (throttling-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'throttling-exception 'make-throttling-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape throttling-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype timestamp () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defun get-entitlements
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key product-code filter next-token
                     max-results)
   (common-lisp:declare
    (common-lisp:ignorable product-code filter next-token max-results))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-get-entitlements-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "entitlement.marketplace" :method :post
                               :params
                               (common-lisp:append
                                `(("Action" ,@"GetEntitlements")
                                  ("Version" ,@"2017-01-11"))
                                (common-lisp:let ((aws-sdk/api::*protocol*
                                                   :query))
                                  (aws-sdk/generator/shape:shape-to-params
                                   aws-sdk/generator/operation::input))))
      "GetEntitlementsResult" common-lisp:nil)))
 (common-lisp:export 'get-entitlements))
