Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72671D2990
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rZ3vrCxjgbYMAPstWDoamPmVPYFTEoTRRPOSg1rGWQ=; b=qk3FKDF+fKZ6Rc
	MzN0jvU4WAlq6l43345RStZicM2VNmZE/AgVhYddzaJ82ZQ0xssvNYxyO5qXeh2uGI2+Uuek/XRtu
	IeTblFGlXIsNe7Cswy9qVPbr7F3VRrpAZq7vsQXe4vmQtNZqbD/eWtX/UIwuh3fTnjNfM/NnLKVb7
	JWVJOF0E8gEwXyfvbXLuMcNTZksmBVBs3vGpvdNSQdtlCcwCGOBwx3aDgCfmCbSAoyqIb9R3kaZ0L
	kRM0vWlT9aqbF1B6D41NmhndYeTu380FN20CoECd0AikGunZTW1QjPwvRMksBdUevmjBUl80MWMT0
	XS8QHQkzJTlKsVrV3ejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8pT-0006C5-FH; Thu, 14 May 2020 08:02:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mu-0003qn-Jg
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id i15so2566835wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s+yFWYJIlSICmhm10tVUfzLOMvlRQ6VDJMbx/0w2dnM=;
 b=PRvNoi2TgCN+VzTX3mU0VSqIRido9KYDU6yW3zjpSNaUvuBNdAeHf7Dfmde6D0UKpu
 YAtOt21dfPPlukIs4r0JoEP3SZH8nPot+kac8yit0rJT3+PA+XrWcmRnS67tuKlrVJ33
 aNkLF3M6xo1xr9vORDKhSCXcztNwd5eswgWE8wa1dICiyRa5VdoaA5VFjpRdRKfT9aDK
 T4lNCa19CefbuWT2sKDMpX0iSbfJRM/oTiv8BsLH6FmF+9ekPy4CsBJHG8vi/otpy1Ci
 o4ZRQuZs8Dyq+97w5BC1dyzyRVvUKYjmQpETcOZYLKuMA8eVBLtKd2RjNmzeQF8IvUxr
 rQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s+yFWYJIlSICmhm10tVUfzLOMvlRQ6VDJMbx/0w2dnM=;
 b=C4/jkhau8gyUS70xZN5QC6iZnyQyFgMQ7HYBqASqkvYlDOR1STSQpAGIHq5XMh8KSI
 ekZxkQfMylFbn2IcwoOQ8YFje4n97uqWgBL2tnXiLh8KwowEiUpHgD5alzXyrS3nLDQ7
 V5cmac0v7FuatV96bUHBjSzqgE3Hcn4ituTHQfMF81Ej5frdtqqmBc8ro0T3BcVfBDK7
 bpZxjUYOQM9dFb+FFUBiRaJNC0Nd6GE410FS9XSRINyh8cLHdPkDHEwZZDQcNoasQ4Kl
 yOQc8CU5+manSoAz7xuNoNx+lYyrJofSSe7S2UolD2tZs+bOy1iN7rtJzIst0Oj/Zzhl
 yFew==
X-Gm-Message-State: AOAM533XE8tsOx4iF2fs8mkMx9Fl6S6a9DH/5N3AbptI8UoCp4Yolykl
 WvZt8FAzsIGnBIUvt4oUl29sZw==
X-Google-Smtp-Source: ABdhPJysibPUDu4ElyMt4AAbNj9DxG2/LLV2fqoTpw7euSkysGZrS6yWRqs6bE/F69uk9SxggEtCFQ==
X-Received: by 2002:a5d:5492:: with SMTP id h18mr3812008wrv.35.1589443214645; 
 Thu, 14 May 2020 01:00:14 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 07/15] net: move devres helpers into a separate source file
Date: Thu, 14 May 2020 09:59:34 +0200
Message-Id: <20200514075942.10136-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010016_720380_0FF10763 
X-CRM114-Status: GOOD (  17.03  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
