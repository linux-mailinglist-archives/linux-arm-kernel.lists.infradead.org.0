Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8647B10FD27
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhOhvzwS6pTSV3bUQJL2vPIh2dceN71TfjbmiDz/1RM=; b=FB/pU8oSxCyLfh
	S1kJSmXKzGUggV/hKZLTFxhP72dOmYIaaguMwEdM/zkgwlK8bS37DO5EUsKX3IoECMJJysjqb4bkb
	IPtrDykLugAyohkYpm6PaG/9qX5B1u964OR17kuQHuDzCNL1Ov37TOB/c8cYlLyh7fqobLKD5Jgt9
	sKQTontjJ4lVFHHz7qKq4kSuklgiEM4k3uKU+Db1wVcoJC8vDYGx6iezc0tXSBD6gTpLq8egNd9Hs
	mcEIZbxJyMEq2xrqZ2tmIYvs7QzkX8RIDe8ZIKwu6p8D9OKEjPrMqfUW1ykIAH5COBslcXXDFLLhN
	RMg1S+T5DI8gckgbSRPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6uo-0001rn-91; Tue, 03 Dec 2019 12:04:26 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tV-0000mQ-8u
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:07 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id CB16E1F79;
 Tue,  3 Dec 2019 07:03:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=q5fsQR57WMUw8
 v/diLecW7Z/022zvctgEjYQGcu9mYk=; b=JgbUk9pwtHe8CKSY99Sxnrzky6Iai
 r55Pug8hdDiTecmOd4Oo4Tw9ikoiwK/btOQBtwURRk+allOphZJeTsUXk+fGDOa3
 rusGq96wtVuOBYR0UCrw+lj911LWUi59MprF0KTGXgUpLLfKyZT3XdjVh4jKUYaG
 sPzAuns4j2WT+HfGW8zXUPWROrvppnUY+Ra5XkbbkinfKa9vqrfKRf2z2oqa8rRI
 nIADW27wTW1XzicgCjp0tP3JkjGPU8ufwIdwboum16cHLWKzk+tXXTm9W3AFSa6g
 0YdS8om8KC4oWc7QoHo0Zn6hfW7mAbdxAOpQbuXaf3Lg8a/+hwJgStEQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=q5fsQR57WMUw8v/diLecW7Z/022zvctgEjYQGcu9mYk=; b=m4gl3uVy
 rRR4tvvt2v3IkwoT0dryNqrKAlwX3BMOlnChDM5qAePMasDQWYq4YtUCi0NFCdfj
 r7LKe8DtVdK4ZFhpgJW3aom81HPJCU1vUrHLyfzx0+MzpkBO0KcnP8hzyMq6X58c
 aq2/1AMDBzQadBGJWz/Je4sAuy7uyTy631T+J2Cj+M17Fa6jl3qwP+6S65nlfOL0
 /wDwBRQeCQIV6J/t5xlj+1V6RtUtIfIBliL8MixITKK2QJ9jcwm2O0RTCCAyac3A
 Ox1gyQgEZxhg44B9ylX5iH38E9pVkxG3oEsUOGGXHfNqrRjoDGZyUXk2lAYHnbXH
 5G+RgyisZVj47g==
X-ME-Sender: <xms:907mXQ0GiOvSALqXKSkDIAG95AWdCrXXsvb-9q2z9oDeDc2PFqc_TA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:907mXVfGzEw6vZcNN6maLZSn9Hdaj6VrTE3V9EbNPCjHggYj4kKUEg>
 <xmx:907mXZrYFz24HlkekUpCg-rPZmY9PLEyvM4z-afsPLiwI4ZSk41ahg>
 <xmx:907mXXWoU5TWy0iOeBXgLKUcUND9EXwJnNj_BEwVXFvcaltlR4o_Bg>
 <xmx:907mXV81iyFgpYODxjE1RdgWHqX_BNQCr4-kinJ8xeF1X4F4wJUneg>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id CD3E730600EA;
 Tue,  3 Dec 2019 07:02:58 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 05/14] ARM: dts: aspeed-g5: Fix aspeed,
 external-nodes description
Date: Tue,  3 Dec 2019 22:34:06 +1030
Message-Id: <141f068d10b94413a6d0ca73fe07f8e961380e7b.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040305_467855_F17AF097 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Xo Wang <xow@google.com>,
 Ken Chen <chen.kenyy@inventec.com>, Tao Ren <taoren@fb.com>,
 Adriana Kobylak <anoo@us.ibm.com>, linux-kernel@vger.kernel.org,
 Yuan Yao <yao.yuan@linaro.org>, robh+dt@kernel.org,
 Brian Yang <yang.brianc.w@inventec.com>, joel@jms.id.au,
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
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-arm-centriq2400-rep.dts     |  4 +----
 arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts |  4 +----
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts         |  9 +++++++--
 arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts           |  4 +----
 arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts             |  4 +----
 arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts             |  4 +----
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts               |  4 +----
 arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts         |  4 +----
 arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts               |  2 +--
 arch/arm/boot/dts/aspeed-g5.dtsi                         |  3 +--
 10 files changed, 8 insertions(+), 34 deletions(-)

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
index 2c29ac037d32..022d0744d786 100644
--- a/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-arm-stardragon4800-rep2.dts
@@ -200,10 +200,6 @@
 	status = "okay";
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-};
-
 &gpio {
 	pin_gpio_c7 {
 		gpio-hog;
diff --git a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
index c17bb7fce7ff..d69da58476fe 100644
--- a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
@@ -782,8 +782,13 @@
 	memory-region = <&gfx_memory>;
 };
 
-&pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
+&gpio {
+	pin_gpio_b7 {
+		gpio-hog;
+		gpios = <ASPEED_GPIO(B,7) GPIO_ACTIVE_LOW>;
+		output-high;
+		line-name = "BMC_INIT_OK";
+	};
 };
 
 &wdt1 {
diff --git a/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts b/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
index 1deb30ec912c..8a9782b7e1af 100644
--- a/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
@@ -118,10 +118,6 @@
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
index 42b37a204241..a875e873bd47 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts
@@ -263,10 +263,6 @@
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
index edfa44fe1f75..270184cb0577 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts
@@ -260,10 +260,6 @@
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
index b8fdd2a8a2c9..0831bc1f5a4c 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
@@ -940,10 +940,6 @@
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
index 569dad93e162..39ba4d5a787e 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -623,10 +623,6 @@
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
index bc60ec291681..7795248ba188 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
@@ -466,8 +466,6 @@
 };
 
 &pinctrl {
-	aspeed,external-nodes = <&gfx &lhc>;
-
 	pinctrl_gpioh_unbiased: gpioi_unbiased {
 		pins = "A8", "C7", "B7", "A7", "D7", "B6", "A6", "E7";
 		bias-disable;
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index d8d358e23d78..5757d3f0e947 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -223,8 +223,7 @@
 
 				pinctrl: pinctrl {
 					compatible = "aspeed,ast2500-pinctrl";
-					aspeed,external-nodes = <&gfx &lhc>;
-
+					aspeed,external-nodes = <&gfx>, <&lhc>;
 				};
 
 				p2a: p2a-control {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
