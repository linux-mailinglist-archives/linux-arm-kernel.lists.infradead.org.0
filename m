Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACED416B33E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 22:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XbrLy2icWeL3irEJVMqL5D2vLXq6IM9o24dCAp2tBY=; b=TrfQGRENuxWAR7
	BL0+dHxkHqH0zXu7Bm2egnglN6JxS1KUaJjdZEPAn+vAaErmLavmE3p+YHICHdjPxDt9C/+ApePfT
	LMrupPt20+G8o31U7X9Jr7ItXZIhkAyrsNpe7X7J9mCM04eErZLqHgabauTd1WDM5Bi2edia2Ywlx
	YAf81oX3hFmsfFo6iQB5vQv7SGGJGVmmC4IlxAsum0Mx1quGUqWDDlBaPEdNrHONNVIOBDiVGi/SL
	gcZG2+bVH0zZ2/hqDfjS1D0nm2VNY3vLtkEvqHPTn6MYpBtn+wbB5JHfory/P7OLYpqbo3PuX6l1+
	wnE9VdxBigKz02Gx59Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6LfZ-0004FP-Fc; Mon, 24 Feb 2020 21:53:41 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6LfO-0004E9-SM
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 21:53:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 13:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="226126679"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.157])
 by orsmga007.jf.intel.com with ESMTP; 24 Feb 2020 13:53:28 -0800
Date: Mon, 24 Feb 2020 13:53:28 -0800
From: Ira Weiny <ira.weiny@intel.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 4/5] dma-direct: provide a arch_dma_clear_uncached hook
Message-ID: <20200224215327.GB11565@iweiny-DESK2.sc.intel.com>
References: <20200224194446.690816-1-hch@lst.de>
 <20200224194446.690816-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224194446.690816-5-hch@lst.de>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_135330_931611_648D9421 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Jonas Bonn <jonas@southpole.se>, Mark Rutland <mark.rutland@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 linux-arch@vger.kernel.org, Stafford Horne <shorne@gmail.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 11:44:44AM -0800, Christoph Hellwig wrote:
> This allows the arch code to reset the page tables to cached access when
> freeing a dma coherent allocation that was set to uncached using
> arch_dma_set_uncached.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/Kconfig                    | 7 +++++++
>  include/linux/dma-noncoherent.h | 1 +
>  kernel/dma/direct.c             | 2 ++
>  3 files changed, 10 insertions(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 090cfe0c82a7..c26302f90c96 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -255,6 +255,13 @@ config ARCH_HAS_SET_DIRECT_MAP
>  config ARCH_HAS_DMA_SET_UNCACHED
>  	bool
>  
> +#
> +# Select if the architectures provides the arch_dma_clear_uncached symbol
> +# to undo an in-place page table remap for uncached access.
> +#
> +config ARCH_HAS_DMA_CLEAR_UNCACHED
> +	bool
> +
>  # Select if arch init_task must go in the __init_task_data section
>  config ARCH_TASK_STRUCT_ON_STACK
>  	bool
> diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
> index 1a4039506673..b59f1b6be3e9 100644
> --- a/include/linux/dma-noncoherent.h
> +++ b/include/linux/dma-noncoherent.h
> @@ -109,5 +109,6 @@ static inline void arch_dma_prep_coherent(struct page *page, size_t size)
>  #endif /* CONFIG_ARCH_HAS_DMA_PREP_COHERENT */
>  
>  void *arch_dma_set_uncached(void *addr, size_t size);
> +void arch_dma_clear_uncached(void *addr, size_t size);
>  
>  #endif /* _LINUX_DMA_NONCOHERENT_H */
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index f01a8191fd59..a8560052a915 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -219,6 +219,8 @@ void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
>  
>  	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr))
>  		vunmap(cpu_addr);
> +	else if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_CLEAR_UNCACHED))
> +		arch_dma_clear_uncached(cpu_addr, size);

Isn't using arch_dma_clear_uncached() before patch 5 going to break
bisectability?

Ira

>  
>  	dma_free_contiguous(dev, dma_direct_to_page(dev, dma_addr), size);
>  }
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
