Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E325C488C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49ntNlB2Zc9Z5EJCV3pEIBAYt8cvXF4X+X8mpVXX0pE=; b=p+EDajWl6EZO6p
	SxkV56CyJ+Gl+8+m8g7PFwpNtdLXuKWCCCndJ63l7/ssBfGg60WwvZJGgkjOCUCFHTJGFgPpUDA8h
	ToWEkTsQvHcgmv/Na4NuGwfJAipBHKCMBWW+9epi7zqp8hoIsHP0UHbSqVZmEQgJpnA+kI+vlkQBa
	Gbzv06ph82MRctqypCZHLWt6gcpVWJfq+RF+IfwhC7qN95DjV39deeBwRMLR258lkycWKrnp+2Dgs
	3onL42r9k/qzBAz8/TjQQvWLh7s/nHrg6Xw2/pFvVmzm0H4PvAEPliYNjlFJpFS7XdgoYkDR3a7Bf
	2vPiHTkP+LMxmngvc2NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuPC-0008Jx-UZ; Mon, 17 Jun 2019 16:22:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuP0-0008Jd-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:22:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F004A28;
 Mon, 17 Jun 2019 09:22:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B69B33F718; Mon, 17 Jun 2019 09:22:35 -0700 (PDT)
Date: Mon, 17 Jun 2019 17:22:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhangshaokun <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v2] arm64/mm: Correct the cache line size warning with
 non coherent device
Message-ID: <20190617162233.GB34565@arrakis.emea.arm.com>
References: <20190614131141.4428-1-msys.mizuma@gmail.com>
 <aa445f8f-2576-4f78-a64e-1cde6a2f9593@hisilicon.com>
 <20190617104555.GA1367@arrakis.emea.arm.com>
 <7e567399-6f3d-b416-6636-c9f2f37ea407@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e567399-6f3d-b416-6636-c9f2f37ea407@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_092238_410610_8A3F82BC 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Masayoshi Mizuma <msys.mizuma@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 07:00:34PM +0800, Zhangshaokun wrote:
> On 2019/6/17 18:45, Catalin Marinas wrote:
> > On Sat, Jun 15, 2019 at 10:44:33AM +0800, Zhangshaokun wrote:
> >> On 2019/6/14 21:11, Masayoshi Mizuma wrote:
> >>> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> >>> index 1669618db08a..379589dc7113 100644
> >>> --- a/arch/arm64/mm/dma-mapping.c
> >>> +++ b/arch/arm64/mm/dma-mapping.c
> >>> @@ -38,10 +38,6 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
> >>>  
> >>>  static int __init arm64_dma_init(void)
> >>>  {
> >>> -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
> >>> -		   TAINT_CPU_OUT_OF_SPEC,
> >>> -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> >>> -		   ARCH_DMA_MINALIGN, cache_line_size());
> >>>  	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
> >>>  }
> >>>  arch_initcall(arm64_dma_init);
> >>> @@ -56,7 +52,17 @@ void arch_teardown_dma_ops(struct device *dev)
> >>>  void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
> >>>  			const struct iommu_ops *iommu, bool coherent)
> >>>  {
> >>> +	int cls = cache_line_size_of_cpu();
> >>
> >> whether we need this local variable, how about use cache_line_size_of_cpu
> >> directly in WARN_TAINT just like before.
> > 
> > The reason being?
> 
> Since it is inline function,  maybe it is unnecessary, it is trivial.

OTOH, you end up with two reads from the CTR_EL0 register.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
