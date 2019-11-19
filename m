Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465B6102AFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IWAOdHczMyPhustmTOWxwyFZmhqNDOuKgeEn6Gax+zs=; b=VKrFT+iaw4+fWN
	3YJd8f8LxO060uom4NnTrjFN39CH0YNGCcq3N7IyBBXusQR+dD3N6mBn9cUN7nskWayABlGhZaufi
	rU9YgNG+V0o5O3psk+J6fELux1ESBVjOXHgMU8saBFbRqpNeCYCCSenZWe2T7HW+koX+6R8pYyvYI
	rroz1ZlMguGSQ8tbhYUb1jNH0hG9JVos47JlL4joFZFaoq4si/ctJ1V49sVbQQ+IGMi+rVqdYrj27
	2hCT7ZROMIQrcPqdtmYnOmPQwNYuW2blw0C80r8pwm6wtWM0uRSlDoIsmgvll1RAHuO8qeSqbSRwv
	Z4VxV5hT6BjmYLVWyPPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7ek-0006hR-JG; Tue, 19 Nov 2019 17:51:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7eb-0006gk-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:51:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id f2so24943486wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=HGunqTxsSVrmsqxuAQRNx41lItIocTvSzHu9usFa0ec=;
 b=DLlyXCBFgTcOzP3m56mvDuC1gid0j/57FTNBDJxQaHFBG+Mx73qzutr+HGMESEb3A5
 vuRsXpJCLZNNzVyQDQO/62U0ux+IrJ9sfX6QLgKQXmNbEb1I0cQlfSpYYRolt+G25giX
 Pjq4+dxzUkdmtju7EWJwH4ksQG4019NT+UMhBKBR5d1CcSgqV4ddqgCzXyG63G4ZN5yG
 rfj2+E41/H+NCa7PzXYtFM7QIbkhb4h5MtWnpxD1xAhSzN6+AtKToyw3ft4DGP05KN1v
 kELG90MeWObEexvWT74khnbgAHVy3/01ovV46ywzRKkbiiGMyhWNATDau6DdmSxCVcaZ
 5kTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=HGunqTxsSVrmsqxuAQRNx41lItIocTvSzHu9usFa0ec=;
 b=MbRZddxD69uAT35Rkr4LKnA/xWOHbDu7B1Yyg3oRd6bI5gi0OZo5XuHJ7c/93eIvB7
 +3tq3LCnbE968hFfpYfgcOi2erBxnSTHAt/dm1K7FoMggEbNhjpj+PLBox2Md10wZsPe
 XQ4sC4ImEkgZCDV7wItSHu2Eff52Bl/QVfSZEA/HlgeEelrtCWNaqv4edepIIjDG0DVM
 2h+GHUj6GJhoQfG9xXNC2tnHN01D6wKGOYW29PYg79Hhn3ymYKG1deq6ZzrC7KjG7LaZ
 RB/vehy4LYkG9zgHWNOV5k7fcJLiCmGEJDJi5/mmGxVWkQs8ByOd1ozGCeiYZqWSP0c3
 wHfQ==
X-Gm-Message-State: APjAAAVmxYwoZmvf8PkrUpz7cm4WhA1d+kzqAdMwCwX4+NG2MNmWVKN8
 KYtKrBS67vSM2ZivuRgfyQAc2w==
X-Google-Smtp-Source: APXvYqxvHwtfcRuwAWPYF4jX+cThARsQRa6mXcf9IMifxx+BP/IyrbeuDGKqDEpRqWoAPCya8LiZ0g==
X-Received: by 2002:adf:e301:: with SMTP id b1mr4336744wrj.280.1574185862662; 
 Tue, 19 Nov 2019 09:51:02 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id l13sm3766223wmh.12.2019.11.19.09.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:51:01 -0800 (PST)
Message-ID: <5dd42b85.1c69fb81.36825.244a@mx.google.com>
Date: Tue, 19 Nov 2019 09:51:01 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: master
X-Kernelci-Tree: next
X-Kernelci-Report-Type: bisect
X-Kernelci-Kernel: next-20191119
Subject: next/master bisection: boot on peach-pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com,
 Christoph Hellwig <hch@lst.de>, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Michael Ellerman <mpe@ellerman.id.au>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095105_944655_B6780525 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Burton <paulburton@kernel.org>, "kernelci.org bot" <bot@kernelci.org>,
 James Hogan <jhogan@kernel.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, iommu@lists.linux-foundation.org,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Russell King <linux@armlinux.org.uk>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

next/master bisection: boot on peach-pi

Summary:
  Start:      5d1131b4d61e Add linux-next specific files for 20191119
  Details:    https://kernelci.org/boot/id/5dd3cc9559b5147f05cf54d1
  Plain log:  https://storage.kernelci.org//next/master/next-20191119/arm/exynos_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.txt
  HTML log:   https://storage.kernelci.org//next/master/next-20191119/arm/exynos_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.html
  Result:     b037b220e71d dma-direct: unify the dma_capable definitions

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       next
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
  Branch:     master
  Target:     peach-pi
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     exynos_defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit b037b220e71dcbb34cb710e00ffad2ec025b9163
Author: Christoph Hellwig <hch@lst.de>
Date:   Tue Nov 12 17:06:04 2019 +0100

    dma-direct: unify the dma_capable definitions
    
    Currently each architectures that wants to override dma_to_phys and
    phys_to_dma also has to provide dma_capable.  But there isn't really
    any good reason for that.  powerpc and mips just have copies of the
    generic one minus the latests fix, and the arm one was the inspiration
    for said fix, but misses the bus_dma_mask handling.
    Make all architectures use the generic version instead.
    
    Signed-off-by: Christoph Hellwig <hch@lst.de>
    Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
    Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

diff --git a/arch/arm/include/asm/dma-direct.h b/arch/arm/include/asm/dma-direct.h
index b67e5fc1fe43..7c3001a6a775 100644
--- a/arch/arm/include/asm/dma-direct.h
+++ b/arch/arm/include/asm/dma-direct.h
@@ -14,23 +14,4 @@ static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
 	return __pfn_to_phys(dma_to_pfn(dev, dev_addr)) + offset;
 }
 
-static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
-{
-	u64 limit, mask;
-
-	if (!dev->dma_mask)
-		return 0;
-
-	mask = *dev->dma_mask;
-
-	limit = (mask + 1) & ~mask;
-	if (limit && size > limit)
-		return 0;
-
-	if ((addr | (addr + size - 1)) & ~mask)
-		return 0;
-
-	return 1;
-}
-
 #endif /* ASM_ARM_DMA_DIRECT_H */
diff --git a/arch/mips/include/asm/dma-direct.h b/arch/mips/include/asm/dma-direct.h
index b5c240806e1b..14e352651ce9 100644
--- a/arch/mips/include/asm/dma-direct.h
+++ b/arch/mips/include/asm/dma-direct.h
@@ -2,14 +2,6 @@
 #ifndef _MIPS_DMA_DIRECT_H
 #define _MIPS_DMA_DIRECT_H 1
 
-static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
-{
-	if (!dev->dma_mask)
-		return false;
-
-	return addr + size - 1 <= *dev->dma_mask;
-}
-
 dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr);
 phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t daddr);
 
diff --git a/arch/powerpc/include/asm/dma-direct.h b/arch/powerpc/include/asm/dma-direct.h
index a2912b47102c..e29e8a236b8d 100644
--- a/arch/powerpc/include/asm/dma-direct.h
+++ b/arch/powerpc/include/asm/dma-direct.h
@@ -2,15 +2,6 @@
 #ifndef ASM_POWERPC_DMA_DIRECT_H
 #define ASM_POWERPC_DMA_DIRECT_H 1
 
-static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
-{
-	if (!dev->dma_mask)
-		return false;
-
-	return addr + size - 1 <=
-		min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
-}
-
 static inline dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
 {
 	if (!dev)
diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
index 6db863c3eb93..991f8aa2676e 100644
--- a/include/linux/dma-direct.h
+++ b/include/linux/dma-direct.h
@@ -24,6 +24,7 @@ static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
 
 	return paddr + ((phys_addr_t)dev->dma_pfn_offset << PAGE_SHIFT);
 }
+#endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
 
 static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
 {
@@ -38,7 +39,6 @@ static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
 
 	return end <= min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
 }
-#endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
 
 #ifdef CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED
 bool force_dma_unencrypted(struct device *dev);
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [af42d3466bdc8f39806b26f593604fdc54140bcb] Linux 5.4-rc8
git bisect good af42d3466bdc8f39806b26f593604fdc54140bcb
# bad: [5d1131b4d61e52e5702e0fa4bcbec81ac7d6ef52] Add linux-next specific files for 20191119
git bisect bad 5d1131b4d61e52e5702e0fa4bcbec81ac7d6ef52
# bad: [c5e9a8e6d8139cfdabb7774c9a39c5589b8d45d0] Merge remote-tracking branch 'crypto/master'
git bisect bad c5e9a8e6d8139cfdabb7774c9a39c5589b8d45d0
# bad: [cefecf6f6be345ac0e5c4f878e4d29787918adfb] Merge remote-tracking branch 'pstore/for-next/pstore'
git bisect bad cefecf6f6be345ac0e5c4f878e4d29787918adfb
# bad: [7b46e62e776e6a55199625b511d42518e4b98d8f] Merge remote-tracking branch 'reset/reset/next'
git bisect bad 7b46e62e776e6a55199625b511d42518e4b98d8f
# good: [5f1f15283419ded3e16617ac0b79abc6f2b73bba] Merge tag 'omap-for-v5.5/dt-late-signed' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/dt
git bisect good 5f1f15283419ded3e16617ac0b79abc6f2b73bba
# good: [e1351090dd4a172fb26317ae6fa846ab13c50199] ARM: Document merges
git bisect good e1351090dd4a172fb26317ae6fa846ab13c50199
# bad: [9050eefca89eb3853d600a61e249fc9fdd8ba332] Merge remote-tracking branch 'arm/for-next'
git bisect bad 9050eefca89eb3853d600a61e249fc9fdd8ba332
# good: [0632e899eb046db54d3b1c993811e0b1b7b90b04] Merge remote-tracking branch 'spdx/spdx-linus'
git bisect good 0632e899eb046db54d3b1c993811e0b1b7b90b04
# bad: [13fb7b3bb3e314cadfe6dec3132aac31d06950b5] Merge remote-tracking branch 'dma-mapping/for-next'
git bisect bad 13fb7b3bb3e314cadfe6dec3132aac31d06950b5
# good: [0241ea8cae19b49fc1b1459f7bbe9a77f4f9cc89] modpost: free ns_deps_buf.p after writing ns_deps files
git bisect good 0241ea8cae19b49fc1b1459f7bbe9a77f4f9cc89
# good: [e380a0394c36a3a878c858418d5dd7f5f195b6fc] x86/PCI: sta2x11: use default DMA address translation
git bisect good e380a0394c36a3a878c858418d5dd7f5f195b6fc
# good: [fcbb8461fd2376ba3782b5b8bd440c929b8e4980] kbuild: remove header compile test
git bisect good fcbb8461fd2376ba3782b5b8bd440c929b8e4980
# bad: [e4d2bda544c7df90abed8aaa099b5daf1870bcf8] dma-direct: avoid a forward declaration for phys_to_dma
git bisect bad e4d2bda544c7df90abed8aaa099b5daf1870bcf8
# bad: [b037b220e71dcbb34cb710e00ffad2ec025b9163] dma-direct: unify the dma_capable definitions
git bisect bad b037b220e71dcbb34cb710e00ffad2ec025b9163
# good: [9f0e56e96c7b2039edb4bda64410216c6e9fe93f] dma-mapping: drop the dev argument to arch_sync_dma_for_*
git bisect good 9f0e56e96c7b2039edb4bda64410216c6e9fe93f
# first bad commit: [b037b220e71dcbb34cb710e00ffad2ec025b9163] dma-direct: unify the dma_capable definitions
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
