Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0190F20092C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2LCxiKPeoJsnWnifQ2OcK+TV+45aRBhM0EKAVGAfmM=; b=mq19uH50KxmL2a
	PPG99Oxf21361MHgYadRvHyV7PRochjh1iwX5jWEuvfjY/DNUV5LIQcKX4B2LRz7JOWKfKeXyzT+B
	yZEz4IayGbl0PPUvctUuUeiRJAnfq7ZX+WbDDsacnW+cVmOyuiUW1MOUd4D8BaXBjTukU6vCvnaD5
	NQjVTv7LZ3GT+YPNG42sOtJkUHvxtgKRjGrCBPPNauQ9xLuKpVgd+1v6MOliHLh5EgJXC2gxKr2lw
	VN7i6ZbzRcbApyHas0/BAAhUMWt/04X9LBUf8w5rSfFUeMDnjBykqihu5xMxFusBy6CE3W/c/L7yp
	5Wv8zVXea0H3xgQ70JIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGcA-0008Tc-3B; Fri, 19 Jun 2020 12:59:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbE-0007qd-42
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:29 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwEZk082648;
 Fri, 19 Jun 2020 07:58:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571494;
 bh=1yyZ02rdUuurElexq779NNOoFqWvEfOJ8Vx4K01CaMQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=zCPXUfb33ipipjCsbHs074rbzD6imzHxj+jvtm9s9hOx63ZR4eX80uUnwrq4GyTZR
 pH9dUrN1fJQQyb56D98ERrxE7SSuS2CmZNp/qts1kgrrgigIoobK6je0BTNyifqaue
 iJhXPf2aEGDpL2kxlZbHtQscelfeBM2pcFieRuns=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05JCwEYN105675
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 07:58:14 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:14 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:14 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Hm015675;
 Fri, 19 Jun 2020 07:58:11 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 2/7] mmc: sdhci_am654: Add flag for PHY calibration
Date: Fri, 19 Jun 2020 18:27:56 +0530
Message-ID: <20200619125801.9530-3-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619125801.9530-1-faiz_abbas@ti.com>
References: <20200619125801.9530-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055828_238592_B83D5FBC 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.249 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: faiz_abbas@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Not all controllers need calibration for the PHY DLL. Add a DLL_CALIB flag
to indicate the same.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 061b4398a4f1..85a05344f825 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -97,6 +97,7 @@ struct sdhci_am654_driver_data {
 #define FREQSEL_2_BIT	(1 << 1)
 #define STRBSEL_4_BIT	(1 << 2)
 #define DLL_PRESENT	(1 << 3)
+#define DLL_CALIB	(1 << 4)
 };
 
 struct timing_data {
@@ -325,7 +326,8 @@ static const struct sdhci_pltfm_data sdhci_am654_pdata = {
 
 static const struct sdhci_am654_driver_data sdhci_am654_drvdata = {
 	.pdata = &sdhci_am654_pdata,
-	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT | DLL_PRESENT,
+	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT | DLL_PRESENT |
+		 DLL_CALIB,
 };
 
 static struct sdhci_ops sdhci_j721e_8bit_ops = {
@@ -348,7 +350,7 @@ static const struct sdhci_pltfm_data sdhci_j721e_8bit_pdata = {
 
 static const struct sdhci_am654_driver_data sdhci_j721e_8bit_drvdata = {
 	.pdata = &sdhci_j721e_8bit_pdata,
-	.flags = DLL_PRESENT,
+	.flags = DLL_PRESENT | DLL_CALIB,
 };
 
 static struct sdhci_ops sdhci_j721e_4bit_ops = {
@@ -469,7 +471,7 @@ static int sdhci_am654_init(struct sdhci_host *host)
 	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
 	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, 0x0);
 
-	if (sdhci_am654->flags & DLL_PRESENT) {
+	if (sdhci_am654->flags & DLL_CALIB) {
 		regmap_read(sdhci_am654->base, PHY_STAT1, &val);
 		if (~val & CALDONE_MASK) {
 			/* Calibrate IO lines */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
