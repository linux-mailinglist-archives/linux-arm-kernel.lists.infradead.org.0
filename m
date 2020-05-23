Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8BC1DF7A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rZ3vrCxjgbYMAPstWDoamPmVPYFTEoTRRPOSg1rGWQ=; b=XFiWIgtiJrZhkV
	5lkUofztaUZA+vrpR/zSbYY9Izu/MAqQgZ5iZ+CycH7XitaR7YOvhcxd/99k8jLr3Y9dor0MtKolY
	8sBEWkxJyGoor1+h4R+rkM9CJ63qQWpBNfEeSvOtBwzMDr+poR9Bpe23SZ7pxKdL1P6AxRoC8DBc/
	f/O5TNc45x0rU3A1kcyeDyjEVZqgH/CzWW7JbRqyn+XRQXBxVSlAdERvawFdRifWZGKNcstRiTRhA
	x4GwpjQhDl3mIdh9u+ioWq30d9irureEdx0JsMW9AsuAP13hR2xpXmRuwNM1mbxY/fk+aAQajXd+w
	VCNQfxLMi2qBqQd2tDeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUCi-0003sa-Ox; Sat, 23 May 2020 13:28:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBR-0002xL-Sa
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 13:27:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id g12so11778093wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 06:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s+yFWYJIlSICmhm10tVUfzLOMvlRQ6VDJMbx/0w2dnM=;
 b=rp37gfzAHCsfIapPIDnPi7bhKo6b+4zS1qkIx4xs7tAznZqzIdivacCFjDJKCqT6hG
 1OX9zD5yiWYH4CqkM6qHcEAAGbm1wVPBTh2lWvqqDpdi98elF69xmUr8VREH3Bf2OLjK
 6yV3qoI0RCu8I5DOcq5Nb+MnauOEWgc1E1hQGs3NdKmTOl4Y/Jlz9OVZARBw8pvX/22+
 7Cm1u4L8WZQo7PMHtZpGsGWh9TvXKsGW7Dc9Rh/GcaTJTp5l/mRjnaFxrE6C8hONjgIc
 dTVbBVazQyYYBzO8OZNy/C8jOnDmZrw3gBLCOA1jSBsnsqlLmZjZ8bkqn8UaNgYNkcVk
 r0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s+yFWYJIlSICmhm10tVUfzLOMvlRQ6VDJMbx/0w2dnM=;
 b=FhW94UmnKAm4B8uHM0JXLxPQDD3p37Uw/j94nxHoAbfcFKhRC118u0ufOvTZc7cSm6
 uir2YBNj2nQw1sil9Gy+lCqwp9Dm8cF+myppV1dafSzDaqlAU64aotAJ24ZDh6UCNkzm
 DzTp87MXvvJAVbvCFzeAg6DfLJXPWLEy7ZGZgDbtUob2YUHBL8xvesVgdFIqc/y7255x
 UsFroR/rFMFzEHxumxUNV2h6gNjQ95OgekTDRGpf/XzS3E7lCg6cuFZTGcgNpciDGEac
 LxdngX8NBHWsrkuYdnpBV/pAS6lPfEoLGYB8oU1BXq4oFy/H44HT1pFOBcyVLwzWCRdw
 WIZw==
X-Gm-Message-State: AOAM531R1uhk+yMfJl0+Asz8BLjzvd2iYS0NQ2MDGbcbs4d4B9BNsb1J
 qUr/twOu+CA8YhbJ+VERBa4rIA==
X-Google-Smtp-Source: ABdhPJxCZ/C5LkU5FvQk1ZK/F68K0jYwlV3rlUq0UEXtfIpESu0BTugHOfJzFdukxZNlBknHIuZEVQ==
X-Received: by 2002:adf:eccf:: with SMTP id s15mr7285736wro.70.1590240442325; 
 Sat, 23 May 2020 06:27:22 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:21 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 2/5] net: move devres helpers into a separate source file
Date: Sat, 23 May 2020 15:27:08 +0200
Message-Id: <20200523132711.30617-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200523132711.30617-1-brgl@bgdev.pl>
References: <20200523132711.30617-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062726_027634_CAA7DE9F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

There's currently only a single devres helper in net/ - devm variant
of alloc_etherdev. Let's move it to net/devres.c with the intention of
assing a second one: devm_register_netdev(). This new routine will need
to know the address of the release function of devm_alloc_etherdev() so
that it can verify (using devres_find()) that the struct net_device
that's being passed to it is also resource managed.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 net/Makefile       |  2 +-
 net/devres.c       | 36 ++++++++++++++++++++++++++++++++++++
 net/ethernet/eth.c | 28 ----------------------------
 3 files changed, 37 insertions(+), 29 deletions(-)
 create mode 100644 net/devres.c

diff --git a/net/Makefile b/net/Makefile
index 07ea48160874..5744bf1997fd 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -6,7 +6,7 @@
 # Rewritten to use lists instead of if-statements.
 #
 
-obj-$(CONFIG_NET)		:= socket.o core/
+obj-$(CONFIG_NET)		:= devres.o socket.o core/
 
 tmp-$(CONFIG_COMPAT) 		:= compat.o
 obj-$(CONFIG_NET)		+= $(tmp-y)
diff --git a/net/devres.c b/net/devres.c
new file mode 100644
index 000000000000..c1465d9f9019
--- /dev/null
+++ b/net/devres.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * This file contains all networking devres helpers.
+ */
+
+#include <linux/device.h>
+#include <linux/etherdevice.h>
+#include <linux/netdevice.h>
+
+static void devm_free_netdev(struct device *dev, void *res)
+{
+	free_netdev(*(struct net_device **)res);
+}
+
+struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
+					   unsigned int txqs, unsigned int rxqs)
+{
+	struct net_device **dr;
+	struct net_device *netdev;
+
+	dr = devres_alloc(devm_free_netdev, sizeof(*dr), GFP_KERNEL);
+	if (!dr)
+		return NULL;
+
+	netdev = alloc_etherdev_mqs(sizeof_priv, txqs, rxqs);
+	if (!netdev) {
+		devres_free(dr);
+		return NULL;
+	}
+
+	*dr = netdev;
+	devres_add(dev, dr);
+
+	return netdev;
+}
+EXPORT_SYMBOL(devm_alloc_etherdev_mqs);
diff --git a/net/ethernet/eth.c b/net/ethernet/eth.c
index c8b903302ff2..dac65180c4ef 100644
--- a/net/ethernet/eth.c
+++ b/net/ethernet/eth.c
@@ -400,34 +400,6 @@ struct net_device *alloc_etherdev_mqs(int sizeof_priv, unsigned int txqs,
 }
 EXPORT_SYMBOL(alloc_etherdev_mqs);
 
-static void devm_free_netdev(struct device *dev, void *res)
-{
-	free_netdev(*(struct net_device **)res);
-}
-
-struct net_device *devm_alloc_etherdev_mqs(struct device *dev, int sizeof_priv,
-					   unsigned int txqs, unsigned int rxqs)
-{
-	struct net_device **dr;
-	struct net_device *netdev;
-
-	dr = devres_alloc(devm_free_netdev, sizeof(*dr), GFP_KERNEL);
-	if (!dr)
-		return NULL;
-
-	netdev = alloc_etherdev_mqs(sizeof_priv, txqs, rxqs);
-	if (!netdev) {
-		devres_free(dr);
-		return NULL;
-	}
-
-	*dr = netdev;
-	devres_add(dev, dr);
-
-	return netdev;
-}
-EXPORT_SYMBOL(devm_alloc_etherdev_mqs);
-
 ssize_t sysfs_format_mac(char *buf, const unsigned char *addr, int len)
 {
 	return scnprintf(buf, PAGE_SIZE, "%*phC\n", len, addr);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
