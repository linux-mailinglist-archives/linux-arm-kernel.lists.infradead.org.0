Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411A072972
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d13BIghv7urv7Fgvt+6G24j7tPBbpOIvC9YCzdhxyuI=; b=E3/UVq0UIpx7RZ
	s/JfTqT+uRunuZFL0dEVTUfg3t+uxU4V/wJYktHSBn3C5Zci6tYa7EKv+HSFb4kwZ1YrMC/MLXI2o
	+XSDPPlEQO0B4FgJiD18SuMfl8aawN5kDrHfrupujVmEWCzUy1r4j2EQpAGPjvSfFD10uWfrUNG7N
	dt3EYgG+KevR3E2Sa9srpAeBGdsZ1FiZRwG+Rn+nwmNgm++VBvLvucI8Rw+CYXvV5WuI/HDuH313C
	AvaTArwVzs5WImTjVHwa8ott1qj0NWME2neiLbIe69n8S9u8cEZUN8wqmEGjZ3WjaIe7aIO4wApf2
	VC5K9sb0QEbI6TG4i6yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCEh-0006o5-1a; Wed, 24 Jul 2019 08:02:55 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCE9-0006mj-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:02:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A18E920319;
 Wed, 24 Jul 2019 04:02:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 24 Jul 2019 04:02:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=vGMWGeup4fNzBdqplWpmo0KCMG
 AiAgFTbEnQSTgMS68=; b=HK56g/HVg7olzOkStP/bNLJiK1e596UnMP1SS9zmpq
 DcxuWhwgipRBQma979wtZj7OEG8RE+WJmTANr6j/+t00qyjPTATHZZlXypDPI4yI
 /UhfEG/jZUPiEkTtfgC0lSKxoYW6izXQgelkTsXOtxMvPm8P1+mUPWMdmWGdgaFK
 TlB9HFROrQloJx+DnozOkRpYvqNHzpkc0ZcOHwQNC8S6nFEXbpMzOwJ7z/nMu22a
 rbInz7r0SriT163TaNqdDFAfHEbHNFie8zVy2QjVA+y7QL78tsVlknBdWCOm4M9f
 oNXY8ncaL5HQcSH4Ft5pk5kdvMluu4dp8bJzSwPLvOIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=vGMWGeup4fNzBdqpl
 Wpmo0KCMGAiAgFTbEnQSTgMS68=; b=qXG2dnB9/a5jAOKSV4Mfpt0EtZce6DMla
 Bf3Q034MHyMPF9PTvYQhxnR+LhSfbB7gOGTaqMk7sr8hOpKjcHh/Adu3xFHswJ/z
 9tz5S7d/A92vi/xxz5vd969Rqvb50sppbo/mP/KZ+0SxIBd/wAmX10lRR18HeCHz
 2V0nWZk0j/WRVjWRGzMFG68NwNglb1bNsr4PjlT9So+Khq5tQj0ldZ5AoeYLAlBv
 tEjpKiotE9GTuzcEVb82rcMjuAMBetPVgdFvwbgo4Oq3s7eM5Pzui4DIX/GEoNZL
 72mJH63GH+OBbDrcJOamw0If6jokF6iXNHzc25V+fhk4cnh6l5d2g==
X-ME-Sender: <xms:hhA4Xc1tNkdzUhn-zrJu5xW3TSs8vVRXoQ9skZ0yAH_R5H_x8BKhWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeelgdduvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehpihhnmhhugidruggvvhenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:hhA4XYkYcL0yZZz8mdIJesNj919MKI1wUoZQu3Ew72Du930NqOECww>
 <xmx:hhA4XU9FJwCLsbei9ZKsQ3LzbSKl46g61krowX8BUxI5QBYhWlFnkQ>
 <xmx:hhA4XVrWzcP7utJyM8zwbOff2s_hnZVjcgYaWS_2wwp0DsFD2IUZfg>
 <xmx:hxA4XbXgAdQt9x85E0BUjZN7CPqM_bJXBMIQBjNYsOfvnj2F7-9jNA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id E71C1380074;
 Wed, 24 Jul 2019 04:02:11 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH] pinctrl: aspeed-g5: Delay acquisition of regmaps
Date: Wed, 24 Jul 2019 17:31:55 +0930
Message-Id: <20190724080155.12209-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_010221_951241_1299F7F9 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While sorting out some devicetree issues I found that the pinctrl driver
was failing to acquire its GFX regmap even though the phandle was
present in the devicetree:

    [    0.124190] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: No GFX phandle found, some mux configurations may fail

Without access to the GFX regmap we fail to configure the mux for the
VPO function:

    [    1.548866] pinctrl core: add 1 pinctrl maps
    [    1.549826] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: found group selector 164 for VPO
    [    1.550638] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 144 (V20) for 1e6e6000.display
    [    1.551346] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 145 (U19) for 1e6e6000.display
    ...
    [    1.562057] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 218 (T22) for 1e6e6000.display
    [    1.562541] aspeed-g5-pinctrl 1e6e2000.syscon:pinctrl: request pin 219 (R20) for 1e6e6000.display
    [    1.563113] Muxing pin 144 for VPO
    [    1.563456] Want SCU8C[0x00000001]=0x1, got 0x0 from 0x00000000
    [    1.564624] aspeed_gfx 1e6e6000.display: Error applying setting, reverse things back

This turned out to be a simple problem of timing: The ASPEED pinctrl
driver is probed during arch_initcall(), while GFX is processed much
later. As such the GFX syscon is not yet registered during the pinctrl
probe() and we get an -EPROBE_DEFER when we try to look it up, however
we must not defer probing the pinctrl driver for the inability to mux
some GFX-related functions.

Switch to lazily grabbing the regmaps when they're first required by the
mux configuration. This generates a bit of noise in the patch as we have
to drop the `const` qualifier on arguments for several function
prototypes, but has the benefit of working.

I've smoke tested this for the ast2500-evb under qemu with a dummy
graphics device. We now succeed in our attempts to configure the SoC's
VPO pinmux function.

Fixes: 7d29ed88acbb ("pinctrl: aspeed: Read and write bits in LPC and GFX controllers")
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c |  2 +-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 92 +++++++++++++++-------
 drivers/pinctrl/aspeed/pinctrl-aspeed.c    | 12 ++-
 drivers/pinctrl/aspeed/pinmux-aspeed.h     |  5 +-
 4 files changed, 74 insertions(+), 37 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
index 384396cbb22d..22256576b69a 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
@@ -2412,7 +2412,7 @@ static const struct aspeed_pin_config aspeed_g4_configs[] = {
 	{ PIN_CONFIG_INPUT_DEBOUNCE, { C14, B14 }, SCUA8, 27 },
 };
 
-static int aspeed_g4_sig_expr_set(const struct aspeed_pinmux_data *ctx,
+static int aspeed_g4_sig_expr_set(struct aspeed_pinmux_data *ctx,
 				  const struct aspeed_sig_expr *expr,
 				  bool enable)
 {
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index 053101f795a2..ba6438ac4d72 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -2507,6 +2507,61 @@ static struct aspeed_pin_config aspeed_g5_configs[] = {
 	{ PIN_CONFIG_INPUT_DEBOUNCE, { A20, B19 }, SCUA8, 27 },
 };
 
+static struct regmap *aspeed_g5_acquire_regmap(struct aspeed_pinmux_data *ctx,
+					       int ip)
+{
+	if (ip == ASPEED_IP_SCU) {
+		WARN(!ctx->maps[ip], "Missing SCU syscon!");
+		return ctx->maps[ip];
+	}
+
+	if (ip >= ASPEED_NR_PINMUX_IPS)
+		return ERR_PTR(-EINVAL);
+
+	if (likely(ctx->maps[ip]))
+		return ctx->maps[ip];
+
+	if (ip == ASPEED_IP_GFX) {
+		struct device_node *node;
+		struct regmap *map;
+
+		node = of_parse_phandle(ctx->dev->of_node,
+					"aspeed,external-nodes", 0);
+		if (node) {
+			map = syscon_node_to_regmap(node);
+			of_node_put(node);
+			if (IS_ERR(map))
+				return map;
+		} else
+			return ERR_PTR(-ENODEV);
+
+		ctx->maps[ASPEED_IP_GFX] = map;
+		dev_dbg(ctx->dev, "Acquired GFX regmap");
+		return map;
+	}
+
+	if (ip == ASPEED_IP_LPC) {
+		struct device_node *node;
+		struct regmap *map;
+
+		node = of_parse_phandle(ctx->dev->of_node,
+					"aspeed,external-nodes", 1);
+		if (node) {
+			map = syscon_node_to_regmap(node->parent);
+			of_node_put(node);
+			if (IS_ERR(map))
+				return map;
+		} else
+			map = ERR_PTR(-ENODEV);
+
+		ctx->maps[ASPEED_IP_LPC] = map;
+		dev_dbg(ctx->dev, "Acquired LPC regmap");
+		return map;
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
 /**
  * Configure a pin's signal by applying an expression's descriptor state for
  * all descriptors in the expression.
@@ -2520,7 +2575,7 @@ static struct aspeed_pin_config aspeed_g5_configs[] = {
  * Return: 0 if the expression is configured as requested and a negative error
  * code otherwise
  */
-static int aspeed_g5_sig_expr_set(const struct aspeed_pinmux_data *ctx,
+static int aspeed_g5_sig_expr_set(struct aspeed_pinmux_data *ctx,
 				  const struct aspeed_sig_expr *expr,
 				  bool enable)
 {
@@ -2531,9 +2586,15 @@ static int aspeed_g5_sig_expr_set(const struct aspeed_pinmux_data *ctx,
 		const struct aspeed_sig_desc *desc = &expr->descs[i];
 		u32 pattern = enable ? desc->enable : desc->disable;
 		u32 val = (pattern << __ffs(desc->mask));
+		struct regmap *map;
 
-		if (!ctx->maps[desc->ip])
-			return -ENODEV;
+		map = aspeed_g5_acquire_regmap(ctx, desc->ip);
+		if (IS_ERR(map)) {
+			dev_err(ctx->dev,
+				"Failed to acquire regmap for IP block %d\n",
+				desc->ip);
+			return PTR_ERR(map);
+		}
 
 		/*
 		 * Strap registers are configured in hardware or by early-boot
@@ -2641,34 +2702,11 @@ static struct pinctrl_desc aspeed_g5_pinctrl_desc = {
 static int aspeed_g5_pinctrl_probe(struct platform_device *pdev)
 {
 	int i;
-	struct regmap *map;
-	struct device_node *node;
 
 	for (i = 0; i < ARRAY_SIZE(aspeed_g5_pins); i++)
 		aspeed_g5_pins[i].number = i;
 
-	node = of_parse_phandle(pdev->dev.of_node, "aspeed,external-nodes", 0);
-	map = syscon_node_to_regmap(node);
-	of_node_put(node);
-	if (IS_ERR(map)) {
-		dev_warn(&pdev->dev, "No GFX phandle found, some mux configurations may fail\n");
-		map = NULL;
-	}
-	aspeed_g5_pinctrl_data.pinmux.maps[ASPEED_IP_GFX] = map;
-
-	node = of_parse_phandle(pdev->dev.of_node, "aspeed,external-nodes", 1);
-	if (node) {
-		map = syscon_node_to_regmap(node->parent);
-		if (IS_ERR(map)) {
-			dev_warn(&pdev->dev, "LHC parent is not a syscon, some mux configurations may fail\n");
-			map = NULL;
-		}
-	} else {
-		dev_warn(&pdev->dev, "No LHC phandle found, some mux configurations may fail\n");
-		map = NULL;
-	}
-	of_node_put(node);
-	aspeed_g5_pinctrl_data.pinmux.maps[ASPEED_IP_LPC] = map;
+	aspeed_g5_pinctrl_data.pinmux.dev = &pdev->dev;
 
 	return aspeed_pinctrl_probe(pdev, &aspeed_g5_pinctrl_desc,
 			&aspeed_g5_pinctrl_data);
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.c b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
index 535db3de490b..54933665b5f8 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
@@ -71,7 +71,7 @@ int aspeed_pinmux_get_fn_groups(struct pinctrl_dev *pctldev,
 	return 0;
 }
 
-static int aspeed_sig_expr_enable(const struct aspeed_pinmux_data *ctx,
+static int aspeed_sig_expr_enable(struct aspeed_pinmux_data *ctx,
 				  const struct aspeed_sig_expr *expr)
 {
 	int ret;
@@ -86,7 +86,7 @@ static int aspeed_sig_expr_enable(const struct aspeed_pinmux_data *ctx,
 	return 0;
 }
 
-static int aspeed_sig_expr_disable(const struct aspeed_pinmux_data *ctx,
+static int aspeed_sig_expr_disable(struct aspeed_pinmux_data *ctx,
 				   const struct aspeed_sig_expr *expr)
 {
 	int ret;
@@ -109,7 +109,7 @@ static int aspeed_sig_expr_disable(const struct aspeed_pinmux_data *ctx,
  *
  * Return: 0 if all expressions are disabled, otherwise a negative error code
  */
-static int aspeed_disable_sig(const struct aspeed_pinmux_data *ctx,
+static int aspeed_disable_sig(struct aspeed_pinmux_data *ctx,
 			      const struct aspeed_sig_expr **exprs)
 {
 	int ret = 0;
@@ -217,8 +217,7 @@ int aspeed_pinmux_set_mux(struct pinctrl_dev *pctldev, unsigned int function,
 {
 	int i;
 	int ret;
-	const struct aspeed_pinctrl_data *pdata =
-		pinctrl_dev_get_drvdata(pctldev);
+	struct aspeed_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);
 	const struct aspeed_pin_group *pgroup = &pdata->pinmux.groups[group];
 	const struct aspeed_pin_function *pfunc =
 		&pdata->pinmux.functions[function];
@@ -306,8 +305,7 @@ int aspeed_gpio_request_enable(struct pinctrl_dev *pctldev,
 			       unsigned int offset)
 {
 	int ret;
-	const struct aspeed_pinctrl_data *pdata =
-		pinctrl_dev_get_drvdata(pctldev);
+	struct aspeed_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);
 	const struct aspeed_pin_desc *pdesc = pdata->pins[offset].drv_data;
 	const struct aspeed_sig_expr ***prios, **funcs, *expr;
 
diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index 329d54d48667..52d299b59ce2 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -702,11 +702,12 @@ struct aspeed_pin_function {
 struct aspeed_pinmux_data;
 
 struct aspeed_pinmux_ops {
-	int (*set)(const struct aspeed_pinmux_data *ctx,
+	int (*set)(struct aspeed_pinmux_data *ctx,
 		   const struct aspeed_sig_expr *expr, bool enabled);
 };
 
 struct aspeed_pinmux_data {
+	struct device *dev;
 	struct regmap *maps[ASPEED_NR_PINMUX_IPS];
 
 	const struct aspeed_pinmux_ops *ops;
@@ -725,7 +726,7 @@ int aspeed_sig_expr_eval(const struct aspeed_pinmux_data *ctx,
 			 const struct aspeed_sig_expr *expr,
 			 bool enabled);
 
-static inline int aspeed_sig_expr_set(const struct aspeed_pinmux_data *ctx,
+static inline int aspeed_sig_expr_set(struct aspeed_pinmux_data *ctx,
 				      const struct aspeed_sig_expr *expr,
 				      bool enabled)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
