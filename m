Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3AB9078F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gn0258h7jAikhW+UvkvT7Wjtln9B6AkYzvKtbRv8+co=; b=tUHLs/g0Oz3hK+
	GQtWNH1s3ZpzWzodvSLN56m4XuQ6I8v+Ny5IV87LhwBKA/5wFUg8aBMOfeEgqQOdfu3DNvEMdonuQ
	OjbYVWVLcIuWHsPMOecsooIL+cpOEVoOr11TwQkUZxlb/K6Pbwdu3SFq6HCyb3DZ8Hl3dlyIU6G4B
	AeOp415AdLZNvDnZD7jMp09F5u1kHY67+fQP0wUs8Cg+Bf2nMRljeO5xVDrS9l08MLoRRpsOBvXV3
	jHPKwLrYr2S3ym9YTAv/0Y/s9w5jrUFEfvYH34xUf2oE1m8Wfn+OYT7XCzFprDkH2y+qw0Ha4t7Z5
	TTU1TI0w6MJ+zTC2rDSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygii-00066E-9p; Fri, 16 Aug 2019 18:13:00 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygiR-00065n-5r
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 18:12:44 +0000
Received: by mail-ed1-x542.google.com with SMTP id m44so5872071edd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 11:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rrnKHz7hxP2DwOGHD0Zkrb/6rHKyYs+A28YWIo2Nxdg=;
 b=tHoRmO8YMkuQimp7U/0w6Ao45sJdzXUA0qhbqIfxI2Ac3O9EA6aGBN50AZbuCN6+jD
 QZNAat18MEWCj4BMIeAYxEsxZjTT2xYtzPXy/CvKJio14Uc0KgctAbhF8LqwQd9wjOHV
 DS1xJOaedakFbaU1vOqkz1FDVa0eWYn8rbAA8cEMGvp5isgfBH1Rj7ZsCJKxqm12kcSv
 O+S8Mi8ijKzUmmNecXo7eU1s/eSyRuxjK3mI7R+/YrZGdgc6Fe7A9/ucNU11diVypPvS
 BB1EB/ukrqGaaiQdimlRCIOqrtZ3MyRyqrf/+FoXA13t1kjC9qInNTsoUUnBsq4PI8tg
 Xegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rrnKHz7hxP2DwOGHD0Zkrb/6rHKyYs+A28YWIo2Nxdg=;
 b=uchd5k2Gkr1ar4RdCGYUBYE1UUSqRFRgzvPlRuQ1G/tcMa431c0bYLDrcZXaknKiot
 PnuhXiDfAZAelh7eCEJf2fBtRYQ6xgwDOQB8ghnchMRCgd52VkaDs1iln93sWtE+kqZJ
 fvV9k/EiiU9Eqa3vqIwiyku4JiSi1sLiGyYfgSTaKawWTp4ZxEBINhsaej1/cFWBIpkG
 Djik/i2C2aqtoGmO1Bd7Zp1JIAbFDxAheBItv1jOwwrmEcYG891UC9LUiqbcO+qFoUV/
 rlHC66twVmjRHaeeuvoatMRyaqlj7xI1ESR0ZFmjs+HG13pkJrZtEy9h44hhDzt6sfrt
 wtIw==
X-Gm-Message-State: APjAAAUijnW4rkKyjBaxEZiprGm4C73JhkOUtde1KvFAZ0/FGF5j4hLr
 qeeSUyT7xVfBr3nhrsCp8M0UsgUU57JHOzrvUA655Xdf
X-Google-Smtp-Source: APXvYqycYnyBI0HviQih16yhnRuqQe3/IufQePKUqf+IYM1GYJmMHbrpl2hyJIRBxdySXtfDgBpBM3UEAuL6o0X49PU=
X-Received: by 2002:a50:86c7:: with SMTP id 7mr12351442edu.264.1565979161038; 
 Fri, 16 Aug 2019 11:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
 <20190815153304.GD28465@jcrouse1-lnx.qualcomm.com>
 <ac248f33-2528-c1d4-17ed-17e92e6ed5ad@arm.com>
In-Reply-To: <ac248f33-2528-c1d4-17ed-17e92e6ed5ad@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 16 Aug 2019 11:12:29 -0700
Message-ID: <CAF6AEGujjF+MQFw45g799i+2QE4X=eRZdDSsD_F3y3mfbc6UPw@mail.gmail.com>
Subject: Re: [Freedreno] [PATCH v3 0/2] iommu/arm-smmu: Split pagetable support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_111243_218892_50A2D288 
X-CRM114-Status: GOOD (  30.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Zhen Lei <thunder.leizhen@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 9:58 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Jordan,
>
> On 15/08/2019 16:33, Jordan Crouse wrote:
> > On Wed, Aug 07, 2019 at 04:21:38PM -0600, Jordan Crouse wrote:
> >> (Sigh, resend. I freaked out my SMTP server)
> >>
> >> This is part of an ongoing evolution for enabling split pagetable support for
> >> arm-smmu. Previous versions can be found [1].
> >>
> >> In the discussion for v2 Robin pointed out that this is a very Adreno specific
> >> use case and that is exactly true. Not only do we want to configure and use a
> >> pagetable in the TTBR1 space, we also want to configure the TTBR0 region but
> >> not allocate a pagetable for it or touch it until the GPU hardware does so. As
> >> much as I want it to be a generic concept it really isn't.
> >>
> >> This revision leans into that idea. Most of the same io-pgtable code is there
> >> but now it is wrapped as an Adreno GPU specific format that is selected by the
> >> compatible string in the arm-smmu device.
> >>
> >> Additionally, per Robin's suggestion we are skipping creating a TTBR0 pagetable
> >> to save on wasted memory.
> >>
> >> This isn't as clean as I would like it to be but I think that this is a better
> >> direction than trying to pretend that the generic format would work.
> >>
> >> I'm tempting fate by posting this and then taking some time off, but I wanted
> >> to try to kick off a conversation or at least get some flames so I can try to
> >> refine this again next week. Please take a look and give some advice on the
> >> direction.
> >
> > Will, Robin -
> >
> > Modulo the impl changes from Robin, do you think that using a dedicated
> > pagetable format is the right approach for supporting split pagetables for the
> > Adreno GPU?
>
> How many different Adreno drivers would benefit from sharing it?

Hypothetically everything back to a3xx, so I *could* see usefulness of
this in qcom_iommu (or maybe even msm-iommu).  OTOH maybe with
"modularizing" arm-smmu we could re-combine qcom_iommu and arm-smmu.
And as a practical matter, I'm not sure if anyone will get around to
backporting per-context pagetables as far back as a3xx.

BR,
-R

> The more I come back to this, the more I'm convinced that io-pgtable
> should focus on the heavy lifting of pagetable management - the code
> that nobody wants to have to write at all, let alone more than once -
> and any subtleties which aren't essential to that should be pushed back
> into whichever callers actually care. Consider that already, literally
> no caller actually uses an unmodified stage 1 TCR value as provided in
> the io_pgtable_cfg.
>
> I feel it would be most productive to elaborate further in the form of
> patches, so let me get right on that and try to bash something out
> before I go home tonight...
>
> Robin.
>
> > If so, then is adding the changes to io-pgtable-arm.c possible for 5.4 and then
> > add the implementation specific code on top of Robin's stack later or do you
> > feel they should come as part of a package deal?
> >
> > Jordan
> >
> >> Jordan Crouse (2):
> >>    iommu/io-pgtable-arm: Add support for ARM_ADRENO_GPU_LPAE io-pgtable
> >>      format
> >>    iommu/arm-smmu: Add support for Adreno GPU pagetable formats
> >>
> >>   drivers/iommu/arm-smmu.c       |   8 +-
> >>   drivers/iommu/io-pgtable-arm.c | 214 ++++++++++++++++++++++++++++++++++++++---
> >>   drivers/iommu/io-pgtable.c     |   1 +
> >>   include/linux/io-pgtable.h     |   2 +
> >>   4 files changed, 209 insertions(+), 16 deletions(-)
> >>
> >> --
> >> 2.7.4
> >>
> >> _______________________________________________
> >> Freedreno mailing list
> >> Freedreno@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/freedreno
> >
> _______________________________________________
> Freedreno mailing list
> Freedreno@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/freedreno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
