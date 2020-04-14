Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B66E1A8B7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 21:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF7f/rwDyXeZtLYQC05UXeXWKhu03fHjESPSk/C0Ebs=; b=A80KzUp3giLqlp
	8x/zE4j0X0i02zqbbG5TyeE2oKvtMUwQlpaOjdQ32IFQ+7nbCh7BMaBjRdkkyWqzRtW0BkLqgMsQU
	33Z4qSQFwSwUr1QoWm0aGy06bTiX13+H68iD7KOladkRDv3zwdpfdpDo6S5zcGha/Xh/qdMgFhY8K
	XHfc4jgk7Liq7u7QpEwb5nsM6ZGx8rzTlyac7ywUgHIzIni+N7Br75mgGtjAM0nYXwiMcRt+gI/Op
	4MMO0m+bl5n+ptSCKnfZ1rnKvOM+y/PVtKYW9ZL0SDHlxMa90FLtW2nKs1gWXioyTJwoMLo8rbyAy
	DfXn0WXYWH9fxYzyN1jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORbK-00078t-At; Tue, 14 Apr 2020 19:52:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORaa-0006WP-Gc; Tue, 14 Apr 2020 19:51:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id v8so13246000wma.0;
 Tue, 14 Apr 2020 12:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wmfcMhvG8Z0vEINCyaO7pmox4TkBpgd1lx9zOICoTqE=;
 b=EtkFVJ4P6kPq5zDhchMj44e/ao7tDFLAS5fHqVSp67Vc69oau+0lapCkGg4FAIEK0Y
 3FwfBUpis4d+hn4MaQNoyQBYMD1RzN/d7yIslSCMyjynMvOsCK3htGSvk4XqFeC4X/wx
 Ng74LeujzCDpUAcRKt9CGQw99YaEJdmHfcppaoRR7H8krAU5zuB6vga4msDAkdoKqgO9
 AvuMS8NRgieEf/lICbyIfw7UrGkFiJvFPJvRPLYgJMxXl2KfNjOYKmHwDvRh79gARiHM
 ac7Y9lL/7d0CiyZHui9LyXZ5U43j7xh/hXw2H6xTd9SkY/I/KkrKa1zkwgoCosFqrk2U
 jTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wmfcMhvG8Z0vEINCyaO7pmox4TkBpgd1lx9zOICoTqE=;
 b=PDcV3U4fBI5zbtW+eZk2nSmti9jwlrbDeBPebXSUy4Fg9HNZ6piHlU5wdee3ofpuq3
 4GFUeIVYWzOFD8j+VidG21/uIta3cbCMg9DOTuOl3jkinTbsBakqG7eLzmLipCqz/r8E
 OxZeBij6wLQrpH6L00fZ7AwkpBMtHunZlg1B4XRJaAPc97FQsu/9ifs40CPs5/9sni6u
 CHEU5bIf01UlqI0nbg9OiN2ZnffYdG0GWQtqO+KRZPE8AAHpfwxmHNYF7Ok3xzk6qUmM
 mrcXtKPM/tXAxTVdU2gAa2r7xTxcp7xPZKtZZ3p8UZ+CNzwtsj6g6/8hdYaZXLtPzOp5
 +anA==
X-Gm-Message-State: AGi0Puagwty5+ap6mLc1NBW1VT6Co46rG2W5BJRXl/qOxo71GCpeWAEF
 hVR4GUpvIHboMV8VDiu6fl0=
X-Google-Smtp-Source: APiQypIRkBwsxASMLC6HHXJ5UwuAZ6o8hDlK7RWcSFluHkg0o2JANop6K6rTzyBdwrXR4xh1aml9rQ==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr1450299wmg.143.1586893878852; 
 Tue, 14 Apr 2020 12:51:18 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13717DF00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3717:df00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s14sm20886844wme.33.2020.04.14.12.51.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 12:51:18 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v2 2/2] clk: meson: g12a: Prepare the GPU clock tree to change
 at runtime
Date: Tue, 14 Apr 2020 21:50:31 +0200
Message-Id: <20200414195031.224021-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414195031.224021-1-martin.blumenstingl@googlemail.com>
References: <20200414195031.224021-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_125120_547993_4DA81D73 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "mali_0" or "mali_1" clock trees should not be updated while the
clock is running. Enforce this by setting CLK_SET_RATE_GATE on the
"mali_0" and "mali_1" gates. This makes the CCF switch to the "mali_1"
tree when "mali_0" is currently active and vice versa, which is exactly
what the vendor driver does when updating the frequency of the mali
clock.
Also propagate set_rate requests from the gate to the divider and from
the divider to the the mux so the GPU clock frequency can be updated at
runtime (which will be required for GPU DVFS). Don't propagate rate
changes to the mux parents because we don't want to change the MPLL
clocks (these are reserved for audio).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/g12a.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index fad616cac01e..30c15766ebb1 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -3702,7 +3702,9 @@ static struct clk_regmap g12a_hdmi = {
 
 /*
  * The MALI IP is clocked by two identical clocks (mali_0 and mali_1)
- * muxed by a glitch-free switch.
+ * muxed by a glitch-free switch. The CCF can manage this glitch-free
+ * mux because it does top-to-bottom updates the each clock tree and
+ * switches to the "inactive" one when CLK_SET_RATE_GATE is set.
  */
 static const struct clk_parent_data g12a_mali_0_1_parent_data[] = {
 	{ .fw_name = "xtal", },
@@ -3726,7 +3728,13 @@ static struct clk_regmap g12a_mali_0_sel = {
 		.ops = &clk_regmap_mux_ops,
 		.parent_data = g12a_mali_0_1_parent_data,
 		.num_parents = 8,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		/*
+		 * Don't request the parent to change the rate because
+		 * all GPU frequencies can be derived from the fclk_*
+		 * clocks and one special GP0_PLL setting. This is
+		 * important because we need the MPLL clocks for audio.
+		 */
+		.flags = 0,
 	},
 };
 
@@ -3743,7 +3751,7 @@ static struct clk_regmap g12a_mali_0_div = {
 			&g12a_mali_0_sel.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -3759,7 +3767,7 @@ static struct clk_regmap g12a_mali_0 = {
 			&g12a_mali_0_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -3774,7 +3782,13 @@ static struct clk_regmap g12a_mali_1_sel = {
 		.ops = &clk_regmap_mux_ops,
 		.parent_data = g12a_mali_0_1_parent_data,
 		.num_parents = 8,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		/*
+		 * Don't request the parent to change the rate because
+		 * all GPU frequencies can be derived from the fclk_*
+		 * clocks and one special GP0_PLL setting. This is
+		 * important because we need the MPLL clocks for audio.
+		 */
+		.flags = 0,
 	},
 };
 
@@ -3791,7 +3805,7 @@ static struct clk_regmap g12a_mali_1_div = {
 			&g12a_mali_1_sel.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -3807,7 +3821,7 @@ static struct clk_regmap g12a_mali_1 = {
 			&g12a_mali_1_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -3827,7 +3841,7 @@ static struct clk_regmap g12a_mali = {
 		.ops = &clk_regmap_mux_ops,
 		.parent_hws = g12a_mali_parent_hws,
 		.num_parents = 2,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
