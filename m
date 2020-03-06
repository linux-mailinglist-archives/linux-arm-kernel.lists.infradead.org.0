Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D7817BA8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrGTF7SSOy0i+h91FVxhO5+ZgQwTDtgZlJ+VplXMRPQ=; b=ucTzmwRx4Z3Zc7
	YqjGP4caur2dGzGlLLcterWXOdTKav3G4z/rquwHh0VuuidyAa0SXABt2HmmnwMLeEChXaC3o3JmI
	0TrPXWlq9wZ18ZY5FoHMnDD6+E2Yupzqpm3RyvPjX7BKXh8HfTPr1E9aFS/YXuYm5RDg6JwrTIR5O
	xQQ2TJL9IT37LdjuDrWOht3xZlCIdXX/E1AKw6A89XoFRv8UVMmsoTKPbBP14/dUX/dUaiMFDBGRv
	cUy9cnjX98ugikIfLcSo1/Lvy54ZLm+abovQDjYvu4TUThY4ZD8sG6bR1MozrhYiU1oQewKdBW+yh
	fidWNvbGH5rnsP5nJJlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAP6-0000Ss-34; Fri, 06 Mar 2020 10:40:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAO6-00084H-5H; Fri, 06 Mar 2020 10:39:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9FF06B22D;
 Fri,  6 Mar 2020 10:39:24 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 05/10] mmc: sdhci: pxav3: Use quirk instead of custom
 set_power()
Date: Fri,  6 Mar 2020 11:38:50 +0100
Message-Id: <20200306103857.23962-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306103857.23962-1-nsaenzjulienne@suse.de>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023926_363892_11461EBF 
X-CRM114-Status: GOOD (  12.36  )
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
 drivers/mmc/host/sdhci-pxav3.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/mmc/host/sdhci-pxav3.c b/drivers/mmc/host/sdhci-pxav3.c
index e55037ceda73..dc4a1e69e6f6 100644
--- a/drivers/mmc/host/sdhci-pxav3.c
+++ b/drivers/mmc/host/sdhci-pxav3.c
@@ -297,27 +297,8 @@ static void pxav3_set_uhs_signaling(struct sdhci_host *host, unsigned int uhs)
 		__func__, uhs, ctrl_2);
 }
 
-static void pxav3_set_power(struct sdhci_host *host, unsigned char mode,
-			    unsigned short vdd)
-{
-	struct mmc_host *mmc = host->mmc;
-	u8 pwr = host->pwr;
-
-	sdhci_set_power_noreg(host, mode, vdd);
-
-	if (host->pwr == pwr)
-		return;
-
-	if (host->pwr == 0)
-		vdd = 0;
-
-	if (!IS_ERR(mmc->supply.vmmc))
-		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
-}
-
 static const struct sdhci_ops pxav3_sdhci_ops = {
 	.set_clock = sdhci_set_clock,
-	.set_power = pxav3_set_power,
 	.platform_send_init_74_clocks = pxav3_gen_init_74_clocks,
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_bus_width = sdhci_set_bus_width,
@@ -330,6 +311,7 @@ static const struct sdhci_pltfm_data sdhci_pxav3_pdata = {
 		| SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC
 		| SDHCI_QUIRK_32BIT_ADMA_SIZE
 		| SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
+	.quirks2 = SDHCI_QUIRK2_SET_BUS_VOLTAGE,
 	.ops = &pxav3_sdhci_ops,
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
