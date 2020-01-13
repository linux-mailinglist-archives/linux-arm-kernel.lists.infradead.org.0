Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACAD138AA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:20:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhJ6f9b0024Xaymkego94BOv1JL8I6iHIgY1DhK3IZU=; b=Kt7/onmBFAFCQc
	ysVyxgiTYQKaMtNI7EeKkLfm3kdxiORZZTcVVvhsKGvQe5ZlDQWhdN5M8L19nh6KZfhjB4fcbtmoa
	hb4Nh7VeW6gDScFIGq1y1/nJT5k766lV3ZGslTrVjaNUsb+j14NFxSmomn0hBOhgK0vYU6vWXwmzx
	wTNRNZnwohrx0tPHpchSdHtogV3Cgdie36hgzFdZ1hfalprDu4bR+A8Ud16d7d0C+b0GorAvliJHx
	b+jS9NY/T+HQ+XaATQ08Cjoayi450vnL5uIx8fKVFlZD0eD07YrKAb6YQmC5S39Zvo28L5Fei5scS
	41KUV0/9Jo741n4KXszA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqs8q-00043X-0p; Mon, 13 Jan 2020 05:19:56 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqs7u-0003Ww-BV
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:19:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 564855ED5;
 Mon, 13 Jan 2020 00:18:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 13 Jan 2020 00:18:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=JeR0cnryoywMK
 HwISvSewvjFYfRlDvtFyO5FMfPy1yA=; b=SF+KIf6V6C4fNtr3QHDdrsPgXvUkr
 sHsLCaGsVcYDUNtT6hiIh5D+UV76PgnIbcvqR3McBWrX/9nERxBl+MR12WTLgr95
 k/F86sGWldCj0w8dyx1mh76nIoeQlrlGA5/sHDACGcUpVahI5wG2wztG1aWRE94F
 Ztpb+xbirJciAonzGyRrkcXQ+tE8/KapghllF9IjILVlfazL7WycEsPde9L0SVp5
 CWqYIHHwuslq73ME/1kbokX5XlOt1orbhGCpxJ+H8V6IPVx6BzLNPDnkrRoJsgoD
 p6Usdo34acYPDh5CNumUi01hpJyl0Fi8acX028zgsS4UWUILkSk0Am4eA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=JeR0cnryoywMKHwISvSewvjFYfRlDvtFyO5FMfPy1yA=; b=djup157o
 lJT9BXBHEOaBtjBeDWg8zdzV3cD0RYyz1pQ8p3oAR+FHxkcxmD1ZPtHGsjpRO6F2
 CbBnGW+/Eof6a1FlA/j/LLOZ3S51Y2rj9Bgcw9zetlxg9WURv/fcz40XL2Yj4TCl
 yDALHQBEgEx1QLJ/vVCabZaBPLin78lRBgm5mb+HzeKSmwuWKNBfwH8+6KpLrD98
 je8T12npTi5+1xrAAtnhAKbyzoTjGl33opaZEwCGC1jW5u62KNWcAEa6pycOA1MS
 L4fXXgvedvoiXG0OC6+rjJ7mcfL8KskwyefbhSTNslpbzHBHmp09UF2xfzuELZmL
 aqBO5WM1VsKs0Q==
X-ME-Sender: <xms:vv0bXlPsYxpNg1JhzoS1u4A0V3TtXGktWqZfAgExh7Z35ga98Ykp_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:vv0bXu_xkDw62bTzOAIwD-N2ZEqORm9uiIBC_nC-BUpu-qTg8kxiQA>
 <xmx:vv0bXpTKUbtj3AI65Dk6GC3NU7ty6qgwTaNWmfNmWoAoIcOOGoZITg>
 <xmx:vv0bXglHZC9XyiBX3wp0sv-Naa7_tEp1hZ9GgfJAbz7dYekeur_o0w>
 <xmx:wf0bXsOUK-5Z6bikE5g9V4Ghfwsbvg6c-iy0itwbaiNwOcWj6wY22g>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 08D90306080E;
 Mon, 13 Jan 2020 00:18:54 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v6 3/6] ARM: dts: sunxi: a83t: Add msgbox node
Date: Sun, 12 Jan 2020 23:18:49 -0600
Message-Id: <20200113051852.15996-4-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113051852.15996-1-samuel@sholland.org>
References: <20200113051852.15996-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_211858_537632_8C1083CE 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A83T SoC contains a message box that can be used to send messages
and interrupts back and forth between the ARM application CPUs and the
ARISC coprocessor. Add a device tree node for it.

Tested-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 53c38deb8a08..464b57d03dc0 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -592,6 +592,16 @@
 			clock-names = "bus", "mod";
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun8i-a83t-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a83t-musb",
 				     "allwinner,sun8i-a33-musb";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
