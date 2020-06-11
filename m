Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2631F64A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6SNCNaEcXy8dvLqq3eNMeZwiujpUP1okPEYFYyyE0I=; b=X80IJY10bSX7+b
	9GVGRExRCWbynkB7ynHakSnReNk/lvmLmYiYYsOXL/1iOwKvb9ez1JJzgQvJAwkK5767zvBC5KCBI
	9jQXKK2fFM8Blc/Smu7jCn32ydYimGGmEVgheuY9osb6WReisvMyCUhH7s1IoYT9kNebUCW/CIqQJ
	zlhY1DuMMkn+N3ftNMxyO7NvzV706j+QVeDzGMrgVk8MsM/q6/h8ttDtXWX2HZRSX7X7tMgB03qD8
	6lKeDK9D0XOM12IJKTysq5SSH7lcgSX7jhTzK0AiZZ+Bc0fOe6Z7M1+tyAld8BgV8U/FwROTjLkFZ
	qapc7wUBeXkHbd0P6MqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJQz-000647-9Y; Thu, 11 Jun 2020 09:23:41 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJQq-00061L-7E; Thu, 11 Jun 2020 09:23:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3651558018F;
 Thu, 11 Jun 2020 05:23:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 05:23:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=2w0cp3nEr88sP
 +MV7TWqwyUO3pJl2Co6QHKEM/4+4iE=; b=D9KYtJnso0yLpN7LL06zlKNHpB3WR
 jObt6Zw/A6GW6r6tVON5GXSx4imn66XIWNtSx93DoKkt+hjCio97Cixn4t0DngV9
 sRF9pfMX1LAEsNlMRf7D2kRqAI7TY9X+FVZvlg9b5Lx/KjEColzYX10XEZXabjRL
 RsNNDpuDb8KmBM1k5wm5N3ePCqF4VRPw+Vk0OcNcLrDWt07QYoQqFCqv7yKEBHkm
 /+ESJBtp3ItTM7V17faw/mcXLvA2RT2lPYOMG5LtKt/czc8tYBmWDq8mB805G5Ir
 SGUVCUDA7m04L6hhXS+ja7IvPYS9Q0ctchWOmjFN+SvjaTmj93z+l3iew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=2w0cp3nEr88sP+MV7TWqwyUO3pJl2Co6QHKEM/4+4iE=; b=u9FoXXIY
 PUqL/VJbaHBLnYn124cS0+7UrZg/saefEqDDe4AIYCG/3/U97yRfR47VYk2i4/k2
 S+WwE4l07yjNZuvL/58W0r7NkAH9rQpKU7HibRjJ3uVklbiuq4E+pkxiYhZLHFDI
 WnCsQoDVxttRrqEIa/Ftk6GtB7IGcNu2xwJQLXkzk80CTjUidLaCepEgOpWmD99G
 WvVd4qGvvFiATQMaK/lrlnTKQ1gjrzRXSttd993PWuFWY0wDJslNFqNog8mbyjKL
 GfGrBFUI7FAhijxh/N8aIC4mK0B1Eu67B6F/4DIt+0Ab50tN1QJTJ992bxzQmj/Z
 RFslTXRhxqh0pw==
X-ME-Sender: <xms:DvjhXtRg8_O_-RUGFzjFKAzrvS6ZPZHJWoDrNS5_ooXyptTipi9fWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehkedgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:DvjhXmzOBOsC4-63dg5pyuGuzBh09ZAmR76RtoBcL-UaBGdSJoD3Ag>
 <xmx:DvjhXi1EcU2hn3f0tuVa7xlXShP_AhPoa6f38sPYghzt1g8Dpj5CqA>
 <xmx:DvjhXlDh2eC0d7GSgh3d-PLlx0JM30qJtNOB8voukjJOe853XCKjOg>
 <xmx:DvjhXhP2aQDt09Qt-FK04VqpzIaRQJLHuWdUShyqyPrJgWrCPhtgxw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C72E73060FE7;
 Thu, 11 Jun 2020 05:23:25 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 3/3] ARM: dts: bcm2711: Add HDMI DVP
Date: Thu, 11 Jun 2020 11:23:17 +0200
Message-Id: <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_022332_401063_C01C980E 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a driver for the DVP, let's add its DT node.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index a91cf68e3c4c..00bcaed1be32 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,6 +12,13 @@
 
 	interrupt-parent = <&gicv2>;
 
+	clk_108MHz: clk-108M {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <108000000>;
+		clock-output-names = "108MHz-clock";
+	};
+
 	soc {
 		/*
 		 * Defined ranges:
@@ -244,6 +251,14 @@
 		hvs@7e400000 {
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		dvp: clock@7ef00000 {
+			compatible = "brcm,brcm2711-dvp";
+			reg = <0x7ef00000 0x10>;
+			clocks = <&clk_108MHz>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
 	};
 
 	/*
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
