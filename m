Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D711F5B7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oz3sjLPUgOQqknnuVl/uhQ4NUbZsScpAXq6OcN4WQ8Q=; b=Fkj9fmAYxNm7uh
	epV9C6r0Nw5uW0HGb/XF2kU6dph3VVSCE6+oWYyzZyKkd+CM9YO4yl9hR/vlvNGLuylqhrSS30Y2y
	dFOyuS30ZfeDz6Ub74zv7g5Ch/9hwTvetd2Ec63Se/wKXp4hD0SFGL2BRYMAmZMfs+5LR+bhlKkt2
	vW1EVs64Zzb4SZFuQHJdrj0RMwVPbZ53DiTjGLnQSG/Y6IgTl6cYa2db3FZqrq5j7YRXatTGxKqHq
	kSjMm2G8Glk/iHylODmzyXzGUhfikQmT8BejGxto1IkgoOjuajf3zNc8jYenztT2omr+koUB00dq4
	CQlq6PLE3mgCAVlvMwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLV5-0002ay-7z; Sun, 15 Dec 2019 04:27:23 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSz-0000pb-NS
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4E96B5AE9;
 Sat, 14 Dec 2019 23:25:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:25:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=b6HojHijxWb+y
 5XleJvk+mLWd4R6gqj7yGjWhlzWNIc=; b=HCuIys0KuTmOuDOGPeH1i5uklfFtJ
 0cPQbfJmG53IwKJpiDhN6Rkrw5BdEWXgt/bfqMxVteVzW/err946kNpLsprx8sZN
 KNzI0l8v4w0EgeiALxeL4vvEMbmz7Gxt4td7IT0pypjb6tcp79N7RKupFpNK7EaF
 P/CmXLNWjfziSeADmr1fDhIbfpMO6VXZuuUWjSIDtRkf7/I0Z8ejbxHVFqItELqJ
 U4mWJBJpGmMX1sTeYlCkoYvh2rLuEkMF6ReokLQzgfv+zRdBBIqVq+gQ84FMJFkB
 t7kpkuqfu57aynS2wTIgXf7LMLXGZlbOVBxURIrxzcxAna2wL5Qs4mkTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=b6HojHijxWb+y5XleJvk+mLWd4R6gqj7yGjWhlzWNIc=; b=EzLWb1oV
 R/IT+zv7mmdIiWf4Ne9Jw6b6kG/JK5wV34ldDiR0I1hhilVQqbZwznORkyb8J3kl
 cNeiU4WKKAXJM6Ac2IkJIe+bYoJ3D5/qsloyXSF8VVHf82rBIiPYGK7qSmmFY+BG
 ee0B3zWXpi7nBhjCHeMbykgowa6Bvf7MnPtc5Z1fLXRIOqparUnJYbZ0XeixPUkk
 e3Td9JSkJ5mNbZHQELxsio9KZr6MmhDylHauLNpklGLhNQmPfck2rl9Y9Pr/g/Ou
 S0hyhK9DWp0kJ+m28c0xlr/RIyaAIg60EYAedv+alYCx1nHhbd3c4jdGeBhXzK5m
 /9XPJIYCDR/WJQ==
X-ME-Sender: <xms:n7X1XZnGGCNl5aNUin-fHyezI3e1aOn6fmXgi92TMYXXZoxrl9-VdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:n7X1XalNUiokq8tv2nhCBpg8T7Vi-4dCg2aGeEUj_0UdxQ4zU5nZCg>
 <xmx:n7X1Xds1oPgAB8wKLD0CBnXYuuN6pMjqk3dYuabyL550qoNU_t5Kyg>
 <xmx:n7X1XUKXkWUzg3-86Lp4B44SPWUkmSlhXgv4r1nWBCDjtHR1kp-1Mw>
 <xmx:n7X1XTuF4PovPZZzfHh5emB3_6CdFT7xUu15P285jMtoNTx-E_MUPA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 614B78005B;
 Sat, 14 Dec 2019 23:25:02 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 7/8] arm64: dts: allwinner: h6: Add msgbox node
Date: Sat, 14 Dec 2019 22:24:54 -0600
Message-Id: <20191215042455.51001-8-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191215042455.51001-1-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202513_986708_4C2BA434 
X-CRM114-Status: GOOD (  10.74  )
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

The H6 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 8e5999cd08bb..70ee56ba2091 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -240,6 +240,16 @@
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
