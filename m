Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A15317C4DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoDDIySUDMAi/MR6n0tspH8+X7yg6XQQcKDgw4gpwJ4=; b=R1/MiBwQ77+ixu
	os3vBm7g/d6UvygM8jJt4XRCQ/xCEvHcQNMFDXJQIkS2zziusxRlkKGqbiW8OJFr6gAOrf1zxtrTG
	fywK7xKUTdOTmKKjAZXOYYBP2YfBo+b5SZlglG4jBGEXFuC59onLCwwdaLj9c5U1o9lX8BXyc1992
	ob9OoPX2RmCFVJm1RSUTN53OgyAsUbE5GBXOIHySefTSYTJKf35UuM8gH4/OsD5zBMDJPGbHvaZhx
	Co3jZB+D176tpQRSAXIiGMD44lpR6Hrukevi1ezy0nd5h+l2D2G3AbFtyAPIz8v+w/TpwSF3EjjbI
	w4f9jh/kl5jZ8m85KV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAH4Y-0004fv-FG; Fri, 06 Mar 2020 17:47:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAH1V-00084h-4n; Fri, 06 Mar 2020 17:44:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9963FAC66;
 Fri,  6 Mar 2020 17:44:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: adrian.hunter@intel.com, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 09/11] mmc: sdhci: iproc: Add custom set_power() callback
 for bcm2711
Date: Fri,  6 Mar 2020 18:44:11 +0100
Message-Id: <20200306174413.20634-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306174413.20634-1-nsaenzjulienne@suse.de>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_094433_359935_F62D5AFD 
X-CRM114-Status: GOOD (  12.71  )
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
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The controller needs a valid bus voltage in its power register
regardless of whether an external regulator is taking care of the power
supply.

The sdhci core already provides a helper function for this,
sdhci_set_power_and_bus_voltage(), so create a bcm2711 specific 'struct
sdhci_ops' which makes use of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/mmc/host/sdhci-iproc.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index f4f5f0a70cda..225603148d7d 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -261,9 +261,24 @@ static const struct sdhci_iproc_data bcm2835_data = {
 	.mmc_caps = 0x00000000,
 };
 
+static const struct sdhci_ops sdhci_iproc_bcm2711_ops = {
+	.read_l = sdhci_iproc_readl,
+	.read_w = sdhci_iproc_readw,
+	.read_b = sdhci_iproc_readb,
+	.write_l = sdhci_iproc_writel,
+	.write_w = sdhci_iproc_writew,
+	.write_b = sdhci_iproc_writeb,
+	.set_clock = sdhci_set_clock,
+	.set_power = sdhci_set_power_and_bus_voltage,
+	.get_max_clock = sdhci_iproc_get_max_clock,
+	.set_bus_width = sdhci_set_bus_width,
+	.reset = sdhci_reset,
+	.set_uhs_signaling = sdhci_set_uhs_signaling,
+};
+
 static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
 	.quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
-	.ops = &sdhci_iproc_32only_ops,
+	.ops = &sdhci_iproc_bcm2711_ops,
 };
 
 static const struct sdhci_iproc_data bcm2711_data = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
