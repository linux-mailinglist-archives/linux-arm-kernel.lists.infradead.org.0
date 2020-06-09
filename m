Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EEF1F3D99
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NONq1nFXR+tG01E241bRY7FwsHLmRitNqSNb8jubsIo=; b=LYPNKKTSEElFaM
	AWJfnI3ZZv5bvRu8DMVEWEYypsqRP6+C5bMMxk9kZYGw2oMvbSQNtLK47nd1XKZlQIUZcu9R9m9k3
	vOVDgpvE5e//XG5nsychcJ54lULm1r6BnJuR8Rzqob0fjy0j+DGYSwKCVMtzj5rpGuW+M5tcpHd9v
	zgupxAV3fOGDoh7Zfrjg+JpA10lWDV603OiKKLtC0gQsxatE+6VT5YFvr/V4EaWB0I4jfaP/S+u/E
	yLPxfA5XVaR6GORm+Q/0h868+f7wBIxDxPdmjsjD8BPH1ggdZr+sl4EYphVZI+Rssc4nCBHnWtbEl
	nZ9bmMhlzI0+Kl+jCA3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieun-00024P-0e; Tue, 09 Jun 2020 14:07:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieud-00022z-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:07:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E6E31FB;
 Tue,  9 Jun 2020 07:07:31 -0700 (PDT)
Received: from [10.57.49.155] (unknown [10.57.49.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 83BD23F66F;
 Tue,  9 Jun 2020 07:07:28 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
To: dillon.minfei@gmail.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, linux@armlinux.org.uk,
 kstewart@linuxfoundation.org, allison@lohutok.net, info@metux.net,
 tglx@linutronix.de
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
Date: Tue, 9 Jun 2020 15:08:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070735_695598_0B7C1982 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/8/20 9:30 AM, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Currently, we use dma direct to request coherent memory for driver on armv7m
> platform if 'cacheid' is zero, but dma_direct_can_mmap() is return false,
> dma_direct_mmap() return -ENXIO for CONFIG_MMU undefined platform.
> 
> so we have to back to use 'arm_nommu_dma_ops', add use_reserved_mem() to check
> if device support global or device corherent memory. if yes, then call
> set_dma_ops()
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>  arch/arm/mm/dma-mapping-nommu.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
> index 287ef898a55e..e1c213fec152 100644
> --- a/arch/arm/mm/dma-mapping-nommu.c
> +++ b/arch/arm/mm/dma-mapping-nommu.c
> @@ -14,6 +14,7 @@
>  #include <asm/cacheflush.h>
>  #include <asm/outercache.h>
>  #include <asm/cp15.h>
> +#include <linux/of.h>
>  
>  #include "dma.h"
>  
> @@ -188,6 +189,31 @@ const struct dma_map_ops arm_nommu_dma_ops = {
>  };
>  EXPORT_SYMBOL(arm_nommu_dma_ops);
>  
> +static bool use_reserved_mem(struct device *dev)
> +{
> +	struct device_node *np;
> +
> +	np = of_find_node_by_path("/reserved-memory/linux,dma");
> +
> +	if (np &&
> +		of_device_is_compatible(np, "shared-dma-pool") &&
> +		of_property_read_bool(np, "no-map") &&
> +		of_property_read_bool(np, "linux,dma-default")) {
> +		/* has global corherent mem support */
> +		of_node_put(np);
> +		return true;
> +	}
> +
> +	np = of_parse_phandle(dev->of_node, "memory-region", 0);
> +	if (np) {
> +		/* has dev corherent mem support */
> +		of_node_put(np);
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  			const struct iommu_ops *iommu, bool coherent)
>  {
> @@ -206,6 +232,6 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  		dev->archdata.dma_coherent = (get_cr() & CR_M) ? coherent : true;
>  	}
>  
> -	if (!dev->archdata.dma_coherent)
> +	if (!dev->archdata.dma_coherent || use_reserved_mem(dev))
>  		set_dma_ops(dev, &arm_nommu_dma_ops);
>  }
> 

Sorry I have to NAK this hack :(

Digging git history reveled 79964a1c2972 ("ARM: 8633/1: nommu: allow mmap when !CONFIG_MMU")
which make me wonder if diff below does the trick for you

diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 8f4bbda..8623b9e 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -456,14 +456,14 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
 #else /* CONFIG_MMU */
 bool dma_direct_can_mmap(struct device *dev)
 {
-	return false;
+	return true;
 }
 
 int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
 		void *cpu_addr, dma_addr_t dma_addr, size_t size,
 		unsigned long attrs)
 {
-	return -ENXIO;
+	return vm_iomap_memory(vma, vma->vm_start, (vma->vm_end - vma->vm_start));;
 }
 #endif /* CONFIG_MMU */

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
