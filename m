Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C23CA1276
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lZpQlcBP7DrykfRrdqMZfHR4+FOHzfQo2P7k6dycZto=; b=N0SgoQSXEDszM4
	CEcwcAVfLmnN+h6UlbFdkcBg2IinRsb7zbSHXp4zcGerIfaagF/ev0SPhvrnauPRL5GAz+BoN2wNI
	1BA4u8GNh4yfupaWMFOlJvSp4H0JbtcS11rDKEoIdNIX+l17hVHk5Fb60JXCohpalu+ET6wxUpuD4
	LpENGIe8gxz1uKVfLmxvCURA6LieTltus+iXEF2YyLY4Cl4VUL50tmPh2FH5e7pSOGREOoQZwj//c
	g3K3nt9CNm9yX+DvJ3jTUt8cUvTMczCSpB/yztDy/6z2dE+8o66Fz/+ut3pHltvjUPD9INCj+bHIl
	J5ByCfmfbTISjGfjy2tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Egx-0004jP-AC; Thu, 29 Aug 2019 07:18:00 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Egd-0004i0-Eg
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:17:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id EFFA32235F;
 Thu, 29 Aug 2019 03:17:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 29 Aug 2019 03:17:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=fNZ4xh9uT1X3X9+GMF7S9M4Khb
 ZuAQ0dU82+LfdKRIU=; b=EHmXLhKdqEQBUyL306orSymEN4gb3qidnBa9u0FxOq
 zd0YytrNno08Kqv5NSjc38Pr+Lr/jHcl8rGOr9jgksKhxt7iJHzoF3oHrdlou1le
 eGEdsY8S3rAUCZJd8rhMlGPKH3FDTgvQP9L5vtXfTQDCI9bqf4eVjoDVoAcRN5M6
 gDL/NkA/TEYP251tUEDLugtVheOKGHkgtWYZpnm5fGbQ1gDZ5TdTyWg2r5kRKSBu
 sE5HQAf3utvq++HcB/AJBS8YGl+Lr7Vd4BDBtBsAlh9ykmytk1cG3gcgUiHIvfBF
 vfhjF97n7OQaNeBZlQn8ukokVsL/dQpGPJvnTdfre7vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=fNZ4xh9uT1X3X9+GM
 F7S9M4KhbZuAQ0dU82+LfdKRIU=; b=HGuxF0etWnXEN6y4boSnGGQXpJH7ly3Eq
 Ez0ulWry3Yo98dj/8yqbpwFnaajas3Wtx/Jah2C+neEDDsjWkEOGifv6LumpomAN
 85lln7PI1lRXjMNNFPu4RjenLEXOJarR1qzet0OLketJRs5FT62VNvCYcYtcvOGq
 8hxK0IjaOvZb0sxlE4PM8EAIHaR6vC/d3QaSuhxzbvlNfpqJ3tFx6COEUekxfc3s
 c1Jhy0obR8leSFKNUWmYSsU3aa2898nhm2UvbdAjG3oRqt1QyIZKvGqfCgA2HXoR
 roZ7D9AuQaCBB0+fE3vp5U5gRFF7Izya6kPh2AWv0bqgrxg4rtkgw==
X-ME-Sender: <xms:C3xnXR5TNsg2nfSkDmIJdHg-sBClwUmgNEp3HiP0nlCg5X0yjIkmig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiuddguddujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtdefrd
 ehjedrvdduhedrudejkeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:C3xnXWVPSGN_N4m99OBLSxYNVhByx2iL3arujMGJK5q4fDY6RIurlw>
 <xmx:C3xnXV2UuDik2kCDKF1TGivDCpdlJ_22fKEJZnjxGl17oAVQ5HFXkQ>
 <xmx:C3xnXT09aVDRCJ9IvAZhY18NPHbvMgkAFCBYkMcKggnkf7G1i5rb-g>
 <xmx:C3xnXeuKEklshHhzeEVxMLz14cBWL7fN9Dvh3fO1L_Ha2DAkiLxeZg>
Received: from localhost.localdomain (203-57-215-178.dyn.iinet.net.au
 [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 59BFDD6005A;
 Thu, 29 Aug 2019 03:17:28 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH pinctrl/fixes] pinctrl: aspeed: Fix spurious mux failures on
 the AST2500
Date: Thu, 29 Aug 2019 16:47:38 +0930
Message-Id: <20190829071738.2523-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_001739_642555_9B30F5B8 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, joel@jms.id.au,
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
was determined to be a partial fix to the problem of acquiring the LPC
Host Controller and GFX regmaps: The AST2500 pin controller may need to
fetch syscon regmaps during expression evaluation as well as when
setting mux state. For example, this case is hit by attempting to export
pins exposing the LPC Host Controller as GPIOs.

An optional eval() hook is added to the Aspeed pinmux operation struct
and called from aspeed_sig_expr_eval() if the pointer is set by the
SoC-specific driver. This enables the AST2500 to perform the custom
action of acquiring its regmap dependencies as required.

John Wang tested the fix on an Inspur FP5280G2 machine (AST2500-based)
where the issue was found, and I've booted the fix on Witherspoon
(AST2500) and Palmetto (AST2400) machines, and poked at relevant pins
under QEMU by forcing mux configurations via devmem before exporting
GPIOs to exercise the driver.

Fixes: 7d29ed88acbb ("pinctrl: aspeed: Read and write bits in LPC and GFX controllers")
Fixes: 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
Reported-by: John Wang <wangzqbj@inspur.com>
Tested-by: John Wang <wangzqbj@inspur.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

---
Hi Linus,

The timing of merging the AST2600 (g6) driver and 674fa8daa8c9 ("pinctrl:
aspeed-g5: Delay acquisition of regmaps") caused a bit of a rough spot a
few weeks back. This fix doesn't cause any such disruption - I've
developed it on top of pinctrl/fixes and back-merged the result into
pinctrl/devel to test for build breakage (via CONFIG_COMPILE_TEST to
enable all of the g4, g5 and g6 drivers). All three ASPEED pinctrl
drivers built successfully, so it should be enough to simply take this
patch through pinctrl/fixes and leave pinctrl/devel as is for the 5.4
merge window.
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 30 +++++++++++++++++++++-
 drivers/pinctrl/aspeed/pinmux-aspeed.c     |  7 +++--
 drivers/pinctrl/aspeed/pinmux-aspeed.h     |  7 ++---
 3 files changed, 38 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index ba6438ac4d72..ff84d1afd229 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -2552,7 +2552,7 @@ static struct regmap *aspeed_g5_acquire_regmap(struct aspeed_pinmux_data *ctx,
 			if (IS_ERR(map))
 				return map;
 		} else
-			map = ERR_PTR(-ENODEV);
+			return ERR_PTR(-ENODEV);
 
 		ctx->maps[ASPEED_IP_LPC] = map;
 		dev_dbg(ctx->dev, "Acquired LPC regmap");
@@ -2562,6 +2562,33 @@ static struct regmap *aspeed_g5_acquire_regmap(struct aspeed_pinmux_data *ctx,
 	return ERR_PTR(-EINVAL);
 }
 
+static int aspeed_g5_sig_expr_eval(struct aspeed_pinmux_data *ctx,
+				   const struct aspeed_sig_expr *expr,
+				   bool enabled)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < expr->ndescs; i++) {
+		const struct aspeed_sig_desc *desc = &expr->descs[i];
+		struct regmap *map;
+
+		map = aspeed_g5_acquire_regmap(ctx, desc->ip);
+		if (IS_ERR(map)) {
+			dev_err(ctx->dev,
+				"Failed to acquire regmap for IP block %d\n",
+				desc->ip);
+			return PTR_ERR(map);
+		}
+
+		ret = aspeed_sig_desc_eval(desc, enabled, ctx->maps[desc->ip]);
+		if (ret <= 0)
+			return ret;
+	}
+
+	return 1;
+}
+
 /**
  * Configure a pin's signal by applying an expression's descriptor state for
  * all descriptors in the expression.
@@ -2647,6 +2674,7 @@ static int aspeed_g5_sig_expr_set(struct aspeed_pinmux_data *ctx,
 }
 
 static const struct aspeed_pinmux_ops aspeed_g5_ops = {
+	.eval = aspeed_g5_sig_expr_eval,
 	.set = aspeed_g5_sig_expr_set,
 };
 
diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.c b/drivers/pinctrl/aspeed/pinmux-aspeed.c
index 839c01b7953f..57305ca838a7 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.c
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.c
@@ -78,11 +78,14 @@ int aspeed_sig_desc_eval(const struct aspeed_sig_desc *desc,
  * neither the enabled nor disabled state. Thus we must explicitly test for
  * either condition as required.
  */
-int aspeed_sig_expr_eval(const struct aspeed_pinmux_data *ctx,
+int aspeed_sig_expr_eval(struct aspeed_pinmux_data *ctx,
 			 const struct aspeed_sig_expr *expr, bool enabled)
 {
+	int ret;
 	int i;
-	int ret;
+
+	if (ctx->ops->eval)
+		return ctx->ops->eval(ctx, expr, enabled);
 
 	for (i = 0; i < expr->ndescs; i++) {
 		const struct aspeed_sig_desc *desc = &expr->descs[i];
diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index 52d299b59ce2..db3457c86f48 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -702,6 +702,8 @@ struct aspeed_pin_function {
 struct aspeed_pinmux_data;
 
 struct aspeed_pinmux_ops {
+	int (*eval)(struct aspeed_pinmux_data *ctx,
+		    const struct aspeed_sig_expr *expr, bool enabled);
 	int (*set)(struct aspeed_pinmux_data *ctx,
 		   const struct aspeed_sig_expr *expr, bool enabled);
 };
@@ -722,9 +724,8 @@ struct aspeed_pinmux_data {
 int aspeed_sig_desc_eval(const struct aspeed_sig_desc *desc, bool enabled,
 			 struct regmap *map);
 
-int aspeed_sig_expr_eval(const struct aspeed_pinmux_data *ctx,
-			 const struct aspeed_sig_expr *expr,
-			 bool enabled);
+int aspeed_sig_expr_eval(struct aspeed_pinmux_data *ctx,
+			 const struct aspeed_sig_expr *expr, bool enabled);
 
 static inline int aspeed_sig_expr_set(struct aspeed_pinmux_data *ctx,
 				      const struct aspeed_sig_expr *expr,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
