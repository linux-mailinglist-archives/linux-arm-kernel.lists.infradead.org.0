Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54D8647F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVrGIlMcPET+0Z/GDH9vjHZvHVxVVNRBtWmc3KEHM9M=; b=EqycLP4P8JdCu9
	PaHItgIjWAvd6mkkSqhW4jTFhWisCITDfcbXE7KjMByeOOmOqDU4Bq51LfFTpFNS+/U36UyL7ZRUP
	ANFwiB5vrTex6BuaJb23UeEbUDKDqyRYvOmpQ5BCxcqnBMh+DeeUjWfH0+d2KO4K4ekRV93EQwbt3
	E1FhRP4DK7b84f/P/uNVt1YLWNsAUwKLSDkDSqG7UFsd3kY7MGyH3ihj/gwMIYJqzqe+120+f8s+f
	WriyzIPvvC4EbTkxRD+MTTiK+JFSvDkG8vdISjUDtjwjmGdcRe0PmZmsgvKcphOhw77+psp1UrU8g
	5CW4Ex88HUyQg6+dMI2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDNz-0000sL-2N; Wed, 10 Jul 2019 14:15:55 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDNM-0000Ur-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:15:18 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 9FA172210C;
 Wed, 10 Jul 2019 10:15:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:15:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=g9VnI55k2gfqk
 yFiDo2jUP6h8kVt5+l1eXuk/JqwcPI=; b=dgIDfwW2wukWqdwH2hVBui5z39N+m
 fE93iY7NdpOqULDW4QZRTh/e0fCwt0EQVq1PRwiTvoXPlDR1nSDyjxIGtB4ze4GV
 qQp1NH/Tch5Hr121Ekdi+Bwonr1vaP6OcE11E/2RL5UmwF7rugcDhb2z4hzKFUS2
 PtFNxxddteachq6uBwgHmAMWIqNOgcRH7EaWn0dmpSyYHeM2Ix/qK8EFE6YOo9w/
 NC0SDS/J9sdXtCiChymQyADk40yaYnkDXg3n6KWBPLuVTfbrsGT8PjQ4g3eplHGC
 aclYFIQMY8CONiInfLywelONW4mYgLHgyvjYl5EMP56awT5O7+cSh2YAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=g9VnI55k2gfqkyFiDo2jUP6h8kVt5+l1eXuk/JqwcPI=; b=i5PJ3Y8Q
 d0mWnD4ec//WuAghvNmxKKmPv5mFXLYsUVrFmNOSpKsTgfNMbwm4qgBjwNdJn7tU
 EnIYYDnJqJq6Npz2ShMQr3R/funrDJsuJFd6WAFydp+0MdA2QFHmHQfCw08CNmWJ
 qkWG+0zpJzh15vpnPrOdx7vCyG3282e4CzuHeSY55De1QiTuNFJRzUqdOosOUXj1
 m8szQfCCyUyy2lbHJpiIOfcKyTfT07ROuoJsiH/v+GAgPzF5JJQRN8YqsMAlkUpt
 XcMyd0XClQaN6f3tyEsGIqo89QUQg7f0ooTrs4NG552ocUpUfRqygaiHWjcR0fL2
 ggIQplyvOnOoqg==
X-ME-Sender: <xms:8_IlXRsCh7EqHYRNHhHqp8wxMUf3PPfP_ng-Fc2w9sTNI0AzoFYOZQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgepfe
X-ME-Proxy: <xmx:8_IlXRBLoY7fA4hcfaRHnSrMTKLas6ZOnMJL_hmdXqi-B5Vo4k-OLA>
 <xmx:8_IlXR0STOyijvaAAKBVIjBwJqiM9160bLzZ7A7_J9EQVCK5DQuegw>
 <xmx:8_IlXcIHGiYFmxa749GOgq0Ynn27ktUzf-rsO8lMx4Q2vOuDh-bm9g>
 <xmx:8_IlXdkL0CBRjqRayOaErCFAXeEAtDeL-3AOr3FCuZfcmgAY-rJlDA>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id F3BBF80065;
 Wed, 10 Jul 2019 10:15:11 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 1/3] ARM: dts: aspeed: Describe SD controller in DTSIs
Date: Wed, 10 Jul 2019 23:45:01 +0930
Message-Id: <20190710141503.21026-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710141503.21026-1-andrew@aj.id.au>
References: <20190710141503.21026-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071516_442384_E9A636E9 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2400 and AST2500 both share the same SD controller, at the same
location in the physical address space and the same hardware interrupt,
with the same clock configurations.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 30 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/aspeed-g5.dtsi | 30 ++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 5d7050d00874..4bfda5d91dbe 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -188,6 +188,36 @@
 				reg = <0x1e720000 0x8000>;	// 32K
 			};
 
+			sdc: sdc@1e740000 {
+				compatible = "aspeed,ast2400-sdc";
+				reg = <0x1e740000 0x100>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges;
+				clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
+				status = "disabled";
+
+				sdhci0: sdhci@1e740100 {
+					compatible = "aspeed,ast2400-sdhci", "sdhci";
+					reg = <0x1e740100 0x100>;
+					aspeed,sdhci-slot = <0>;
+					interrupts = <26>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+
+				sdhci1: sdhci@1e740200 {
+					compatible = "aspeed,ast2400-sdhci", "sdhci";
+					reg = <0x1e740200 0x100>;
+					aspeed,sdhci-slot = <1>;
+					interrupts = <26>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+			};
+
 			gpio: gpio@1e780000 {
 				#gpio-cells = <2>;
 				gpio-controller;
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 4345c3153ca7..8d6404311652 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -262,6 +262,36 @@
 				reg = <0x1e720000 0x9000>;	// 36K
 			};
 
+			sdc: sdc@1e740000 {
+				compatible = "aspeed,ast2500-sdc";
+				reg = <0x1e740000 0x100>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges;
+				clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
+				status = "disabled";
+
+				sdhci0: sdhci@1e740100 {
+					compatible = "aspeed,ast2500-sdhci", "sdhci";
+					reg = <0x1e740100 0x100>;
+					slot = <0>;
+					interrupts = <26>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+
+				sdhci1: sdhci@1e740200 {
+					compatible = "aspeed,ast2500-sdhci", "sdhci";
+					reg = <0x1e740200 0x100>;
+					slot = <1>;
+					interrupts = <26>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+			};
+
 			gpio: gpio@1e780000 {
 				#gpio-cells = <2>;
 				gpio-controller;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
