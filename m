Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B81695C5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgK7gxlF8DAk2pd6nphiVZ00/kiJH4NvTtuDz8jDatY=; b=BrNQPURrTNBvdU
	Htlwk5IdBoo1vM7nNQeXyZaytDuzwGMIVI0f6eUCcB1U9S0ElGEjs27h7bxoMxclefQqUmF0LXo8K
	ui7O0BwCMX95ff7V9RqoossgxeRXcI7XNNvw3IOJPGNvCrEdtPSfx18BCEmf3pjpsmcgW4BrqT/oZ
	yXT0///7llGZkv9kuorXjfaPQ3N3t8rxrURoUuAg5I42Gm33bqHOBb6OVe1IyujVwYwXGY6ElNvgN
	BcFAAJCzsG1SggHEyz+H4TGbvjTXH6tx9e4y9YVRRJ0NqILnVphH955uA4cvRJ36hpXa6Im0lNSaf
	ilv4gg4nurjoDIQGLN3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ibD-0003GP-64; Sun, 23 Feb 2020 04:10:35 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iZe-0000tt-Oo
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:09:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1C6846C17;
 Sat, 22 Feb 2020 23:08:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 23:08:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=94YtxdflGeYMO
 W0HwTF5Rysy837bt9YAGEKY/eUFxaI=; b=eG/cPJm1DW4Tv8TM5TC1JFX66167g
 11AALYogAMi7cAUab3SyYq60Q2h+yV8l6kZYBa9hxmef6kdG80YhJ55KEke5+/27
 hvxAWxRzsZyoJxjH2vqphikzlQrVBk0M8sCxji5fmrXryML+PrE+WtlLlx/J4MTl
 rAK+TYggWHw4sTSHAiC4pK796ZEQTNvVkrmU5UfpT37t5zsmx8cXoAkcAbyN+vJ6
 nCyi4d9KcwMgp1BXyIMHdOCm5ThnJvuUo8X7zNw9S1oiz4XpEg/lAdfkdH02R2rV
 Vkk6QRvTIc7TItG2j1wMaWhSUvStVZnp9uZ8t6YCG48dlC/0lUbEBTVdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=94YtxdflGeYMOW0HwTF5Rysy837bt9YAGEKY/eUFxaI=; b=Oxelx4G4
 wWT5Zlf/v7P0dZ4jG4JB1JIf5SECishSazhD34EkwNqKQGhs0drrfrcZ494Pw7Sq
 I/ofan10RJ4uqJU9AStRH+IqPoA1dt8TiJ/aiOYaY6Wiv845fqZVuIN7fEWWSk0y
 AhJDmJzB8EGo+cek0LF9lqgKgU2uJ3zQZYq7hTwlo+HLG0cNuKTsLYWXGCmdQGUg
 UeFNNpJKZEtQTFWSyOU/WTcpI8o8I1Amn2ygJr2Y3TTLU9B/RhzjvM9cZzdbWlTf
 MAl3VF3nTbp8gY85GqlmjnmIAKOimWzzEDnfDK8GA5LRs+4OcYPzm0ZR/nDioXUE
 loGldYgc10tRmg==
X-ME-Sender: <xms:2fpRXtUP1bH9_MSv7mGz_k2WXEZHY7SrFONl5jQ1tsdskdgSyp9HwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:2vpRXlvtS51aihAp8GujzBXy4DmNTMWGcONfkUMlTCt6FWVME_U8Cw>
 <xmx:2vpRXo7fELQH7jzd0FA13kyO74mXIKQ354qNhx2ksLeh1gd2cMh9gA>
 <xmx:2vpRXgRCW2GwGKweIYXisObNmzfmUwy3MOAlImXZh3DUsq67IqZjEw>
 <xmx:2vpRXtXBF7a8T-ST3TS6b1lQXl4mCa6X6yyj1tQo0F0TEdRs90NQEg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6C2B9328005E;
 Sat, 22 Feb 2020 23:08:57 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v7 6/6] arm64: dts: allwinner: h6: Add msgbox node
Date: Sat, 22 Feb 2020 22:08:53 -0600
Message-Id: <20200223040853.2658-7-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200223040853.2658-1-samuel@sholland.org>
References: <20200223040853.2658-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200858_947575_B87F1D5E 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
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
index 3329283e38ab..46e2cb28c86b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -239,6 +239,16 @@ dma: dma-controller@3002000 {
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
