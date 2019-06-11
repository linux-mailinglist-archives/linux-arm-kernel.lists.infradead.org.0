Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4473F3D4D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGktxDVZdsMjULbfhAdLf9z9/YI0cZvFIJyyb/grFnE=; b=F53rHz5lkRAjHU
	iQJV9FcV+usHPPgLkgtL14TVt77ikWVyeAZPMK6+jJM5516ShAddAS8nGjYyegImOokHd6qU6PQED
	6HbcRJdMaIbI0pxk4VKtLPq9vMsAd3QH2nx/JCjkhXeBFpEhdtcT5aw2jtu1CFvtp0ar9Dn5AnElf
	t0M5W4Yg5SYDIRleTFtD1dHf/1UqHWTj2G0sEEJDhrgoaIGN1Rp8YHuqt0vq5mO9Bv3mJkD9GNVr7
	GX52kZFlotko1OIKQPlrGCoh/ktq0GJkkSaRdGuqdw7o9gb66NV4Zkf8+VRbVdm3SvWXHYEewZRdW
	v5GCk99CCkbcavOt7D5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hal4K-0000jd-I6; Tue, 11 Jun 2019 18:00:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hal47-0000is-NF
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:00:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCF44337;
 Tue, 11 Jun 2019 11:00:10 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A56C63F73C;
 Tue, 11 Jun 2019 11:00:09 -0700 (PDT)
Date: Tue, 11 Jun 2019 19:00:07 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH 1/2] arm64/mm: check cpu cache line size with
 non-coherent device
Message-ID: <20190611180007.him7md7gdcjs5cg6@mbp>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
 <20190611151731.6135-2-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611151731.6135-2-msys.mizuma@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_110011_803759_6C275288 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 11:17:30AM -0400, Masayoshi Mizuma wrote:
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -91,10 +91,6 @@ static int __swiotlb_mmap_pfn(struct vm_area_struct *vma,
>  
>  static int __init arm64_dma_init(void)
>  {
> -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
> -		   TAINT_CPU_OUT_OF_SPEC,
> -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> -		   ARCH_DMA_MINALIGN, cache_line_size());
>  	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
>  }
>  arch_initcall(arm64_dma_init);
> @@ -473,6 +469,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  			const struct iommu_ops *iommu, bool coherent)
>  {
>  	dev->dma_coherent = coherent;
> +
> +	if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
> +		dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> +				ARCH_DMA_MINALIGN, cache_line_size());

I'm ok in principle with this patch, with the minor issue that since
commit 7b8c87b297a7 ("arm64: cacheinfo: Update cache_line_size detected
from DT or PPTT") queued for 5.3 cache_line_size() gets the information
from DT or ACPI. The reason for this change is that the information is
used for performance tuning rather than DMA coherency.

You can go for a direct cache_type_cwg() check in here, unless Robin
(cc'ed) has a better idea.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
