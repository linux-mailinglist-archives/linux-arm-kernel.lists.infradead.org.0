Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E70317BA8A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAOCPPGJkVLFZYxKRDlGr6dIhIchG+U23JXjWA51BfQ=; b=MBfuB+ZsRRavtC
	3SNmTrlXlfUjbt5lKdnBV9lGrmBHz2fCKxRcsuzxK3qXsddjMDeIR/ErwKDvTx61Ev/vZh4iJdny4
	UCXnsQDpXotpbV+IdTtlgfB0QtizhmQ04ZilgUpv3nRAHKJMwJ2VeOzqe8YKcthA8YYBgFUwSZOE0
	olfScvrMfXFPpFei6z2sQnABAIyy5PDBPQPvzt+RMCpsFdbJbVTNxHij5IUJDG2r+px4y7Iwsnvpm
	KFmdRrq6DRarc4iCWPwfjuegE7Cxb1Zgf2qhiMYRtFJVDxRp32ubyrDmLKT5PvD/uZ4uQkwR4hjij
	d6TwuGwgAit2UX5eVPiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAOq-00009G-88; Fri, 06 Mar 2020 10:40:12 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAO3-0007zU-1T; Fri, 06 Mar 2020 10:39:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A510AADC9;
 Fri,  6 Mar 2020 10:39:21 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 02/10] mmc: sdhci: milbeaut: Use quirk instead of custom
 set_power()
Date: Fri,  6 Mar 2020 11:38:47 +0100
Message-Id: <20200306103857.23962-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306103857.23962-1-nsaenzjulienne@suse.de>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023923_281318_EC25DC97 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
 drivers/mmc/host/sdhci-milbeaut.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/mmc/host/sdhci-milbeaut.c b/drivers/mmc/host/sdhci-milbeaut.c
index 92f30a1db435..6a935554c54d 100644
--- a/drivers/mmc/host/sdhci-milbeaut.c
+++ b/drivers/mmc/host/sdhci-milbeaut.c
@@ -121,17 +121,6 @@ static void sdhci_milbeaut_reset(struct sdhci_host *host, u8 mask)
 	}
 }
 
-static void sdhci_milbeaut_set_power(struct sdhci_host *host,
-			unsigned char mode, unsigned short vdd)
-{
-	if (!IS_ERR(host->mmc->supply.vmmc)) {
-		struct mmc_host *mmc = host->mmc;
-
-		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
-	}
-	sdhci_set_power_noreg(host, mode, vdd);
-}
-
 static const struct sdhci_ops sdhci_milbeaut_ops = {
 	.voltage_switch = sdhci_milbeaut_soft_voltage_switch,
 	.get_min_clock = sdhci_milbeaut_get_min_clock,
@@ -139,7 +128,6 @@ static const struct sdhci_ops sdhci_milbeaut_ops = {
 	.set_clock = sdhci_set_clock,
 	.set_bus_width = sdhci_set_bus_width,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
-	.set_power = sdhci_milbeaut_set_power,
 };
 
 static void sdhci_milbeaut_bridge_reset(struct sdhci_host *host,
@@ -262,7 +250,8 @@ static int sdhci_milbeaut_probe(struct platform_device *pdev)
 			   SDHCI_QUIRK_DELAY_AFTER_POWER;
 	host->quirks2 = SDHCI_QUIRK2_SUPPORT_SINGLE |
 			SDHCI_QUIRK2_TUNING_WORK_AROUND |
-			SDHCI_QUIRK2_PRESET_VALUE_BROKEN;
+			SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+			SDHCI_QUIRK2_SET_BUS_VOLTAGE;
 
 	priv->enable_cmd_dat_delay = device_property_read_bool(dev,
 						"fujitsu,cmd-dat-delay-select");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
