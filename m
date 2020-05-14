Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A801D303C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mxcmv+n0Z3Pb9m4gD1Q8Q5uzKATkP6HjW+twzADb87Q=; b=lpJxwSH2/o3GZgV0OFGV62dERN
	+s/xoW69mzD7QTUp8UjmvLsybIPLiWMnkG5rLj5w5ih94u7QZVSVpUiIlcG4Aid/cgsNh+hAqGFtm
	ngQ/uF0dkOc5Ep8nhGXcZmzP+8Gn0inAESX5owwUcW+Jh7NLHxMFlsP+UKieSehT2hPIyPF/bIZ5h
	5sJwDEkpzEEGprl+f4bUF1trn7BOiOMoBBMfkKBRMMmLV8LySkk9ywc6S1Wh0bwH5Gjd0htrxdfXa
	crdDd9AgnrVJ2PmeRjBQo6JN6rwRnoJAgV8OlnD9cjpnXBacPKqL/S30b1HSXmjnqzUwvq5zIpiTG
	aQQDO0cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDGC-0004Jk-Vb; Thu, 14 May 2020 12:46:48 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDFs-0004AY-PW
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:46:30 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id AD2E5273; Thu, 14 May 2020 14:46:22 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/2] iommu/sun50i: Use __GFP_ZERO instead of memset()
Date: Thu, 14 May 2020 14:46:21 +0200
Message-Id: <20200514124621.25999-2-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514124621.25999-1-joro@8bytes.org>
References: <20200514124621.25999-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_054629_467812_C12E7B0E 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jroedel@suse.de, joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Allocate zeroed memory so there is no need to memset it to 0 in the
driver.

Cc: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/sun50i-iommu.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index a52f52eff7c8..9c763d4a8e2a 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -616,11 +616,10 @@ static struct iommu_domain *sun50i_iommu_domain_alloc(unsigned type)
 	    iommu_get_dma_cookie(&sun50i_domain->domain))
 		goto err_free_domain;
 
-	sun50i_domain->dt = (u32 *)__get_free_pages(GFP_KERNEL,
+	sun50i_domain->dt = (u32 *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
 						    get_order(DT_SIZE));
 	if (!sun50i_domain->dt)
 		goto err_put_cookie;
-	memset(sun50i_domain->dt, 0, DT_SIZE);
 
 	refcount_set(&sun50i_domain->refcnt, 1);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
