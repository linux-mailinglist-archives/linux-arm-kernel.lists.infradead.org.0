Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6859912D725
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 09:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CZKI7T+13l8x/keYo5lNxGQMUwyYkogXUpfvl2Wt81Y=; b=PSk
	2M5K/sLfxSPKxFCQ17MJfPzDENNECY0m4eiamzQDsCUGqCLhHyeH0kcp2SCt/nwdW2UKhYI/5cFGp
	UqModJ/oBXnucsntsDThy+cMzEL1WDlk9ILKmtZcXCKoefDGXAplZHeSKdvkKRmLB96JNkqQVhWIN
	Ba+djcyg+RSSyuSd1oYfM7E4TLNGxU2Ib9q/2QJusnV/3j7sXsZlFxLA/AAsUxpPHxC5agqVrqV/q
	S4/GnxevAaj/q/8VLPQWec/Kj1tPITa4FzDkZYE0BDc62cf0zg5oTAyyDH/IfAK/AUO/KynjjIydR
	qspiF+elrR9W+aMwzAcp06D/LqUHeMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDAr-0001MT-1c; Tue, 31 Dec 2019 08:46:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDAi-0001MA-Hd
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 08:46:37 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73FBF206D9;
 Tue, 31 Dec 2019 08:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577781995;
 bh=N+mb5kzkC+/jQqgTQg/iLdcfYCH1MlyJvn+yg/LGA0A=;
 h=From:To:Cc:Subject:Date:From;
 b=U1CJmPK099QMqNkzK0JvajMZ4genSOrHHVhxwa9xPTKIpiWhy/0qRSRyUeVL/zert
 ZQ53UJizYsyWHAIyZH/Cp1oORVxGvwHaXgFjdYgMgNxx+g9X+GKwZFkqe3sFXOVeyI
 tHfhnib17vuZB8vRX+jH+RW7MypPOO75ad4acibU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: [RFT] iommu: omap: Fix -Woverflow warnings when compiling on 64-bit
 architectures
Date: Tue, 31 Dec 2019 09:46:27 +0100
Message-Id: <1577781987-32035-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_004636_604388_755F11AA 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tero Kristo <t-kristo@ti.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Suman Anna <s-anna@ti.com>, Douglas Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although the OMAP IOMMU driver supports only ARMv7 (32-bit) platforms,
it can be compile tested for other architectures, including 64-bit ones.
In such case the warning appears:

       In file included from drivers/iommu/omap-iommu.c:33:0:
       drivers/iommu/omap-iommu.c: In function 'omap_iommu_iova_to_phys':
    >> drivers/iommu/omap-iopgtable.h:44:21: warning: large integer implicitly truncated to unsigned type [-Woverflow]
        #define IOPTE_MASK  (~(IOPTE_SIZE - 1))
                            ^
    >> drivers/iommu/omap-iommu.c:1641:41: note: in expansion of macro 'IOPTE_MASK'
           ret = omap_iommu_translate(*pte, da, IOPTE_MASK);
                                                ^~~~~~~~~~

Fix this by using architecture-depending types in omap_iommu_translate():
1. Pointer should be cast to unsigned long,
2. Virtual addresses should be cast to dma_addr_t.

On 32-bit this will be the same as original code (using u32).  On 64-bit
it should produce meaningful result, although it does not really matter.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Not tested on hardware.
---
 drivers/iommu/omap-iopgtable.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/omap-iopgtable.h b/drivers/iommu/omap-iopgtable.h
index 1a4adb59a859..51d74002cc30 100644
--- a/drivers/iommu/omap-iopgtable.h
+++ b/drivers/iommu/omap-iopgtable.h
@@ -63,7 +63,8 @@
  *
  * va to pa translation
  */
-static inline phys_addr_t omap_iommu_translate(u32 d, u32 va, u32 mask)
+static inline phys_addr_t omap_iommu_translate(unsigned long d, dma_addr_t va,
+					       dma_addr_t mask)
 {
 	return (d & mask) | (va & (~mask));
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
