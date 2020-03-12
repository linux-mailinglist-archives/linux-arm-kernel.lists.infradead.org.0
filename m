Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02323183214
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2DXTNmbBn1dDP9Ealhr0sa2gELWmP/zp167C4b1q+2g=; b=XJ12pQ0sogswu/0zBOxwaXg0u
	Mnxt4JJHdzQ1VLuJZ0uF1giUixdV1FMqbKfwFaf8vGm3QkBrPv/iprzbZzkT3X2YkIpx9hsLJbz4S
	blfgTDTDZJCvu2t7dBYm9DJ5px7sd8MDeduGGTAK/ogSl+/jy2h4rM7ErXPqovLRT486OyjGDEstB
	wZZG4DtoZ2NdiO9aI8dNfg314c4COkVrIIhYOXQluN4JxyzPSbAwiRgBAY6ker1L3WheImHjRwsHI
	hwJPcjllHIye9fudtJ12du8xHRVNtJTDY5etGpsYY2DnFUB7rlQrzUIr1KV8Nu4xx7spZVwrMgS4A
	F488F+pqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOFv-0006bH-Du; Thu, 12 Mar 2020 13:52:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOFj-0006aT-Al
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:52:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A810D30E;
 Thu, 12 Mar 2020 06:51:55 -0700 (PDT)
Received: from [10.37.12.166] (unknown [10.37.12.166])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A2B83F534;
 Thu, 12 Mar 2020 06:51:54 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
Date: Thu, 12 Mar 2020 13:51:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200304162558.48836-8-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_065159_458758_992DB966 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

just one comment below...

On 3/4/20 4:25 PM, Cristian Marussi wrote:
> Add core SCMI Notifications dispatch and delivery support logic which is
> able, at first, to dispatch well-known received events from the RX ISR to
> the dedicated deferred worker, and then, from there, to final deliver the
> events to the registered users' callbacks.
> 
> Dispatch and delivery is just added here, still not enabled.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> V3 --> V4
> - dispatcher now handles dequeuing of events in chunks (header+payload):
>    handling of these in_flight events let us remove one unneeded memcpy
>    on RX interrupt path (scmi_notify)
> - deferred dispatcher now access their own per-protocol handlers' table
>    reducing locking contention on the RX path
> V2 --> V3
> - exposing wq in sysfs via WQ_SYSFS
> V1 --> V2
> - splitted out of V1 patch 04
> - moved from IDR maps to real HashTables to store event_handlers
> - simplified delivery logic
> ---
>   drivers/firmware/arm_scmi/notify.c | 334 ++++++++++++++++++++++++++++-
>   drivers/firmware/arm_scmi/notify.h |   9 +
>   2 files changed, 342 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c

[snip]

> +
> +/**
> + * scmi_notify  - Queues a notification for further deferred processing
> + *
> + * This is called in interrupt context to queue a received event for
> + * deferred processing.
> + *
> + * @handle: The handle identifying the platform instance from which the
> + *	    dispatched event is generated
> + * @proto_id: Protocol ID
> + * @evt_id: Event ID (msgID)
> + * @buf: Event Message Payload (without the header)
> + * @len: Event Message Payload size
> + * @ts: RX Timestamp in nanoseconds (boottime)
> + *
> + * Return: 0 on Success
> + */
> +int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
> +		const void *buf, size_t len, u64 ts)
> +{
> +	struct scmi_registered_event *r_evt;
> +	struct scmi_event_header eh;
> +	struct scmi_notify_instance *ni = handle->notify_priv;
> +
> +	/* Ensure atomic value is updated */
> +	smp_mb__before_atomic();
> +	if (unlikely(!atomic_read(&ni->enabled)))
> +		return 0;
> +
> +	r_evt = SCMI_GET_REVT(ni, proto_id, evt_id);
> +	if (unlikely(!r_evt))
> +		return -EINVAL;
> +
> +	if (unlikely(len > r_evt->evt->max_payld_sz)) {
> +		pr_err("SCMI Notifications: discard badly sized message\n");
> +		return -EINVAL;
> +	}
> +	if (unlikely(kfifo_avail(&r_evt->proto->equeue.kfifo) <
> +		     sizeof(eh) + len)) {
> +		pr_warn("SCMI Notifications: queue full dropping proto_id:%d  evt_id:%d  ts:%lld\n",
> +			proto_id, evt_id, ts);
> +		return -ENOMEM;
> +	}
> +
> +	eh.timestamp = ts;
> +	eh.evt_id = evt_id;
> +	eh.payld_sz = len;
> +	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
> +	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
> +	queue_work(r_evt->proto->equeue.wq,
> +		   &r_evt->proto->equeue.notify_work);

Is it safe to ignore the return value from the queue_work here?

Regards,
Lukasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
