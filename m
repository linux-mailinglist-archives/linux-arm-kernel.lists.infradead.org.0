Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063EF351D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 23:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u85EjD6HVN8o+ayckTCcTveY+yb34ON2q8kDFY84is=; b=gwHRm5aqVDcLfA
	FIWvYspZz963f2VC5Qvc8TwgpYp4MRKrdgZSEPx9j6G+j1cHIaYG0/nIHTBR39Hh4f/jZsRacEQLT
	1cHKm04YWytdYugzOn1HiRshbl9Qhzxp7DQ0rramchjZz6zpUMNt3Q1eSVfYc7yQWZhufRZVAQeQA
	cvbwP4+B1EaNxW8SQrQ+PfiLKvOT/aKMWCfAtPW8pOXtMKGtHpEAc58KA65zWU+U7KrzPOzUaUAD4
	9IW9JDv01kT0PUq66jqEdHS2vZ+MzRxMAnlwCQw5s6IMZxgs0/TYAavYjsC264Vp2oKKk5RKeJGFd
	BvMkJ3/gffPTC8Gpr15Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYGve-0005F2-2P; Tue, 04 Jun 2019 21:25:10 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYGvT-0005C9-H3; Tue, 04 Jun 2019 21:25:00 +0000
Received: by mail-ed1-x543.google.com with SMTP id c26so2575242edt.1;
 Tue, 04 Jun 2019 14:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rf+FVQdLlTmIquy8GtnYkoZWwK5gBvKD755XOjUXaig=;
 b=RpXJfBaDOqgqcYX8JOal7iS/UhumlB3RIJSKAjhkiyTRz0Zm5kybPTQuauuwxk1X2i
 r/cbqYlfe+lB9KReMWCGWJLGLVIUhffjLPqXlMZDxS1Jxynn+14oWL7VKlEW8EFtj+Tn
 bbGF34FZPFxCQu3YGoQ5H6Dl+qrS+73i3Vzi3FEjG82hwQQjXHncZ3n3m+AxELqrK0yE
 ZkkeXyxFikEUFHaDjp/wNNNn+V4GXkT2ER+tFf6E3cp0XxpAgUIchzzJ6XbgpBnZEn+r
 0PG6TEjeefPbIpGPckPKeCkh8QrqDU76LHBBZA1XGU2xe30A21aWdM31zIU/imET4VeZ
 AHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rf+FVQdLlTmIquy8GtnYkoZWwK5gBvKD755XOjUXaig=;
 b=bFzoJOLXp2y+mprBPriHcY0WzssnrNJcidMzhkWB6W2vSng26euuMb+x3tpoaLUtof
 loRwm7bO0hYAKD0iqvxni42l6wjOB0wcpWA1knwLryyY2Hkgd7USwnzHj/+se8RF/po8
 9ih/8B73n6A9pbTUNOmXNdsjZbJGDFGpTLhf+Eva+DwQCQSVYEMPKAphCYomgG9KdSWk
 Cv0nRX+SZtnlOiWG2VB7ouzfSaoVjjg4cQGSToGpUha4FGZhljG2dD0cYRJ1uRlu3kkH
 uRLy4uLSUUF1f7hy4+f3eFxDWp5R5vckPlvT6B0ELTvHDPXAvoTi2/vNQV70936FgikI
 lNVw==
X-Gm-Message-State: APjAAAUVT9wYrfBCrrDHeI1CdpXgttcQD+So0tyzVPoIboMg7GbSf0ML
 6UfcrHWbXiztAxB103aVX7+8SqjxBDaKXk2836U=
X-Google-Smtp-Source: APXvYqze9nAxAtYScKLExAMJ/J8Pl+VAKFZsXTNV2XYiPxjg3cZrmhD5K4HOvAehCxAUiUqK+BPZ+1NHPN04THSrS4M=
X-Received: by 2002:a50:cbc4:: with SMTP id l4mr5976451edi.264.1559683495420; 
 Tue, 04 Jun 2019 14:24:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190506185207.31069-1-tmurphy@arista.com>
 <20190506185207.31069-2-tmurphy@arista.com>
 <33a1e3c1-1906-9e45-d060-e7998424973b@arm.com>
In-Reply-To: <33a1e3c1-1906-9e45-d060-e7998424973b@arm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 4 Jun 2019 14:24:42 -0700
Message-ID: <CAF6AEGuk8GkbZ_XZJg6Gbpng+BaKjVHQ9M-6nGW0pi+h_Nh3Hw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] iommu: Add gfp parameter to iommu_ops::map
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_142459_568131_A8992DFE 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Tom Murphy <tmurphy@arista.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, murphyt7@tcd.ie,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 11:11 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/05/2019 19:52, Tom Murphy wrote:
> > Add a gfp_t parameter to the iommu_ops::map function.
> > Remove the needless locking in the AMD iommu driver.
> >
> > The iommu_ops::map function (or the iommu_map function which calls it)
> > was always supposed to be sleepable (according to Joerg's comment in
> > this thread: https://lore.kernel.org/patchwork/patch/977520/ ) and so
> > should probably have had a "might_sleep()" since it was written. However
> > currently the dma-iommu api can call iommu_map in an atomic context,
> > which it shouldn't do. This doesn't cause any problems because any iommu
> > driver which uses the dma-iommu api uses gfp_atomic in it's
> > iommu_ops::map function. But doing this wastes the memory allocators
> > atomic pools.
>
> Hmm, in some cases iommu_ops::unmap may need to allocate as well,
> primarily if it needs to split a hugepage mapping. Should we pass flags
> through there as well, or are we prepared to assume that that case will
> happen rarely enough that it's fair to just assume GFP_ATOMIC? It won't
> happen for DMA ops, but it's conceivable that other users such as GPU
> drivers might make partial unmaps, and I doubt we could totally rule out
> the wackiest ones doing so from non-sleeping contexts.
>

jfyi, today we (well, drm/msm) only unmap entire buffers, so assuming
there isn't any coelescense of adjacent buffers that happen to form a
hugepage on ::map(), we are probably ok on ::unmap()..

we do always only call ::map or ::unmap under sleepable conditions.

btw, would it be simpler to just make gfp_t a domain a attribute?
That seems like it would be less churn, but maybe I'm overlooking
something.

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
