Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB591FD9A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 01:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2PUEkegSYneCnTq+xd7REYwFM19goBsEdid+n5f2K4=; b=TwroWUJn1uBU4c
	ei4jcW9cR1/5S6zfSlu6Hk6ixu7nYtdiI1eHLVT7HQR9fO7MMuEiyneeUiCVEdTDPbhTCBtl736fT
	75dR497ONdAlUNE9hNSzKvxIQUe4eJvdorA77661T64vmgpVJIR8NIC1TmBG64dOjoOc3XhUfzlhi
	p20ILR2Y80Vw36yE3qsj2znot+aTjOQDWY0I0G4mCi9H8Tq5U4x66SlTUWnR6jkx9RI/Ks/ofdMEi
	LX+A0w695PO7aqwDURG7BTK9ZRNK4LJXYP56nyKKRtlBU0cC/8Tn3towAO4oynkzAeMFXVzEilt7p
	/KU3UC+PhN0kGI/Qqn/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlhWd-0000fo-Lq; Wed, 17 Jun 2020 23:31:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlhWT-0000fT-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 23:31:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E77631042;
 Wed, 17 Jun 2020 16:31:12 -0700 (PDT)
Received: from e119603-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6ACF3F71F;
 Wed, 17 Jun 2020 16:31:11 -0700 (PDT)
Date: Thu, 18 Jun 2020 00:31:05 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v8 3/9] firmware: arm_scmi: Add notification dispatch and
 delivery
Message-ID: <20200617233105.GB9236@e119603-lin.cambridge.arm.com>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
 <20200520081118.54897-4-cristian.marussi@arm.com>
 <20200608170346.GD13622@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608170346.GD13622@bogus>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_163113_994600_C8F89E9B 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: cristian.marussi@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 06:03:46PM +0100, Sudeep Holla wrote:
> On Wed, May 20, 2020 at 09:11:12AM +0100, Cristian Marussi wrote:
> > Add core SCMI Notifications dispatch and delivery support logic which is
> > able, at first, to dispatch well-known received events from the RX ISR to
> > the dedicated deferred worker, and then, from there, to final deliver the
> > events to the registered users' callbacks.
> > 
> > Dispatch and delivery is just added here, still not enabled.
> > 
> > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/notify.c | 354 ++++++++++++++++++++++++++++-
> >  drivers/firmware/arm_scmi/notify.h |  10 +
> >  2 files changed, 362 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> > index 7cf61dbe2a8e..d582f71fde5b 100644
> > --- a/drivers/firmware/arm_scmi/notify.c
> > +++ b/drivers/firmware/arm_scmi/notify.c
> 
> [...]
> 
> > @@ -1085,6 +1422,12 @@ int scmi_notification_init(struct scmi_handle *handle)
> >  	ni->gid = gid;
> >  	ni->handle = handle;
> >  
> > +	ni->notify_wq = alloc_workqueue("scmi_notify",
> > +					WQ_UNBOUND | WQ_FREEZABLE | WQ_SYSFS,
> > +					0);
> 
> What's the use of WQ_SYSFS for SCMI notifications ? Do we need it ?
> 

Lukasz asked for it, when we were talking about workqueues' priorities configurability.
(not implemented in this series)

Thanks

Cristian
> -- 
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
