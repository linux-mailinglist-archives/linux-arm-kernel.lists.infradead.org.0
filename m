Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BBF178F68
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 12:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9HsAemmCs+lfLX8kkYnPIUJJkzR6ZRGaXbJRXk7TJvE=; b=fs9KYWy8Dj7M8q
	xE875ADlIhU1e8KH/vsRYVohMDNazqSuZIW6mxVG+zXd6XeEJBUjh9kbEFTMUZW9BeNBmE6m6PL1Y
	vC/wuk6suUpN4MhBl3/VYGGTiyrfbTZI4b+EZzO61ZSEC/MCh977Yjr3NZS/Ald0OSePJeSDc/H4R
	UlF2BFMy4DjoLyUI0c576bc/BQpnQsxmnwY9SBzMtDhXemJCipE3x2K771BQaqLZaIglbShkI0QgB
	cmBoKoMzOQI1J6IsH3+n8JXtSh/CyGfComHLOreXS4PRgdrz7vhEPFKzNDVMWHjXxIGnFiLgf49bO
	+owl0ke6sQLjvJW67xPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9RwT-0003nx-FK; Wed, 04 Mar 2020 11:11:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9RwK-0003n3-2e
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 11:11:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41F6520709;
 Wed,  4 Mar 2020 11:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583320305;
 bh=6QGmwW91nEJvgxEq+40qvnflN5tJsMSuNiAE6L04isA=;
 h=From:To:Cc:Subject:Date:From;
 b=CQKgD6CQPxw+O3Y3MLwSfh7ElCLjT18osaxje158rq6UtfnVF+Xj0GmwvRoitv2Hv
 fYaxSDobn4YRorkPEW5a8eWk6X9VbJQM/liqcf0rQFLiOqr7kjaLEEAxxtbvIV1CQ0
 oBTWpTNEtELu72smIlmu02oZceuEvNkfsyooD/rI=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j9RwF-009yDa-GB; Wed, 04 Mar 2020 11:11:43 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] iommu/dma: Fix MSI reservation allocation
Date: Wed,  4 Mar 2020 11:11:17 +0000
Message-Id: <20200304111117.3540-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, robin.murphy@arm.com,
 jroedel@suse.de, will@kernel.org, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_031148_170077_049995F4 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Auger <eric.auger@redhat.com>, Joerg Roedel <jroedel@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The way cookie_init_hw_msi_region() allocates the iommu_dma_msi_page
structures doesn't match the way iommu_put_dma_cookie() frees them.

The former performs a single allocation of all the required structures,
while the latter tries to free them one at a time. It doesn't quite
work for the main use case (the GICv3 ITS where the range is 64kB)
when the base granule size is 4kB.

This leads to a nice slab corruption on teardown, which is easily
observable by simply creating a VF on a SRIOV-capable device, and
tearing it down immediately (no need to even make use of it).
Fortunately, this only affects systems where the ITS isn't translated
by the SMMU, which are both rare and non-standard.

Fix it by allocating iommu_dma_msi_page structures one at a time.

Fixes: 7c1b058c8b5a3 ("iommu/dma: Handle IOMMU API reserved regions")
Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <jroedel@suse.de>
Cc: Will Deacon <will@kernel.org>
Cc: stable@vger.kernel.org
---
* From v1:
  - Got rid of the superfluous error handling (Robin)
  - Clarified that it only affects a very small set of systems
  - Added Eric's RB (which I assume still stands)

 drivers/iommu/dma-iommu.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index a2e96a5fd9a7..ba128d1cdaee 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -177,15 +177,15 @@ static int cookie_init_hw_msi_region(struct iommu_dma_cookie *cookie,
 	start -= iova_offset(iovad, start);
 	num_pages = iova_align(iovad, end - start) >> iova_shift(iovad);
 
-	msi_page = kcalloc(num_pages, sizeof(*msi_page), GFP_KERNEL);
-	if (!msi_page)
-		return -ENOMEM;
-
 	for (i = 0; i < num_pages; i++) {
-		msi_page[i].phys = start;
-		msi_page[i].iova = start;
-		INIT_LIST_HEAD(&msi_page[i].list);
-		list_add(&msi_page[i].list, &cookie->msi_page_list);
+		msi_page = kmalloc(sizeof(*msi_page), GFP_KERNEL);
+		if (!msi_page)
+			return -ENOMEM;
+
+		msi_page->phys = start;
+		msi_page->iova = start;
+		INIT_LIST_HEAD(&msi_page->list);
+		list_add(&msi_page->list, &cookie->msi_page_list);
 		start += iovad->granule;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
