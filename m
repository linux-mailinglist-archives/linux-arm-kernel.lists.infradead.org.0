Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BCD17C4D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n77LGFBxJn+ta/9whH7hS/BPUvYDe4mj6zVHCe3FZrM=; b=DHi/tlzS886Oic
	mIkrY4Tk6UyvlHS2QP2YKDIpL1alkM16YmnBhTZsfQJE6CM8AMrXbWu71RnSPZPvqOkpC85NgwKWj
	NMcskm0BxNvTCSn46ssVowd0IMl+VggHWA9wt6aI9n+bq1BOTvrSzCoYjofTRfbvGbD/W+M7UQWbp
	kkLUNcBZyAle6RUJG0F00wrPkmHDDHN3+RPZg+1D6YlD4FG/rc8JJcUIeonG4eFdkD9T2Iw3Q0gWZ
	rrY9U/7FT2OsZUY4JzcwqxODLG//MzLm7zWqpoYwtvmI/0DGb7FR3lC39dJenTK6HIYNQ/YZtNv4k
	MyMc0MUWckTc8ysZFVUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAH3g-00031I-Rg; Fri, 06 Mar 2020 17:46:48 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAH1T-00081n-AS; Fri, 06 Mar 2020 17:44:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id ADD2AAD11;
 Fri,  6 Mar 2020 17:44:29 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/11] mmc: sdhci: am654: Use sdhci_set_power_and_voltage()
Date: Fri,  6 Mar 2020 18:44:09 +0100
Message-Id: <20200306174413.20634-8-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306174413.20634-1-nsaenzjulienne@suse.de>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_094431_511252_0FEEC7FA 
X-CRM114-Status: GOOD (  11.78  )
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
Cc: stefan.wahren@i2se.com, Ulf Hansson <ulf.hansson@linaro.org>,
 f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sdhci core provides a helper function with the same functionality as
this controller's set_power() callback. Use it instead.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/mmc/host/sdhci_am654.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 3afea580fbea..c70647489bbd 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -208,17 +208,6 @@ static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
 	sdhci_set_clock(host, clock);
 }
 
-static void sdhci_am654_set_power(struct sdhci_host *host, unsigned char mode,
-				  unsigned short vdd)
-{
-	if (!IS_ERR(host->mmc->supply.vmmc)) {
-		struct mmc_host *mmc = host->mmc;
-
-		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
-	}
-	sdhci_set_power_noreg(host, mode, vdd);
-}
-
 static void sdhci_am654_write_b(struct sdhci_host *host, u8 val, int reg)
 {
 	unsigned char timing = host->mmc->ios.timing;
@@ -274,7 +263,7 @@ static struct sdhci_ops sdhci_am654_ops = {
 	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
 	.set_bus_width = sdhci_set_bus_width,
-	.set_power = sdhci_am654_set_power,
+	.set_power = sdhci_set_power_and_bus_voltage,
 	.set_clock = sdhci_am654_set_clock,
 	.write_b = sdhci_am654_write_b,
 	.irq = sdhci_am654_cqhci_irq,
@@ -297,7 +286,7 @@ static struct sdhci_ops sdhci_j721e_8bit_ops = {
 	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
 	.set_bus_width = sdhci_set_bus_width,
-	.set_power = sdhci_am654_set_power,
+	.set_power = sdhci_set_power_and_bus_voltage,
 	.set_clock = sdhci_am654_set_clock,
 	.write_b = sdhci_am654_write_b,
 	.irq = sdhci_am654_cqhci_irq,
@@ -320,7 +309,7 @@ static struct sdhci_ops sdhci_j721e_4bit_ops = {
 	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_uhs_signaling = sdhci_set_uhs_signaling,
 	.set_bus_width = sdhci_set_bus_width,
-	.set_power = sdhci_am654_set_power,
+	.set_power = sdhci_set_power_and_bus_voltage,
 	.set_clock = sdhci_j721e_4bit_set_clock,
 	.write_b = sdhci_am654_write_b,
 	.irq = sdhci_am654_cqhci_irq,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
