Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AF2167E78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=81fjqPtvO0Zkr9ePDN9I/wAUlCwyEsChHTc/4I4ovWM=; b=brvXKlTZ+C53Xfw/yaFSmxVGj
	rCdmz2DGdpwuln9FOmN3IV9c/HQgb0rNhy77nIL6RTw/oZKlHWf0XCtK4RUdALLwt5l8uQlj1/seg
	iyImJShHwKCTpsE2m/RzfJS9b7ZsbqRL7ivVzwO9++k9QicZD9c6GJP8yfYoi9XGEyjMYfPq6oyT9
	en+30bRpeI9FSQrXbeoeyBRfPkCdv3x4vnhRgCWv9Z2idYe36MmrJn70PjPRPXOF2C/3f1dllsp0u
	StBW2g8+u2i4Ttw2Dvn6nhiBvSpfF1Sqlc7rlbHs5XeCY4diZk2qmjH409Lnxg5zXd06sISqht53r
	QhfBDoWZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58J4-0008Pn-O5; Fri, 21 Feb 2020 13:25:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58Iv-0008P8-Qx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:25:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD74730E;
 Fri, 21 Feb 2020 05:25:16 -0800 (PST)
Received: from [10.37.12.243] (unknown [10.37.12.243])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 315133F703;
 Fri, 21 Feb 2020 05:25:14 -0800 (PST)
Subject: Re: [RFC PATCH v2 07/13] firmware: arm_scmi: Add notification
 dispatch and delivery
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200214153535.32046-1-cristian.marussi@arm.com>
 <20200214153535.32046-8-cristian.marussi@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <e45e87e2-aaaf-c35b-b864-c080fd6e0ba6@arm.com>
Date: Fri, 21 Feb 2020 13:25:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200214153535.32046-8-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_052517_915916_3A49B29B 
X-CRM114-Status: GOOD (  22.29  )
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

I didn't want to jump into your discussion with Jim in other broader
thread with this small thought, so I added a comment below.

On 2/14/20 3:35 PM, Cristian Marussi wrote:
> Add core SCMI Notifications dispatch and delivery support logic which is
> able, at first, to dispatch well-known received events from the RX ISR to
> the dedicated deferred worker, and then, from there, to final deliver the
> events to the registered users' callbacks.
> 
> Dispatch and delivery is just added here, still not enabled.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> V1 --> V2
> - splitted out of V1 patch 04
> - moved from IDR maps to real HashTables to store event_handlers
> - simplified delivery logic
> ---
>   drivers/firmware/arm_scmi/notify.c | 242 ++++++++++++++++++++++++++++-
>   drivers/firmware/arm_scmi/notify.h |  22 +++
>   2 files changed, 262 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> index 1339b6de0a4c..c2341c5304cf 100644
> --- a/drivers/firmware/arm_scmi/notify.c
> +++ b/drivers/firmware/arm_scmi/notify.c
> @@ -48,13 +48,44 @@
>    * particular event coming only from a well defined source (like CPU vs GPU).
>    * When the source is not specified the user callback will be registered for
>    * all existing sources for that event (if any).

[snip]

>   
> @@ -840,6 +1071,11 @@ static struct scmi_notify_ops notify_ops = {
>    */
>   int scmi_notification_init(struct scmi_handle *handle)
>   {
> +	scmi_notify_wq = alloc_workqueue("scmi_notify",
> +					 WQ_UNBOUND | WQ_FREEZABLE, 0);

I think it might limit some platforms. It depends on their workload.
If they have some high priority workloads which rely on this mechanisms,
they might need a RT task here. The workqueues would be scheduled in
CFS, so it depends on workload in there (we might even see 10s ms delays
in scheduling-up them). If we use RT we would grab the CPU from CFS.

It would be good if it is a customization option: which mechanism
to use based on some a parameter. Then we could create:
a) workqueue with the flags above
b) workqueue with WQ_HIGHPRI (limited by minimum nice)
c) kthread_create_worker() with RT/DL/FIFO sched policy
   (with also a parameterized priority)

In default clients might use a) but when they want to tune their
platform, they might change only a parameter in their scmi code,
not maintaining a patch for the RT function out of tree.

Regards,
Lukasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
