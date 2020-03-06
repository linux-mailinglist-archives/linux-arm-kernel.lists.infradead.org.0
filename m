Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4273C17BAA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecKXo7Agr9DIagKHnb5G1zElthk8PAMoUOFj577caHM=; b=qPdiWLZUtfL5kj
	N44b1MHKDIplU6+7UuirRZhvuzUMdKP4ZWfjcd8PHj2tExoxmNroPooosimIITsiV/8siHJtouKuv
	rtUVylBxWn5J3SCEiKvbGjdPzXDd9nqXuURn6BdOvihFJW/v2E1B5dfbXz95J5DhMwS60rQ0DdBHq
	Phu7D8q0QTG4FtpPjIeHsRzBQnQ7sTnLTKqdQbxCCGKmqqK7q1l1K1ue7IdJwf81B2Pb6FBsQ7EDF
	Mfg+J1cIUnaeXAonQ9ePfQOg2z/gTF4oXU2a3w4kMSLRZuaeKT/E2rLWM8Hm69ttdxO2cczV3c7lR
	HckyT/lKE5jq08EPHVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAQ2-0002uE-2U; Fri, 06 Mar 2020 10:41:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAO4-00081R-JZ; Fri, 06 Mar 2020 10:39:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BAF70B1A6;
 Fri,  6 Mar 2020 10:39:22 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 03/10] mmc: sdhci: arsan: Use quirk instead of custom
 set_power()
Date: Fri,  6 Mar 2020 11:38:48 +0100
Message-Id: <20200306103857.23962-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306103857.23962-1-nsaenzjulienne@suse.de>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023925_053390_5108CC0B 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of SDHCI_QUIRK2_SET_BUS_VOLTAGE there is no need
to use a custom set_power() implementation as the quirk takes care of
configuring the bus voltage register even when powering trough a
regulator.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/mmc/host/sdhci-of-arasan.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 0146d7dd315b..928953bbdc10 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -325,17 +325,6 @@ static int sdhci_arasan_voltage_switch(struct mmc_host *mmc,
 	return -EINVAL;
 }
 
-static void sdhci_arasan_set_power(struct sdhci_host *host, unsigned char mode,
-		     unsigned short vdd)
-{
-	if (!IS_ERR(host->mmc->supply.vmmc)) {
-		struct mmc_host *mmc = host->mmc;
-
-		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
-	}
-	sdhci_set_power_noreg(host, mode, vdd);
-}
-
 static const struct sdhci_ops sdhci_arasan_ops = {
 	.set_clock = sdhci_arasan_set_clock,
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
@@ -343,7 +332,6 @@ static const struct sdhci_ops sdhci_arasan_ops = {
 	.set_bus_width = sdhci_set_bus_width,
 	.reset = sdhci_arasan_reset,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
-	.set_power = sdhci_arasan_set_power,
 };
 
 static const struct sdhci_pltfm_data sdhci_arasan_pdata = {
@@ -351,7 +339,8 @@ static const struct sdhci_pltfm_data sdhci_arasan_pdata = {
 	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
 	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
 			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
-			SDHCI_QUIRK2_STOP_WITH_TC,
+			SDHCI_QUIRK2_STOP_WITH_TC |
+			SDHCI_QUIRK2_SET_BUS_VOLTAGE,
 };
 
 static struct sdhci_arasan_of_data sdhci_arasan_data = {
@@ -362,7 +351,8 @@ static const struct sdhci_pltfm_data sdhci_arasan_zynqmp_pdata = {
 	.ops = &sdhci_arasan_ops,
 	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
 			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
-			SDHCI_QUIRK2_STOP_WITH_TC,
+			SDHCI_QUIRK2_STOP_WITH_TC |
+			SDHCI_QUIRK2_SET_BUS_VOLTAGE,
 };
 
 static struct sdhci_arasan_of_data sdhci_arasan_zynqmp_data = {
@@ -414,7 +404,6 @@ static const struct sdhci_ops sdhci_arasan_cqe_ops = {
 	.set_bus_width = sdhci_set_bus_width,
 	.reset = sdhci_arasan_reset,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
-	.set_power = sdhci_arasan_set_power,
 	.irq = sdhci_arasan_cqhci_irq,
 };
 
@@ -422,7 +411,8 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
 	.ops = &sdhci_arasan_cqe_ops,
 	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
 	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
-			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+		   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
+		   SDHCI_QUIRK2_SET_BUS_VOLTAGE,
 };
 
 static struct sdhci_arasan_of_data sdhci_arasan_rk3399_data = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
