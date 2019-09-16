Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AD0B4035
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 20:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZS9tCrzXZA9sUauk45SgMvDhWR63SXA7WnKX2OPybc=; b=lZG6qxivBM9pjF
	y5KKbzev4viOBOrExtgY2yvVElp5IrmKV4LlQR7qBwJ2sGwvfuiJbZRY4Wdo456An+4Dv7+P05c3S
	7JzxxX3ydp+trSyNwuQ4dU5mRt/biPCNzbR1XZSoYDyske2EKnhzoSqhFQ8dueJEDhzI9JP8uePiS
	zI15+9yyaG08MMQirx5hCX8zKgzOtyWbCeXi+/giemyIhEzZZ5h2Vn909FhZXhndOYdpyX1H1zPOH
	UiAMdrxempDe2ghK54N0fyM9zsrCYUJFT8PADEyWxWCvNCcjPqrvN4mgj/1dt+5s+zfrM8OtZJimq
	DXVLFdtSIW2SY9HkiLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9vbp-0007cN-Vh; Mon, 16 Sep 2019 18:20:22 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vbY-0006eG-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 18:20:10 +0000
Received: by mail-io1-xd41.google.com with SMTP id q1so1384548ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 11:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F8iJAzTwJcB9/VDgjOQxGqsdGMfHTEdp0fXQRcootLk=;
 b=d0eRIK47tVV0Nh4b3yo8EWyAwwANodOqCfZADY4AnIkR/Tqu7PVsGDnwMPK3tvJbYA
 ZY0/JglYkHm31l66Ne4RbPXoZT8CPP+YM7uyY4pQuXRnxCeFxXfTXNpPUs/+UEa1ZvG+
 x2KNW/iZRpIDiywTCLc7cxv9EiXQ+j+4V00os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F8iJAzTwJcB9/VDgjOQxGqsdGMfHTEdp0fXQRcootLk=;
 b=AEcQ+jWOA+8B6Ps2ta0uha+BqwworcRY7J2Ab21NFgL0VzWODj5mpOTdV0AI7vpm0N
 ZfR+eILJqCpDSKw1l62V9ksqIXtdJP6WYUtDSFR57HerMLWdH5b28sSlX9pLatJprAbW
 VQg9iFsllCnlDPryRJabzFWCchkfSBPpo4E4A5Uy5h8mrOyaHLLr3T+AvklSCDrWDaBq
 CW9mU1JihSlLnoeMeML1df7+5r4XFdxShbLrrQ+mBXqQolL19hirzIP0Y+6Z84pABTsT
 Y/I+m1M/maqW5pZ09w0pm1RUP0w8u4a77rj44UDOHkS/YdX2jFh2nZ2F+SFMURx6euzP
 8BkA==
X-Gm-Message-State: APjAAAW2evzJnLtfDHBVMzGVN070jV08XjkBXs6gn55Dm43dnfpX49kv
 LMO5qE9eh1zV42QJiyb251w5UhP9GzQ=
X-Google-Smtp-Source: APXvYqwfnrwy1aOTWwUc30OYFfgX/YOsWbr5/z3iUFWjms+0tAP+xJzrMGRm2tHDPXbuxedpOh5nJQ==
X-Received: by 2002:a5d:8415:: with SMTP id i21mr637485ion.86.1568658002869;
 Mon, 16 Sep 2019 11:20:02 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id r138sm45394344iod.59.2019.09.16.11.20.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 11:20:02 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id q1so1384425ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 11:20:02 -0700 (PDT)
X-Received: by 2002:a6b:b445:: with SMTP id d66mr1312024iof.269.1568658001789; 
 Mon, 16 Sep 2019 11:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
 <CAD=FV=XPi+DCwg2DWbZkXQGTpxWy=vWa1LQR=zHZr93WKjCmzA@mail.gmail.com>
 <20190916180021.cp2onwou7pbsrygd@willie-the-truck>
In-Reply-To: <20190916180021.cp2onwou7pbsrygd@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 16 Sep 2019 11:19:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wx7zSqGSABfnG9B0yAcZvimub+hMcPRfUoFxr-FJeFew@mail.gmail.com>
Message-ID: <CAD=FV=Wx7zSqGSABfnG9B0yAcZvimub+hMcPRfUoFxr-FJeFew@mail.gmail.com>
Subject: Re: [PATCH] iommu/arm-smmu: Report USF more clearly
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_112004_609423_95D09EE8 
X-CRM114-Status: GOOD (  33.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
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

Hi,

On Mon, Sep 16, 2019 at 11:00 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Sep 13, 2019 at 03:44:12PM -0700, Doug Anderson wrote:
> > On Fri, Sep 13, 2019 at 4:48 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
> > > for smoking out inadequate firmware, the failure mode is non-obvious
> > > and can be confusing for end users. Add some special-case reporting of
> > > Unidentified Stream Faults to help clarify this particular symptom.
> > >
> > > CC: Douglas Anderson <dianders@chromium.org>
> >
> > nit that I believe that "Cc" (lowercase 2nd c) is correct.
> >
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >  drivers/iommu/arm-smmu.c | 5 +++++
> > >  drivers/iommu/arm-smmu.h | 2 ++
> > >  2 files changed, 7 insertions(+)
> > >
> > > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > > index b7cf24402a94..76ac8c180695 100644
> > > --- a/drivers/iommu/arm-smmu.c
> > > +++ b/drivers/iommu/arm-smmu.c
> > > @@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
> > >         dev_err_ratelimited(smmu->dev,
> > >                 "\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
> > >                 gfsr, gfsynr0, gfsynr1, gfsynr2);
> > > +       if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> > > +           (gfsr & sGFSR_USF))
> > > +               dev_err_ratelimited(smmu->dev,
> > > +                       "Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
> > > +                       (u16)gfsynr1);
> >
> > In general it seems like a sane idea to surface an error like this.  I
> > guess a few nits:
> >
> > 1. "By firmware" might be a bit misleading.  In most cases I'm aware
> > of the problem is in the device tree that was bundled together with
> > the kernel.  If there are actually cases where firmware has baked in a
> > device tree and it got this wrong then we might want to spend time
> > figuring out what to do about it.
>
> I thought that was usually the way UEFI systems worked, where the kernel
> is updated independently of the device-tree? Either way, that should be
> what we're aiming for, even if many platforms require the two to be tied
> together.

It's my opinion that until there is a place in the kernel to "fixup"
broken device trees that were baked in firmware that it's a bad idea
to ship device trees separate from the kernel except if the device
trees are exceedingly simple.  We'll run into too many problems
otherwise, either because the kernel the device tree was written for
had downstream patches or someone just made a mistake in them and
nobody noticed.  I know device trees are supposed to be ABI, but
people make mistakes and we need a way to fix them up.

...but that's getting pretty far afield from Robin's patch.


> > 2. Presumably booting with "arm-smmu.disable_bypass=0" is in most
> > cases the least desirable option available.  I always consider kernel
> > command line parameters as something of a last resort for
> > configuration and would only be something that and end user might do
> > if they were given a kernel compiled by someone else (like if someone
> > where taking a prebuilt Linux distro and trying to install it onto a
> > generic PC).  Are you seeing cases where this is happening?  If people
> > are compiling their own kernel I'd argue that telling them to set
> > "CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT" to "no" is much better
> > than trying to jam a command line option on.  Command line options
> > don't scale well.
>
> Hmm. Recompiling seems like even more of a last resort to me!

Depends on what you're doing.  If you're not in the habit of compiling
a kernel and you're just trying to make one work then the command line
is great.  If you're trying to manage configuration for a whole bunch
of different hardware products then the command line is a terrible
place to store config.

...but I guess the summary is that we wouldn't want someone to
actually ship a kernel with this option on anyway.  ;-)


> > 3. Any chance you could make it more obvious that this change is
> > undesirable and a last resort?  AKA:
> >
> > "Stream ID x blocked for security reasons; allow anyway by booting
> > with arm-smmu.disable_bypass=0"
>
> How about:
>
>   "Blocked transaction from unknown Stream ID x; boot with
>    \"arm-smmu.disable_bypass=0\" to allow these transactions, although this
>    may have security implications."

Fine with me if it's not too long for an error message.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
