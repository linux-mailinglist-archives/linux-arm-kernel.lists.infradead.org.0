Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BE91B7A68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vE5A5Rk1GpWf0sTetouwM8ejKo7S4QwCN8m7VxpN7r4=; b=mGPICQ9ryz6EAL
	Vs6xB/ETcM/e8gdRnYqs7xNQuI9xURrTbKhUrQ2wo6VN7n1LxHJ5kpKOu1gLDx5GeFGzqw455uzP3
	iRxfrZ+/cVnHd3T1TAIBP0ZVUPzv1QMocZeYXZJXkgvxLYawtqrcCtepoD41xbOHd8qWs1p+y6ZiV
	/75n94qxkMJqgE1SO5YX984VdPJ4ddJ8cqKYlw8VAMfEFKA5XKhIq4W+p+GE7z6IZ55RFVqNw+Vlm
	sUQgI61wjxhq+KWSPQoDMNbqEUEmKwg4S/S17Tk5oSWXoPbZr+L+6yH9NxuhqFduG39Q7oGf6exbL
	KObXNWpsp35b/ap47ywA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0WR-0002sU-Mk; Fri, 24 Apr 2020 15:45:47 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mt-0007ld-Kn; Fri, 24 Apr 2020 15:35:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id D96AE10EF;
 Fri, 24 Apr 2020 11:35:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=H/2y1u+18pkIE
 R5sI0A+gvL3htUncY5w9ZHNgfRxgqU=; b=ebLLrBJh8krPknOfeyfJbAgT3zERZ
 /kzQTXf13Gt3sUPJDrxMsWDQbQ1Z08ZFhT/t8Ehj3ouNUwYiCPNxZW6YyddLWGqY
 CiejB99bmXgPfAboHC2Gn1MhtCUAS4aWls7Y+rvb8uVvUCrHFoTI7GpJMiGwbHJq
 1YDZsYykjfXTxQ3Wj0v65mnmTOOLv6aTfXIbWWowr6+I1lGfvpNbHsL9Si+DLVfs
 xSMoXvYNKcCkG8OjZCQZE4tT0h3zGC1iz2+styGWBETGoWnqVNUbFAqDHNIYCKFa
 k1FoqqhQGUFHua48jF+CjVUGHh7ItkeOojHkeX0FVjnKnwG4i9n4G5O1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=H/2y1u+18pkIER5sI0A+gvL3htUncY5w9ZHNgfRxgqU=; b=f+Wg3wvu
 ch3X4niSmTlHa77iu9G1VXfR6U3Tilw4rAjHrZevtyn3M41EFhYfQBjZqwIip6sZ
 2bQCYhI/9GGmXa5OQCzPIEYI8fmFAqyly3sTBiZBqClRU3DuaHwHf+rTEHqefcAw
 h5O4wWxJTysVQjucIqEZVODVrcNwEHxQjt1q6xw2EABO7f240BjmQtqs5ppXVlNG
 dQAc5RM0PVwQoXQrppcSInQXcYU+U/MqA2yeCk0nbytZEqMtOCSlplYO9XCFMpul
 wZd6qv98gn5Xw6+0Ce4K0Cpj2D4pn4EgyOxPuROZ8UPTVjWO5Ny1KYQw3nv6y25k
 A8TiZoiDg0Wkeg==
X-ME-Sender: <xms:WQejXliTFc1BSGyxiIbeTusUeFLfc5avvMbVSL-zyzjA8ycZtpSc-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:WQejXkE_C9nWpvZxRCIo9KaATm_E73dm0boUEcndWofQEc-VJxKPVQ>
 <xmx:WQejXkJwxpbmu7D9uEuvcLFh3ZY8HuPiA5N0PdN4TC4uETn2S7YQTg>
 <xmx:WQejXiaLnOnwxUmChbpvU_lXtD6mueY9ZJpmgB_NQ5pXUGbIY87o5A>
 <xmx:WQejXvG8qIcENaTpFtfoX_US2yQPBN5g3tp4SOODFYtvMJlwoso9lag2LME>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1C82D328005E;
 Fri, 24 Apr 2020 11:35:53 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 22/91] reset: Move reset-simple header out of drivers/reset
Date: Fri, 24 Apr 2020 17:34:03 +0200
Message-Id: <6f7651682a6dab539bd89c80704c8303bbae68bd.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083556_305797_DEFC321E 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset-simple code can be useful for drivers outside of drivers/reset
that have a few reset controls as part of their features. Let's move it to
include/linux/reset.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/reset/reset-simple.c        |  3 +--
 drivers/reset/reset-simple.h        | 41 +------------------------------
 drivers/reset/reset-socfpga.c       |  3 +--
 drivers/reset/reset-sunxi.c         |  3 +--
 drivers/reset/reset-uniphier-glue.c |  3 +--
 include/linux/reset/reset-simple.h  | 41 ++++++++++++++++++++++++++++++-
 6 files changed, 45 insertions(+), 49 deletions(-)
 delete mode 100644 drivers/reset/reset-simple.h
 create mode 100644 include/linux/reset/reset-simple.h

diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index 067e7e7b34f1..c854aa351640 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -18,10 +18,9 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
+#include <linux/reset/reset-simple.h>
 #include <linux/spinlock.h>
 
-#include "reset-simple.h"
-
 static inline struct reset_simple_data *
 to_reset_simple_data(struct reset_controller_dev *rcdev)
 {
diff --git a/drivers/reset/reset-simple.h b/drivers/reset/reset-simple.h
deleted file mode 100644
index 08ccb25a55e6..000000000000
--- a/drivers/reset/reset-simple.h
+++ /dev/null
@@ -1,41 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * Simple Reset Controller ops
- *
- * Based on Allwinner SoCs Reset Controller driver
- *
- * Copyright 2013 Maxime Ripard
- *
- * Maxime Ripard <maxime.ripard@free-electrons.com>
- */
-
-#ifndef __RESET_SIMPLE_H__
-#define __RESET_SIMPLE_H__
-
-#include <linux/io.h>
-#include <linux/reset-controller.h>
-#include <linux/spinlock.h>
-
-/**
- * struct reset_simple_data - driver data for simple reset controllers
- * @lock: spinlock to protect registers during read-modify-write cycles
- * @membase: memory mapped I/O register range
- * @rcdev: reset controller device base structure
- * @active_low: if true, bits are cleared to assert the reset. Otherwise, bits
- *              are set to assert the reset. Note that this says nothing about
- *              the voltage level of the actual reset line.
- * @status_active_low: if true, bits read back as cleared while the reset is
- *                     asserted. Otherwise, bits read back as set while the
- *                     reset is asserted.
- */
-struct reset_simple_data {
-	spinlock_t			lock;
-	void __iomem			*membase;
-	struct reset_controller_dev	rcdev;
-	bool				active_low;
-	bool				status_active_low;
-};
-
-extern const struct reset_control_ops reset_simple_ops;
-
-#endif /* __RESET_SIMPLE_H__ */
diff --git a/drivers/reset/reset-socfpga.c b/drivers/reset/reset-socfpga.c
index 96953992c2bb..bdd984296196 100644
--- a/drivers/reset/reset-socfpga.c
+++ b/drivers/reset/reset-socfpga.c
@@ -11,13 +11,12 @@
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
+#include <linux/reset/reset-simple.h>
 #include <linux/reset/socfpga.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
 
-#include "reset-simple.h"
-
 #define SOCFPGA_NR_BANKS	8
 
 static int a10_reset_init(struct device_node *np)
diff --git a/drivers/reset/reset-sunxi.c b/drivers/reset/reset-sunxi.c
index e7f169e57bcf..e752594b6971 100644
--- a/drivers/reset/reset-sunxi.c
+++ b/drivers/reset/reset-sunxi.c
@@ -14,13 +14,12 @@
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
+#include <linux/reset/reset-simple.h>
 #include <linux/reset/sunxi.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
 
-#include "reset-simple.h"
-
 static int sunxi_reset_init(struct device_node *np)
 {
 	struct reset_simple_data *data;
diff --git a/drivers/reset/reset-uniphier-glue.c b/drivers/reset/reset-uniphier-glue.c
index 2b188b3bb69a..027990b79f61 100644
--- a/drivers/reset/reset-uniphier-glue.c
+++ b/drivers/reset/reset-uniphier-glue.c
@@ -9,8 +9,7 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
-
-#include "reset-simple.h"
+#include <linux/reset/reset-simple.h>
 
 #define MAX_CLKS	2
 #define MAX_RSTS	2
diff --git a/include/linux/reset/reset-simple.h b/include/linux/reset/reset-simple.h
new file mode 100644
index 000000000000..08ccb25a55e6
--- /dev/null
+++ b/include/linux/reset/reset-simple.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Simple Reset Controller ops
+ *
+ * Based on Allwinner SoCs Reset Controller driver
+ *
+ * Copyright 2013 Maxime Ripard
+ *
+ * Maxime Ripard <maxime.ripard@free-electrons.com>
+ */
+
+#ifndef __RESET_SIMPLE_H__
+#define __RESET_SIMPLE_H__
+
+#include <linux/io.h>
+#include <linux/reset-controller.h>
+#include <linux/spinlock.h>
+
+/**
+ * struct reset_simple_data - driver data for simple reset controllers
+ * @lock: spinlock to protect registers during read-modify-write cycles
+ * @membase: memory mapped I/O register range
+ * @rcdev: reset controller device base structure
+ * @active_low: if true, bits are cleared to assert the reset. Otherwise, bits
+ *              are set to assert the reset. Note that this says nothing about
+ *              the voltage level of the actual reset line.
+ * @status_active_low: if true, bits read back as cleared while the reset is
+ *                     asserted. Otherwise, bits read back as set while the
+ *                     reset is asserted.
+ */
+struct reset_simple_data {
+	spinlock_t			lock;
+	void __iomem			*membase;
+	struct reset_controller_dev	rcdev;
+	bool				active_low;
+	bool				status_active_low;
+};
+
+extern const struct reset_control_ops reset_simple_ops;
+
+#endif /* __RESET_SIMPLE_H__ */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
