Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7170E10E5E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5f4QCZpDp4SdqvDTNJC1g+vjDjCr1dLbMfXOOWMNfus=; b=MAZjCQnupAVlmU
	V4AMeBuBdKux7MFppuRsB1OJO0EXFKFU/Yk+bMvNdOblJfwK/Xs0UKXCNWC9YPFTlY9pWRnRcnLvN
	9PEbQEdj6ZlS6/5aQ68KseS78hnESys6VBuN1jFxXU/oPOo3lsh+vIpdOeelWRsRz3kHS6mGGBAyd
	GbqSseedKE9gwl9nYg5otS0w/3hXbQ/P97iUkIGPnO2vV9vv+xAxWEQiwqgsFHq7nKt5Ic/yJnh5k
	Ve8wmmwRoPbvacpSFPLRhmSoIjYEMOCJGAr5kO7Qg/JiOmSaOlygd6PMf/csTEKRYjli7nQiav2WT
	GqGx5mJ2P1dGXSH/fdaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibeym-0004ki-UV; Mon, 02 Dec 2019 06:14:40 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibexK-0003d4-BV
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 06:13:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8395E22431;
 Mon,  2 Dec 2019 01:13:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 02 Dec 2019 01:13:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=o4SgjvFhP06qE
 MYFVcEyg35wWX80rlCKP3ooHrBZfDo=; b=aJYVzendOngQ5F2JtZ/LQe2vcDbRG
 e/7zLxYa5UDicNca+9lLY+dWyuI61IOxfnxHt3T+ZbXgJcNwFJV2rQplDRl2pBYK
 zivV8Mr5LRyxzt0j9MjA3MDQK7RhixXhoTROqJixIYi8FTyoC6T2jrJuMaCHYyID
 BS/SFXVHMrkGeHp93MJO5BBPDteBlibA88foy3ArgZYKqqRSlITMMf3TeKjg4Cfb
 rSxjHlrhCK9q7vllcDdTsI8vnusb0vx+SEnB0fHgJxkLJbOq8rcwhwTn64uOf5j3
 hnlPPyjnQ4+X1J3dUj1eZFosIwTqizIpb6GwONYSqd091w9H8bk/MmZpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=o4SgjvFhP06qEMYFVcEyg35wWX80rlCKP3ooHrBZfDo=; b=xZKQrzIq
 k0dBFFayTBzjEhjfgqH00LhQd7UEJC+SZ7r2pIc7zDQ+pBwWbwByQQiXO28zlhn8
 AZzDcRkj9hMhzv1oAFQdCIVcZDhM2rswsdRhxh5MUzhDShRNzjocBMU2UtGCpeah
 3AANYGU9sFS/MFVly88JLu7aB/CBfnd6Kj/+7dG5SiGccIJPH22mQ9uO+ryPU5Qt
 6EEKr5RtxQwgOO9lI8GlM29M9sXxmGBMUzTgSTb2mgVtSrhVjZykovQI3i9OZicq
 3x0Zp17Y6Cq3YSSuxnA8FcZv8LV98mVXlgYlPzqq6ygsf3V7xlQMyz3zTUKJ+fZL
 Sp46Be8+rchT6A==
X-ME-Sender: <xms:davkXYPqnppDdQxIFKT7dCheGjNfcKI3QtMv1na0ZR5yhCS2L3Ts0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:davkXceDkTNIKL8ysKCkHewLXEjm-8-E6X7xKBTPHX-RTTWzLJ_w5w>
 <xmx:davkXVmmugzr30SkXnReDAgaPkKPFL1q0AMY5e4L9LYUjU_IirKRPw>
 <xmx:davkXX3x6Mv_l-S32GKlHPJibIv4BclYRoUE0GS0zMdSJrTywlj9Lw>
 <xmx:davkXc2tdlNZMo7kV-aM3HUu-j3It4OqvrLGL6vTR0XOsrAo0XG5Ow>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id C05168005A;
 Mon,  2 Dec 2019 01:13:05 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 5/7] pinctrl: aspeed: Move aspeed_pin_config_map to separate
 source file
Date: Mon,  2 Dec 2019 16:44:30 +1030
Message-Id: <20191202061432.3996-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202061432.3996-1-andrew@aj.id.au>
References: <20191202061432.3996-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221310_542820_D7271D20 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

The AST2600 pinconf differs from the 2400 and 2500, aspeed_pin_config_map
should define separately, and add @confmaps and @nconfmaps to
aspeed_pinctrl_data structure for that change.

Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c | 10 ++++++
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 10 ++++++
 drivers/pinctrl/aspeed/pinctrl-aspeed.c    | 38 +++-------------------
 drivers/pinctrl/aspeed/pinctrl-aspeed.h    | 19 +++++++++++
 4 files changed, 44 insertions(+), 33 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
index c56ded0ac57e..62b8aa53b627 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
@@ -2594,6 +2594,14 @@ static int aspeed_g4_sig_expr_set(struct aspeed_pinmux_data *ctx,
 	return 0;
 }
 
+static const struct aspeed_pin_config_map aspeed_g4_pin_config_map[] = {
+	{ PIN_CONFIG_BIAS_PULL_DOWN,  0, 1},
+	{ PIN_CONFIG_BIAS_PULL_DOWN, -1, 0},
+	{ PIN_CONFIG_BIAS_DISABLE,   -1, 1},
+	{ PIN_CONFIG_DRIVE_STRENGTH,  8, 0},
+	{ PIN_CONFIG_DRIVE_STRENGTH, 16, 1},
+};
+
 static const struct aspeed_pinmux_ops aspeed_g4_ops = {
 	.set = aspeed_g4_sig_expr_set,
 };
@@ -2610,6 +2618,8 @@ static struct aspeed_pinctrl_data aspeed_g4_pinctrl_data = {
 	},
 	.configs = aspeed_g4_configs,
 	.nconfigs = ARRAY_SIZE(aspeed_g4_configs),
+	.confmaps = aspeed_g4_pin_config_map,
+	.nconfmaps = ARRAY_SIZE(aspeed_g4_pin_config_map),
 };
 
 static const struct pinmux_ops aspeed_g4_pinmux_ops = {
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index b2fe47b98fa0..2acbcf3d508a 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -2780,6 +2780,14 @@ static int aspeed_g5_sig_expr_set(struct aspeed_pinmux_data *ctx,
 	return 0;
 }
 
+static const struct aspeed_pin_config_map aspeed_g5_pin_config_map[] = {
+	{ PIN_CONFIG_BIAS_PULL_DOWN,  0, 1},
+	{ PIN_CONFIG_BIAS_PULL_DOWN, -1, 0},
+	{ PIN_CONFIG_BIAS_DISABLE,   -1, 1},
+	{ PIN_CONFIG_DRIVE_STRENGTH,  8, 0},
+	{ PIN_CONFIG_DRIVE_STRENGTH, 16, 1},
+};
+
 static const struct aspeed_pinmux_ops aspeed_g5_ops = {
 	.eval = aspeed_g5_sig_expr_eval,
 	.set = aspeed_g5_sig_expr_set,
@@ -2797,6 +2805,8 @@ static struct aspeed_pinctrl_data aspeed_g5_pinctrl_data = {
 	},
 	.configs = aspeed_g5_configs,
 	.nconfigs = ARRAY_SIZE(aspeed_g5_configs),
+	.confmaps = aspeed_g5_pin_config_map,
+	.nconfmaps = ARRAY_SIZE(aspeed_g5_pin_config_map),
 };
 
 static const struct pinmux_ops aspeed_g5_pinmux_ops = {
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.c b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
index 54933665b5f8..fc68aca7b36c 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.c
@@ -411,49 +411,21 @@ static inline const struct aspeed_pin_config *find_pinconf_config(
 	return NULL;
 }
 
-/*
- * Aspeed pin configuration description.
- *
- * @param: pinconf configuration parameter
- * @arg: The supported argument for @param, or -1 if any value is supported
- * @val: The register value to write to configure @arg for @param
- *
- * The map is to be used in conjunction with the configuration array supplied
- * by the driver implementation.
- */
-struct aspeed_pin_config_map {
-	enum pin_config_param param;
-	s32 arg;
-	u32 val;
-};
-
 enum aspeed_pin_config_map_type { MAP_TYPE_ARG, MAP_TYPE_VAL };
 
-/* Aspeed consistently both:
- *
- * 1. Defines "disable bits" for internal pull-downs
- * 2. Uses 8mA or 16mA drive strengths
- */
-static const struct aspeed_pin_config_map pin_config_map[] = {
-	{ PIN_CONFIG_BIAS_PULL_DOWN,  0, 1 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, -1, 0 },
-	{ PIN_CONFIG_BIAS_DISABLE,   -1, 1 },
-	{ PIN_CONFIG_DRIVE_STRENGTH,  8, 0 },
-	{ PIN_CONFIG_DRIVE_STRENGTH, 16, 1 },
-};
-
 static const struct aspeed_pin_config_map *find_pinconf_map(
+		const struct aspeed_pinctrl_data *pdata,
 		enum pin_config_param param,
 		enum aspeed_pin_config_map_type type,
 		s64 value)
 {
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(pin_config_map); i++) {
+	for (i = 0; i < pdata->nconfmaps; i++) {
 		const struct aspeed_pin_config_map *elem;
 		bool match;
 
-		elem = &pin_config_map[i];
+		elem = &pdata->confmaps[i];
 
 		switch (type) {
 		case MAP_TYPE_ARG:
@@ -491,7 +463,7 @@ int aspeed_pin_config_get(struct pinctrl_dev *pctldev, unsigned int offset,
 	if (rc < 0)
 		return rc;
 
-	pmap = find_pinconf_map(param, MAP_TYPE_VAL,
+	pmap = find_pinconf_map(pdata, param, MAP_TYPE_VAL,
 			(val & BIT(pconf->bit)) >> pconf->bit);
 
 	if (!pmap)
@@ -535,7 +507,7 @@ int aspeed_pin_config_set(struct pinctrl_dev *pctldev, unsigned int offset,
 		if (!pconf)
 			return -ENOTSUPP;
 
-		pmap = find_pinconf_map(param, MAP_TYPE_ARG, arg);
+		pmap = find_pinconf_map(pdata, param, MAP_TYPE_ARG, arg);
 
 		if (WARN_ON(!pmap))
 			return -EINVAL;
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.h b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
index a7db31202033..27d3929b6aca 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
@@ -42,6 +42,22 @@ struct aspeed_pin_config {
 	.bit = bit_ \
 }
 
+/*
+ * Aspeed pin configuration description.
+ *
+ * @param: pinconf configuration parameter
+ * @arg: The supported argument for @param, or -1 if any value is supported
+ * @val: The register value to write to configure @arg for @param
+ *
+ * The map is to be used in conjunction with the configuration array supplied
+ * by the driver implementation.
+ */
+struct aspeed_pin_config_map {
+	enum pin_config_param param;
+	s32 arg;
+	u32 val;
+};
+
 struct aspeed_pinctrl_data {
 	struct regmap *scu;
 
@@ -52,6 +68,9 @@ struct aspeed_pinctrl_data {
 	const unsigned int nconfigs;
 
 	struct aspeed_pinmux_data pinmux;
+
+	const struct aspeed_pin_config_map *confmaps;
+	const unsigned int nconfmaps;
 };
 
 /* Aspeed pinctrl helpers */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
