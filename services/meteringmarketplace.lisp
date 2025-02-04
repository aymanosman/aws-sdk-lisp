;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/meteringmarketplace
  (:nicknames #:aws/meteringmarketplace)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api))
(common-lisp:in-package #:aws-sdk/services/meteringmarketplace)
(common-lisp:progn
 (common-lisp:defstruct (batch-meter-usage-request (:copier common-lisp:nil))
   (usage-records (common-lisp:error ":usage-records is required") :type
    (common-lisp:or usage-record-list common-lisp:null))
   (product-code (common-lisp:error ":product-code is required") :type
    (common-lisp:or product-code common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'batch-meter-usage-request
                    'make-batch-meter-usage-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          batch-meter-usage-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "UsageRecords"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'usage-records)))
    (aws-sdk/generator/shape::to-query-params "ProductCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'product-code))))))
(common-lisp:progn
 (common-lisp:defstruct (batch-meter-usage-result (:copier common-lisp:nil))
   (results common-lisp:nil :type
    (common-lisp:or usage-record-result-list common-lisp:null))
   (unprocessed-records common-lisp:nil :type
    (common-lisp:or usage-record-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'batch-meter-usage-result 'make-batch-meter-usage-result))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          batch-meter-usage-result))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Results"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'results)))
    (aws-sdk/generator/shape::to-query-params "UnprocessedRecords"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'unprocessed-records))))))
(common-lisp:deftype boolean () 'common-lisp:boolean)
(common-lisp:deftype customer-identifier () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (duplicate-request-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'duplicate-request-exception
                    'make-duplicate-request-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          duplicate-request-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (expired-token-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'expired-token-exception 'make-expired-token-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          expired-token-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct
     (internal-service-error-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
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
 (common-lisp:defstruct
     (invalid-customer-identifier-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-customer-identifier-exception
                    'make-invalid-customer-identifier-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-customer-identifier-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct
     (invalid-endpoint-region-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-endpoint-region-exception
                    'make-invalid-endpoint-region-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-endpoint-region-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct
     (invalid-product-code-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-product-code-exception
                    'make-invalid-product-code-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-product-code-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (invalid-token-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-token-exception 'make-invalid-token-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-token-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct
     (invalid-usage-dimension-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-usage-dimension-exception
                    'make-invalid-usage-dimension-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-usage-dimension-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (meter-usage-request (:copier common-lisp:nil))
   (product-code (common-lisp:error ":product-code is required") :type
    (common-lisp:or product-code common-lisp:null))
   (timestamp (common-lisp:error ":timestamp is required") :type
    (common-lisp:or timestamp common-lisp:null))
   (usage-dimension (common-lisp:error ":usage-dimension is required") :type
    (common-lisp:or usage-dimension common-lisp:null))
   (usage-quantity (common-lisp:error ":usage-quantity is required") :type
    (common-lisp:or usage-quantity common-lisp:null))
   (dry-run (common-lisp:error ":dry-run is required") :type
    (common-lisp:or boolean common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'meter-usage-request 'make-meter-usage-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape meter-usage-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ProductCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'product-code)))
    (aws-sdk/generator/shape::to-query-params "Timestamp"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'timestamp)))
    (aws-sdk/generator/shape::to-query-params "UsageDimension"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'usage-dimension)))
    (aws-sdk/generator/shape::to-query-params "UsageQuantity"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'usage-quantity)))
    (aws-sdk/generator/shape::to-query-params "DryRun"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'dry-run))))))
(common-lisp:progn
 (common-lisp:defstruct (meter-usage-result (:copier common-lisp:nil))
   (metering-record-id common-lisp:nil :type
    (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'meter-usage-result 'make-meter-usage-result))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape meter-usage-result))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "MeteringRecordId"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'metering-record-id))))))
(common-lisp:deftype non-empty-string () 'common-lisp:string)
(common-lisp:deftype product-code () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (resolve-customer-request (:copier common-lisp:nil))
   (registration-token (common-lisp:error ":registration-token is required")
    :type (common-lisp:or non-empty-string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'resolve-customer-request 'make-resolve-customer-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          resolve-customer-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "RegistrationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'registration-token))))))
(common-lisp:progn
 (common-lisp:defstruct (resolve-customer-result (:copier common-lisp:nil))
   (customer-identifier common-lisp:nil :type
    (common-lisp:or customer-identifier common-lisp:null))
   (product-code common-lisp:nil :type
    (common-lisp:or product-code common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'resolve-customer-result 'make-resolve-customer-result))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          resolve-customer-result))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "CustomerIdentifier"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'customer-identifier)))
    (aws-sdk/generator/shape::to-query-params "ProductCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'product-code))))))
(common-lisp:deftype string () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (throttling-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
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
 (common-lisp:defstruct
     (timestamp-out-of-bounds-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or |errorMessage| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'timestamp-out-of-bounds-exception
                    'make-timestamp-out-of-bounds-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          timestamp-out-of-bounds-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype usage-dimension () 'common-lisp:string)
(common-lisp:deftype usage-quantity () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct (usage-record (:copier common-lisp:nil))
   (timestamp (common-lisp:error ":timestamp is required") :type
    (common-lisp:or timestamp common-lisp:null))
   (customer-identifier (common-lisp:error ":customer-identifier is required")
    :type (common-lisp:or customer-identifier common-lisp:null))
   (dimension (common-lisp:error ":dimension is required") :type
    (common-lisp:or usage-dimension common-lisp:null))
   (quantity (common-lisp:error ":quantity is required") :type
    (common-lisp:or usage-quantity common-lisp:null)))
 (common-lisp:export (common-lisp:list 'usage-record 'make-usage-record))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape usage-record))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Timestamp"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'timestamp)))
    (aws-sdk/generator/shape::to-query-params "CustomerIdentifier"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'customer-identifier)))
    (aws-sdk/generator/shape::to-query-params "Dimension"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'dimension)))
    (aws-sdk/generator/shape::to-query-params "Quantity"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'quantity))))))
(common-lisp:progn
 (common-lisp:deftype usage-record-list ()
   '(trivial-types:proper-list usage-record))
 (common-lisp:defun |make-usage-record-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list usage-record))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:defstruct (usage-record-result (:copier common-lisp:nil))
   (usage-record common-lisp:nil :type
    (common-lisp:or usage-record common-lisp:null))
   (metering-record-id common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (status common-lisp:nil :type
    (common-lisp:or usage-record-result-status common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'usage-record-result 'make-usage-record-result))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape usage-record-result))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "UsageRecord"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'usage-record)))
    (aws-sdk/generator/shape::to-query-params "MeteringRecordId"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'metering-record-id)))
    (aws-sdk/generator/shape::to-query-params "Status"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'status))))))
(common-lisp:progn
 (common-lisp:deftype usage-record-result-list ()
   '(trivial-types:proper-list usage-record-result))
 (common-lisp:defun |make-usage-record-result-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list usage-record-result))
   aws-sdk/generator/shape::members))
(common-lisp:deftype usage-record-result-status () 'common-lisp:string)
(common-lisp:deftype |errorMessage| () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defun batch-meter-usage
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key usage-records product-code)
   (common-lisp:declare (common-lisp:ignorable usage-records product-code))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-batch-meter-usage-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "meteringmarketplace" :method :post
                               :params
                               (common-lisp:append
                                `(("Action" ,@"BatchMeterUsage")
                                  ("Version" ,@"2016-01-14"))
                                (common-lisp:let ((aws-sdk/api::*protocol*
                                                   :query))
                                  (aws-sdk/generator/shape:shape-to-params
                                   aws-sdk/generator/operation::input))))
      "BatchMeterUsageResult" common-lisp:nil)))
 (common-lisp:export 'batch-meter-usage))
(common-lisp:progn
 (common-lisp:defun meter-usage
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key product-code timestamp usage-dimension
                     usage-quantity dry-run)
   (common-lisp:declare
    (common-lisp:ignorable product-code timestamp usage-dimension
     usage-quantity dry-run))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-meter-usage-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "meteringmarketplace" :method :post
                               :params
                               (common-lisp:append
                                `(("Action" ,@"MeterUsage")
                                  ("Version" ,@"2016-01-14"))
                                (common-lisp:let ((aws-sdk/api::*protocol*
                                                   :query))
                                  (aws-sdk/generator/shape:shape-to-params
                                   aws-sdk/generator/operation::input))))
      "MeterUsageResult" common-lisp:nil)))
 (common-lisp:export 'meter-usage))
(common-lisp:progn
 (common-lisp:defun resolve-customer
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key registration-token)
   (common-lisp:declare (common-lisp:ignorable registration-token))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-resolve-customer-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "meteringmarketplace" :method :post
                               :params
                               (common-lisp:append
                                `(("Action" ,@"ResolveCustomer")
                                  ("Version" ,@"2016-01-14"))
                                (common-lisp:let ((aws-sdk/api::*protocol*
                                                   :query))
                                  (aws-sdk/generator/shape:shape-to-params
                                   aws-sdk/generator/operation::input))))
      "ResolveCustomerResult" common-lisp:nil)))
 (common-lisp:export 'resolve-customer))
