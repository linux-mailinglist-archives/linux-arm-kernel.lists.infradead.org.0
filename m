Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0FF11C58D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 06:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/PVFRYR0+TzGsE8fUvwZCaDSYUUWt7I+aXHJUnf4VAU=; b=ulcHW/vaHmD3RC
	t6Gz7E2y1v2eOuISQnSapoF7By61nE8sby+0zMcdPZ4WO6DPNGA4iNUULg8vRO7ytcBGN+d1Y+Noa
	DPHjlbximG1y9cVV6mWlLoZC9BC/qhMn1iw4NAdVosDhpVouXjMZ+ybRU7IO/lkpvOuYysvkR1jqL
	W2JuZ4e09T1ZLdFTac6D+fxaWcTqtNG8s4/5bbCqIJeWVeyxbCsZ1D1t53wJ2EUvz3zWal8MNAENH
	NUITKJpljkmu8xWzuZInZ7NOfltxAbcRNU3mMxdnGh+etd2ro/wyzqqMcPdFky1tCT16EsBNgY493
	qCqIhb5eN2C4iB20TxHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifHDh-00053K-Ac; Thu, 12 Dec 2019 05:41:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifHDZ-00052p-Kx
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 05:40:54 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD5222073D;
 Thu, 12 Dec 2019 05:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576129253;
 bh=XKhjZZ9Eq3LmyvLJDZblqLMH57FvHvbebLAz9KXwU2k=;
 h=From:To:Cc:Subject:Date:From;
 b=v4W7GJCoMDjbUoNwzl5rFXo6Rm9FMwzTk1iO/Zp3tV5G2mHEiwaOm+rVPv2lbol/R
 Hnugq+Iv8ilTrctbmt8hp9WkayBXkvi7K0Kx9ANLLsEKrxyw4so75fBMAx+O0JL49I
 qeGr9mdPtLWNTdNNeghUczai3+QdIOhHa/n9giXs=
Received: by wens.tw (Postfix, from userid 1000)
 id AF8D75FB77; Thu, 12 Dec 2019 13:40:50 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2] ARM: dma-api: fix max_pfn off-by-one error in
 __dma_supported()
Date: Thu, 12 Dec 2019 13:40:47 +0800
Message-Id: <20191212054047.26202-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_214053_712037_2ED75684 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

max_pfn, as set in arch/arm/mm/init.c:

    static void __init find_limits(unsigned long *min,
				   unsigned long *max_low,
				   unsigned long *max_high)
    {
	    *max_low = PFN_DOWN(memblock_get_current_limit());
	    *min = PFN_UP(memblock_start_of_DRAM());
	    *max_high = PFN_DOWN(memblock_end_of_DRAM());
    }

with memblock_end_of_DRAM() pointing to the next byte after DRAM. As
such, max_pfn points to the PFN after the end of DRAM.

Thus when using max_pfn to check DMA masks, we should subtract one
when checking DMA ranges against it.

Commit 8bf1268f48ad ("ARM: dma-api: fix off-by-one error in
__dma_supported()") fixed the same issue, but missed this spot.

This issue was found while working on the sun4i-csi v4l2 driver on the
Allwinner R40 SoC. On Allwinner SoCs, DRAM is offset at 0x40000000,
and we are starting to use of_dma_configure() with the "dma-ranges"
property in the device tree to have the DMA API handle the offset.

In this particular instance, dma-ranges was set to the same range as
the actual available (2 GiB) DRAM. The following error appeared when
the driver attempted to allocate a buffer:

    sun4i-csi 1c09000.csi: Coherent DMA mask 0x7fffffff (pfn 0x40000-0xc0000)
    covers a smaller range of system memory than the DMA zone pfn 0x0-0xc0001
    sun4i-csi 1c09000.csi: dma_alloc_coherent of size 307200 failed

Fixing the off-by-one error makes things work.

Fixes: 11a5aa32562e ("ARM: dma-mapping: check DMA mask against available memory")
Fixes: 9f28cde0bc64 ("ARM: another fix for the DMA mapping checks")
Fixes: ab746573c405 ("ARM: dma-mapping: allow larger DMA mask than supported")
Cc: <stable@vger.kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

Changes since v1:

  - correct max_pfn offset in the correct place.
---
 arch/arm/mm/dma-mapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index e822af0d9219..9414d72f664b 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -221,7 +221,7 @@ EXPORT_SYMBOL(arm_coherent_dma_ops);
 
 static int __dma_supported(struct device *dev, u64 mask, bool warn)
 {
-	unsigned long max_dma_pfn = min(max_pfn, arm_dma_pfn_limit);
+	unsigned long max_dma_pfn = min(max_pfn - 1, arm_dma_pfn_limit);
 
 	/*
 	 * Translate the device's DMA mask to a PFN limit.  This
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
