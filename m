Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED5259D9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 16:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZQF8YmECC2XphP/VzCCWe+nsLndeLvbnLrvCSZtbpJU=; b=kT7DTm7cIphLC6
	DwH8/sY9dHuqfNkvv741Fl0dJrZU2WZfKs7xUA58TPYtKew+vnXis/1oxkirZCzE4GxMYMmqXnl93
	b7NNi3ti/4nSrnvVA+mHKj9kfIybUOoiCFEWpkebTgck1DFu/ZwBpnCU2HtxOrjNbII5WrAzHWWVa
	6HXtJ33ZKPT5ipgk5B9B7OgF4putmFjtPTaHkVTRWAOrZk+qSD2LpVNeTfCYWT0ViLA4s30LCzNeK
	5XT/Sp61WxGUW3jcqTPixq9wcXCKE5L524GRUiwIr0w3xbqWomSrJvA1d6pEV9L+fEAni4tcM4pN7
	3HgBHC3xjktXaMUYBNvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrgj-0005Om-5X; Fri, 28 Jun 2019 14:17:17 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrgV-0005NY-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 14:17:06 +0000
X-Originating-IP: 86.250.200.211
Received: from mc-bl-xps13.lan (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 56A001BF205;
 Fri, 28 Jun 2019 14:16:48 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Christoph Hellwig <hch@infradead.org>
Subject: [PATCH] driver core: platform: Allow using a dedicated dma_mask for
 platform_device
Date: Fri, 28 Jun 2019 16:15:50 +0200
Message-Id: <20190628141550.22938-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_071704_294657_DC4FF078 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 brian.brooks@linaro.org, thomas.petazzoni@bootlin.com, stefanc@marvell.com,
 Russell King <rmk+kernel@armlinux.org.uk>, David Miller <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch attempts to solve a long standing situation where
dev->dma_mask is a pointer to dev->dma_coherent_mask, meaning that any
change to the coherent mask will affect the streaming mask.

The API allows to use different values for both masks, but for now
platform_device built from DT will simply make the dma_mask point to the
coherent mask.

This is a problem on a least one driver, the PPv2 network driver, which
needs different streaming and coherent masks to overcome a HW
limitation. In this case, the issue is a performance degradation since
the streaming mask isn't as big as it ought to be, causing a lot of
buffer bounces.

There were previous attempts to fix this issue. One of them by Brian
Brooks, where the dma_mask is reallocated in the driver itself,
which wasn't considered to be the best approach :

https://lore.kernel.org/netdev/20180820024730.9147-1-brian.brooks@linaro.org/

This lead to a discussion pointing to another attempt to solve the issue,
by Christoph Hellwig :

https://lore.kernel.org/lkml/20180829062401.8701-2-hch@lst.de/

This more generic approach ended-up causing regressions on some mfd
drivers (the sm501 was one of the reports).

The current patch tries to be a bit less generic, and allows setting-up
the dma_mask for platform devices using a dedicated helper. In this case,
the dma_mask is allocated in struct platform_object, as suggested by
Russell King.

This helper is then used in platform_device creation code from the DT.

Suggested-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
Hi everyone,

This patch, if suitable, would require a lot of testing to detect
drivers that rely on the streaming mask being the same as the coherent
mask.

Thanks,

Maxime

 drivers/base/platform.c         | 17 +++++++++++++++++
 drivers/of/platform.c           |  7 +++++--
 include/linux/platform_device.h |  1 +
 3 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 4d1729853d1a..35e7bdb8576c 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -256,9 +256,26 @@ EXPORT_SYMBOL_GPL(platform_add_devices);
 
 struct platform_object {
 	struct platform_device pdev;
+	u64 dma_mask;
 	char name[];
 };
 
+/**
+ * platform_device_setup_dma_mask - Sets the dma_mask pointer
+ * @pdev: platform device to configure the device's mask
+ *
+ * Sets the dma_mask of the underlying device to point to a dedicated region,
+ * that belongs to the platform_device.
+ */
+void platform_device_setup_dma_mask(struct platform_device *pdev)
+{
+	struct platform_object *pa = container_of(pdev, struct platform_object,
+						  pdev);
+
+	pa->pdev.dev.dma_mask = &pa->dma_mask;
+}
+EXPORT_SYMBOL_GPL(platform_device_setup_dma_mask);
+
 /**
  * platform_device_put - destroy a platform device
  * @pdev: platform device to free
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 04ad312fd85b..4a6980e3356c 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -186,8 +186,11 @@ static struct platform_device *of_platform_device_create_pdata(
 		goto err_clear_flag;
 
 	dev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
-	if (!dev->dev.dma_mask)
-		dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
+	if (!dev->dev.dma_mask) {
+		platform_device_setup_dma_mask(dev);
+		*dev->dev.dma_mask = dev->dev.coherent_dma_mask;
+	}
+
 	dev->dev.bus = &platform_bus_type;
 	dev->dev.platform_data = platform_data;
 	of_msi_configure(&dev->dev, dev->dev.of_node);
diff --git a/include/linux/platform_device.h b/include/linux/platform_device.h
index cc464850b71e..a95c2d224de9 100644
--- a/include/linux/platform_device.h
+++ b/include/linux/platform_device.h
@@ -181,6 +181,7 @@ extern int platform_device_add_properties(struct platform_device *pdev,
 extern int platform_device_add(struct platform_device *pdev);
 extern void platform_device_del(struct platform_device *pdev);
 extern void platform_device_put(struct platform_device *pdev);
+extern void platform_device_setup_dma_mask(struct platform_device *pdev);
 
 struct platform_driver {
 	int (*probe)(struct platform_device *);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
