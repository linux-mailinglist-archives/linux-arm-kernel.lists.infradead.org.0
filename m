Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA5E25224
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps1Ykf5XbslhOmWdnhaurpGP5/2FD8M8DSo+jkPMVaA=; b=N8XKzwXVK/lhHr
	EcN+pmOjGZ+9B3/w3RCcsz5swIWSdKs3xuGVTY9kR/lSM0zhkmSOiblF7IDId8rpTJOw4hVW+HGXy
	Q/7gcWilzFqx+pgEC+fBfVmG7wy0DyWxiHulrJXKcyOBhaY25QNgAuYM55m+3cwkWz5juWp4CVBLK
	HdgyUwqfV5yePYXrNA62VbxR1f7gDkhhhBS23udQegDpsI1p5jD3FmoT9tsddFzuZglsq/WiafniW
	QxsyB6BkO7ze3s2dR6vJ1IuCLqLST5NEx1LjFVOhwmcQadCdCJOCQD+A/ZmkNnkvtcsgB3G7wzio8
	4QfRVyqMACQCd/8B8raA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5o6-0001ll-Qm; Tue, 21 May 2019 14:31:58 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5nV-00017i-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:31:25 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7F693240028;
 Tue, 21 May 2019 14:31:15 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 05/10] ata: ahci: mvebu: Add a parameter to a platform data
 callback
Date: Tue, 21 May 2019 16:30:18 +0200
Message-Id: <20190521143023.31810-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521143023.31810-1-miquel.raynal@bootlin.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073122_071436_E226FF39 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-ide@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before using the ahci_mvebu.c driver with Armada 8k hardware (right
now it is using the ahci_platform.c generic driver), let's add a
'struct device' pointer to the argument list of the
->plat_config() callback. This parameter will be used by the A8k's
callback.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/ata/ahci_mvebu.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/ahci_mvebu.c b/drivers/ata/ahci_mvebu.c
index 43bb2db59698..507ee7c5437c 100644
--- a/drivers/ata/ahci_mvebu.c
+++ b/drivers/ata/ahci_mvebu.c
@@ -29,7 +29,7 @@
 #define AHCI_WINDOW_SIZE(win)	(0x68 + ((win) << 4))
 
 struct ahci_mvebu_plat_data {
-	int (*plat_config)(struct ahci_host_priv *hpriv);
+	int (*plat_config)(struct ahci_host_priv *hpriv, struct device *dev);
 	unsigned int host_flags;
 };
 
@@ -67,7 +67,8 @@ static void ahci_mvebu_regret_option(struct ahci_host_priv *hpriv)
 	writel(0x80, hpriv->mmio + AHCI_VENDOR_SPECIFIC_0_DATA);
 }
 
-static int ahci_mvebu_armada_380_config(struct ahci_host_priv *hpriv)
+static int ahci_mvebu_armada_380_config(struct ahci_host_priv *hpriv,
+					struct device *dev)
 {
 	const struct mbus_dram_target_info *dram;
 	int rc = 0;
@@ -83,7 +84,8 @@ static int ahci_mvebu_armada_380_config(struct ahci_host_priv *hpriv)
 	return rc;
 }
 
-static int ahci_mvebu_armada_3700_config(struct ahci_host_priv *hpriv)
+static int ahci_mvebu_armada_3700_config(struct ahci_host_priv *hpriv,
+					 struct device *dev)
 {
 	u32 reg;
 
@@ -162,7 +164,7 @@ static int ahci_mvebu_resume(struct platform_device *pdev)
 	struct ahci_host_priv *hpriv = host->private_data;
 	const struct ahci_mvebu_plat_data *pdata = hpriv->plat_data;
 
-	pdata->plat_config(hpriv);
+	pdata->plat_config(hpriv, &pdev->dev);
 
 	return ahci_platform_resume_host(&pdev->dev);
 }
@@ -205,7 +207,7 @@ static int ahci_mvebu_probe(struct platform_device *pdev)
 
 	hpriv->stop_engine = ahci_mvebu_stop_engine;
 
-	rc = pdata->plat_config(hpriv);
+	rc = pdata->plat_config(hpriv, &pdev->dev);
 	if (rc)
 		goto disable_resources;
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
