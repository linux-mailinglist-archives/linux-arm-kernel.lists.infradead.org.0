Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCAF75E97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFjhDOV4oXHOhcBgC6gSsUz1z/55tsfWWtexdpFRhkw=; b=L+6DiJr2SeKAAm
	mikY+KpCUBJoyKy54DDgN+cb5ZsV0o476STwkJmUqUc/4V/+JERWMYuUuNhyOHpdMdzd1oRZI8LAc
	ZGUcCnNwZIg7zBovis6sfAA4gM0ypNfyp0ax9vhf/2iddEbefLwDWV3sYgh9GIUUKX7c3RgGVHMUi
	ioGDQ1E/d7myrLkrNjqKIU1BoMgnBv80eI8Xb5/5X3DbVBOq1c6bWZrlNiHTPc0HUq+4sst0qfVT1
	+xS/oySneP4pHux1X+FzcDqElx4D5sdm02MjoU/wECL8FFfjcdv5oD7YZ2ZZWZbx9aDXw2JRhcFj5
	t4cYx73QFIvHAFkGV4Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt2W-0006mr-7u; Fri, 26 Jul 2019 05:45:12 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsyE-00044q-SG
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 41E402224B;
 Fri, 26 Jul 2019 01:40:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=HESpvVbaHQiOa
 yBRK5sEX6EQs5s2hLfvGzXijz0YC9o=; b=i9Z8F/wF+RB+/ayVWbUiCCfiPRwN7
 eMWKkqOojYqcrEntkvDlBCl3PFbzk7LiOE1lTzBmL8FW5Rhbhpl5DwnRKdfZAScN
 mm5/FDIW5gO7r+qzrmPDfFs0fwHHi9K//y59R0qdxRUrpu57ZJATjDX/cY+wTPbP
 8oB7dlndnuNIIMHfdUqiKi9VEN/jFvH3+dTPosSxAu91p3euW+GoobfPkZz2Ts3B
 Om3Bz9oSxlklVcF40688lBoOq4gyErUO7jB5IJaFquONsTq5PaqLacDyhob+19HQ
 w516ftnT6uuY116f/cPqsgic+UZWLTkZ/ohuCwdB2yhfTILF8loIJMN5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=HESpvVbaHQiOayBRK5sEX6EQs5s2hLfvGzXijz0YC9o=; b=ip9qYLAC
 6Hz53HL//BE8MS5cpLyg0thf7LF3XRnazzZ8RBHBitf2UNM+Dsdz0bM0y3gM2LHF
 a4rC5yO/4zXDqG6U6oHC6UbdUSQPdFg4iyfj9Q2YY/bejXaEC9eL2I1h9Y+ZEvnm
 vIs83tPJ3e+3Oih8ac5Zi00oj6NGtI6Bps56IOGEFVeNpx2vVm51nwK+oL+Kdi8I
 1j2NpVKUdawZl3M4w70xDU0OTMHChpK1y6TxvntXEyfDIvCKjqBO9svobwVYQfzB
 cE4bASSqabalywJg9p1w/Z6+PBXDTlQXIPXGn3E88zQMpJr0V2K94QtEIhYf34MM
 7JO2Qu5Jqp2hWg==
X-ME-Sender: <xms:XpI6XRhCKREbudYRDFh75p0jFaGConmnjr5rDOYXB-6mlsp24vaB1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:XpI6XabtY-ZjGrsKG4UWJwewIClHgj6C7hs_vjIjxSfksF_3pYIDXA>
 <xmx:XpI6Xe-QxRs6tmUyrupxBjaE-MefARqwjtevRvnZFsOvUhELd2iH1A>
 <xmx:XpI6XUMGNHgA4LUOwK87WnzZsSYnnkVcB-SPhdLf3cMWsu32paCuxw>
 <xmx:XpI6XUtK0bFypTXRdhTR613U3iRZkHol8lso0XtGV1XLSk0npEpYAA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id C2694380074;
 Fri, 26 Jul 2019 01:40:42 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 12/17] ARM: dts: aspeed: Add reg hints to syscon children
Date: Fri, 26 Jul 2019 15:09:54 +0930
Message-Id: <20190726053959.2003-13-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224047_393247_9C4DD6F2 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following warnings:

    arch/arm/boot/dts/aspeed-g5.dtsi:209.28-226.6: Warning (avoid_unnecessary_addr_size): /ahb/apb/syscon@1e6e2000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
    arch/arm/boot/dts/aspeed-g4.dtsi:156.28-172.6: Warning (avoid_unnecessary_addr_size): /ahb/apb/syscon@1e6e2000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Cc: Patrick Venture <venture@google.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 15 +++++++++------
 arch/arm/boot/dts/aspeed-g5.dtsi | 17 ++++++++++-------
 2 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index ed78020f6269..1515b56a1487 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -157,18 +157,21 @@
 				compatible = "aspeed,ast2400-scu", "syscon", "simple-mfd";
 				reg = <0x1e6e2000 0x1a8>;
 				#address-cells = <1>;
-				#size-cells = <0>;
+				#size-cells = <1>;
+				ranges = <0 0x1e6e2000 0x1000>;
 				#clock-cells = <1>;
 				#reset-cells = <1>;
 
-				pinctrl: pinctrl {
-					compatible = "aspeed,g4-pinctrl";
-				};
-
-				p2a: p2a-control {
+				p2a: p2a-control@2c {
+					reg = <0x2c 0x4>;
 					compatible = "aspeed,ast2400-p2a-ctrl";
 					status = "disabled";
 				};
+
+				pinctrl: pinctrl@80 {
+					reg = <0x80 0x18>, <0xa0 0x10>;
+					compatible = "aspeed,g4-pinctrl";
+				};
 			};
 
 			rng: hwrng@1e6e2078 {
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index a8a593dd2240..92c659c50b4c 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -210,19 +210,22 @@
 				compatible = "aspeed,ast2500-scu", "syscon", "simple-mfd";
 				reg = <0x1e6e2000 0x1a8>;
 				#address-cells = <1>;
-				#size-cells = <0>;
+				#size-cells = <1>;
+				ranges = <0 0x1e6e2000 0x1000>;
 				#clock-cells = <1>;
 				#reset-cells = <1>;
 
-				pinctrl: pinctrl {
-					compatible = "aspeed,g5-pinctrl";
-					aspeed,external-nodes = <&gfx>, <&lhc>;
-				};
-
-				p2a: p2a-control {
+				p2a: p2a-control@2c {
 					compatible = "aspeed,ast2500-p2a-ctrl";
+					reg = <0x2c 0x4>;
 					status = "disabled";
 				};
+
+				pinctrl: pinctrl@80 {
+					compatible = "aspeed,g5-pinctrl";
+					reg = <0x80 0x18>, <0xa0 0x10>;
+					aspeed,external-nodes = <&gfx>, <&lhc>;
+				};
 			};
 
 			rng: hwrng@1e6e2078 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
