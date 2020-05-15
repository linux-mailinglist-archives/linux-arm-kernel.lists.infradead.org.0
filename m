Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4534C1D49B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQwMExshxpotbX6YMtSPi+5Xz0BJ499KLhgIet/mB7s=; b=JiKwXY91Rqmi+3
	jAw1LZ3yyng1r34hNv13EDW6I2W7gyvSfsEWOvYo+OCOd3kNLrOTcjotpAtVD8FwWdPqa9fUhFjDd
	AR5K+7q5R6qTf17o+dRsIgYJcVCPQFY7KJTh12kfNBx3iUxlc2ujkLNyjBiTf/R9MEHC46RcWXM5b
	oQEm8HaHvJ5brzU9qVyQvIdKlOPr5rLRjHUtehI8bjdgJYGueJpUHd0NXoyi1hTgxXPP5DSiajTez
	MTRNbvvJd81GvvrNQLncnTNWJoxKpIHNCRKzK9hBJKgAKLLVLFwz0FOBhBsluxAgfwCUOOAa0pjSl
	1t44DnwqShkHnkAV3TKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWjs-0001LQ-0c; Fri, 15 May 2020 09:34:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWje-0001KX-KL
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:34:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD32D2F;
 Fri, 15 May 2020 02:34:28 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75A863F71E;
 Fri, 15 May 2020 02:34:27 -0700 (PDT)
Date: Fri, 15 May 2020 10:34:24 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: fix SMCCC_RET_NOT_SUPPORTED management
Message-ID: <20200515093424.GC23671@bogus>
References: <20200514082428.27864-1-etienne.carriere@linaro.org>
 <20200514142924.GC23401@bogus>
 <CAN5uoS_bimZsFqwaODRRWeCe15JMepQa2z9J0+dq7qNfwxRsug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN5uoS_bimZsFqwaODRRWeCe15JMepQa2z9J0+dq7qNfwxRsug@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_023430_710568_3CD017CF 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 05:06:22PM +0200, Etienne Carriere wrote:
> On Thu, 14 May 2020 at 16:29, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, May 14, 2020 at 10:24:28AM +0200, Etienne Carriere wrote:
> > > Fix management of argument a0 output value of arm_smccc_1_1_invoke() that
> > > should consider only SMCCC_RET_NOT_SUPPORTED as reporting an unsupported
> > > function ID as correctly stated in the inline comment.
> > >
> >
> > I agree on the comment part, but ...
> >
> > > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > > ---
> > >  drivers/firmware/arm_scmi/smc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> > > index 49bc4b0e8428..637ad439545f 100644
> > > --- a/drivers/firmware/arm_scmi/smc.c
> > > +++ b/drivers/firmware/arm_scmi/smc.c
> > > @@ -115,7 +115,7 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
> > >       mutex_unlock(&scmi_info->shmem_lock);
> > >
> > >       /* Only SMCCC_RET_NOT_SUPPORTED is valid error code */
> > > -     if (res.a0)
> > > +     if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> > >               return -EOPNOTSUPP;
> >
> > Now this will return 0 for all values other than SMCCC_RET_NOT_SUPPORTED.
> > Is that what we need ? Or do you see non-zero res.a0 for a success case ?
> > If later, we need some fixing, otherwise it is safer to leave it as is
> > IMO.
> 
> Firmware following SMCCC v1.x for some OEM/SiP invocation may simply
> not modify invocation register argument a0 on invocation with a
> SCMI-SMC transport function ID.

Yikes, I need to check specification again for this. I will also
check with the firmware implementation team/

> Resulting in res.a0 == scmi_info->func_id here. Which is, by SMCCC
> v1.x not an error.
>

But that may get fatal the result in some other cases, not here for sure.
But I would rather flag that as error so that it is fixed. Anyways I will
check on this again/

> From SMCCC v1.x only SMCCC_RET_NOT_SUPPORTED (-1 signed extended is a
> reserved ) is a generic return error whatever function ID value.
>

Not really, there are couple more I think now. But yes I need to check
on the generic return part.

> Or consider part of the SCMI-SMC transport API that output arg a0
> shall be 0 on success, SMCCC_RET_NOT_SUPPORTED if function ID is not
> supported and any non-zero value for non-generic **error** codes.
>

I prefer that. Anyways I will check and if anything changes I will ping
back on this thread.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
