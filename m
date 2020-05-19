Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EE41D9318
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/dNUp2GllrxigzjsVmck0H62pw60SkrMQqogO2qRk6U=; b=QHyxz1EAAPimFR
	QE226RLcLdjpO8SQUxblVaKWhH27xq/QI12uJ00IvFOFEKKdgWTQVswtdmd+RjjlkzeMSPPw+3Me8
	thfBU02GB9tq60ufiKea50mVVXOwj55hd8SptOgZ7yD/dpYsfsMjVgcPTKWltTOkktwpWTJ9GzAc3
	jcFm6xs9dQ6eVVr5TyFXbm2BHTXDGpKTRrBBIarsWLllqUecoeWMm0LL/RGDxiNjZJnqEjtrhFpSm
	pf2LjJa9HqWhCBUMXm7nhUIpSev1hTjP2X2Rjtz0IhPnN/aGxIDIgOV8LdxHyWusye/EWoxvwORGe
	lhhV8nBPO0G3N/FKBYtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayM1-0003v5-H2; Tue, 19 May 2020 09:16:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayLt-0003u5-3D
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:15:58 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3006BE2481FF2DFF7BBE;
 Tue, 19 May 2020 17:15:45 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 19 May 2020 17:15:35 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Joerg Roedel <joro@8bytes.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "Maxime Ripard" <maxime@cerno.tech>
Subject: [PATCH -next] iommu/sun50i: Fix return value check in
 sun50i_iommu_probe()
Date: Tue, 19 May 2020 09:18:57 +0000
Message-ID: <20200519091857.134170-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_021557_302391_75DA7F65 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, iommu@lists.linux-foundation.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function devm_platform_ioremap_resource() returns
ERR_PTR() not NULL. The NULL test in the return value check must be
replaced with IS_ERR().

Fixes: 4100b8c229b3 ("iommu: Add Allwinner H6 IOMMU driver")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/iommu/sun50i-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index 9c763d4a8e2a..1fa09ddcebd4 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -941,7 +941,7 @@ static int sun50i_iommu_probe(struct platform_device *pdev)
 	}
 
 	iommu->base = devm_platform_ioremap_resource(pdev, 0);
-	if (!iommu->base) {
+	if (IS_ERR(iommu->base)) {
 		ret = PTR_ERR(iommu->base);
 		goto err_free_group;
 	}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
