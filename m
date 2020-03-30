Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2029A198723
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNzUpouEsJ2KISukvuZuCEdfa21BBi6XKZ1oO5Rm3Ls=; b=kKQutvVG/Iw73L
	HozsZJ41O5Tvi1omD0/EGWlxkd2D2wD/HpKmn68il8NS/RbF3QHC5Ry7rDYZMXXplmS5MbkRUa7dY
	CkIj7AjiYATbZPgiFr2ru91OM2DFXQdeEY9rmPK9+bnz6veM73Bsw1ScnaoN/NnCBcxk/yteghobL
	T0v4W1zxq60RfvQbDtfnyrTBdMw2JWdx6YAkD/6XUqzSwKj1GdL/8ErPGd8iwKdm5/HFBvCmBqeXM
	bIRgLgEaU5fLRvhfMCBnBPbaF46fRF1HVPM/sTG8aW9b4dwv6j9YhvL8vXttdzufTsQef6+77tWht
	JCb5aMtns3DYOLEJdQDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2dg-0002Aa-FE; Mon, 30 Mar 2020 22:12:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2d1-0001jY-9X; Mon, 30 Mar 2020 22:11:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so23568673wrs.3;
 Mon, 30 Mar 2020 15:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PKd+/SwaFc/8uopc54d2zl4DkYvufR8oUaq7MhGEZW0=;
 b=EF4TwF51AfUN1lIwRYek6+eBZzsQcUmm8bYWbbXGb2mnRZLl1bp+BFHcJbg2P+stbv
 NFnVkDzaV5X/I1su61qbHRah5jskYUf8kzjpDHNCjDHsl+rLSdm2aNoiJHyHtUwCWlGb
 laEVNC+Lv9Y6JUG3Dm0b2NdJ1OOB7+C0q7JHoFjrKJJlk2OKm4D9OdSM+K3TIPl9PnqJ
 a+XHAid03t4cTctRHHHdyUgvwvRMn1GUeHsB8hQYKgRFEcto6iQQc4cV83R+otSC1b61
 cavCZ78jaDH7OScxrngocBBYwK5PTlB9YVMNqmftrhkqdokN79IZHIkPZIHP06aKzdga
 BaAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PKd+/SwaFc/8uopc54d2zl4DkYvufR8oUaq7MhGEZW0=;
 b=E2+Yord0dJio6LcbjErvoIBwVA1YcmXhT1Y+lBqnzrTFjUCrhWGyvzuf8ktM+lizXE
 17gdT7PSkjI2iBzX4R79ztWLZxh30IE9CldypVQpUcnICdGSrS38RNBgB43h/rCJmRhj
 VOH8vK+QQkfC4hFuPdFcqGGrr3D3TlgDSLdfVfwSl+9gNGQj69fnQEddmaXRaYeNqO6D
 qpZQPoBkUVCMpnJzYZ9gc3wpCr2UBwQe0LXAF7ZEdlGzH5qzNgSwOC7PGwEs62HtUIzx
 0zLfm5dzmv3KoPbRx86qxvk7Ka/+bK61cqxFQsylTtI7ljtBrvt0/WJ1E0Ys+0mjoM/3
 BZxg==
X-Gm-Message-State: ANhLgQ3yY1vyeN4xisRUWP707JTee1AMiCn6/+1Wq5Y7u9Q9XAzFImZo
 /ueqmZedwdUM+UiRyDAN5J3zF28G
X-Google-Smtp-Source: ADFU+vuzqjpSAFP9jLZ0jvH6APY0YiXy3oxdro+kCvlvWkDnfGPkNvMs4WdyNjCnUsk3/+L+tWmfGA==
X-Received: by 2002:a5d:630b:: with SMTP id i11mr16188951wru.94.1585606289301; 
 Mon, 30 Mar 2020 15:11:29 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b187sm1260509wmc.14.2020.03.30.15.11.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:11:28 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com, narmstrong@baylibre.com
Subject: [RFC v1 1/5] clk: meson: gxbb: Prepare the GPU clock tree to change
 at runtime
Date: Tue, 31 Mar 2020 00:11:00 +0200
Message-Id: <20200330221104.3163788-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151131_330891_E5968C1F 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 drivers/clk/meson/gxbb.c | 40 ++++++++++++++++++++++------------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/meson/gxbb.c b/drivers/clk/meson/gxbb.c
index 5fd6a574f8c3..0a68af6eec3d 100644
--- a/drivers/clk/meson/gxbb.c
+++ b/drivers/clk/meson/gxbb.c
@@ -957,7 +957,9 @@ static struct clk_regmap gxbb_sar_adc_clk = {
 
 /*
  * The MALI IP is clocked by two identical clocks (mali_0 and mali_1)
- * muxed by a glitch-free switch.
+ * muxed by a glitch-free switch. The CCF can manage this glitch-free
+ * mux because it does top-to-bottom updates the each clock tree and
+ * switches to the "inactive" one when CLK_SET_RATE_GATE is set.
  */
 
 static const struct clk_parent_data gxbb_mali_0_1_parent_data[] = {
@@ -980,14 +982,15 @@ static struct clk_regmap gxbb_mali_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		/*
-		 * bits 10:9 selects from 8 possible parents:
-		 * xtal, gp0_pll, mpll2, mpll1, fclk_div7,
-		 * fclk_div4, fclk_div3, fclk_div5
-		 */
 		.parent_data = gxbb_mali_0_1_parent_data,
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
 
@@ -1004,7 +1007,7 @@ static struct clk_regmap gxbb_mali_0_div = {
 			&gxbb_mali_0_sel.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -1020,7 +1023,7 @@ static struct clk_regmap gxbb_mali_0 = {
 			&gxbb_mali_0_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -1033,14 +1036,15 @@ static struct clk_regmap gxbb_mali_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		/*
-		 * bits 10:9 selects from 8 possible parents:
-		 * xtal, gp0_pll, mpll2, mpll1, fclk_div7,
-		 * fclk_div4, fclk_div3, fclk_div5
-		 */
 		.parent_data = gxbb_mali_0_1_parent_data,
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
 
@@ -1057,7 +1061,7 @@ static struct clk_regmap gxbb_mali_1_div = {
 			&gxbb_mali_1_sel.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_NO_REPARENT,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -1073,7 +1077,7 @@ static struct clk_regmap gxbb_mali_1 = {
 			&gxbb_mali_1_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -1093,7 +1097,7 @@ static struct clk_regmap gxbb_mali = {
 		.ops = &clk_regmap_mux_ops,
 		.parent_hws = gxbb_mali_parent_hws,
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
