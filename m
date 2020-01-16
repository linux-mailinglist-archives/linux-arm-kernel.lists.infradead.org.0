Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D03413E248
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+kSaYSDvaJ+3BBGN+iH2veay+sjyrl1n1XS2tJbWyc=; b=eB9q975sl4QbQs
	KcA2DU5l1n2Gqb+AdAFghEXJBYMk1HeN3UushCKwnPZ8lZ2dz7r6Ggj/oAnuti4y0wAS8E1rYCwk9
	YCFY6pR7X+WwEO9UQitYg0ZtXFQZpBeGKVCfs3BCGk8GIS44i5j0iBnFmoGtwEb8lwh6UVHjW/FBT
	rurKk/XzcETwUArWwAv8+bL6HKtOA9KqHKliAk18RTJocka8Rcrh48OidhgqSNf/NlsBtu9FScXsC
	3F4Ob+k1QK3JxasrAEDyWxflnremzX3LkfYIAjhxxSpsvSdNlCpGdtjLiuClpFtPJuCf5qaHw0DS+
	/wNytLv0+opy+/am122A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8QD-0001LK-Uh; Thu, 16 Jan 2020 16:55:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8OK-0008I2-4c; Thu, 16 Jan 2020 16:53:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97C5220730;
 Thu, 16 Jan 2020 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193586;
 bh=ViTdC+sbQT1UM8OUGMtOmel1qE2swUvEeqsuUj1+HQk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w/k1U4HzV4SlFiIAII2jp4ma78a43t45LjdFqgdjb6fu+YXBFanKKloIUFiPR3M+y
 o4Cyww2L6qSbXfn6YRKnWLqmxfXgy5dM6QxIQjX23/cyuLti2vb7sn0kgHsQ6bBEXg
 KK9bTgZbn3YOoMH9EoCL/oYDpQuZ3FmCA7rB8f4A=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 127/205] iommu/mediatek: Correct the
 flush_iotlb_all callback
Date: Thu, 16 Jan 2020 11:41:42 -0500
Message-Id: <20200116164300.6705-127-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085308_438557_3AD08B85 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yong Wu <yong.wu@mediatek.com>

[ Upstream commit 2009122f1d83dd8375572661961eab1e7e86bffe ]

Use the correct tlb_flush_all instead of the original one.

Fixes: 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API TLB sync")
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/iommu/mtk_iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 67a483c1a935..76b9388cf689 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -447,7 +447,7 @@ static size_t mtk_iommu_unmap(struct iommu_domain *domain,
 
 static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
 {
-	mtk_iommu_tlb_sync(mtk_iommu_get_m4u_data());
+	mtk_iommu_tlb_flush_all(mtk_iommu_get_m4u_data());
 }
 
 static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
