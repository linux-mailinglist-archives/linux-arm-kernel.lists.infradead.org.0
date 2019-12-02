Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699F910EBBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hl5ur64lss8gKzS3n4PL2hbodAGqExH+g57wg+74Te0=; b=Gfplyv0ZCgxfOJ
	lUeeM0FlXm3Hg5I5PQq8hbjHkFFaIrIENfuqnI7QVI5o/kvox1xVDcslxFq3NyXSLPyWBupeExv3b
	G6gihhDoUaEj7/xPDD5NM5cfXZrV/e8IOjruYf5FtUigDKDC0Y11ac8AEHK/gkI9bVj35LnM1b+CY
	WSsqdCX9wS/3vHVC6hLtrYK+VFNh3KPWw/5xGeQIiKsiBXC4qqdOrNG7z7ccS9S05IallNf5aQbQs
	5hYzKFQ83aaeP+fJDk/Eq3BF22+cN7zt0oefirVLNr4h0mfJcYMoFHiNBHvNdxhmPyw5pbtIUuizb
	ZyHdIcooz+aBJQ5xpMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmy3-0004fs-6S; Mon, 02 Dec 2019 14:46:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmxa-0004UA-Bj
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:46:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so5859255pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 06:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=fJpLrIKsRo/M1XWJlbsmJmsiB/P3shBmUrGcXBt0E3Y=;
 b=rf9zlynl+gcMhKb8zaMF6LyV6oUiMNYwjKJ0UzuhhTDGKhPUTpuLHAqCpD4pqDfoYh
 uTkQY/Gfw/czj204LMmW+421HzaHPDxIQCOaVnHTZA1ClqYyHODXciAUVYQZAbTKkVSU
 wEFvCRikYR7fO1QWQwQbU2KsRLmFwQTKVaWSoU4QzdAHFWzzTANTaZPbUlcom+L0i6K9
 MrfZG4b+ZkkaNS/lVTcZMYTShxG8VjcCelraSvr+AqnyVUO1LTMzNTyZfBZm98A5HauX
 XyFLsHB0p9t789HF7DKj9R5J5s26HJ19x+6G2UG4RHqVMKGblVQDYHyuLelOppQLhFA6
 S5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=fJpLrIKsRo/M1XWJlbsmJmsiB/P3shBmUrGcXBt0E3Y=;
 b=PbkrbTK4jrSBBtI0Zbx7mtzCs8xY5sR8N34RJYOpK1Ep+4MmDdp4lN8wVhDS3ICaoD
 i0oAOzTYPvSsvkYKe/EEahEVgnJCkPW+A0DT4WNrHPghv5i+ohvs8lrhElCvpK/EXON7
 a7HnfZklZV/TbMifrX49dAt8HW+DeJx131u0P+EqKncqgrJJRNcQpQbuBjYr5bJZ+Ejg
 Im6eLBrDV8TRwt4NPrwe+Zk3nUmXF4/LdBekPV91TJQjD0O/UmE3aOb3GGW3FWvkW1Yq
 4cFWbuiToBsx2zd6tfE3tA50q9aUXC4VA3HtwspRlk228ymouzziZfHn1ic1Lsvf8MPu
 SMRw==
X-Gm-Message-State: APjAAAU2Xr1Gp79VvFylw7FDvDMAJnBAVdBj8WzGyBH3jWC5IxKxO3HH
 cMAROFYD7SGz8VmPjCeqybxi2Q==
X-Google-Smtp-Source: APXvYqwJCZ21DKyImsmF0S/wnVl9c6YsYBKSqJeJZEgJNXB/++3Nefh5ZWK6cylIY/MouTEgV/5M7w==
X-Received: by 2002:a63:101f:: with SMTP id f31mr32208521pgl.410.1575297956733; 
 Mon, 02 Dec 2019 06:45:56 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id f10sm34347813pfd.28.2019.12.02.06.45.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 06:45:56 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, xuwei5@hisilicon.com, p.zabel@pengutronix.de,
 opensource@jilayne.com, swinslow@gmail.com, jun.nie@linaro.org,
 allison@lohutok.net, yuehaibing@huawei.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, xuejiancheng@hisilicon.com
Subject: [PATCH 2/3] reset: hisilicon: Extend reset operation type
Date: Mon,  2 Dec 2019 22:45:23 +0800
Message-Id: <20191202144524.5391-3-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202144524.5391-1-jun.nie@linaro.org>
References: <20191202144524.5391-1-jun.nie@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064558_533399_51F74798 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend reset operations to support combination of three type flags:
ASSERT/DEASSERT SET/CLEAR POLL.

Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 drivers/clk/hisilicon/reset.c | 58 ++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/hisilicon/reset.c b/drivers/clk/hisilicon/reset.c
index 93cee17db8b1..de7d186b0894 100644
--- a/drivers/clk/hisilicon/reset.c
+++ b/drivers/clk/hisilicon/reset.c
@@ -2,20 +2,25 @@
 /*
  * Hisilicon Reset Controller Driver
  *
- * Copyright (c) 2015-2016 HiSilicon Technologies Co., Ltd.
+ * Copyright (c) 2015-2019 HiSilicon Technologies Co., Ltd.
  */
 
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/reset-controller.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+
+#include <dt-bindings/reset/hisilicon-resets.h>
 #include "reset.h"
 
 #define	HISI_RESET_BIT_MASK	0x1f
 #define	HISI_RESET_OFFSET_SHIFT	8
 #define	HISI_RESET_OFFSET_MASK	0xffff00
+#define	HISI_RESET_FLAG_SHIFT	24
+#define	HISI_RESET_FLAG_MASK	0xff000000
 
 struct hisi_reset_controller {
 	spinlock_t	lock;
@@ -30,14 +35,17 @@ struct hisi_reset_controller {
 static int hisi_reset_of_xlate(struct reset_controller_dev *rcdev,
 			const struct of_phandle_args *reset_spec)
 {
+	unsigned long flags;
 	u32 offset;
 	u8 bit;
 
+	flags = (reset_spec->args[2] << HISI_RESET_FLAG_SHIFT)
+		& HISI_RESET_FLAG_MASK;
 	offset = (reset_spec->args[0] << HISI_RESET_OFFSET_SHIFT)
 		& HISI_RESET_OFFSET_MASK;
 	bit = reset_spec->args[1] & HISI_RESET_BIT_MASK;
 
-	return (offset | bit);
+	return (flags | offset | bit);
 }
 
 static int hisi_reset_assert(struct reset_controller_dev *rcdev,
@@ -48,13 +56,33 @@ static int hisi_reset_assert(struct reset_controller_dev *rcdev,
 	u32 offset, reg;
 	u8 bit;
 
+	flags = (id & HISI_RESET_FLAG_MASK) >> HISI_RESET_FLAG_SHIFT;
+	if (flags & HISI_ASSERT_NONE)
+		return -ENOTSUPP; /* assert not supported for this reset */
+
 	offset = (id & HISI_RESET_OFFSET_MASK) >> HISI_RESET_OFFSET_SHIFT;
 	bit = id & HISI_RESET_BIT_MASK;
 
+	pr_devel("%s %s to %s 0x%x:bit[%d]\n", __func__,
+		flags & HISI_ASSERT_POLL ? "poll" : "",
+		flags & HISI_ASSERT_SET ? "set":"clear", offset, bit);
+
+	if (flags & HISI_ASSERT_POLL) {
+		if (flags & HISI_ASSERT_SET)
+			return readl_poll_timeout(rstc->membase + offset,
+						  reg, reg & BIT(bit), 0, 5000);
+		else
+			return readl_poll_timeout(rstc->membase + offset,
+						  reg, !(reg & BIT(bit)),
+						  0, 5000);
+	}
+
 	spin_lock_irqsave(&rstc->lock, flags);
 
 	reg = readl(rstc->membase + offset);
-	writel(reg | BIT(bit), rstc->membase + offset);
+	/* Default is setting to assert for no flag case. */
+	reg = (flags & HISI_ASSERT_CLEAR) ? reg & ~BIT(bit) : reg | BIT(bit);
+	writel(reg, rstc->membase + offset);
 
 	spin_unlock_irqrestore(&rstc->lock, flags);
 
@@ -69,13 +97,33 @@ static int hisi_reset_deassert(struct reset_controller_dev *rcdev,
 	u32 offset, reg;
 	u8 bit;
 
+	flags = (id & HISI_RESET_FLAG_MASK) >> HISI_RESET_FLAG_SHIFT;
+	if (flags & HISI_DEASSERT_NONE)
+		return -ENOTSUPP; /* deassert not supported for this reset */
+
 	offset = (id & HISI_RESET_OFFSET_MASK) >> HISI_RESET_OFFSET_SHIFT;
 	bit = id & HISI_RESET_BIT_MASK;
 
+	pr_devel("%s %s to %s 0x%x:bit[%d]\n", __func__,
+		flags & HISI_DEASSERT_POLL ? "poll" : "",
+		flags & HISI_DEASSERT_SET ? "clear":"set", offset, bit);
+
+	if (flags & HISI_DEASSERT_POLL) {
+		if (flags & HISI_DEASSERT_SET)
+			return readl_poll_timeout(rstc->membase + offset,
+						  reg, reg & BIT(bit), 0, 5000);
+		else
+			return readl_poll_timeout(rstc->membase + offset,
+						  reg, !(reg & BIT(bit)),
+						  0, 5000);
+	}
+
 	spin_lock_irqsave(&rstc->lock, flags);
 
 	reg = readl(rstc->membase + offset);
-	writel(reg & ~BIT(bit), rstc->membase + offset);
+	/* Default is clearing to deasseart for no flag case. */
+	reg = (flags & HISI_DEASSERT_SET) ? reg | BIT(bit) : reg & ~BIT(bit);
+	writel(reg, rstc->membase + offset);
 
 	spin_unlock_irqrestore(&rstc->lock, flags);
 
@@ -103,7 +151,7 @@ struct hisi_reset_controller *hisi_reset_init(struct platform_device *pdev)
 	rstc->rcdev.owner = THIS_MODULE;
 	rstc->rcdev.ops = &hisi_reset_ops;
 	rstc->rcdev.of_node = pdev->dev.of_node;
-	rstc->rcdev.of_reset_n_cells = 2;
+	rstc->rcdev.of_reset_n_cells = 3;
 	rstc->rcdev.of_xlate = hisi_reset_of_xlate;
 	reset_controller_register(&rstc->rcdev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
