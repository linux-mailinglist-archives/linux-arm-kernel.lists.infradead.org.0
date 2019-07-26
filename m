Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6D875E88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5KnwNFmwQyrm4LwiWj9hQEWBhS+h6Tf4qsV8e9MaSI=; b=u+sKRgunus1B5j
	8Xy0ppBeql9HtrkHuW0TP22h4EVcH+MZvJVFNiIdC8F70IaqXYQV+8Ak+KGMYNnUiPZyBTD/jsXO4
	tY6P4eZ30ZMR84h4HOyIRT1oK6pn13XWIKA/nIt1rZrcycGBrkTpXWLpjeUupurszQyA5r5JY/Jvk
	FmysF/k627UbrISmMBq8W/c1dX8z0cyAgQextusgzLl5uknPtanGdOZ7bYhem+Ca41B3jueJFgHyU
	X14PpeOjPLNjtpD4ksRaIJsuXoAefmEV4e8vBk0RjaaODGRA+bWMyfYXeM99hjXUuw8hEA/f3pbBv
	NoRNlHxTc+HHv9ahmJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqszc-0004g2-5w; Fri, 26 Jul 2019 05:42:12 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxi-0003m8-Qj
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:17 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BE95C4169;
 Fri, 26 Jul 2019 01:40:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=H2SkfNadBvvR5
 /1SfNvzYkRRCEpCfJ5JlYnAHdwy93E=; b=Ijydvjo2F26+SBwMObBQVp8EGlwzl
 aFMmdR7M5oKALAJPM5w+gxxRIlKLsdWS39LtOXz5Jnid0ebKSiVXpZvOEu8bYa99
 1heEOJjP2s9mskTaHj7JXFQ6lPUXOuKcfrslr7WkT1P418oSRlr/n51fCbwVgZvR
 RLu8CEd79roFM3Dq/uC9w4+ow9NhNePaKra/C8zs+2SWWO+7wlzz82l4UIjH2k+j
 xClGiUe1hj7o3pr8QpD7MxOovrF9ZPSvVFXq8AVtSXQ7cK8PrgK60+5gyH096OUC
 x7GNvSAxNxlu/f1nilMLjlRvPDMNZCxG2zzoXxNLbCJiPR532pshSOsJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=H2SkfNadBvvR5/1SfNvzYkRRCEpCfJ5JlYnAHdwy93E=; b=RwaHGHzC
 evPKfxCaC8gAw6S3DpavFs+ZkZuD0CRVTkAvbeujB3XmaoWZkGmCJPFdUk7/JwGp
 WL1lwpsTpkr48TqN3Boet/mGQRQEZ7+zWvFr7xYLQg5SmAr4EU1yLExgRIBF7Go8
 ATEQzhbipPzAdrfh+kQip09o0I3oKnQqtOsB5WXKw2w6qUfZ35j4eF+2QXoKGyZb
 HTybFeMLkkr3xHjHoDcyvWUlqggbesOHiPchS3AwUQQOvl49ewZxdleUPDmqJ6NR
 m9rTTh2Sw62jKBfgnAyfX4/X82i/xi4iSAapkLeWYTaKnC0eJq/LdlXRJKeFxocy
 c90CUAmaSMmFKQ==
X-ME-Sender: <xms:PZI6XaUTWCAYFo4HWoUr89dRDT1byp4kFzqE9fpKljIeXbscDWVHxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:PZI6XfUxwPc-SG32VF8tms9gnwjAKGJloUPs1GqkXvaAhJMPJD91OQ>
 <xmx:PZI6XT1k3hxvBLfhC_cEnS37KMgRsa4eZ6poXm-myg88b6Y5YlW9Uw>
 <xmx:PZI6XVAE5ILSe22IjZlY1cXn1LrTVmEQUlYlkTqGOBnXRxOmeh8emg>
 <xmx:PZI6XThj-ZW0aIvYBsOviXGojSZnNbjypMy2jsnXAElKdYD_bUXc3w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 01476380079;
 Fri, 26 Jul 2019 01:40:08 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 03/17] ARM: dts: aspeed-g5: Fix aspeed,
 external-nodes description
Date: Fri, 26 Jul 2019 15:09:45 +0930
Message-Id: <20190726053959.2003-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224015_041212_8954639D 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Xo Wang <xow@google.com>,
 Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
 Adriana Kobylak <anoo@us.ibm.com>, linux-kernel@vger.kernel.org,
 Yuan Yao <yao.yuan@linaro.org>, Ken Chen <chen.kenyy@inventec.com>,
 robh+dt@kernel.org, Brian Yang <yang.brianc.w@inventec.com>, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org, John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The existing approach lead to an error from the dtbs_check:

    pinctrl: aspeed,external-nodes: [[8, 9]] is too short

Cc: Adriana Kobylak <anoo@us.ibm.com>
Cc: Brian Yang <yang.brianc.w@inventec.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: John Wang <wangzqbj@inspur.com>
Cc: Ken Chen <chen.kenyy@inventec.com>
Cc: Tao Ren <taoren@fb.com>
Cc: Xo Wang <xow@google.com>
Cc: Yuan Yao <yao.yuan@linaro.org>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts     | 4 ----
 arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts | 4 ----
 arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts            | 4 ----
 arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts           | 4 ----
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts         | 4 ----
 arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts           | 4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts             | 4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts             | 4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts               | 4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts         | 4 ----
 arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts               | 2 --
 arch/arm/boot/dts/aspeed-g5.dtsi                         | 3 +--
 12 files changed, 1 insertion(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts b/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
index c2ece0b91885..de9612e49c69 100644
--- a/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts
@@ -211,10 +211,6 @@
 	status = "okay";
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &gpio {
 	pin_gpio_c7 {
 		gpio-hog;
diff --git a/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts b/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
index 521afbea2c5b..d122a8efcc66 100644
--- a/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
@@ -197,10 +197,6 @@
 	status = "okay";
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &gpio {
 	pin_gpio_c7 {
 		gpio-hog;
diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts
index d519d307aa2a..dd2be50112a4 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts
@@ -64,10 +64,6 @@
 	};
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 /*
  * Update reset type to "system" (full chip) to fix warm reboot hang issue
  * when reset type is set to default ("soc", gated by reset mask registers).
diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
index 4e09a9cf32b7..d4d2d0b48f83 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
@@ -29,10 +29,6 @@
 	};
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 /*
  * Update reset type to "system" (full chip) to fix warm reboot hang issue
  * when reset type is set to default ("soc", gated by reset mask registers).
diff --git a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
index 628195b66d46..2dd664bff928 100644
--- a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
@@ -745,10 +745,6 @@
 	memory-region = <&gfx_memory>;
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &gpio {
 	pin_gpio_b7 {
 		gpio-hog;
diff --git a/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts b/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
index 22dade6393d0..4e9c03d5e5a3 100644
--- a/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
@@ -115,10 +115,6 @@
 	status = "okay";
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &pwm_tacho {
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
index de95112e2a04..fe7965366f4a 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
@@ -260,10 +260,6 @@
 	status = "okay";
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &gpio {
 	pin_gpio_b0 {
 		gpio-hog;
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
index 9628ecb879cf..2fa4f361ac6a 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
@@ -255,10 +255,6 @@
 	memory-region = <&gfx_memory>;
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &pwm_tacho {
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
index caac895c60b4..2077e8d0e096 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
@@ -937,10 +937,6 @@
 	memory-region = <&gfx_memory>;
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &wdt1 {
 	aspeed,reset-type = "none";
 	aspeed,external-signal;
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
index 31ea34e14c79..08facb2120b2 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -618,10 +618,6 @@
 	memory-region = <&gfx_memory>;
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &wdt1 {
 	aspeed,reset-type = "none";
 	aspeed,external-signal;
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
index 30624378316d..c99113e69e43 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
@@ -461,8 +461,6 @@
 };
 
 &pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-
 	pinctrl_gpioh_unbiased: gpioi_unbiased {
 		pins = "A8", "C7", "B7", "A7", "D7", "B6", "A6", "E7";
 		bias-disable;
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 6e5b0c493f16..3b4af88f9b80 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -216,8 +216,7 @@
 
 				pinctrl: pinctrl {
 					compatible = "aspeed,g5-pinctrl";
-					aspeed,external-nodes = <&gfx &lhc>;
-
+					aspeed,external-nodes = <&gfx>, <&lhc>;
 				};
 
 				p2a: p2a-control {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
