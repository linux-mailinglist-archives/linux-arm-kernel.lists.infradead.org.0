Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BB892418
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GzcP66efJhZfoMphK3p+IkaCcUpjhVnsuJxSVVyfI4I=; b=stqJhxlKpLhJf9p6HR24NzgVED
	kRCWlkpjI4p/GidkmjxzdqZ1/HKthP4TgVRA3r5WQLqfygZxsMrMVRjcCGtnXitPUvQH9fvmiaCtE
	g7tXUIL4iRBSk6Bw2MFUuW4NXpR5K2YNkGsL/QU8Om3aQBiB0iwggtz1chY4oOZeaPAUzFk+xOL8J
	eZ7wXCBDX7De+9FhEDm+8eusQkn/YFZtvqOz26YWy1lf95vdmzHXdztmQEdV17emhmyzpDy/mOwwa
	arph1B461v2myMOS6VM8/gyNg79ojf44ThNyvGdOp/0NvhoYx08QnxmyVOJMFEXlaGWPTO3YrqdDe
	Lx+MXBIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhIg-0000zh-P3; Mon, 19 Aug 2019 13:02:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhIR-0000r9-Uq
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:02:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so936650plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=70nxwZafCYlFjcUnZixCqBC0Lk3FuIHCQ+uw4WwvqpE=;
 b=kRbdUQecsr5QHKl+P1TtO20EsX7vl6bofQEVYRamOy0xxhn52UCo7x6pVlYA+v5drN
 JR7JzqrTUlQ24hee8AyQWh17A1leKgseAR8xY1wCUm0aZtEJcXA5L7R69e6JRyJyBsJg
 FbEJ1SZvSA/WAFK5CU3kNaZDiR2OzlY/DW9cXB5Ko81ryQCR4yhGUxKz2eHR1OJJYZ/U
 y5gcc5hXtrBpVRE158eZCRBL49iepq+au58cuvL7eA45tUJ57r5y7RIRS/7X+3ZDVQ8V
 y7eLpNQD6QX/WqLB/jVeRO3d6hy4cXRX/avlYmDdAB+ySxi77djSiDnPrd1LeAXyvzFy
 xRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=70nxwZafCYlFjcUnZixCqBC0Lk3FuIHCQ+uw4WwvqpE=;
 b=OI1Dq3KPYtcSI82IGuhozHjNN83oZnFlqlY5yOu3XEHuidoeLqpYAoI4d6j4ObAQXo
 qXODH3EScv4SwmbSHOks2D82fBuCeTPBQdaFvI2ovX2u3g9Zd0l1kg8ryneuPFcBmR2g
 H1FvKrlhJP9fD5RhHBNmgLLUVMYygcR57OkAL2/Teiofv5hD165ibv5fi4cghylGuIP1
 Zug+1Vd0MeoOkA3xpqaoRffZrsACxQ4fAWy65WExXR5Vi/RoG0w6ykGCJTQNjLlb2QNp
 vitNZE+lLvY8KoKGT6ie4Ta6R5ttpPrX76T9S8NsBR/7qk9Vs9hyWJz0+A6Elr2JUVkI
 KUKA==
X-Gm-Message-State: APjAAAWiW60xuomeBlm00vrsfGc2avQzYA5KI0Oz0YF85tsdFrNQJvpT
 NY9igQOU/GXwkjofKN7oogVq
X-Google-Smtp-Source: APXvYqzIJeKTT2sTPwuWm/ZOaSwja3rS2vyAc3OwiPxIxqONpU/2Nq1Q0YRO6tWZsc9Der/3EdjrvQ==
X-Received: by 2002:a17:902:a40d:: with SMTP id
 p13mr7460089plq.92.1566219722377; 
 Mon, 19 Aug 2019 06:02:02 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
 by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.01.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:02:01 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v3 1/8] clk: Zero init clk_init_data in helpers
Date: Mon, 19 Aug 2019 18:31:36 +0530
Message-Id: <20190819130143.18778-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060204_021501_4CF2BC9C 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clk_init_data struct needs to be initialized to zero for the new
parent_map implementation to work correctly. Otherwise, the member which
is available first will get processed.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c  | 2 +-
 drivers/clk/clk-divider.c    | 2 +-
 drivers/clk/clk-fixed-rate.c | 2 +-
 drivers/clk/clk-gate.c       | 2 +-
 drivers/clk/clk-mux.c        | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index b06038b8f658..4d579f9d20f6 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -208,7 +208,7 @@ struct clk_hw *clk_hw_register_composite(struct device *dev, const char *name,
 			unsigned long flags)
 {
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	struct clk_composite *composite;
 	struct clk_ops *clk_composite_ops;
 	int ret;
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 3f9ff78c4a2a..65dd8137f9ec 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -471,7 +471,7 @@ static struct clk_hw *_register_divider(struct device *dev, const char *name,
 {
 	struct clk_divider *div;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	int ret;
 
 	if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {
diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
index a7e4aef7a376..746c3ecdc5b3 100644
--- a/drivers/clk/clk-fixed-rate.c
+++ b/drivers/clk/clk-fixed-rate.c
@@ -58,7 +58,7 @@ struct clk_hw *clk_hw_register_fixed_rate_with_accuracy(struct device *dev,
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	int ret;
 
 	/* allocate fixed-rate clock */
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 1b99fc962745..8ed83ec730cb 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -141,7 +141,7 @@ struct clk_hw *clk_hw_register_gate(struct device *dev, const char *name,
 {
 	struct clk_gate *gate;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	int ret;
 
 	if (clk_gate_flags & CLK_GATE_HIWORD_MASK) {
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 66e91f740508..2caa6b2a9ee5 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -153,7 +153,7 @@ struct clk_hw *clk_hw_register_mux_table(struct device *dev, const char *name,
 {
 	struct clk_mux *mux;
 	struct clk_hw *hw;
-	struct clk_init_data init;
+	struct clk_init_data init = { NULL };
 	u8 width = 0;
 	int ret;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
