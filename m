Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1CF17C4D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBTx986GQ4POy8gSTFe7IxZgx1YTO0b7UHlEjMjx1IY=; b=lDVCfBjSN/Myha
	5Dycq09R/3L23so/AKDZLZmRfAnygUKnZLG65H1/zZWnUQGXmWqgxpdLlw5rOsyx15+cqvNttWaSX
	I4eRlq8rbpcOGCOIAqVwdvN4mYotp48og7I1MRY/H9KuDXt03pKh8hZ9Hb9wsfZ/xb3ZiL9KgKOl1
	EzTseaxDV02C9iUcFeGCgEDh9xiDlS9jaWog8AZilza6bPgnqjtGct7/HUMjBhGCA5Dhq0pun7AW2
	IP4n6CML4skXGJQ+2o2lO2ruSKQilhfoQCfmbxWeK42Psl9eqsG1WnFS3+Kx24S1zvr5cy3LlTXi3
	b2CBGwNrz/0N2sQTgmRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAH35-0002Mg-GD; Fri, 06 Mar 2020 17:46:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAH1R-00080f-G3; Fri, 06 Mar 2020 17:44:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E4D87AC66;
 Fri,  6 Mar 2020 17:44:27 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 05/11] mmc: sdhci: pxav3: Use sdhci_set_power_and_voltage()
Date: Fri,  6 Mar 2020 18:44:07 +0100
Message-Id: <20200306174413.20634-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306174413.20634-1-nsaenzjulienne@suse.de>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_094430_111534_48D3B106 
X-CRM114-Status: GOOD (  11.75  )
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
 drivers/mmc/host/sdhci-pxav3.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/mmc/host/sdhci-pxav3.c b/drivers/mmc/host/sdhci-pxav3.c
index e55037ceda73..75fe90b88f9b 100644
--- a/drivers/mmc/host/sdhci-pxav3.c
+++ b/drivers/mmc/host/sdhci-pxav3.c
@@ -297,27 +297,9 @@ static void pxav3_set_uhs_signaling(struct sdhci_host *host, unsigned int uhs)
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
+	.set_power = sdhci_set_power_and_bus_voltage,
 	.platform_send_init_74_clocks = pxav3_gen_init_74_clocks,
 	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
 	.set_bus_width = sdhci_set_bus_width,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
