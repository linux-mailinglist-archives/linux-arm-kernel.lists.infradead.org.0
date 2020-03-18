Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D3F18A964
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w69cZwQOHU/g8IHt43YSYSFzlKCr0a1i6yBUJa83fgw=; b=lkQaj4pZOhsePa
	+d8jOGPvmARqa3/vmo4WHMLZ7+8+BJLzAXMlgDg7txT2EsqWY5B65iGPM/5uxi4Fsy3d3fx+v9Sml
	GKx/VVLb7zvvowCRvmDk4UwvoQP5cqfXwSrM2rzOmAqwvEVm6Kw+0I6/8+JrCcTs483y0Bd9EAfD+
	PHn8pYFEK/HCqpeoQRrSKelV+y0oE5+rxuhDuAlh180CN5F3SFbmdMa5ifvktMW27T4UoGeCGKsQn
	60eKWawl+JvLaHRpFEjlmBVRVdlUVm79fHh9+7pBieTiVXrZrjJuAVz+Sd9wezUTMXDA+qnxYvkW8
	/WW/mCgpfypfEZBkcogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEiLP-0006NF-4g; Wed, 18 Mar 2020 23:43:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEiLI-0006Mv-Er
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:43:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id a20so376634edj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 16:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T6rxV8z4faDRzhqK467Xv2a7dOy/TE520C3YV3WjV8c=;
 b=i3FPub1DIHkvCD+yi/2Y0pX69MrTIvO1RmbzVf6wk00DV0ApmY13YfnnFpks/NVTLs
 G1QplMy/+0w+GsFrwD1fV1STvoKneEr8NQlSW0vIhii6MAK+xDn8ddbmfxyIfh+bWkPE
 NEeRdRZ2QE6MO1YpPwSPzXvQKexEK5sr8Dox9C9jyfSyvqP6X6trr48Ms86RoFLn9dAG
 92zK1vRSIdLYDibQabEa5foOn7Ajn4QGZfbFS6XCk1yr6R/d+WaM4jqJ31uE4ljyQmMb
 YiomgNSyyErYriEW6Abwe6sruyYqTy62RHKzpwUnN7Vinym7R/FBnsL8LzowJAa3l8q2
 3Z7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T6rxV8z4faDRzhqK467Xv2a7dOy/TE520C3YV3WjV8c=;
 b=aWrgGURHpo1LgQVz2YojbIsj3sx0UVXLuw8RxpGBbr2Aeepe1X0jKJmRiGqU6ZIA/d
 g5Zv4tbJ+J09unR5Atm5F/ksGQcqYdenq20uaL2vwmQiVMLwInVSAmYBKHYtDaVjUceI
 lqcY49XSN/E3T4Qh0iSfqRi3qmeJktAGjvtpS6jbJPwwyGhcauF2Hytzte4jzhA4tTpX
 j9d4KSJlLOVRCi8J2oOYWaBQNGmlB0Z+VQJaNQz4Fv5MG5vp5Gcjt3Xon/cH1TaN/Bfp
 sFE2OH4Na4gLLDh3MlTiu+kX/XI7EVapybZX+w75Wtn3+Zx3M0sGYxc8sq2/+BLlzBht
 vogw==
X-Gm-Message-State: ANhLgQ0VJzynrVgbwv5+l5e/9YNKhB8QJlNQx+RabKpWdUEF8ZkhzPex
 CMjzrwlOk1zGGO1CBe67EQWdEN9L0rTr33cJwmw=
X-Google-Smtp-Source: ADFU+vunbg/mabJAoT4ECckSo9VlWXEI7Tk7MCM2NEIzGX//dTyumqWFksHG62C18XwPsVHwF/wqELk+aHHpZR6UYqI=
X-Received: by 2002:a17:906:b888:: with SMTP id
 hb8mr686525ejb.166.1584574997823; 
 Wed, 18 Mar 2020 16:43:17 -0700 (PDT)
MIME-Version: 1.0
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
 <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
 <20200318224840.GA10796@willie-the-truck>
In-Reply-To: <20200318224840.GA10796@willie-the-truck>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 18 Mar 2020 16:43:07 -0700
Message-ID: <CAF6AEGu-hj6=3rsCe5XeBq_ffoq9VFmL+ycrQ8N=iv89DZf=8Q@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] arm/smmu: Add auxiliary domain support for
 arm-smmuv2
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_164320_523476_78127688 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robdclark[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 3:48 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Jan 28, 2020 at 03:16:06PM -0700, Jordan Crouse wrote:
> > Support auxiliary domains for arm-smmu-v2 to initialize and support
> > multiple pagetables for a single SMMU context bank. Since the smmu-v2
> > hardware doesn't have any built in support for switching the pagetable
> > base it is left as an exercise to the caller to actually use the pagetable.
> >
> > Aux domains are supported if split pagetable (TTBR1) support has been
> > enabled on the master domain.  Each auxiliary domain will reuse the
> > configuration of the master domain. By default the a domain with TTBR1
> > support will have the TTBR0 region disabled so the first attached aux
> > domain will enable the TTBR0 region in the hardware and conversely the
> > last domain to be detached will disable TTBR0 translations.  All subsequent
> > auxiliary domains create a pagetable but not touch the hardware.
> >
> > The leaf driver will be able to query the physical address of the
> > pagetable with the DOMAIN_ATTR_PTBASE attribute so that it can use the
> > address with whatever means it has to switch the pagetable base.
> >
> > Following is a pseudo code example of how a domain can be created
> >
> >  /* Check to see if aux domains are supported */
> >  if (iommu_dev_has_feature(dev, IOMMU_DEV_FEAT_AUX)) {
> >        iommu = iommu_domain_alloc(...);
> >
> >        if (iommu_aux_attach_device(domain, dev))
> >                return FAIL;
> >
> >       /* Save the base address of the pagetable for use by the driver
> >       iommu_domain_get_attr(domain, DOMAIN_ATTR_PTBASE, &ptbase);
> >  }
>
> I'm not really understanding what the pagetable base gets used for here and,
> to be honest with you, the whole thing feels like a huge layering violation
> with the way things are structured today. Why doesn't the caller just
> interface with io-pgtable directly?
>
> Finally, if we need to support context-switching TTBR0 for a live domain
> then that code really needs to live inside the SMMU driver because the
> ASID and TLB management necessary to do that safely doesn't belong anywhere
> else.

Hi Will,

We do in fact need live domain switching, that is really the whole
point.  The GPU CP (command processor/parser) is directly updating
TTBR0 and triggering TLB flush, asynchronously from the CPU.

And I think the answer about ASID is easy (on current hw).. it must be zero[*].

BR,
-R

[*] my rough theory/plan there, and to solve the issue with drm/msm
getting dma-iommu ops when it really would rather not (since
blacklisting idea wasn't popular and I couldn't figure out a way to
deal with case where device gets attached before driver shows up) is
to invent some API that drm/msm can call to unhook the dma-iommu ops
and detatch the DMA domain.  Hopefully that at least gets us closer to
the point where, when drm/msm attaches it's UNMANAGED domain, we get
cbidx/asid zero.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
