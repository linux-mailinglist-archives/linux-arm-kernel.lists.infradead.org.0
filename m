Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E5790518
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 17:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnQa6zEq35afUoG+FaCZdVqkRx60a/qj+2zO9jxEMlg=; b=N+wEF9HqkACJDW
	CaQPaV07R9LGetYhwgEsNl+bk9QmWgnQoT0udhfCpwS7yFqKssqj+xdlv2zDSXb0g7ruCI7NceDaj
	bLwrGBVI58fmniH8VNQJqfmaHSQONrID8QFEszr2gKZ3spQdvJcguxkYVyVoM6EohG/1/jRo6v2zx
	A9eZJhM45BOBP0vuG/dRr+iVs6JBMqqXu6h9ZgqDb8TBrA8bA6zrutzw1TF7C/g9stsykZwIWDtgZ
	yOjyFXEis/TytRMkwbFHa2i7HnV67JhQv3ByqhN3ML7amF1EmjQgJvUxwuLsGiqGZIpN5SMKWuWm6
	VLfyJmp5ZoW8afhZILsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyecr-000829-0K; Fri, 16 Aug 2019 15:58:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyecQ-0007ry-5r
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 15:58:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so3164663pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 08:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zglRUo87FrQV2zX9KKFbhlLEMq8IJXox2mwKvEQ1BRM=;
 b=riVGsWzaiZrh4uyngeP2RJwEeuP8SQCbxRX/4QwDFNTYsvkuyZshqUaPQg/YccV6DR
 IsifDMnM9N3rTY2+Tg3e/H950a0CWgcN5UKaFLCcdg3WiLO1Jm6XF3uEoIgyBieq2+lP
 vbX/2HDHoQRqUe2ud7LPRHIJJoXLkjUJVhf/ilp0ViYIG5gxhhZJeRZcwsu/f5oVQGLe
 oLodkSlKQ4lVSfXWGG7qMgA0Tpf51nEBJXUnbzjwWW32YAmPiohbHpkPgH+nQ80qHNEL
 f1KA23kW0V3DU/9S/isEeerAxXYU/QmjzZkvaHFNFBK5bqEl6+AnRmILwdkdJOkZybZx
 ue8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=zglRUo87FrQV2zX9KKFbhlLEMq8IJXox2mwKvEQ1BRM=;
 b=PBSTwSD8ymkmHYzbYnMlLIbFKuO1w2izaDPAflpxsslhXXdzpSvjZY7qpBh5XtZfEy
 f/HbH9xiZxUckDnX/1PRfOPsz2LDph5RaxTK0ZvJ4sl5S+QjlA7absXAVBKalMgOGpVl
 l1sh7estSShlLQPKlCFAeAp8pUeN9sCoYjbUYyZz93ZKpXxbtCDN77m8BHVUnFYt6vR3
 r4Dl97Nj5jxUjV9APuhaNF4SNdL73DShjA/shX6PPMrEylNkfGjhAVroMjMTYzWmWB31
 h/DmmItvMoL7UVjtPlz7dkoQrksbTa1tC0cnBVPj5bTZ3Ujgj0nftlFUQICVz0amYtfh
 6y1w==
X-Gm-Message-State: APjAAAXxId9FSwXTUOtxFY9QT65ZOguVktENn8BtiIMa6QSPzzbp5Qqq
 28Z7rmayZy0vCSXi8+KLfNI=
X-Google-Smtp-Source: APXvYqwnRgwkT9B1gYcGwvd2PVFCvv/IFEGurXHnnHC9Vjw+S0WcEONGxRvS1+5KwwDQ2FyHNn8iEA==
X-Received: by 2002:a17:90a:c08f:: with SMTP id
 o15mr8108462pjs.31.1565971101434; 
 Fri, 16 Aug 2019 08:58:21 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.19])
 by smtp.gmail.com with ESMTPSA id s24sm5746052pgm.3.2019.08.16.08.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 08:58:20 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 1/2] clk: aspeed: Move structures to header
Date: Sat, 17 Aug 2019 01:28:05 +0930
Message-Id: <20190816155806.22869-2-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190816155806.22869-1-joel@jms.id.au>
References: <20190816155806.22869-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_085822_319922_13A8246C 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

They will be reused by the ast2600 driver.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/clk/clk-aspeed.c | 63 ++--------------------------------
 drivers/clk/clk-aspeed.h | 74 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 76 insertions(+), 61 deletions(-)
 create mode 100644 drivers/clk/clk-aspeed.h

diff --git a/drivers/clk/clk-aspeed.c b/drivers/clk/clk-aspeed.c
index 898291501f45..44df54d87ad4 100644
--- a/drivers/clk/clk-aspeed.c
+++ b/drivers/clk/clk-aspeed.c
@@ -14,6 +14,8 @@
 
 #include <dt-bindings/clock/aspeed-clock.h>
 
+#include "clk-aspeed.h"
+
 #define ASPEED_NUM_CLKS		36
 
 #define ASPEED_RESET2_OFFSET	32
@@ -42,48 +44,6 @@ static struct clk_hw_onecell_data *aspeed_clk_data;
 
 static void __iomem *scu_base;
 
-/**
- * struct aspeed_gate_data - Aspeed gated clocks
- * @clock_idx: bit used to gate this clock in the clock register
- * @reset_idx: bit used to reset this IP in the reset register. -1 if no
- *             reset is required when enabling the clock
- * @name: the clock name
- * @parent_name: the name of the parent clock
- * @flags: standard clock framework flags
- */
-struct aspeed_gate_data {
-	u8		clock_idx;
-	s8		reset_idx;
-	const char	*name;
-	const char	*parent_name;
-	unsigned long	flags;
-};
-
-/**
- * struct aspeed_clk_gate - Aspeed specific clk_gate structure
- * @hw:		handle between common and hardware-specific interfaces
- * @reg:	register controlling gate
- * @clock_idx:	bit used to gate this clock in the clock register
- * @reset_idx:	bit used to reset this IP in the reset register. -1 if no
- *		reset is required when enabling the clock
- * @flags:	hardware-specific flags
- * @lock:	register lock
- *
- * Some of the clocks in the Aspeed SoC must be put in reset before enabling.
- * This modified version of clk_gate allows an optional reset bit to be
- * specified.
- */
-struct aspeed_clk_gate {
-	struct clk_hw	hw;
-	struct regmap	*map;
-	u8		clock_idx;
-	s8		reset_idx;
-	u8		flags;
-	spinlock_t	*lock;
-};
-
-#define to_aspeed_clk_gate(_hw) container_of(_hw, struct aspeed_clk_gate, hw)
-
 /* TODO: ask Aspeed about the actual parent data */
 static const struct aspeed_gate_data aspeed_gates[] = {
 	/*				 clk rst   name			parent	flags */
@@ -208,13 +168,6 @@ static struct clk_hw *aspeed_ast2500_calc_pll(const char *name, u32 val)
 			mult, div);
 }
 
-struct aspeed_clk_soc_data {
-	const struct clk_div_table *div_table;
-	const struct clk_div_table *eclk_div_table;
-	const struct clk_div_table *mac_div_table;
-	struct clk_hw *(*calc_pll)(const char *name, u32 val);
-};
-
 static const struct aspeed_clk_soc_data ast2500_data = {
 	.div_table = ast2500_div_table,
 	.eclk_div_table = ast2500_eclk_div_table,
@@ -315,18 +268,6 @@ static const struct clk_ops aspeed_clk_gate_ops = {
 	.is_enabled = aspeed_clk_is_enabled,
 };
 
-/**
- * struct aspeed_reset - Aspeed reset controller
- * @map: regmap to access the containing system controller
- * @rcdev: reset controller device
- */
-struct aspeed_reset {
-	struct regmap			*map;
-	struct reset_controller_dev	rcdev;
-};
-
-#define to_aspeed_reset(p) container_of((p), struct aspeed_reset, rcdev)
-
 static const u8 aspeed_resets[] = {
 	/* SCU04 resets */
 	[ASPEED_RESET_XDMA]	= 25,
diff --git a/drivers/clk/clk-aspeed.h b/drivers/clk/clk-aspeed.h
new file mode 100644
index 000000000000..92d384367c25
--- /dev/null
+++ b/drivers/clk/clk-aspeed.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Structures used by ASPEED clock drivers
+ *
+ * Copyright 2019 IBM Corp.
+ */
+
+/**
+ * struct aspeed_gate_data - Aspeed gated clocks
+ * @clock_idx: bit used to gate this clock in the clock register
+ * @reset_idx: bit used to reset this IP in the reset register. -1 if no
+ *             reset is required when enabling the clock
+ * @name: the clock name
+ * @parent_name: the name of the parent clock
+ * @flags: standard clock framework flags
+ */
+struct aspeed_gate_data {
+	u8		clock_idx;
+	s8		reset_idx;
+	const char	*name;
+	const char	*parent_name;
+	unsigned long	flags;
+};
+
+/**
+ * struct aspeed_clk_gate - Aspeed specific clk_gate structure
+ * @hw:		handle between common and hardware-specific interfaces
+ * @reg:	register controlling gate
+ * @clock_idx:	bit used to gate this clock in the clock register
+ * @reset_idx:	bit used to reset this IP in the reset register. -1 if no
+ *		reset is required when enabling the clock
+ * @flags:	hardware-specific flags
+ * @lock:	register lock
+ *
+ * Some of the clocks in the Aspeed SoC must be put in reset before enabling.
+ * This modified version of clk_gate allows an optional reset bit to be
+ * specified.
+ */
+struct aspeed_clk_gate {
+	struct clk_hw	hw;
+	struct regmap	*map;
+	u8		clock_idx;
+	s8		reset_idx;
+	u8		flags;
+	spinlock_t	*lock;
+};
+
+#define to_aspeed_clk_gate(_hw) container_of(_hw, struct aspeed_clk_gate, hw)
+
+/**
+ * struct aspeed_reset - Aspeed reset controller
+ * @map: regmap to access the containing system controller
+ * @rcdev: reset controller device
+ */
+struct aspeed_reset {
+	struct regmap			*map;
+	struct reset_controller_dev	rcdev;
+};
+
+#define to_aspeed_reset(p) container_of((p), struct aspeed_reset, rcdev)
+
+/**
+ * struct aspeed_clk_soc_data - Aspeed SoC specific divisor information
+ * @div_table: Common divider lookup table
+ * @eclk_div_table: Divider lookup table for ECLK
+ * @mac_div_table: Divider lookup table for MAC (Ethernet) clocks
+ * @calc_pll: Callback to maculate common PLL settings
+ */
+struct aspeed_clk_soc_data {
+	const struct clk_div_table *div_table;
+	const struct clk_div_table *eclk_div_table;
+	const struct clk_div_table *mac_div_table;
+	struct clk_hw *(*calc_pll)(const char *name, u32 val);
+};
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
