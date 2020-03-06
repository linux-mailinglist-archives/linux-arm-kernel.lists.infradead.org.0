Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F259F17BAA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06VEoC9cVM8Z/5Cu83q/CvVRY4rFSRxs5SLLL8PzOcs=; b=kGVj86m/AKQfuM
	Wb52LeN2a492lMrJ/9Ab1UmyCZw+pyCjea3hotnxtamF3c4WhQtEjK3etePjR87cUljdVF4euTLoj
	6kxZqNXdXiN/v79ck2CnFzSxGBeRZHAtjYamblyd/88yww6wXVG/RJ3j3rD7sAH+g7CFjRAmjf8/t
	uits3PYY4xltUQygDaU+r5IuY+rluP9qgj991r1z51ZS6OSUVHLZQALzTB/r/SzsM9nqOD2ezO2CC
	iMN+Z+258c/35s1VNo5FHlIyDxD5Y2UV5n+BtyqC9yJCTrl1pMOiDB5p+dAWtMLKC0yxEH91IVh5Z
	0ytvu5PQKnCDkGk7wNNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAQk-0003eA-M1; Fri, 06 Mar 2020 10:42:10 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAO9-00088E-Rp; Fri, 06 Mar 2020 10:39:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AE761B282;
 Fri,  6 Mar 2020 10:39:27 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 08/10] mmc: sdhci: Unexport sdhci_set_power_noreg()
Date: Fri,  6 Mar 2020 11:38:53 +0100
Message-Id: <20200306103857.23962-9-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306103857.23962-1-nsaenzjulienne@suse.de>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023930_087795_9DEDDC56 
X-CRM114-Status: GOOD (  12.15  )
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

There are no users left and, ideally, it's not a function that should be
called outside of the core sdhci code.

As sdhci_set_power_reg() depends on sdhci_set_power_noreg() it was moved
underneath it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/mmc/host/sdhci.c | 39 +++++++++++++++++++--------------------
 drivers/mmc/host/sdhci.h |  2 --
 2 files changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index c7fd87447457..728442b129f4 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -1913,25 +1913,7 @@ void sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
 }
 EXPORT_SYMBOL_GPL(sdhci_set_clock);
 
-static void sdhci_set_power_reg(struct sdhci_host *host, unsigned char mode,
-				unsigned short vdd)
-{
-	struct mmc_host *mmc = host->mmc;
-
-	mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
-
-	if (host->quirks2 & SDHCI_QUIRK2_SET_BUS_VOLTAGE) {
-		sdhci_set_power_noreg(host, mode, vdd);
-		return;
-	}
-
-	if (mode != MMC_POWER_OFF)
-		sdhci_writeb(host, SDHCI_POWER_ON, SDHCI_POWER_CONTROL);
-	else
-		sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
-}
-
-void sdhci_set_power_noreg(struct sdhci_host *host, unsigned char mode,
+static void sdhci_set_power_noreg(struct sdhci_host *host, unsigned char mode,
 			   unsigned short vdd)
 {
 	u8 pwr = 0;
@@ -2003,7 +1985,24 @@ void sdhci_set_power_noreg(struct sdhci_host *host, unsigned char mode,
 			mdelay(10);
 	}
 }
-EXPORT_SYMBOL_GPL(sdhci_set_power_noreg);
+
+static void sdhci_set_power_reg(struct sdhci_host *host, unsigned char mode,
+				unsigned short vdd)
+{
+	struct mmc_host *mmc = host->mmc;
+
+	mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
+
+	if (host->quirks2 & SDHCI_QUIRK2_SET_BUS_VOLTAGE) {
+		sdhci_set_power_noreg(host, mode, vdd);
+		return;
+	}
+
+	if (mode != MMC_POWER_OFF)
+		sdhci_writeb(host, SDHCI_POWER_ON, SDHCI_POWER_CONTROL);
+	else
+		sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
+}
 
 void sdhci_set_power(struct sdhci_host *host, unsigned char mode,
 		     unsigned short vdd)
diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
index 9531a4e5b148..330557434519 100644
--- a/drivers/mmc/host/sdhci.h
+++ b/drivers/mmc/host/sdhci.h
@@ -774,8 +774,6 @@ void sdhci_set_clock(struct sdhci_host *host, unsigned int clock);
 void sdhci_enable_clk(struct sdhci_host *host, u16 clk);
 void sdhci_set_power(struct sdhci_host *host, unsigned char mode,
 		     unsigned short vdd);
-void sdhci_set_power_noreg(struct sdhci_host *host, unsigned char mode,
-			   unsigned short vdd);
 void sdhci_request(struct mmc_host *mmc, struct mmc_request *mrq);
 void sdhci_set_bus_width(struct sdhci_host *host, int width);
 void sdhci_reset(struct sdhci_host *host, u8 mask);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
