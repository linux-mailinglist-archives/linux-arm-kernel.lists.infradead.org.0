Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15871B104D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmsJh5uyPdLviNd3/9LYhpB5bYWC91NluzbHee5rx3g=; b=ZX+jT/TvELb3CF
	cDiAqLNMgQD5ULTdpisLKBSJn01H+crTp4DjZL2zZUvnokYQjWB9zSO/VHwwXDOck4+8EqHBFTXtV
	bFncRyYh//70/+QjnYFMQuThAk9xSTQLebJySNU4WDS3gS5Urgtd7wMVDDilcqu94wp94j1i63lb2
	1E8caBG2Rm99iIr8Oc7weqSO+n3Z7qhCbPP3P7iLy7qrsNL+ew3OFx8tyldkFf3yUDGNFu0TkouBM
	GOtQHMrAsytxL0F/4lj+m1iq61F/tY7XaBrPBVHAWItRC/hTNdmnLQu+VFcJXgHUopu0qlUNrQYiF
	oKRh0lLHzW4QoFPrfX7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYSu-0004Su-98; Mon, 20 Apr 2020 15:36:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYSi-0004Qs-TU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:35:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE41631B;
 Mon, 20 Apr 2020 08:35:53 -0700 (PDT)
Received: from bogus (unknown [10.37.12.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1AA13F73D;
 Mon, 20 Apr 2020 08:35:52 -0700 (PDT)
Date: Mon, 20 Apr 2020 16:35:46 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
Message-ID: <20200420145712.GA307@bogus>
References: <20200417103232.6896-1-sudeep.holla@arm.com>
 <CAN5uoS8vGCABXvscR160=Dy_iZytinB2y+E2wbp6_KyQMFW5Tg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAN5uoS8vGCABXvscR160=Dy_iZytinB2y+E2wbp6_KyQMFW5Tg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_083556_998914_720B9073 
X-CRM114-Status: GOOD (  22.57  )
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 12:04:27PM +0200, Etienne Carriere wrote:
> Hello Sudeep,
> 
> On Fri, 17 Apr 2020 at 12:32, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > SMCCC can return one of the 2 return error code here: NOT_SUPPORTED(-1)
> > and INVALID_PARAMETER(-3). Map them to appropriate Linux error codes
> > namely -EOPNOTSUPP and -EINVAL respectively. -EINVAL is also returned
> > for any other return values.
> 
> Reading back the SMCCC spec, I see that INVALID_PARAMETER(-3) and
> SUCCESS(0) are Arm Architecture Calls specific return values.
> The only generic return value that applies to any SMCCC call is
> NOT_SUPPORTED(-1).
>
> As for an SCMI SMCCC transport layer, any other value than -1 means
> the call is supported and one should rely on the statuses provided in
> the shared memory buffer related to the function ID.
>

Yes I agree, I had the change to reflect above initially and for some reason
I decided to extend.

> >
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/smc.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> > index 833e793b5391..a8b5ecb8927a 100644
> > --- a/drivers/firmware/arm_scmi/smc.c
> > +++ b/drivers/firmware/arm_scmi/smc.c
> > @@ -114,7 +114,11 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
> >
> >         mutex_unlock(&scmi_info->shmem_lock);
> >
> > -       return res.a0;
> > +       if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> > +               return -EOPNOTSUPP;
> > +       else if (res.a0)
> > +               return -EINVAL;
> 
> Related to my comment above:
> I have no strong opinion on that as I guess SCMI SMCCC transport layer
> in secure world firmware could ensure output argument a0 is set not 0.
> That said, I might be nitpicking but I still think th 2 lines could be removed.
> 
> Is there any strong reason for testing finer return status from res.a0?
>

No, I will drop. With that can I have you Ack/Reviewed-by ?

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
