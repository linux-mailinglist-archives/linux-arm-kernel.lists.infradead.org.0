Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D489F11F5B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6VhHIf7eii5pIEv0C7X7hZsBswbxNqij3tmocti/Mo=; b=NrQEwHgdyXORwq
	osghVc48Y8fCWz9e6MOuqqpo3jIhccqO/+bXjxgfzh+7dhUueZn2PCPvy7AMnhimQXF5L36MBfv0/
	CpcVK4s4rcN9M+ZM8EH2xCUkiBzSiXb9zjta7Sf5RT62mYseREmPl/WtjVVXU1ij0VQFwWHwEHf8D
	DTeTX8M+hQNtruxxu5r3+69pfCrxtaAtNMkYou4Jl0FbIoCKQgp0qe5hLATDmVv3s+hG+dM74/SC4
	cvXYxMcPFZH9zCXvDlSeOk6se6IeLLJ674H2mZjAddjSsJEWIIJXULuTeCnj91lyFUWXOYJ8Aseh7
	Z6zmspgZbp4zNZ887DRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLUH-0001iq-0a; Sun, 15 Dec 2019 04:26:33 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSy-0000oU-97
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9263F5AE5;
 Sat, 14 Dec 2019 23:25:01 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:25:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=8789/HvoJo8OL
 hH4D97+su6QiBZWTXGYa2xCWRaRHwI=; b=cILIeY3Z4KXPzFGl0PtaP3J12xU/i
 sBAlIji5BtRUFCc4hGfyR6DQM1pLGL2YVPBerB2V/RimH695drH9RZLt6uSdSNFe
 ntM60qiHWAiNvj39hxAIVDrvrk2qfLk/8TVDuRHpn1BUlRNlWby6GFLI8MVUOwCJ
 xiK04nHlN0Ihkn9Hdo8dGSC1aAvj7RURf3PngByfcY5rYA0hr3UJ9XFYCjR7LPHl
 BWh7YYvf2pVQin+W/F8PSAzRGibkmzSQXxgkjSYiWRqoUf4xAGMBrYK48Vwua/0c
 /iA8fOIiGJrqYLAVF2TlcN6/4hdHhmOpTeVNCxqHAkFCfzPKnGujnYl/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=8789/HvoJo8OLhH4D97+su6QiBZWTXGYa2xCWRaRHwI=; b=Dg8URCxD
 RdRp+j1QEzh7Fci2mGoiruU0VNPcJ8impL1Pua5EcheDrm//0lPnN36w3lWNe4ua
 rLZry2x7mb54p8lUWpeGHDNUoLk41lEM2jB6EKaHzPT8kwr68Hfy5BEs0oiz2nWr
 Zcj4m9jstXdeirSlYpOPqD+SGX760otvr0cACjydkmealuBe+pz+EQ8pbaN61e3g
 qCAseNBnrFVjrTbK75ot1GAF3lCHrSKovnj/4pZ9s1czsDenXTP9H6ePnxD3e3Ve
 tgX80tEFRLclcsWa6d4gUoWpEiT5fW7ZVJH1R7NGcQEWjG+PJinzMv2t5zLHHizP
 gFfB+fInb8u/EQ==
X-ME-Sender: <xms:nbX1XYfF0dSesqG6yEA7zCV6RT81JSkM67v6xf0aBSrm9du6wP15Cw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:nbX1XXtcrgsqVaryJlhgH4NoRuZVe1M9sbntBgGBF0-QW9s_cFiLbA>
 <xmx:nbX1Xf2ipNlAkXqU3E60ZrfyAhqxUyhbJVEaaK7-qp4LlbgRzcUQGg>
 <xmx:nbX1XVHbtGMH8LvVVGZUh-XkxGcZtoSjv5d2y5f2lHjp5MUgTH_b9g>
 <xmx:nbX1XYGbnck0lgGMl_E0tQNNthMDRP3JUp3-Ie7qBKsQgCOWafAWPw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A99738005C;
 Sat, 14 Dec 2019 23:25:00 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 5/8] ARM: dts: sunxi: h3/h5: Add msgbox node
Date: Sat, 14 Dec 2019 22:24:52 -0600
Message-Id: <20191215042455.51001-6-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191215042455.51001-1-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202512_486830_8D88CF75 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H3 and H5 SoCs contain a message box that can be used to send
messages and interrupts back and forth between the ARM application CPUs
and the ARISC coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 0afea59486c2..6c5b283962a1 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -233,6 +233,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun8i-h3-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-h3-musb";
 			reg = <0x01c19000 0x400>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
