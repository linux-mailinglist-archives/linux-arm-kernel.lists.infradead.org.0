Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC201DB44A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80M5ujvLs5ZZ1wT4mmESQtvFBZ8nuQ45uBoyaGJ67zY=; b=Jya6qU7iiojG4S
	W7D+54wlBstNe+z58yfJ2OBWDX7ZmZ3ZCKpG80op4T/hBFHY1K3zpdDMKRk0mQ8gCZL6WlOshF/N9
	rIYg+m5fRGo1VQNjL9KMxIzehiVuo6DOut/59rVsIGiKxA/Fn4qkqqs9OHF0UfvbE2cMEleE5pGlj
	Ryr9tI5DZ4mvGIZ5RtR+MtiNeXHbGBNHm/ft0EsfT+BlJ64uWV7J+TyjmA6zMxRsJz6D4oLa2I9Id
	MaueP9EdUiUKQsvDXKZRsKPEuO/8mc+86mmleM26WhyaG+SHcqhq4q4NehB7yyHPVKU+XfTFTQYkR
	YZXqPyPV0EF85xshvtDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOHb-0006jp-J9; Wed, 20 May 2020 12:57:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOHS-0006iz-5H
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:57:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 836572070A;
 Wed, 20 May 2020 12:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589979425;
 bh=1P2e+BY8TZ0h6Yd53TbsOZuyfQmxWpY2o80nVEhI8us=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zkn/FJDugptcSPb2TlufybwUBXf+t2GBlQWkTf8jsh05woVtd9F2NBuNpIkwAhcPq
 vQSKaQkD8Olh0FxCizpxzW306pp2xZjyRQvbrVj7U6ggrIu87F74GQujz5nVriZfa9
 Y8Z2V42UPxkqE/DkdjVUyWIuT6YtAHiFOH8Vodt0=
Date: Wed, 20 May 2020 13:57:01 +0100
From: Will Deacon <will@kernel.org>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH v1 2/6] arm/smmu: Add auxiliary domain support for
 arm-smmuv2
Message-ID: <20200520125700.GD25815@willie-the-truck>
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
 <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
 <20200318224840.GA10796@willie-the-truck>
 <CAF6AEGu-hj6=3rsCe5XeBq_ffoq9VFmL+ycrQ8N=iv89DZf=8Q@mail.gmail.com>
 <20200518151838.GL32394@willie-the-truck>
 <CAF6AEGswv3ZaJyy_kYv6FKAjO5=_juDwEtK+VE9TcVMLGvrdwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGswv3ZaJyy_kYv6FKAjO5=_juDwEtK+VE9TcVMLGvrdwA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_055706_221475_2D813D1E 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, May 18, 2020 at 08:50:27AM -0700, Rob Clark wrote:
> On Mon, May 18, 2020 at 8:18 AM Will Deacon <will@kernel.org> wrote:
> > On Wed, Mar 18, 2020 at 04:43:07PM -0700, Rob Clark wrote:
> > > We do in fact need live domain switching, that is really the whole
> > > point.  The GPU CP (command processor/parser) is directly updating
> > > TTBR0 and triggering TLB flush, asynchronously from the CPU.
> > >
> > > And I think the answer about ASID is easy (on current hw).. it must be zero[*].
> >
> > Using ASID zero is really bad, because it means that you will end up sharing
> > TLB entries with whichever device is using context bank 0.
> >
> > Is the SMMU only used by the GPU in your SoC?
> >
> 
> yes, the snapdragon SoCs have two SMMU instances, one used by the GPU,
> where ASID0/cb0 is the gpu itself, and another cb is the GMU
> (basically power control for the gpu), and the second SMMU is
> everything else.

Right, in which case I'm starting to think that we should treat this GPU
SMMU instance specially. Give it its own compatible string (looks like you
need this for HUPCFG anyway) and hook in via arm_smmu_impl_init(). You can
then set IO_PGTABLE_QUIRK_ARM_TTBR1 when talking to the io-pgtable code
without having to add a domain attribute.

With that. you'll need to find a way to allow the GPU driver to call into
your own hooks for getting at the TTBR0 tables -- given that you're
programming these in the hardware, I don't think it makes sense to expose
that in the IOMMU API, since most devices won't be able to do anything with
that data. Perhaps you could install a couple of function pointers
(subdomain_alloc/subdomain_free) in the GPU device when you see it appear
from the SMMU driver? Alternatively, you could make an io_pgtable_cfg
available so that the GPU driver can interface with io-pgtable directly.

Yes, it's ugly, but I don't think it's worth trying to abstract this.

Thoughts? It's taken me a long time to figure out what's going on here,
so sorry if it feels like I'm leading you round the houses.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
