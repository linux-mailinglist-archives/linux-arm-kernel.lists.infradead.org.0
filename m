Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28B9B3FE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfCIuMJJTfdgN6sIh1jRixUiZ+T16YrjpGaf1dnrxWc=; b=shziPzyXtli9GQ
	ApFISzuT3PbZ3iVPi35gpLpWwJQupPdNubXbAufNa9AQfaiDebJy2j+5lcDQgq//fHyY5QOVATosf
	HrZcXV0rHWII+XNUOiWg4LoK8sQTUCrERKPfwtzB5cVhoeTHc0H1ygRqY43lB3B+NTMmRyVl3nuiV
	thnMR0J+8t2/IoKUIEPBM6pDYMxz0WKpxp0UaS8MLuzIFyWTqu9TB2X+7JWbBA9xOGdgtPM4I0Xl2
	RhReLPjD3imDN/4Nx8vCF6YwA2nUJBcoihNlc6sid2iMQYARzz9Sh+wYa1GJiH6lvb3bzdFZ7wShs
	gQxzpNcMiQtvB7Rsx//w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vIr-0000Cc-CR; Mon, 16 Sep 2019 18:00:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vIc-0000Br-GQ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 18:00:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C557C20830;
 Mon, 16 Sep 2019 18:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568656826;
 bh=0MuDEueeqiW3vBqPYXeawD+yH0V26W4id32WaUlsst8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hTJdMMxm4MH8Vuo2SfpSVaRsGtN9mRmFfEkuKRy89OdziWXWiCDgbMK6SKY/k+ecA
 Kh5+WeWNxsaNtIYz1MwWr9JBUepq1Ardm/RHCa8v8DGRbwqRGFdkYBHL0diVMaYfVc
 Nag18aTsDUASPnJo0glomtDEik/z0OHcN5oc5IaA=
Date: Mon, 16 Sep 2019 19:00:22 +0100
From: Will Deacon <will@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] iommu/arm-smmu: Report USF more clearly
Message-ID: <20190916180021.cp2onwou7pbsrygd@willie-the-truck>
References: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
 <CAD=FV=XPi+DCwg2DWbZkXQGTpxWy=vWa1LQR=zHZr93WKjCmzA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=XPi+DCwg2DWbZkXQGTpxWy=vWa1LQR=zHZr93WKjCmzA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_110030_589299_F6D88B9E 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 03:44:12PM -0700, Doug Anderson wrote:
> On Fri, Sep 13, 2019 at 4:48 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
> > for smoking out inadequate firmware, the failure mode is non-obvious
> > and can be confusing for end users. Add some special-case reporting of
> > Unidentified Stream Faults to help clarify this particular symptom.
> >
> > CC: Douglas Anderson <dianders@chromium.org>
> 
> nit that I believe that "Cc" (lowercase 2nd c) is correct.
> 
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > ---
> >  drivers/iommu/arm-smmu.c | 5 +++++
> >  drivers/iommu/arm-smmu.h | 2 ++
> >  2 files changed, 7 insertions(+)
> >
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index b7cf24402a94..76ac8c180695 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
> >         dev_err_ratelimited(smmu->dev,
> >                 "\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
> >                 gfsr, gfsynr0, gfsynr1, gfsynr2);
> > +       if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> > +           (gfsr & sGFSR_USF))
> > +               dev_err_ratelimited(smmu->dev,
> > +                       "Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
> > +                       (u16)gfsynr1);
> 
> In general it seems like a sane idea to surface an error like this.  I
> guess a few nits:
> 
> 1. "By firmware" might be a bit misleading.  In most cases I'm aware
> of the problem is in the device tree that was bundled together with
> the kernel.  If there are actually cases where firmware has baked in a
> device tree and it got this wrong then we might want to spend time
> figuring out what to do about it.

I thought that was usually the way UEFI systems worked, where the kernel
is updated independently of the device-tree? Either way, that should be
what we're aiming for, even if many platforms require the two to be tied
together.

> 2. Presumably booting with "arm-smmu.disable_bypass=0" is in most
> cases the least desirable option available.  I always consider kernel
> command line parameters as something of a last resort for
> configuration and would only be something that and end user might do
> if they were given a kernel compiled by someone else (like if someone
> where taking a prebuilt Linux distro and trying to install it onto a
> generic PC).  Are you seeing cases where this is happening?  If people
> are compiling their own kernel I'd argue that telling them to set
> "CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT" to "no" is much better
> than trying to jam a command line option on.  Command line options
> don't scale well.

Hmm. Recompiling seems like even more of a last resort to me!

> 3. Any chance you could make it more obvious that this change is
> undesirable and a last resort?  AKA:
> 
> "Stream ID x blocked for security reasons; allow anyway by booting
> with arm-smmu.disable_bypass=0"

How about:

  "Blocked transaction from unknown Stream ID x; boot with
   \"arm-smmu.disable_bypass=0\" to allow these transactions, although this
   may have security implications."

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
