Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025D71F4ED0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbQEDKEjci7+grtCKN/MkclWWxvZm/GQyHKpKPW2KeA=; b=LHU0NWpsYlWOZR
	V0Q7SszxFgYR6BzMFSxuPXNHavQTS4p6Gs23sSqDvQqO3CUF9NC4i0WZEUsySIJF4jxWZSMRs1f8L
	f2xazZEsvNKxBJSd6ythZ1cbF1R3dxF/eoRWZ27b6PauNX1YQbp/XdZyKvUMZRns7Mx+hBSoEq+at
	Esc3/zT+ZJn1YqoENSwSw5KBJhQj3C2KBl+Ize9GUnBAuO/+gr+ZUG/QtLMCOBbvKqNZIK/h5/9tS
	2pIGwdh3oLUpqzwO+4xlRpZMT467NCRISdL5RIac+fxNd0TxjJ6dfzkSYYpNn79w/zRYzOx4dOI9i
	48UEanBXff41U7wq+Fbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiv6S-0001hK-El; Wed, 10 Jun 2020 07:24:52 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jiv6K-0001gz-CH; Wed, 10 Jun 2020 07:24:44 +0000
Date: Wed, 10 Jun 2020 00:24:44 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
Message-ID: <20200610072444.GA6293@infradead.org>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
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
Cc: kstewart@linuxfoundation.org, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, info@metux.net, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 tglx@linutronix.de, dillon.minfei@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ok, I finally found the original patch from Vladimir.  Comments below:

> +++ b/kernel/dma/direct.c
> @@ -456,14 +456,14 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>  #else /* CONFIG_MMU */
>  bool dma_direct_can_mmap(struct device *dev)
>  {
> -	return false;
> +	return true;
>  }
>  
>  int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>  		void *cpu_addr, dma_addr_t dma_addr, size_t size,
>  		unsigned long attrs)
>  {
> -	return -ENXIO;
> +	return vm_iomap_memory(vma, vma->vm_start, (vma->vm_end - vma->vm_start));;

I think we should try to reuse the mmu dma_direct_mmap implementation,
which does about the same.  This version has been compile tested on
arm-nommu only, let me know what you think: (btw, a nommu_defconfig of
some kind for arm would be nice..)

diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
index d006668c0027d2..e0dae570a51530 100644
--- a/kernel/dma/Kconfig
+++ b/kernel/dma/Kconfig
@@ -71,6 +71,7 @@ config SWIOTLB
 # in the pagetables
 #
 config DMA_NONCOHERENT_MMAP
+	default y if !MMU
 	bool
 
 config DMA_REMAP
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 0a4881e59aa7d6..9ec6a5c3fc578c 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -459,7 +459,6 @@ int dma_direct_get_sgtable(struct device *dev, struct sg_table *sgt,
 	return ret;
 }
 
-#ifdef CONFIG_MMU
 bool dma_direct_can_mmap(struct device *dev)
 {
 	return dev_is_dma_coherent(dev) ||
@@ -485,19 +484,6 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
 	return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
 			user_count << PAGE_SHIFT, vma->vm_page_prot);
 }
-#else /* CONFIG_MMU */
-bool dma_direct_can_mmap(struct device *dev)
-{
-	return false;
-}
-
-int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
-		void *cpu_addr, dma_addr_t dma_addr, size_t size,
-		unsigned long attrs)
-{
-	return -ENXIO;
-}
-#endif /* CONFIG_MMU */
 
 int dma_direct_supported(struct device *dev, u64 mask)
 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
