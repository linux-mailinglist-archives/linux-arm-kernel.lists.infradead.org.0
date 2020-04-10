Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9311A476F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tpGn0Tp3v/cZJU6a7D2d03UrF7jDD2fM6t3pYen7RIQ=; b=Q1s
	5g5OAgBgAkXejRIFjEtJ9j0d9iXj3KCii1/MK0j1oGoeql8Nkp4gl+eIMuCYEJ7PhHM3rMoD5lqho
	ganH57OASDNJYl2hucVxPtqP0QTos9mAFgqVb37rKppR+lrIY+BsdnjwnYRFPacFXNUkscSlnNcPW
	tWYGEGj1kBrXfyBHJO+QA6B1Zvt0PiKVzKQhBxgHwCQmfiAThHxrrLmRI9RoP7036rGKMDmA9jv5f
	p9PWyu8zcNaAz1hjVgmf9rLb1pyVFuX21QzEk9zJX+5Fl4P6NbmYrtV1uQO5HBnrj2GoQJQTE2bwf
	lxz8/UWrnb9caWTBjifieqFc/fWZ80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMugP-0002jX-Lj; Fri, 10 Apr 2020 14:31:01 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMugI-0002iF-7H
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:30:55 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id R2Wp2200M5USYZQ062Wp8i; Fri, 10 Apr 2020 16:30:49 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jMugD-0004re-5L; Fri, 10 Apr 2020 16:30:49 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jMugD-00058K-3B; Fri, 10 Apr 2020 16:30:49 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] iommu: Fix MTK_IOMMU dependencies
Date: Fri, 10 Apr 2020 16:30:47 +0200
Message-Id: <20200410143047.19691-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_073054_409712_300A07A4 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If NO_DMA=y (e.g. Sun-3 all{mod,yes}-config):

    drivers/iommu/dma-iommu.o: In function `iommu_dma_mmap':
    dma-iommu.c:(.text+0x836): undefined reference to `dma_pgprot'

IOMMU_DMA must not be selected, unless HAS_DMA=y.

Hence fix this by making MTK_IOMMU depend on HAS_DMA.
While at it, remove the dependency on ARM || ARM64, as that is already
implied by the dependency on ARCH_MEDIATEK.

Fixes: e93a1695d7fb5513 ("iommu: Enable compile testing for some of drivers")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 drivers/iommu/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 58b4a4dbfc78b9a5..bead9aaea8429447 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -457,7 +457,7 @@ config S390_AP_IOMMU
 
 config MTK_IOMMU
 	bool "MTK IOMMU Support"
-	depends on ARM || ARM64 || COMPILE_TEST
+	depends on HAS_DMA
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 	select ARM_DMA_USE_IOMMU
 	select IOMMU_API
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
