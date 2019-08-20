Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6D95527
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kP67EqdEJkEHTd+SrAy6E16yWZBDlWDR+hzp658pl68=; b=drCbdCrMngt9XI
	WkXQbYP38CQ2L1KyEkfAelUZz22KxZyLflGSZkLsarGQGJSveyzYF+2+ol4DdOmRYZ69TEMBctuZP
	2x0NrABIqE4tuhBUulDcsQvCVrbZCdKsuT4Oi3zKuJo84ARCQg6IIYeiwlQ1lhlvQRyvoOUt9HoN7
	sWIjb6lah0YvO5ni5wsdm8qruJX9Ug/djX9FaCafdxsiZiNRlX3241nBkJnglJ/Aeeq65t0Wvls/O
	Vu82FYhG5uE+vVhGOqVXsv49yV9sgla1C3siqUHSYn6BV5Hr4FTUxXR7SfThN6r6uVJ+z4jhlaioe
	jRITBczQ4Eg86Az6WE6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzumW-0006Lf-Iz; Tue, 20 Aug 2019 03:26:00 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujv-00034s-LP
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:21 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4CF33354B;
 Mon, 19 Aug 2019 23:23:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=WJsZIeOZd+wep
 q4QNm5ZX0jhjKc7ewjmZ/86SrygJyo=; b=yIWnRhOLfGe2U4lUOoB0rwiabnJJX
 YYOZajdX525SVoLQ0VNTUrDtwGoxxb2tCRxQzvXpg6GCmLYPcI0wVlmimsbqb6I0
 Anre2acb7aHR33FlpLKQAd4tcrmuFOQL/3D7U9DK0oekBLKXb512lZi/o775owyW
 S43MiKQCB0fZcmvofug9kxQbfs0JphvZRN4PQo5Sria2MtEhqwLlwsT1svm6Fx/x
 sOrZS8dobRBEVW7QtudLMzmreVptp1EWmhzFZevEYiA+7VN6+zJ0cGYUPU33ThQz
 dfcLpRyJ0IK7E0e1dUk+0uQE2sZNb8s35aE6m6hM8SVG2rxp05S2hBz9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=WJsZIeOZd+wepq4QNm5ZX0jhjKc7ewjmZ/86SrygJyo=; b=o/dMsXb2
 xo6003waPeyz9HcfzzBDT4gwwiwICkTJGz4ilqqW5U2pZgup+s1ace9SmAaKZiSh
 qbHa2UEw3jAEinT6OZswh59xkPGbnhXmisYKJD4H0iTHucFplWZFq/NWWMN/gk9v
 19O5AVCAvxRC+cuaAhYUSRjZmENnKD7Dk2BXqTQEPtqtzozqIRQ3mxmy4pO/jWli
 4R9LHMrUlHc4tQF07+MaT/7DIzhuzGEMkatZxE64+pGTUzk9rRnqtIJB82TWz12o
 3oan1kgZ+W2JbqiHlsLJpzQSZnhK4SDK74SrYlFhp5G83exa9sq+4dfJiiGEBkVB
 P6kdVDyQS/XPoA==
X-ME-Sender: <xms:pmdbXb2RegGIugcKSqtwe3aDEMckRmr0A_4WpWJtNobzpnEDYcTdPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepje
X-ME-Proxy: <xmx:pmdbXV8qX9xJ1ROPCwK0QTqnA3MhgLEVNrtVRmOYHhWNfPXsEcSguA>
 <xmx:pmdbXXZLPs82Td8PNAxldcyy-4VdAJycxzzA02SES3AtMlyt8mMNxw>
 <xmx:pmdbXUwPjW3UtN5VCBS5OSDhdV_6fYt92JK_N5rRKmO5Rblsm3DqmQ>
 <xmx:pmdbXWeDrRVYRKPRCa-C2v8wqAZnvElx9ze_dpSNpU3Z3Nx1aZitlA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6499E8005B;
 Mon, 19 Aug 2019 23:23:17 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 09/10] arm64: dts: allwinner: h6: Add msgbox node
Date: Mon, 19 Aug 2019 22:23:10 -0500
Message-Id: <20190820032311.6506-10-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202319_877026_3F4FDC1E 
X-CRM114-Status: GOOD (  10.45  )
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

The H6 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 67b732e34091..2ff6a47e3cbf 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -215,6 +215,16 @@
 			#dma-cells = <1>;
 		};
 
+		msgbox: mailbox@3003000 {
+			compatible = "allwinner,sun50i-h6-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x03003000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		sid: efuse@3006000 {
 			compatible = "allwinner,sun50i-h6-sid";
 			reg = <0x03006000 0x400>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
