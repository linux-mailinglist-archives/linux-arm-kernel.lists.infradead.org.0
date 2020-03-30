Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EE3198725
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Is8io076J1DxHgK9H87qbRxMw/CfWhWoOB+TnG8oZF0=; b=rAyb5OA447Ddjo
	toq05JxnVFVFZ0h6IRWF7x+a4Du/9n1ZNABPR7D8CXYJqrYPtJ7B4/zcOBhp259elzoxGpG+TR/Hj
	K3Vpj7DyI3yFtO2T+N+ZBt+bMpz9o3L+MHhx2fmZQtZr6oB7jLab9rdjZ7W4UYy2Jlyru6c+LR7/a
	lCSCFqB60BchFsR+sWo//LlvcxmUjIwQRs0wfI3a4R7Lq+MwAKlN5oWRxs6N5ASXDJd0R15ME7Pbi
	YqjELwUys9HZ3qDeaH1IXqQncgBQGUWUJeAClvWOf5kWPqrMoef3BMgtBB8u+Iyo592d1yAKOM94K
	kmkveWM/a/xejVLclICQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2dv-0002X2-4V; Mon, 30 Mar 2020 22:12:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2d2-0001jo-64; Mon, 30 Mar 2020 22:11:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id d5so23651010wrn.2;
 Mon, 30 Mar 2020 15:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MdDlaK3jLN/q9KcoyP33Chc7uvr3eCaMbY+7EESj0As=;
 b=EejkddiJCEPU8jCPYEqGgLrI766UTSVP81xsECLV/sI5ZxSNQI+IBeTYqywvQiQwpd
 jizrNf5HboqfV1xdwyv9bR/1B+GDxkQ/oNit9/Cz/4jFBonU7K4TuFHcUmoRDocz77mZ
 A7nfupQ7qilNBOA/PiQxGhiDHCtPuLDrMB+89iaatZlN1RkKwVLJRtgLbPFHII9JZOsV
 Fo/5pJ2w8Dx3lBz3om4roa1BHfL+JgvG86CwfM730MoQBABygMPLBBCbC3MMQoLrbZb7
 /Gt4dwYUFDL8WRM5vsLMdpPIByS7GMShGaFjei5C5xaHLoQ9A1YxmbqURvF4UpI5omsn
 Pv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MdDlaK3jLN/q9KcoyP33Chc7uvr3eCaMbY+7EESj0As=;
 b=Kf8VRW057p5eQthz9fQdsqYnTfIU5UxQrThlQPvthq+EZw6jh1q1N7iwvBdYbFKOvN
 u1R4Wq83H/hC8mGUTTzf+8wqstByuVHEb56IKXQUCWmlh7pbz5eU65rrOV1J9IVfF4WK
 qDTZrfbvFXfmTZ0L0Ws/2ntCYbKWfjgYFpCYknNUMkbK1zGkFKRjJRmxn7aqpEuhRXBJ
 OEZkMIA0/4jkWvqszScbLTdeXPgeTSAyBC60TVyb3ywW2xwGXJ8EVTXobXVUf5DnhTsO
 //Nhm31/4J7Bs8l7Yu01efOIkaZytkdo5W7g3ggFRCtDZ/shL5aEfk7v1AFOaWitV8sB
 dpUA==
X-Gm-Message-State: ANhLgQ1FsMlpSK01Eii8hWE6Nw4QwoO0cJHlZ3k4SQSbSllPR26FQhOr
 HABo0z94EhmsT6/7Xw4ycRPS887c
X-Google-Smtp-Source: ADFU+vvgELv6WlxBfdmfHasYH7xckVLjjI/gfkH1djbfjyg5T6s6EazSzp1kVoD4jaIVPog2bhKWUQ==
X-Received: by 2002:a5d:5228:: with SMTP id i8mr17301089wra.156.1585606290341; 
 Mon, 30 Mar 2020 15:11:30 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b187sm1260509wmc.14.2020.03.30.15.11.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:11:29 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com, narmstrong@baylibre.com
Subject: [RFC v1 2/5] clk: meson: g12a: Prepare the GPU clock tree to change
 at runtime
Date: Tue, 31 Mar 2020 00:11:01 +0200
Message-Id: <20200330221104.3163788-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151132_223345_78CD0FAF 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
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
Also populate set_rate requests from the divider to the mux so the GPU
clock frequency can be updated at runtime (which will be required for
GPU DVFS).

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
