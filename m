Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94FCC2034
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUTaGGvIoeoH5noZXxwHjzQX2dsy2vKRQ1vFi/Pp7RY=; b=jrPNYrPBBv18IJ
	WSYWvkhbmf5m+/gLrNt9rC4n+ekQ/syqffw2BC6UBTTuic/6+u+xiveKFb1AJfF8EoPU9kOcd3lb9
	zjYaaul6u8B6ymWlD/BDM5lblMcOdeaJwgGGD49tlChUiP10gUZnOryVbhJSQK4KGqE2jMldRdlVU
	ty5Yt2w5e5YKnbCH0cM71OnMsfyBy3xqz/1Q0A+cciFLcNqNY5mOtf87OHGMtPnAc4okPds9zcDn7
	G1rdsJvMD6aEzO3CF19398vEhW122huMBVcFHrUbZcdn7p9E4+v26J52XeUGHVad+zZOGZ4QRAM4+
	zEBA1rAxRKl1QVnYQMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEuFu-0005j8-LT; Mon, 30 Sep 2019 11:54:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEuFm-0005im-E6
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:54:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 657DF2086A;
 Mon, 30 Sep 2019 11:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569844450;
 bh=sxN3HDRlWqxY75rIYQM1HDOfrahEpU7cNGm+/2rTZhQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2e3zgB96ewlXoKsZaT392Q1++qj+aE45EfIXNo88OHQaKLBaDiEEsj/S8nQtzYZmS
 KEliPoe+bk1T/Q9K4Gdmjnz3seuMRy4KsalbAp2mLSGfDxZa/e54500o+4M6op3wGV
 J+ikwXt3ScMRBQ+qVxoDjMLX6NO002vGwUhoX6O0=
Date: Mon, 30 Sep 2019 12:54:06 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: SMMU performance
Message-ID: <20190930115405.phkllciuv62cz2fk@willie-the-truck>
References: <20190930110047.GF25745@shell.armlinux.org.uk>
 <cf3ac700-1954-8800-6ce4-9983ab27707b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf3ac700-1954-8800-6ce4-9983ab27707b@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_045410_500920_A2304015 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 12:45:28PM +0100, Robin Murphy wrote:
> On 30/09/2019 12:00, Russell King - ARM Linux admin wrote:
> > While using iperf on a platform using the ARM SMMU (v2), I notice the
> > following behaviour on v5.3 with Will's iommu patch set merged, kernel
> > lock debugging disabled.
> > 
> > With iommu.passthrough=1, three consecutive runs:
> > [  3]  0.0-10.0 sec  4.51 GBytes  3.87 Gbits/sec
> > [  3]  0.0-10.0 sec  4.53 GBytes  3.89 Gbits/sec
> > [  3]  0.0-10.0 sec  4.49 GBytes  3.86 Gbits/sec
> > 
> > With iommu.passthrough=0:
> > [  3]  0.0-10.0 sec  1.77 GBytes  1.52 Gbits/sec
> > [  3]  0.0-10.0 sec  1.82 GBytes  1.56 Gbits/sec
> > [  3]  0.0-10.0 sec  1.69 GBytes  1.45 Gbits/sec
> > 
> > Running perf record -a -g ... followed by perf report --no-children
> > shows:
> > 
> > -   15.72%  iperf            [kernel.vmlinux]    [k] _raw_spin_unlock_irqrestor
> >     - _raw_spin_unlock_irqrestore
> >        - 8.95% arm_smmu_tlb_sync_context
> >             arm_smmu_iotlb_sync
> >           - __iommu_dma_unmap
> >              + 4.54% iommu_dma_unmap_sg
> >              + 4.41% iommu_dma_unmap_page
> >        - 2.92% alloc_iova_fast
> >           - iommu_dma_alloc_iova.isra.26
> >              + 1.54% iommu_dma_map_sg
> >              + 1.38% __iommu_dma_map
> >        - 2.64% free_iova_fast
> >             iommu_dma_free_iova
> >           - __iommu_dma_unmap
> >              + 1.35% iommu_dma_unmap_sg
> >              + 1.29% iommu_dma_unmap_page
> > 
> > which seems to be pointing to the SMMU code as a bottleneck.
> > 
> > Will suggests that his iommu changes (in his for-joerg/arm-smmu/updates
> > branch), allows IOMMU driver modifications that may have a beneficial
> > effect.  Any thoughts?
> 
> We default to synchronous invalidation on unmaps, since it gives the
> greatest degree of security against misbehaving devices (and proves quite
> useful for smoking out dodgy drivers too). If you're happy with deferred
> invalidation as x86 defaults to, try "iommu.strict=0" - that should avoid
> the main serialising bottleneck. As for the IOVA allocation overhead, that's
> probably about as low as it's likely to get now - what remains is the
> inevitable "doing anything vs. doing nothing" tradeoff.
> 
> The major changes in 5.4 are for SMMUv3, so won't impact your platform.

I was wondering whether rigging up the gather stuff would help here but,
looking at the backtrace, the time is spent on the sync itself so I suspect
it won't help. Hmm... I wonder if we can do better using a sequence number
so that we can ride off the back of somebody else's sync?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
