Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6699066515
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqUaChCluoCLefpdQ6pbzmEWHtX6G/Y3xqx5tRAkPwc=; b=rnqLwP7W3/dPBF
	Uc7i0VDp2dqYKxissZ2ZEw20JDXn2v2CCJAvOypUpWYIL98AFagOpDa//uwM9f7jraU8Ee5NYCjs1
	etFOAWdJxcDETWpAmBRas9+zmQgKWoISeOzSsxrP+F70D3ArFK06Ad3g4gw2Pb4+maZdKBLdLrKh+
	J+skUb1KxLRUjSoHVStI5gTP7rRLBjXbY4qTsZAZS5nb3o56iBrml3/pVhMtn/9sU95DXhSEeGVMJ
	BU6U0O604jw4SMKFpCR8o/6G3LQ/m1NS49byJ6lB+jvj20zHQw+p1TcMacM7ZzreLfIYu0XSC5eSt
	uMZUZVxaH1PzEH46irdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmNr-0003Iw-JV; Fri, 12 Jul 2019 03:38:07 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmNL-00036G-Sn
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:37:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4CA9A22223;
 Thu, 11 Jul 2019 23:37:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 23:37:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=wkoAIErEzcHdT
 OhYOKxqtuFlPzo+edLdLqHK1zIdcu0=; b=ZWJZ36c+VcnsL4AIvV8Y31GLbiiiy
 nZo9Z6QG/Zf6NbSIlks9CmVZgXv1IX8GsYGeWtIDDM759fVKilPXwjjygAT+/EhM
 mJ9WRXV51yPZOMJQ5Ifl5tRIMQr4SxA97vGprxWFRbgb4dNKxy8uT/oe0YfVdMd5
 0smfv9uN/4/ufPquqXUnnOgEhNrlr12iuS6hs7ZLfUCXdBYNStCAkOXMSEOMSyJq
 SDspF0cjOp7chP0Ra7dDHI7Z0yV/XmXQAO+hHPgWun6yXcVTB0xDHFGhs9VWm93F
 dzlSbacoU/ihLcw9Tk7UriVgOt6Xzn6uCEupD5SG/AnbB/ZqBVsl/v4Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=wkoAIErEzcHdTOhYOKxqtuFlPzo+edLdLqHK1zIdcu0=; b=J1ytC6y8
 Tr3qehwTCKCxh0nm4i5A6ORWoJSmimyt9WGVnORooi2bOO2SeK+Kjmt68+yg5Wpb
 WCb/bmNRXsbaO1dj4JDEMF8iuSkkDYxvJ+OQbSVThirA43fVIjgxnJr2H+ThZOoO
 YMhlmIrA53fRBH0LCOIynmLvde3EpNV1u62B/759Rc6N0FbuPlvGZsOiRLb7lNcZ
 Gjp0Ylm4LDF9jtY+C0arSQdAxtmPpgyf7Ec/b04yOtM03fnIVNoV+AwA8kV/NWTI
 bhT6qA5B/XkeUfCyK83hHc42ELOmaWAtsiYHhg2QMxktWcWluBOnM6P5qggRmnVO
 CTR7QkjHWjraug==
X-ME-Sender: <xms:fwAoXY8rHKslaU4FfgFauoJikKTPdyNlSo-JihW7Hj_KAHzPFDm2QQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:fwAoXW0KJO_zVEhE4_KUMGm1_16jeAEKykbuMcIrAnmR68g_0cKJcw>
 <xmx:fwAoXTkG7gBUKu7RbFT-H3SvzIp7kBO7foYj71lgnMMffGXlsXFp7g>
 <xmx:fwAoXb15oa9maB6T5NmiN6sL0vmtrV9OIOBVI0_ccCdTq4ZLAD2HFA>
 <xmx:fwAoXYLEvvwVpjmU5tV2hAadyys0ZGCG8YuwgTwbd0KyuAZ0g-PTig>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7CBE1380084;
 Thu, 11 Jul 2019 23:37:32 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH v2 1/2] ARM: dts: aspeed: Describe SD controllers
Date: Fri, 12 Jul 2019 13:07:25 +0930
Message-Id: <20190712033726.25237-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190712033726.25237-1-andrew@aj.id.au>
References: <20190712033726.25237-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_203736_064961_4000BC50 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
In v2:

* Rename sd-controller compatible
* Drop "sdhci" compatible
* Explicit ranges
* Remove slot property

 arch/arm/boot/dts/aspeed-g4.dtsi | 28 ++++++++++++++++++++++++++++
 arch/arm/boot/dts/aspeed-g5.dtsi | 28 ++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 5d7050d00874..6ef2563ce372 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -188,6 +188,34 @@
 				reg = <0x1e720000 0x8000>;	// 32K
 			};
 
+			sdc: sdc@1e740000 {
+				compatible = "aspeed,ast2400-sd-controller";
+				reg = <0x1e740000 0x100>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x1e740000 0x10000>;
+				clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
+				status = "disabled";
+
+				sdhci0: sdhci@100 {
+					compatible = "aspeed,ast2400-sdhci";
+					reg = <0x100 0x100>;
+					interrupts = <26>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+
+				sdhci1: sdhci@200 {
+					compatible = "aspeed,ast2400-sdhci";
+					reg = <0x200 0x100>;
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
index 4345c3153ca7..c0e71f814fec 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -262,6 +262,34 @@
 				reg = <0x1e720000 0x9000>;	// 36K
 			};
 
+			sdc: sdc@1e740000 {
+				compatible = "aspeed,ast2500-sd-controller";
+				reg = <0x1e740000 0x100>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x1e740000 0x10000>;
+				clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
+				status = "disabled";
+
+				sdhci0: sdhci@100 {
+					compatible = "aspeed,ast2500-sdhci";
+					reg = <0x100 0x100>;
+					interrupts = <26>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+
+				sdhci1: sdhci@200 {
+					compatible = "aspeed,ast2500-sdhci";
+					reg = <0x200 0x100>;
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
