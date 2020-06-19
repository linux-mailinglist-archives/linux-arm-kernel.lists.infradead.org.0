Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD6200935
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lOrPr9Q/yCoyykT0COLJSh+42o8gETUfPNqeh8YKhM=; b=rClPSsEG9Bu0xJ
	u/5reqfHIvaWDnxkGls7YmePQfJ6CmBlKzp6j2MFYRk7R5Lf1Q4WFLHpAGBiaS8NKdn+6dRuV9mHC
	rkSTPaLHPhuaHOLrNbU8Gfqm/O14asNADVo7uSbESweX60u09NJwR4uhC9TaHKOkEg7baqXEsUiMy
	c2+S2jQ42wjqcl30ULrW1KDl2z14mUhb00Dz5RQJjMa0dsGaYzMYdIqbkOWMsTvlU/HWJqzhP3SYD
	to2+x+dLgcm+L6QOZa8gBntj2lNAWOs5T8axfCpKRG8bqP0fFZPlpuWNNzp0L9ldY8cThCJtfOY3d
	ixm7+x0QF3sBNBfSrO9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGcy-0000dK-WA; Fri, 19 Jun 2020 13:00:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbJ-0007r2-3q
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:34 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwJen076832;
 Fri, 19 Jun 2020 07:58:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571499;
 bh=PwbBrS5/93qfz/ERIiFrMFJ9ufsq6vvpld5u8B1rVWw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OaAhax4tGjxQR/5gRuR3ZACaUwao+J3cPA03IImLNm1YndigT5RpiG4soy/Yhh2//
 RjWaqVqnOBC/4zrN4jVl1GUaydtoduXTq1y2YbISCyhFaJ3VoQWApN/H1x7EM3HcVU
 8a6Qxv8CBIFNPKRQOm+rSteo/v+l5rn5D23sMDQk=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05JCwI94081089
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 07:58:19 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:18 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:18 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Hn015675;
 Fri, 19 Jun 2020 07:58:15 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 3/7] mmc: sdhci_am654: Add Support for SR2.0
Date: Fri, 19 Jun 2020 18:27:57 +0530
Message-ID: <20200619125801.9530-4-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619125801.9530-1-faiz_abbas@ti.com>
References: <20200619125801.9530-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055833_269844_07D6F2D0 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
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

Add Support for AM65x PG2.0. Use the SoC bus framework to fixup
the driver data and skip do DLL calibration if the revision is 1.0

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 85a05344f825..365eb2819dd9 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -11,6 +11,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/property.h>
 #include <linux/regmap.h>
+#include <linux/sys_soc.h>
 
 #include "cqhci.h"
 #include "sdhci-pltfm.h"
@@ -324,12 +325,17 @@ static const struct sdhci_pltfm_data sdhci_am654_pdata = {
 	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
 };
 
-static const struct sdhci_am654_driver_data sdhci_am654_drvdata = {
+static const struct sdhci_am654_driver_data sdhci_am654_sr1_drvdata = {
 	.pdata = &sdhci_am654_pdata,
 	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT | DLL_PRESENT |
 		 DLL_CALIB,
 };
 
+static const struct sdhci_am654_driver_data sdhci_am654_drvdata = {
+	.pdata = &sdhci_am654_pdata,
+	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT | DLL_PRESENT,
+};
+
 static struct sdhci_ops sdhci_j721e_8bit_ops = {
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
 	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
@@ -376,6 +382,14 @@ static const struct sdhci_am654_driver_data sdhci_j721e_4bit_drvdata = {
 	.flags = IOMUX_PRESENT,
 };
 
+static const struct soc_device_attribute sdhci_am654_devices[] = {
+	{ .family = "AM65X",
+	  .revision = "SR1.0",
+	  .data = &sdhci_am654_sr1_drvdata
+	},
+	{/* sentinel */}
+};
+
 static void sdhci_am654_dumpregs(struct mmc_host *mmc)
 {
 	sdhci_dumpregs(mmc_priv(mmc));
@@ -587,6 +601,7 @@ static const struct of_device_id sdhci_am654_of_match[] = {
 static int sdhci_am654_probe(struct platform_device *pdev)
 {
 	const struct sdhci_am654_driver_data *drvdata;
+	const struct soc_device_attribute *soc;
 	struct sdhci_pltfm_host *pltfm_host;
 	struct sdhci_am654_data *sdhci_am654;
 	const struct of_device_id *match;
@@ -598,6 +613,12 @@ static int sdhci_am654_probe(struct platform_device *pdev)
 
 	match = of_match_node(sdhci_am654_of_match, pdev->dev.of_node);
 	drvdata = match->data;
+
+	/* Update drvdata based on SoC revision */
+	soc = soc_device_match(sdhci_am654_devices);
+	if (soc && soc->data)
+		drvdata = soc->data;
+
 	host = sdhci_pltfm_init(pdev, drvdata->pdata, sizeof(*sdhci_am654));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
