Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084021F1E1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 19:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvLXLJMYbgZUrTwInpLQlQbJRnP1t8PvU6oRAUWKcSY=; b=ZZDX+J/53ajBWf
	23ZQtOcf1hspRMvIXccZOWy+v1OLbaz6PK45MY7PtGENpR2ve+WgUm4cgHo7Mq6cd78GHaveuBZf8
	z+8mzbWwrP49sr4dQ3blTRHSvXuTjh1ahQy4Mj6anHdwwP1okUswWexpPr+ctstCrJB4mEeiw/obL
	M2VmT/flFP2xxUb3EEcFgWjm0SLAMmFHleYmmgtbgPBKWL4MC1Mx8JzK28PnNSXD0rqR6aY39GJxO
	6qVQ805nZd7l4t/vAn5aKJPE1lMJTT6EzI77THbOiblXRhAcCyNhnSFJOaQXlW5+plR47HSS8DPab
	dFWlGuUqotxm3sTUcTbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLBt-00082c-06; Mon, 08 Jun 2020 17:04:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLBi-000817-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 17:03:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C24051FB;
 Mon,  8 Jun 2020 10:03:52 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B1C43F73D;
 Mon,  8 Jun 2020 10:03:49 -0700 (PDT)
Date: Mon, 8 Jun 2020 18:03:46 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v8 3/9] firmware: arm_scmi: Add notification dispatch and
 delivery
Message-ID: <20200608170346.GD13622@bogus>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
 <20200520081118.54897-4-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520081118.54897-4-cristian.marussi@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_100354_563832_FD20D184 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 09:11:12AM +0100, Cristian Marussi wrote:
> Add core SCMI Notifications dispatch and delivery support logic which is
> able, at first, to dispatch well-known received events from the RX ISR to
> the dedicated deferred worker, and then, from there, to final deliver the
> events to the registered users' callbacks.
> 
> Dispatch and delivery is just added here, still not enabled.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  drivers/firmware/arm_scmi/notify.c | 354 ++++++++++++++++++++++++++++-
>  drivers/firmware/arm_scmi/notify.h |  10 +
>  2 files changed, 362 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> index 7cf61dbe2a8e..d582f71fde5b 100644
> --- a/drivers/firmware/arm_scmi/notify.c
> +++ b/drivers/firmware/arm_scmi/notify.c

[...]

> @@ -1085,6 +1422,12 @@ int scmi_notification_init(struct scmi_handle *handle)
>  	ni->gid = gid;
>  	ni->handle = handle;
>  
> +	ni->notify_wq = alloc_workqueue("scmi_notify",
> +					WQ_UNBOUND | WQ_FREEZABLE | WQ_SYSFS,
> +					0);

What's the use of WQ_SYSFS for SCMI notifications ? Do we need it ?

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
