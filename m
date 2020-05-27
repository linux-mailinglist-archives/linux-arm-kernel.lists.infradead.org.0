Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA181E48EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXDAX4d3aBikp/BC/TG7hK5rgzzB9Wph+IBXsCDyEcI=; b=e1ig8tvnJPwpYb
	kPtIEhp7QpSeUyx6HCSTn5J+QXp8WXiXXMnflfgqPbBdEWx//3VRZF7aRiybN8Hsksf3CM+k/f6wa
	evfUMYJXU0X8tdEAkW+2jxDV6I6wkhUSQN5EHZNDEj/4iI3Rv2CknBCTWBJ/f7T9xEWbdSNoGGztt
	r2p4dfeqxjpk9liVHXA0ZeT2AzY9dzHoyuRMhf4OvRKshUUdT2FGo7yvpERLXsqEoy1LzRH0F9Ixy
	4iqklTBEt/BYsFfLFbveJmFI1DUQ9S656a3E2f0nfMRCNfMLnL5mnbc0TNW5lroGGKSO10ntOnN+s
	s2u6TFv6KYh1oh3zpKUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyS2-0000qf-IT; Wed, 27 May 2020 15:58:42 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyIy-0005uf-NB; Wed, 27 May 2020 15:49:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DCEF3581FE3;
 Wed, 27 May 2020 11:49:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ET50CDHB8TJGj
 iykYoaPxDVVGYTjSyMOvmiDrMK+Rx0=; b=d/5nAYhUFGoS5ydVtqNZ8KB9PZVH1
 M7YlgzMDsJg00QCJgY63oFmbcLv1Ud/XTDL0zz5/Ki9RAi5zW3nxSyfetwxjeDuD
 tX5zYMITEc0eLv+EcGJGRjyJ05D8PA45me1tqgjpukqkqUEpG4GTMhNp6bmOxWyA
 7I+2AzQ6MM24rmJJ2VcbEFE7bJKSh4srn162GPCR5I3ZSS4cNvEsNtKl+Q9RKfoR
 IcxTW9XWW03+rNKowaky6Cgo1dr0B2zxh5zUwcSvEWhGY5eGBBryK311btlx3NI4
 CS5GEk0rcIVnzloSm9LCEyvfMJ4HnoFH+ByIatRANJVFzaa/L0b24CvVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ET50CDHB8TJGjiykYoaPxDVVGYTjSyMOvmiDrMK+Rx0=; b=khMCP2eJ
 /gRzBF2uNkjYBtVdyz1vFmD7ZUyYM9ln+4x98KjB9wSpwOg5vygnzsz1CSm0iHEl
 MPjiKV/ox8cx7fR5cJiDroU1ssGFDS2KE1MKTyilfGzubs98aBTWJeJByfrbdMoh
 RmqmDBGTe/XgTvh/g0CFP5+dV8Gzu9pvdSZbta9O1suSHR89KyK9Vio9JFf9HQCT
 tHFYU10EMYnmNDOytF7N+kIeu7VWQXSNF6fWRuGgUbl9SaQp+BFKHYcNCGLvnZuW
 bojcYw4ao2wE9mgJpg+gb9AWcEHK0nR5uj5KgxPGVKM4XPqdhb53jRdmiZyu9Rgb
 ITQIi8b3EYw5tA==
X-ME-Sender: <xms:_ovOXvkeLH4DDKfb7dMCBzZO_LM5juLIkiZavNrpL8HJ8ZUqo8Ecgg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:_ovOXi0CHyDVApk6q2GkeNfJuesv86XLwyo11frDSyQIuSN5WNoNLQ>
 <xmx:_ovOXlqzBIj894cw4yCr3Hj6gITQtEBsHPeIuPC1vnJ1Q1BYlT6M-Q>
 <xmx:_ovOXnml_srU8XYJlDEumW4grFAfzhMUvnKI2vh0OXZnYuWnxHMpyQ>
 <xmx:_ovOXmImD89ensT7gNt5u7Qv0BWq5AxuM82k5d1MpIltTjbY6Gz8rQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7CAB83061856;
 Wed, 27 May 2020 11:49:18 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 001/105] reset: Move reset-simple header out of
 drivers/reset
Date: Wed, 27 May 2020 17:47:31 +0200
Message-Id: <d908a44996c817540a38c72c65cb99d939a9fa6d.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084921_333920_F84C7A04 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
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
