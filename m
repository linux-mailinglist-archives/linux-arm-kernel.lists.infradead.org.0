Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDCF95526
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xF08T07lMNlQdb4xhoQWLIdLEQ3sSVu62uv2BjoPcqg=; b=an9lIb8ZpcHxwe
	Z+zoX9edIwlpJmk8UjNoEvGh4dklE2shpT6pNUaWSBCui2JbFD9U2KGgTaVohTS4/ZQnUkkHrzGN6
	YhpJVBWUYMMSqxbZfj1iqx1gr2QfGvATv1IdkAh4bZVrk8/VVyzRLPGStXqKYiJMgUAaN1FvoRvdh
	TH9wfpyFXLIzJ09zPwHjGK4kA/8/WKiW4YhQg2jibDnM6A2QR/yqTVLvfBKqsI6QsIMCSSYYJ4loy
	0LM7eghLw5oa+m+fg+WXOHdWHsFkzQWVCc1KlA7GdnAj2whUZ8XUfzxqNWUGJr5nWHXTS0YUAdvK7
	YGS3+ro3UV1FnG7bAxIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzumH-000681-43; Tue, 20 Aug 2019 03:25:45 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuju-00033v-AX
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id B26A63541;
 Mon, 19 Aug 2019 23:23:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=uVypQN0RkXDd2
 3sRZ3MoRC5WnYNW0CweKKlnGS7aNXs=; b=F5AGKIf4ORfxk8M/hdPFMrx5AfMtb
 9m5oxsaaG9XGMpZMEzbLr6IwTsSTacWFyXcQlZFr1JJ+IYPR88obOgJGtQDIBYxg
 0kWwFsF9g3jOwIxRh5eJyBC74aQ0oS40P2y4Q5SBtFqwIIpNZiTtN3C/JlbfUJ7E
 BddOoueTuCOQPsZq9YbF8okiRgnJ4EtuXS8vZxPSwQI9D0E20jZ5dMXvYWyJqy+n
 Xgna2sTQXDnPAau+aTqI0QaqOa38OpPVq2jkjwoVaA5Pb76BK2a9cw5mXEDzeJRp
 nUYEL44YY9UBBQS9H2o3F8q/8ryZbfQGylB47GtUgxKwg+EaT7l/hKY5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=uVypQN0RkXDd23sRZ3MoRC5WnYNW0CweKKlnGS7aNXs=; b=pGZdz9HI
 3a+66ty+G7isa6fD/EB9r7YcMWN1dYTDLWYOJB03DffgQDg6OxdGmqrJyfFo+fVG
 tpPl+M6VXgsczPMaNBmsMMgOTOU6zwCzHTGYm+zz7sdDbx5mfSARSxiGL+AiPOwv
 SUuTA6Lx6otUcndwxlAgQTNM4ypQvv4mgQvueg9Jy+M6On6M2TmzMI+I5Jwd087k
 dEabx7pswd3cPJQ/REoy7geH2tyHW0kvoYh/SDLUWXyn/V2ZHM8H4+AK7YBSbLC/
 RM7bvK7puf+N3/Tf2BurOuAMM3gaOP/cSnkpe+wlGt+C9Lk2Vh1iSGXaDfLtn9zR
 MYja+UqZIY6i5A==
X-ME-Sender: <xms:pWdbXVwsgRg27tqtCc-1fFAd9atzA743iY8kJgLO_BId1ztstlyViQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:pWdbXb3L8s9Qw_gWAe50wMmCvvpONSVqdmBuHP10Shaz1voPELvxIg>
 <xmx:pWdbXci5Mddsd4Zg_kAe3OG47GJ_qJWT3QjylUeiAlZnYspSBwckHw>
 <xmx:pWdbXZmrqg7gHmPzvngrPBQ912efLzArWzpUdSC_v41LikuJ0Kf9WQ>
 <xmx:pWdbXUkzf8Vv68xuTc0KYzY9MDt2NIX7u9fRORHgYzQ5YLwRcyoOog>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id BC39C80059;
 Mon, 19 Aug 2019 23:23:16 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 08/10] arm64: dts: allwinner: a64: Add msgbox node
Date: Mon, 19 Aug 2019 22:23:09 -0500
Message-Id: <20190820032311.6506-9-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202318_502705_7AA2357D 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A64 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index ddb6f11e89df..428f539a091a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -487,6 +487,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun50i-a64-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
