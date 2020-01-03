Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF3B12FA4F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 17:27:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdpKv69yro8SI/9LzBguK3irVyqE4QyWT9c/tcm0ADs=; b=MMGkY5jpzC1+5R
	uoTqk3vxC92LUie6jj/cIbYSCwMmtPIkyQgeH1hWfndvO6TDKc1h34V7QzWjomSZVRSqMqWeZgxCy
	Vhfg0B7EzTtxbgVZP57GE1rHJBOZTcva9XdzXsk39GTwQn5VtWTuRzCIhHwg/eiGpgQ2keQJYqGht
	maHlLjhTEChXf/hLyREWx3vmjqXyZtc8pT4xYDgtrCm/qn+gja7s3ZNEfq7IZVEcRpQXO47O5GCpu
	V396V+iatfi2eK6vQx7nnktfGiichW08rno98g9k4qhYql1Xm1n4Ie0On1xJuyLInQLF8egz7BC9x
	hkcEaJ0V1kHhLcKLeJkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inPmx-0006IH-Mo; Fri, 03 Jan 2020 16:27:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inPmX-00065F-Gx
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 16:26:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id j42so42907741wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 08:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=89mFA8e7Xc7aCGnee/vBVuK6j5IjAiZj3SvE/aRAZkU=;
 b=tfxrTNAlbO1a4huM8IDy6tBKcl5I9hIGs22EGye9w5UqqHWTreoNTQ8QYcvb7YXmnN
 35WIII5O06Ed79JL1L2aWb4w4vlKdqPa68lhyM/kYS76+BuF0TNXQ3JdF6VKtsRVcIxt
 namNuW/NRTfnECEKBlixtu8EePuaeEnnCl+L1sqFgUij9RjLaFDsjrGZMqb0/B5JH6p1
 AwiiURZ7VLU5sgapnHFWxQ1B2ucVV3FT9uJwtXplth4sy+9CkpmwaKmoyLNSHWcsxFij
 MIDfBHJ+jR49lz5qMC9uZDHOTy31/xy7TXDvyNMEwMvBHQrgYoKqOPdIi02WnBU2luMd
 KTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=89mFA8e7Xc7aCGnee/vBVuK6j5IjAiZj3SvE/aRAZkU=;
 b=NJbSDD28kX/7+6zLGM0Of4F2/x3r6NZ+27I/CrmLB6d5IdDKxvdyUnPl6S+DfzCFHJ
 yVvP32jnEB5l6NBwdFAQeA0vgiPqGtBKWDQbkyRTFqrgccANcnZPGpcO+mPHVybcOi9z
 ROoGtfccdmeLNcjziecwVayBp7Eq3DNS0OQ6WWIGUf5K9eM0r1K3bx4a7Y25TteuxI2L
 UyfatKxWG57AEs+mdllb+e2JKOSyJIzsCKon2yHKA+WxrqMeYd0YxX2LA+PGv4vZXO6I
 2vy8iCqpToR3W3lSBxGJ8FdHSNHoPZdlCeG4GZ1J1lZ9t77B2a3pIzea4oNtfbY9LCI4
 Z9Dw==
X-Gm-Message-State: APjAAAXZDNtPcceCQndSbUShT3S0QKGPOJM1GU1+ozoM06NKVuKNpCf/
 sWxXSNS6c34PgRHGEFAbY3TSUw==
X-Google-Smtp-Source: APXvYqwPg2MhuwqZ0oIndjKJulvZt5tg9dwauR6SSxBiZJ9j/GpPtJP4TrTegUABwWAZ4oYoiSU4Og==
X-Received: by 2002:adf:e591:: with SMTP id l17mr82260400wrm.139.1578068796095; 
 Fri, 03 Jan 2020 08:26:36 -0800 (PST)
Received: from radium.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x14sm12564234wmj.42.2020.01.03.08.26.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 08:26:35 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] iommu/mediatek: add support for MT8167
Date: Fri,  3 Jan 2020 17:26:32 +0100
Message-Id: <20200103162632.109553-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200103162632.109553-1-fparent@baylibre.com>
References: <20200103162632.109553-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_082637_563747_E2FF4C5D 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, matthias.bgg@gmail.com, joro@8bytes.org,
 robh+dt@kernel.org, Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the IOMMU on MT8167

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/iommu/mtk_iommu.c | 11 ++++++++++-
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 6fc1f5ecf91e..5fc6178a82dc 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -569,7 +569,8 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
 	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
 
-	if (data->plat_data->m4u_plat == M4U_MT8173)
+	if (data->plat_data->m4u_plat == M4U_MT8173 ||
+	    data->plat_data->m4u_plat == M4U_MT8167)
 		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
 	else
 		regval = lower_32_bits(data->protect_base) |
@@ -782,6 +783,13 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 	.larbid_remap = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
 };
 
+static const struct mtk_iommu_plat_data mt8167_data = {
+	.m4u_plat     = M4U_MT8167,
+	.has_4gb_mode = true,
+	.reset_axi    = true,
+	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
+};
+
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.has_4gb_mode = true,
@@ -798,6 +806,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
 
 static const struct of_device_id mtk_iommu_of_ids[] = {
 	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
+	{ .compatible = "mediatek,mt8167-m4u", .data = &mt8167_data},
 	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
 	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
 	{}
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index ea949a324e33..cb8fd5970cd4 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -30,6 +30,7 @@ struct mtk_iommu_suspend_reg {
 enum mtk_iommu_plat {
 	M4U_MT2701,
 	M4U_MT2712,
+	M4U_MT8167,
 	M4U_MT8173,
 	M4U_MT8183,
 };
-- 
2.25.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
