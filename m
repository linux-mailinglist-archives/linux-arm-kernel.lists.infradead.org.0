Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A439886145
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 13:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ul6jKWj2ixg/vhV3ZHmDafxyVecf1zXL3xEXeWCoyfo=; b=OwukTuGXWX7jQm
	xgXe2KKaVtWE1Vg9XuNTfyI5uYd+UwnX9DOM0qBwuCfznaBD7PwNoL8czLM5k8pWNygmy+ufPvI+6
	ErQeo3Rd8mQ2CM3ipvNuJjc7480yjN9ZF5L6wrRtyKBGGMyQA726sMcAm87MF+ZAS7uKIxq/HJmff
	n2c6N62UF8FMKScWRp1taGR49KLJqPcs5ckF2SRTvp11KLVuipyt9zWzcgz2AzILOQr9qj4/Upqnx
	5P5AcPl/J21VIpc+QxroK5YLjUZDEx8Uf1R20FT1DWHpR0kgaJA1t63ABhF+IFR0aBpw4/RYxunhe
	cudQ0/0fgrvlRZUoUq5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvh3t-0007Fx-L8; Thu, 08 Aug 2019 11:58:29 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvh3d-0007FB-80
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 11:58:14 +0000
Received: by mail-ed1-x541.google.com with SMTP id k8so90417136edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 04:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=mhO+hgPBV+VLoBe4FkLMr7mrrkAfMlf4RoVKrIDPI8U=;
 b=RtAidmmqIIva4EOO0Ms7+a5chcAGS7/yKnSnvq39J/g3vx0a+JVWFjbQb+KC211qET
 loJwSr4SQzfx6oDGn37n+bXY3zmhi4MoYZmqdkOMwoDDYZqyyWd+XO5simV3pT/raCp2
 F90mSqfkHi4PKIqiR/ORYKx+1b/TTuD7ygW1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=mhO+hgPBV+VLoBe4FkLMr7mrrkAfMlf4RoVKrIDPI8U=;
 b=CeXwbJgXQzUtHWdQ3LKwPQzk7qDToBwesBsqZxAqT2ZLQdyCH7C3pShK6ZkI3btxqn
 DvJvOluetGUNOtlxIEfuBA2OMC5pK3kkwqE+PydlDVymDWGFerfeANuEJIYsXMz7VJ5n
 oX83f7KAp3huxIUhq00uAgWIPfScgCWksWZ8qlLsiQnjCPL53OJC9AOJnQRJU+R60Wb1
 qta2fEKeD8Smi+WsroluIJVyK993uAjxGAiPjmlHzzs4/+MUz2gr8RuIWxlqmxt5GByq
 tLkgJFHMo61FG43/FNw4OFBk3nPwMW2bjtY8iXZ5su6G20TZYlI3LjDfz/Id95bQbrmz
 zUwA==
X-Gm-Message-State: APjAAAXInW2MFXIlSXEQ728NI9Ny7leaj62Bpcm2DmzNRBZtByRAIPUM
 9SSJ+gaBgFqQ5snxJChZB9lGkQ==
X-Google-Smtp-Source: APXvYqw9uraKM7qWqZW0Dg09fB6Nm02V7GB56xhaxehSuiymr4qKYwchHDPZ5RvXrNR5LEVxCZukiQ==
X-Received: by 2002:a17:906:ccc3:: with SMTP id
 ot3mr13167350ejb.113.1565265491478; 
 Thu, 08 Aug 2019 04:58:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id d12sm21361343edp.16.2019.08.08.04.58.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 04:58:10 -0700 (PDT)
Date: Thu, 8 Aug 2019 13:58:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808115808.GN7444@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
 <CAKMK7uH1O3q8VUftikipGH6ACPoT-8tbV1Zwo-8WL=wUHiqsoQ@mail.gmail.com>
 <20190808095506.GA32621@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808095506.GA32621@lst.de>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_045813_348041_EF9D5A6A 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 11:55:06AM +0200, Christoph Hellwig wrote:
> On Wed, Aug 07, 2019 at 10:48:56AM +0200, Daniel Vetter wrote:
> > >    other drm drivers how do they guarantee addressability without an
> > >    iommu?)
> > 
> > We use shmem to get at swappable pages. We generally just assume that
> > the gpu can get at those pages, but things fall apart in fun ways:
> > - some setups somehow inject bounce buffers. Some drivers just give
> > up, others try to allocate a pool of pages with dma_alloc_coherent.
> > - some devices are misdesigned and can't access as much as the cpu. We
> > allocate using GFP_DMA32 to fix that.
> 
> Well, for shmem you can't really call allocators directly, right?

We can pass gfp flags to shmem_read_mapping_page_gfp, which is just about
enough for the 2 cases on intel platforms where the gpu can only access
4G, but the cpu has way more.

> One thing I have in my pipeline is a dma_alloc_pages API that allocates
> pages that are guaranteed to be addressably by the device or otherwise
> fail.  But that doesn't really help with the shmem fs.

Yeah, the other drivers where the shmem gfp trick doesn't work copy
back&forth between the dma-able pages and the shmem swappable pages as
needed in their shrinker/allocation code. I guess ideal would be if we
could fuse the custom allocator somehow directly into shmem.

Otoh once you start thrashing beyond system memory for gfx workloads it's
pretty hopeless anyway, and speed doesn't really matter anymore.

> > Also modern gpu apis pretty much assume you can malloc() and then use
> > that directly with the gpu.
> 
> Which is fine as long as the GPU itself supports full 64-bit addressing
> (or always sits behind an iommu), and the platform doesn't impose
> addressing limit, which unfortunately some that are shipped right now
> still do :(

Yes, the userspace api people in khronos are occasionally a bit optimistic
:-)

> But userspace malloc really means dma_map_* anyway, so not really
> relevant for memory allocations.

It does tie in, since we'll want a dma_map which fails if a direct mapping
isn't possible. It also helps the driver code a lot if we could use the
same low-level flushing functions between our own memory (whatever that
is) and anon pages from malloc. And in all the cases if it's not possible,
we want a failure, not elaborate attempts at hiding the differences
between all possible architectures out there.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
