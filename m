Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AD917DF01
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGjQyveZG/I9gVcokzE5Pyn0ys3nIZDB6Y4ot+DRYqU=; b=AjkXcBBV1m0fc0
	VWCBD4dRAXL1l43DtyeTvIuL2tVnZ2hXWph2q+c0l/p741I4fCndvFgoO3T8JIy5UA0aeqMvQdA81
	1cFmEe9gQpLaDD/qQ61j2sFx+vq+4cbwhW9GXChFKo6J1VAAYrpK9qYCOp7lqi8CIUr1YjHiSqtzE
	HZQjrMGns/l14o0rD0UnNYMHK0OJYrP95keHnSrYzaJcMk6HK0IMZev5UHcL74PVDJdeuLfJSvJKO
	ThVFhCt0KP1rdepn1nYyjS9kvWLLtHalObyTwr9yuv4Rkhd1YkFAu53Vd5vDHHMynSNuMg4LUSvkA
	jPwGuhfn+h6qlxQWI8GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGvQ-0005Bv-HI; Mon, 09 Mar 2020 11:50:24 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGvD-0005A4-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:50:14 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id CB8181F42FED4E1758FF;
 Mon,  9 Mar 2020 11:50:08 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 9 Mar 2020 11:50:08 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 9 Mar 2020
 11:50:08 +0000
Date: Mon, 9 Mar 2020 11:50:06 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v4 06/13] firmware: arm_scmi: Add notification
 callbacks-registration
Message-ID: <20200309115006.00004e7a@Huawei.com>
In-Reply-To: <20200304162558.48836-7-cristian.marussi@arm.com>
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-7-cristian.marussi@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045011_406655_D33051E3 
X-CRM114-Status: GOOD (  31.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: james.quinlan@broadcom.com, lukasz.luba@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 16:25:51 +0000
Cristian Marussi <cristian.marussi@arm.com> wrote:

> Add core SCMI Notifications callbacks-registration support: allow users
> to register their own callbacks against the desired events.
> Whenever a registration request is issued against a still non existent
> event, mark such request as pending for later processing, in order to
> account for possible late initializations of SCMI Protocols associated
> to loadable drivers.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
Another one that you should run the kernel-doc scripts over. I haven't checked
but fairly sure they won't like some of this...

Otherwise a few trivial things inline.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks,

Jonathan

> ---
> V3 --> V4
> - split registered_handlers hashtable on a per-protocol basis to reduce
>   unneeded contention
> - introduced pending_handlers table and related late_init worker to finalize
>   handlers registration upon effective protocols' registrations
> - introduced further safe accessors macros for registered_protocols
>   and registered_events arrays
> V2 --> V3
> - refactored get/put event_handler
> - removed generic non-handle-based API
> V1 --> V2
> - splitted out of V1 patch 04
> - moved from IDR maps to real HashTables to store event_handlers
> - added proper enable_events refcounting via __scmi_enable_evt()
>   [was broken in V1 when using ALL_SRCIDs notification chains]
> - reviewed hashtable cleanup strategy in scmi_notifications_exit()
> - added scmi_register_event_notifier()/scmi_unregister_event_notifier()
>   to include/linux/scmi_protocol.h as a candidate user API
>   [no EXPORTs still]
> - added notify_ops to handle during initialization as an additional
>   internal API for scmi_drivers
> ---
>  drivers/firmware/arm_scmi/notify.c | 700 +++++++++++++++++++++++++++++
>  drivers/firmware/arm_scmi/notify.h |  12 +
>  include/linux/scmi_protocol.h      |  50 +++
>  3 files changed, 762 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> index 31e49cb7d88e..d6c08cce3c63 100644
> --- a/drivers/firmware/arm_scmi/notify.c
> +++ b/drivers/firmware/arm_scmi/notify.c
> @@ -16,18 +16,50 @@
>   * this core its set of supported events using @scmi_register_protocol_events():
>   * all the needed descriptors are stored in the @registered_protocols and
>   * @registered_events arrays.
> + *
> + * Kernel users interested in some specific event can register their callbacks
> + * providing the usual notifier_block descriptor, since this core implements
> + * events' delivery using the standard Kernel notification chains machinery.
> + *
> + * Given the number of possible events defined by SCMI and the extensibility
> + * of the SCMI Protocol itself, the underlying notification chains are created
> + * and destroyed dynamically on demand depending on the number of users
> + * effectively registered for an event, so that no support structures or chains
> + * are allocated until at least one user has registered a notifier_block for
> + * such event. Similarly, events' generation itself is enabled at the platform
> + * level only after at least one user has registered, and it is shutdown after
> + * the last user for that event has gone.
> + *
> + * All users provided callbacks and allocated notification-chains are stored in
> + * the @registered_events_handlers hashtable. Callbacks' registration requests
> + * for still to be registered events are instead kept in the dedicated common
> + * hashtable @pending_events_handlers.
> + *
> + * An event is identified univocally by the tuple (proto_id, evt_id, src_id)
> + * and is served by its own dedicated notification chain; information contained
> + * in such tuples is used, in a few different ways, to generate the needed
> + * hash-keys.
> + *
> + * Here proto_id and evt_id are simply the protocol_id and message_id numbers
> + * as described in the SCMI Protocol specification, while src_id represents an
> + * optional, protocol dependent, source identifier (like domain_id, perf_id
> + * or sensor_id and so forth).
>   */
>  
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>  
>  #include <linux/atomic.h>
> +#include <linux/bitfield.h>
>  #include <linux/bug.h>
>  #include <linux/compiler.h>
>  #include <linux/device.h>
>  #include <linux/err.h>
> +#include <linux/hashtable.h>
>  #include <linux/kernel.h>
>  #include <linux/kfifo.h>
> +#include <linux/list.h>
>  #include <linux/mutex.h>
> +#include <linux/notifier.h>
>  #include <linux/refcount.h>
>  #include <linux/scmi_protocol.h>
>  #include <linux/slab.h>
> @@ -47,6 +79,71 @@
>  #define MAKE_ALL_SRCS_KEY(p, e)			\
>  	MAKE_HASH_KEY((p), (e), SCMI_ALL_SRC_IDS)
>  
> +/**
> + * Assumes that the stored obj includes its own hash-key in a field named 'key':
> + * with this simplification this macro can be equally used for all the objects'
> + * types hashed by this implementation.
> + *
> + * @__ht: The hashtable name
> + * @__obj: A pointer to the object type to be retrieved from the hashtable;
> + *	   it will be used as a cursor while scanning the hastable and it will
> + *	   be possibly left as NULL when @__k is not found
> + * @__k: The key to search for
> + */
> +#define KEY_FIND(__ht, __obj, __k)				\
> +({								\
> +	hash_for_each_possible((__ht), (__obj), hash, (__k))	\
> +		if (likely((__obj)->key == (__k)))		\
> +			break;					\
> +	__obj;							\
> +})
> +
> +#define PROTO_ID_MASK			GENMASK(31, 24)
> +#define EVT_ID_MASK			GENMASK(23, 16)
> +#define SRC_ID_MASK			GENMASK(15, 0)
> +#define KEY_XTRACT_PROTO_ID(key)	FIELD_GET(PROTO_ID_MASK, (key))
> +#define KEY_XTRACT_EVT_ID(key)		FIELD_GET(EVT_ID_MASK, (key))
> +#define KEY_XTRACT_SRC_ID(key)		FIELD_GET(SRC_ID_MASK, (key))
> +
> +/**
> + * A set of macros used to access safely @registered_protocols and
> + * @registered_events arrays; these are fixed in size and each entry is possibly
> + * populated at protocols' registration time and then only read but NEVER
> + * modified or removed.
> + */
> +#define SCMI_GET_PROTO(__ni, __pid)					\
> +({									\
> +	struct scmi_registered_protocol_events_desc *__pd = NULL;	\
> +									\
> +	if ((__ni) && (__pid) < SCMI_MAX_PROTO)				\
> +		__pd = READ_ONCE((__ni)->registered_protocols[(__pid)]);\
> +	__pd;								\
> +})
> +
> +#define SCMI_GET_REVT_FROM_PD(__pd, __eid)				\
> +({									\
> +	struct scmi_registered_event *__revt = NULL;			\
> +									\
> +	if ((__pd) && (__eid) < (__pd)->num_events)			\
> +		__revt = READ_ONCE((__pd)->registered_events[(__eid)]);	\
> +	__revt;								\
> +})
> +
> +#define SCMI_GET_REVT(__ni, __pid, __eid)				\
> +({									\
> +	struct scmi_registered_event *__revt = NULL;			\
> +	struct scmi_registered_protocol_events_desc *__pd = NULL;	\
> +									\
> +	__pd = SCMI_GET_PROTO((__ni), (__pid));				\
> +	__revt = SCMI_GET_REVT_FROM_PD(__pd, (__eid));			\
> +	__revt;								\
> +})
> +
> +/* A couple of utility macros to limit cruft when calling protocols' helpers */
> +#define REVT_NOTIFY_ENABLE(revt, ...)	\
> +	((revt)->proto->ops->set_notify_enabled((revt)->proto->ni->handle,     \
> +						__VA_ARGS__))
> +
>  struct scmi_registered_protocol_events_desc;
>  
>  /**
> @@ -60,16 +157,25 @@ struct scmi_registered_protocol_events_desc;
>   * @initialized: A flag that indicates if the core resources have been allocated
>   *		 and protocols are allowed to register their supported events
>   * @enabled: A flag to indicate events can be enabled and start flowing
> + * @init_work: A work item to perform final initializations of pending handlers
> + * @pending_mtx: A mutex to protect @pending_events_handlers
>   * @registered_protocols: An statically allocated array containing pointers to
>   *			  all the registered protocol-level specific information
>   *			  related to events' handling
> + * @pending_events_handlers: An hashtable containing all pending events'
> + *			     handlers descriptors
>   */
>  struct scmi_notify_instance {
>  	void						*gid;
>  	struct scmi_handle				*handle;
>  	atomic_t					initialized;
>  	atomic_t					enabled;
> +
> +	struct work_struct				init_work;
> +
> +	struct mutex					pending_mtx;
>  	struct scmi_registered_protocol_events_desc	**registered_protocols;
> +	DECLARE_HASHTABLE(pending_events_handlers, 8);
>  };
>  
>  /**
> @@ -132,6 +238,9 @@ struct scmi_registered_event;
>   * @registered_events: A dynamically allocated array holding all the registered
>   *		       events' descriptors, whose fixed-size is determined at
>   *		       compile time.
> + * @registered_mtx: A mutex to protect @registered_events_handlers
> + * @registered_events_handlers: An hashtable containing all events' handlers
> + *				descriptors registered for this protocol
>   */
>  struct scmi_registered_protocol_events_desc {
>  	u8					id;
> @@ -143,6 +252,8 @@ struct scmi_registered_protocol_events_desc {
>  	void					*in_flight;
>  	int					num_events;
>  	struct scmi_registered_event		**registered_events;
> +	struct mutex				registered_mtx;
> +	DECLARE_HASHTABLE(registered_events_handlers, 8);
>  };
>  
>  /**
> @@ -175,6 +286,38 @@ struct scmi_registered_event {
>  	struct mutex					sources_mtx;
>  };
>  
> +/**
> + * scmi_event_handler  - Event handler information
> + *
> + * This structure collects all the information needed to process a received
> + * event identified by the tuple (proto_id, evt_id, src_id).
> + * These descriptors are stored in a per-protocol @registered_events_handlers
> + * table using as a key a value derived from that tuple.
> + *
> + * @key: The used hashkey
> + * @users: A reference count for number of active users for this handler
> + * @r_evt: A reference to the associated registered event; when this is NULL
> + *	   this handler is pending, which means that identifies a set of
> + *	   callbacks intended to be attached to an event which is still not
> + *	   known nor registered by any protocol at that point in time
> + * @chain: The notification chain dedicated to this specific event tuple
> + * @hash: The hlist_node used for collision handling
> + * @enabled: A boolean which records if event's generation has been already
> + *	     enabled for this handler as a whole
> + */
> +struct scmi_event_handler {
> +	u32				key;
> +	refcount_t			users;
> +	struct scmi_registered_event	*r_evt;
> +	struct blocking_notifier_head	chain;
> +	struct hlist_node		hash;
> +	bool				enabled;
> +};
> +
> +#define IS_HNDL_PENDING(hndl)	((hndl)->r_evt == NULL)
> +
> +static void scmi_put_handler_unlocked(struct scmi_notify_instance *ni,
> +				      struct scmi_event_handler *hndl);
>  /**
>   * scmi_initialize_events_queue  - Allocate/Initialize a kfifo buffer
>   *
> @@ -252,6 +395,10 @@ scmi_allocate_registered_protocol_desc(struct scmi_notify_instance *ni,
>  		return ERR_PTR(-ENOMEM);
>  	pd->num_events = num_events;
>  
> +	/* Initialize per protocol handlers table */
> +	mutex_init(&pd->registered_mtx);
> +	hash_init(pd->registered_events_handlers);
> +
>  	return pd;
>  }
>  
> @@ -338,6 +485,12 @@ int scmi_register_protocol_events(const struct scmi_handle *handle,
>  
>  	devres_close_group(ni->handle->dev, ni->gid);
>  
> +	/*
> +	 * Finalize any pending events' handler which could have been waiting
> +	 * for this protocol's events registration.
> +	 */
> +	schedule_work(&ni->init_work);
> +
>  	return 0;
>  
>  err:
> @@ -349,6 +502,547 @@ int scmi_register_protocol_events(const struct scmi_handle *handle,
>  	return -ENOMEM;
>  }
>  
> +/**
> + * scmi_allocate_event_handler  - Allocate Event handler
> + *
> + * Allocate an event handler and related notification chain associated with
> + * the provided event handler key.
> + * Note that, at this point, a related registered_event is still to be
> + * associated to this handler descriptor (hndl->r_evt == NULL), so the handler
> + * is initialized as pending.
> + *
> + * Assumes to be called with @pending_mtx already acquired.
> + *
> + * @ni: A reference to the notification instance to use
> + * @evt_key: 32bit key uniquely bind to the event identified by the tuple
> + *	     (proto_id, evt_id, src_id)
> + *
> + * Return: the freshly allocated structure on Success
> + */
> +static struct scmi_event_handler *
> +scmi_allocate_event_handler(struct scmi_notify_instance *ni, u32 evt_key)
> +{
> +	struct scmi_event_handler *hndl;
> +
> +	hndl = kzalloc(sizeof(*hndl), GFP_KERNEL);
> +	if (!hndl)
> +		return ERR_PTR(-ENOMEM);
> +	hndl->key = evt_key;
> +	BLOCKING_INIT_NOTIFIER_HEAD(&hndl->chain);
> +	refcount_set(&hndl->users, 1);
> +	/* New handlers are created pending */
> +	hash_add(ni->pending_events_handlers, &hndl->hash, hndl->key);
> +
> +	return hndl;
> +}
> +
> +/**
> + * scmi_free_event_handler  - Free the provided Event handler
> + *
> + * Assumes to be called with proper locking acquired depending on the situation.
> + *
> + * @hndl: The event handler structure to free
> + */
> +static void scmi_free_event_handler(struct scmi_event_handler *hndl)
> +{
> +	hash_del(&hndl->hash);
> +	kfree(hndl);
> +}
> +
> +/**
> + * scmi_bind_event_handler  - Helper to attempt binding an handler to an event
> + *
> + * If an associated registered event is found, move the handler from the pending
> + * into the registered table.
> + *
> + * Assumes to be called with @pending_mtx already acquired.
> + *
> + * @ni: A reference to the notification instance to use
> + * @hndl: The event handler to bind
> + *
> + * Return: True if bind was successful, False otherwise
> + */
> +static inline bool scmi_bind_event_handler(struct scmi_notify_instance *ni,
> +					   struct scmi_event_handler *hndl)
> +{
> +	struct scmi_registered_event *r_evt;
> +
> +
> +	r_evt = SCMI_GET_REVT(ni, KEY_XTRACT_PROTO_ID(hndl->key),
> +			      KEY_XTRACT_EVT_ID(hndl->key));
> +	if (unlikely(!r_evt))
> +		return false;
> +
> +	/* Remove from pending and insert into registered */
> +	hash_del(&hndl->hash);
> +	hndl->r_evt = r_evt;
> +	mutex_lock(&r_evt->proto->registered_mtx);
> +	hash_add(r_evt->proto->registered_events_handlers,
> +		 &hndl->hash, hndl->key);
> +	mutex_unlock(&r_evt->proto->registered_mtx);
> +
> +	return true;
> +}
> +
> +/**
> + * scmi_valid_pending_handler  - Helper to check pending status of handlers
> + *
> + * An handler is considered pending when its r_evt == NULL, because the related
> + * event was still unknown at handler's registration time; anyway, since all
> + * protocols register their supported events once for all at protocols'
> + * initialization time, a pending handler cannot be considered valid anymore if
> + * the underlying event (which it is waiting for), belongs to an already
> + * initialized and registered protocol.
> + *
> + * @ni: A reference to the notification instance to use
> + * @hndl: The event handler to check
> + *
> + * Return: True if pending registration is still valid, False otherwise.
> + */
> +static inline bool scmi_valid_pending_handler(struct scmi_notify_instance *ni,
> +					      struct scmi_event_handler *hndl)
> +{
> +	struct scmi_registered_protocol_events_desc *pd;
> +
> +	if (unlikely(!IS_HNDL_PENDING(hndl)))
> +		return false;
> +
> +	pd = SCMI_GET_PROTO(ni, KEY_XTRACT_PROTO_ID(hndl->key));
> +	if (pd)
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * scmi_register_event_handler  - Register whenever possible an Event handler
> + *
> + * At first try to bind an event handler to its associated event, then check if
> + * it was at least a valid pending handler: if it was not bound nor valid return
> + * false.
> + *
> + * Valid pending incomplete bindings will be periodically retried by a dedicated
> + * worker which is kicked each time a new protocol completes its own
> + * registration phase.
> + *
> + * Assumes to be called with @pending_mtx acquired.
> + *
> + * @ni: A reference to the notification instance to use
> + * @hndl: The event handler to register
> + *
> + * Return: True if a normal or a valid pending registration has been completed,
> + *	   False otherwise
> + */
> +static bool scmi_register_event_handler(struct scmi_notify_instance *ni,
> +					struct scmi_event_handler *hndl)
> +{
> +	bool ret;
> +
> +	ret = scmi_bind_event_handler(ni, hndl);
> +	if (ret) {
> +		pr_info("SCMI Notifications: registered NEW handler - key:%X\n",
> +			hndl->key);
> +	} else {
> +		ret = scmi_valid_pending_handler(ni, hndl);
> +		if (ret)
> +			pr_info("SCMI Notifications: registered PENDING handler - key:%X\n",
> +				hndl->key);
> +	}
> +
> +	return ret;
> +}
> +
> +/**
> + * __scmi_event_handler_get_ops  - Utility to get or create an event handler
> + *
> + * Search for the desired handler matching the key in both the per-protocol
> + * registered table and the common pending table:
> + *  - if found adjust users refcount
> + *  - if not found and @create is true, create and register the new handler:
> + *    handler could end up being registered as pending if no matching event
> + *    could be found.
> + *
> + * An handler is guaranteed to reside in one and only one of the tables at
> + * any one time; to ensure this the whole search and create is performed
> + * holding the @pending_mtx lock, with @registered_mtx additionally acquired
> + * if needed.
> + * Note that when a nested acquisition of these mutexes is needed the locking
> + * order is always (same as in @init_work):
> + *	1. pending_mtx
> + *	2. registered_mtx
> + *
> + * Events generation is NOT enabled right after creation within this routine
> + * since at creation time we usually want to have all setup and ready before
> + * events really start flowing.
> + *
> + * @ni: A reference to the notification instance to use
> + * @evt_key: The event key to use
> + * @create: A boolean flag to specify if a handler must be created when
> + *	    not already existent
> + *
> + * Return: A properly refcounted handler on Success, NULL on Failure
> + */
> +static inline struct scmi_event_handler *
> +__scmi_event_handler_get_ops(struct scmi_notify_instance *ni,
> +			     u32 evt_key, bool create)
> +{
> +	struct scmi_registered_event *r_evt;
> +	struct scmi_event_handler *hndl = NULL;
> +
> +	r_evt = SCMI_GET_REVT(ni, KEY_XTRACT_PROTO_ID(evt_key),
> +			      KEY_XTRACT_EVT_ID(evt_key));
> +
> +	mutex_lock(&ni->pending_mtx);
> +	/* Search registered events at first ... if possible at all */
> +	if (likely(r_evt)) {
> +		mutex_lock(&r_evt->proto->registered_mtx);
> +		hndl = KEY_FIND(r_evt->proto->registered_events_handlers,
> +				hndl, evt_key);
> +		if (likely(hndl))
> +			refcount_inc(&hndl->users);
> +		mutex_unlock(&r_evt->proto->registered_mtx);
> +	}
> +
> +	/* ...then amongst pending. */
> +	if (unlikely(!hndl)) {
> +		hndl = KEY_FIND(ni->pending_events_handlers, hndl, evt_key);
> +		if (likely(hndl))
> +			refcount_inc(&hndl->users);
> +	}
> +
> +	/* Create if still not found and required */
> +	if (!hndl && create) {
> +		hndl = scmi_allocate_event_handler(ni, evt_key);
> +		if (!IS_ERR_OR_NULL(hndl)) {
> +			if (!scmi_register_event_handler(ni, hndl)) {
> +				pr_info("SCMI Notifications: purging UNKNOWN handler - key:%X\n",
> +					hndl->key);
> +				/* this hndl can be only a pending one */
> +				scmi_put_handler_unlocked(ni, hndl);
> +				hndl = NULL;
> +			}
> +		}
> +	}
> +	mutex_unlock(&ni->pending_mtx);
> +
> +	return hndl;
> +}
> +
> +static struct scmi_event_handler *
> +scmi_get_handler(struct scmi_notify_instance *ni, u32 evt_key)
> +{
> +	return __scmi_event_handler_get_ops(ni, evt_key, false);
> +}
> +
> +static struct scmi_event_handler *
> +scmi_get_or_create_handler(struct scmi_notify_instance *ni, u32 evt_key)
> +{
> +	return __scmi_event_handler_get_ops(ni, evt_key, true);
> +}
> +
> +/**
> + * __scmi_enable_evt  - Enable/disable events generation
> + *
> + * Takes care of proper refcounting while performing enable/disable: handles
> + * the special case of ALL sources requests by itself.
> + *
> + * @r_evt: The registered event to act upon
> + * @src_id: The src_id to act upon
> + * @enable: The action to perform: true->Enable, false->Disable
> + *
> + * Return: True when the required @action has been successfully executed
> + */
> +static inline bool __scmi_enable_evt(struct scmi_registered_event *r_evt,
> +				     u32 src_id, bool enable)
> +{
> +	int ret = 0;
> +	u32 num_sources;
> +	refcount_t *sid;
> +
> +	if (src_id == SCMI_ALL_SRC_IDS) {
> +		src_id = 0;
> +		num_sources = r_evt->num_sources;
> +	} else if (src_id < r_evt->num_sources) {
> +		num_sources = 1;
> +	} else {
> +		return ret;
> +	}
> +
> +	mutex_lock(&r_evt->sources_mtx);
> +	if (enable) {
> +		for (; num_sources; src_id++, num_sources--) {
> +			bool r;
> +
> +			sid = &r_evt->sources[src_id];
> +			if (refcount_read(sid) == 0) {
> +				r = REVT_NOTIFY_ENABLE(r_evt,
> +						       r_evt->evt->id,
> +						       src_id, enable);

I would make the enable explicit in this call so it is obvious we are
in the enable path rather than disable.

> +				if (r)
> +					refcount_set(sid, 1);
> +			} else {
> +				refcount_inc(sid);
> +				r = true;
> +			}
> +			ret += r;
> +		}
> +	} else {
> +		for (; num_sources; src_id++, num_sources--) {
> +			sid = &r_evt->sources[src_id];
> +			if (refcount_dec_and_test(sid))
> +				REVT_NOTIFY_ENABLE(r_evt,
> +						   r_evt->evt->id,
> +						   src_id, enable);

As above, make the enable value explicit.

> +		}
> +		ret = 1;
> +	}
> +	mutex_unlock(&r_evt->sources_mtx);
> +
> +	return ret;
> +}
> +
> +static bool scmi_enable_events(struct scmi_event_handler *hndl)
> +{
> +	if (!hndl->enabled)
> +		hndl->enabled = __scmi_enable_evt(hndl->r_evt,
> +						  KEY_XTRACT_SRC_ID(hndl->key),
> +						  true);
> +	return hndl->enabled;
> +}
> +
> +static bool scmi_disable_events(struct scmi_event_handler *hndl)
> +{
> +	if (hndl->enabled)
> +		hndl->enabled = !__scmi_enable_evt(hndl->r_evt,
> +						   KEY_XTRACT_SRC_ID(hndl->key),
> +						   false);
> +	return !hndl->enabled;
> +}
> +
> +/**
> + * scmi_put_handler_unlocked  - Put an event handler
> + *
> + * After having got exclusive access to the registered handlers hashtable,
> + * update the refcount and if @hndl is no more in use by anyone:
> + *
> + *  - ask for events' generation disabling
> + *  - unregister and free the handler itself
> + *
> + *  Assumes all the proper locking has been managed by the caller.
> + *
> + * @ni: A reference to the notification instance to use
> + * @hndl: The event handler to act upon
> + */
> +
> +static void
> +scmi_put_handler_unlocked(struct scmi_notify_instance *ni,
> +				struct scmi_event_handler *hndl)
> +{
> +	if (refcount_dec_and_test(&hndl->users)) {
> +		if (likely(!IS_HNDL_PENDING(hndl)))
> +			scmi_disable_events(hndl);
> +		scmi_free_event_handler(hndl);
> +	}
> +}
> +
> +static void scmi_put_handler(struct scmi_notify_instance *ni,
> +			     struct scmi_event_handler *hndl)
> +{
> +	struct scmi_registered_event *r_evt = hndl->r_evt;
> +
> +	mutex_lock(&ni->pending_mtx);
> +	if (r_evt)
> +		mutex_lock(&r_evt->proto->registered_mtx);
> +
> +	scmi_put_handler_unlocked(ni, hndl);
> +
> +	if (r_evt)
> +		mutex_unlock(&r_evt->proto->registered_mtx);
> +	mutex_unlock(&ni->pending_mtx);
> +}
> +
> +/**
> + * scmi_event_handler_enable_events  - Enable events associated to an handler
> + *
> + * @hndl: The Event handler to act upon
> + *
> + * Return: True on success
> + */
> +static bool scmi_event_handler_enable_events(struct scmi_event_handler *hndl)
> +{
> +	if (!scmi_enable_events(hndl)) {
> +		pr_err("SCMI Notifications: Failed to ENABLE events for key:%X !\n",
> +		       hndl->key);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +/**
> + * scmi_register_notifier  - Register a notifier_block for an event
> + *
> + * Generic helper to register a notifier_block against a protocol event.
> + *
> + * A notifier_block @nb will be registered for each distinct event identified
> + * by the tuple (proto_id, evt_id, src_id) on a dedicated notification chain
> + * so that:
> + *
> + *	(proto_X, evt_Y, src_Z) --> chain_X_Y_Z
> + *
> + * @src_id meaning is protocol specific and identifies the origin of the event
> + * (like domain_id, sensor_id and so forth).
> + *
> + * @src_id can be NULL to signify that the caller is interested in receiving
> + * notifications from ALL the available sources for that protocol OR simply that
> + * the protocol does not support distinct sources.
> + *
> + * As soon as one user for the specified tuple appears, an handler is created,
> + * and that specific event's generation is enabled at the platform level, unless
> + * an associated registered event is found missing, meaning that the needed
> + * protocol is still to be initialized and the handler has just been registered
> + * as still pending.
> + *
> + * @handle: The handle identifying the platform instance against which the
> + *	    callback is registered
> + * @proto_id: Protocol ID
> + * @evt_id: Event ID
> + * @src_id: Source ID, when NULL register for events coming form ALL possible
> + *	    sources
> + * @nb: A standard notifier block to register for the specified event
> + *
> + * Return: Return 0 on Success
> + */
> +static int scmi_register_notifier(const struct scmi_handle *handle,
> +				  u8 proto_id, u8 evt_id, u32 *src_id,
> +				  struct notifier_block *nb)
> +{
> +	int ret = 0;
> +	u32 evt_key;
> +	struct scmi_event_handler *hndl;
> +	struct scmi_notify_instance *ni = handle->notify_priv;
> +
> +	if (unlikely(!ni || !atomic_read(&ni->initialized)))
> +		return 0;
> +
> +	evt_key = MAKE_HASH_KEY(proto_id, evt_id,
> +				src_id ? *src_id : SCMI_ALL_SRC_IDS);
> +	hndl = scmi_get_or_create_handler(ni, evt_key);
> +	if (IS_ERR_OR_NULL(hndl))
> +		return PTR_ERR(hndl);
> +
> +	blocking_notifier_chain_register(&hndl->chain, nb);
> +
> +	/* Enable events for not pending handlers */
> +	if (likely(!IS_HNDL_PENDING(hndl))) {
> +		if (!scmi_event_handler_enable_events(hndl)) {
> +			scmi_put_handler(ni, hndl);
> +			ret = -EINVAL;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +/**
> + * scmi_unregister_notifier  - Unregister a notifier_block for an event
> + *
> + * Takes care to unregister the provided @nb from the notification chain
> + * associated to the specified event and, if there are no more users for the
> + * event handler, frees also the associated event handler structures.
> + * (this could possibly cause disabling of event's generation at platform level)
> + *
> + * @handle: The handle identifying the platform instance against which the
> + *	    callback is unregistered
> + * @proto_id: Protocol ID
> + * @evt_id: Event ID
> + * @src_id: Source ID
> + * @nb: The notifier_block to unregister
> + *
> + * Return: 0 on Success
> + */
> +static int scmi_unregister_notifier(const struct scmi_handle *handle,
> +				    u8 proto_id, u8 evt_id, u32 *src_id,
> +				    struct notifier_block *nb)
> +{
> +	u32 evt_key;
> +	struct scmi_event_handler *hndl;
> +	struct scmi_notify_instance *ni = handle->notify_priv;
> +
> +	if (unlikely(!ni || !atomic_read(&ni->initialized)))
> +		return 0;
> +
> +	evt_key = MAKE_HASH_KEY(proto_id, evt_id,
> +				src_id ? *src_id : SCMI_ALL_SRC_IDS);
> +	hndl = scmi_get_handler(ni, evt_key);
> +	if (IS_ERR_OR_NULL(hndl))
> +		return -EINVAL;
> +
> +	blocking_notifier_chain_unregister(&hndl->chain, nb);
> +	scmi_put_handler(ni, hndl);
> +
> +	/*
> +	 * Free the handler (and stop events) if this happens to be the last
> +	 * known user callback for this handler; a possible concurrently ongoing
> +	 * run of @scmi_lookup_and_call_event_chain will cause this to happen
> +	 * in that context safely instead.
> +	 */
> +	scmi_put_handler(ni, hndl);
> +
> +	return 0;
> +}
> +
> +/**
> + * scmi_protocols_late_init  - Worker for late initialization
> + *
> + * This kicks in whenever a new protocol has completed its own registration via
> + * scmi_register_protocol_events(): it is in charge of scanning the table of
> + * pending handlers (registered by users while the related protocol was still
> + * not initialized) and finalizing their initialization whenever possible;
> + * invalid pending handlers are purged at this point in time.
> + *
> + * @work: The work item to use associated to the proper SCMI instance
> + */
> +static void scmi_protocols_late_init(struct work_struct *work)
> +{
> +	int bkt;
> +	struct scmi_event_handler *hndl;
> +	struct scmi_notify_instance *ni;
> +	struct hlist_node *tmp;
> +
> +	ni = container_of(work, struct scmi_notify_instance, init_work);
> +
> +	mutex_lock(&ni->pending_mtx);
> +	hash_for_each_safe(ni->pending_events_handlers, bkt, tmp, hndl, hash) {
> +		bool ret;
> +
> +		ret = scmi_bind_event_handler(ni, hndl);
> +		if (ret) {
> +			pr_info("SCMI Notifications: finalized PENDING handler - key:%X\n",
> +				hndl->key);
> +			ret = scmi_event_handler_enable_events(hndl);
> +		} else {
> +			ret = scmi_valid_pending_handler(ni, hndl);
> +		}
> +		if (!ret) {
> +			pr_info("SCMI Notifications: purging PENDING handler - key:%X\n",
> +				hndl->key);
> +			/* this hndl can be only a pending one */
> +			scmi_put_handler_unlocked(ni, hndl);
> +		}
> +	}
> +	mutex_unlock(&ni->pending_mtx);
> +}
> +
> +/*
> + * notify_ops are attached to the handle so that can be accessed
> + * directly from an scmi_driver to register its own notifiers.
> + */
> +static struct scmi_notify_ops notify_ops = {
> +	.register_event_notifier = scmi_register_notifier,
> +	.unregister_event_notifier = scmi_unregister_notifier,
> +};
> +
>  /**
>   * scmi_notification_init  - Initializes Notification Core Support
>   *
> @@ -398,7 +1092,13 @@ int scmi_notification_init(struct scmi_handle *handle)
>  	if (!ni->registered_protocols)
>  		goto err;
>  
> +	mutex_init(&ni->pending_mtx);
> +	hash_init(ni->pending_events_handlers);
> +
> +	INIT_WORK(&ni->init_work, scmi_protocols_late_init);
> +
>  	handle->notify_priv = ni;
> +	handle->notify_ops = &notify_ops;
>  
>  	atomic_set(&ni->initialized, 1);
>  	atomic_set(&ni->enabled, 1);
> diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
> index a7ece64e8842..f765acda2311 100644
> --- a/drivers/firmware/arm_scmi/notify.h
> +++ b/drivers/firmware/arm_scmi/notify.h
> @@ -9,9 +9,21 @@
>  #ifndef _SCMI_NOTIFY_H
>  #define _SCMI_NOTIFY_H
>  
> +#include <linux/bug.h>
>  #include <linux/device.h>
>  #include <linux/types.h>
>  
> +#define MAP_EVT_TO_ENABLE_CMD(id, map)			\
> +({							\
> +	int ret = -1;					\
> +							\
> +	if (likely((id) < ARRAY_SIZE((map))))		\
> +		ret = (map)[(id)];			\
> +	else						\
> +		WARN(1, "UN-KNOWN evt_id:%d\n", (id));	\
> +	ret;						\
> +})
> +
>  /**
>   * scmi_event  - Describes an event to be supported
>   *
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index 0679f10ab05e..797e1e03ae52 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -9,6 +9,8 @@
>  #define _LINUX_SCMI_PROTOCOL_H
>  
>  #include <linux/device.h>
> +#include <linux/ktime.h>
> +#include <linux/notifier.h>
>  #include <linux/types.h>
>  
>  #define SCMI_MAX_STR_SIZE	16
> @@ -211,6 +213,52 @@ struct scmi_reset_ops {
>  	int (*deassert)(const struct scmi_handle *handle, u32 domain);
>  };
>  
> +/**
> + * scmi_notify_ops  - represents notifications' operations provided by SCMI core
> + *
> + * A user can register/unregister its own notifier_block against the wanted
> + * platform instance regarding the desired event identified by the
> + * tuple: (proto_id, evt_id, src_id)
> + *
> + * @register_event_notifier: Register a notifier_block for the requested event
> + * @unregister_event_notifier: Unregister a notifier_block for the requested
> + *			       event
> + *
> + * where:
> + *
> + * @handle: The handle identifying the platform instance to use
> + * @proto_id: The protocol ID as in SCMI Specification
> + * @evt_id: The message ID of the desired event as in SCMI Specification
> + * @src_id: A pointer to the desired source ID if different sources are
> + *	    possible for the protocol (like domain_id, sensor_id...etc)
> + *
> + * @src_id can be provided as NULL if it simply does NOT make sense for
> + * the protocol at hand, OR if the user is explicitly interested in
> + * receiving notifications from ANY existent source associated to the
> + * specified proto_id / evt_id.
> + *
> + * Received notifications are finally delivered to the registered users,
> + * invoking the callback provided with the notifier_block *nb as follows:
> + *
> + *	int user_cb(nb, evt_id, report)
> + *
> + * with:
> + *
> + * @nb: The notifier block provided by the user
> + * @evt_id: The message ID of the delivered event
> + * @report: A custom struct describing the specific event delivered
> + *
> + * Events' customized report structs are detailed in the following.
> + */
> +struct scmi_notify_ops {
> +	int (*register_event_notifier)(const struct scmi_handle *handle,
> +				       u8 proto_id, u8 evt_id, u32 *src_id,
> +				       struct notifier_block *nb);
> +	int (*unregister_event_notifier)(const struct scmi_handle *handle,
> +					 u8 proto_id, u8 evt_id, u32 *src_id,
> +					 struct notifier_block *nb);
> +};
> +
>  /**
>   * struct scmi_handle - Handle returned to ARM SCMI clients for usage.
>   *
> @@ -221,6 +269,7 @@ struct scmi_reset_ops {
>   * @clk_ops: pointer to set of clock protocol operations
>   * @sensor_ops: pointer to set of sensor protocol operations
>   * @reset_ops: pointer to set of reset protocol operations
> + * @notify_ops: pointer to set of notifications related operations
>   * @perf_priv: pointer to private data structure specific to performance
>   *	protocol(for internal use only)
>   * @clk_priv: pointer to private data structure specific to clock
> @@ -242,6 +291,7 @@ struct scmi_handle {
>  	struct scmi_power_ops *power_ops;
>  	struct scmi_sensor_ops *sensor_ops;
>  	struct scmi_reset_ops *reset_ops;
> +	struct scmi_notify_ops *notify_ops;
>  	/* for protocol internal use */
>  	void *perf_priv;
>  	void *clk_priv;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
