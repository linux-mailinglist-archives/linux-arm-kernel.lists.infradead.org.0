Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4011F5B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7APOuR8o32grWLF4FkgBppyQJ2h/v8vAtYRqajCnHY=; b=GnNwAfDxEQzzm8
	eoQ69gsTerEnXluRv5hq1DbBFoCWSGt23cv0vVTDoQUTunxYVVkha8nPmPRP4h6GUlROhf+0z5lZI
	GGqPNDzj/QvKa3pfhHmvQ1NnE1qYI8wpDPsVAWI2a1M7rpdWEwXcjsSeNGoByfzRhxxGnBe2HuVyW
	ENpoKsghcQ/5vU51+W/jvIE2MYB9wz/pSalUbIm3QbVyh8SiCX8TaZzQibOTDhI/aqk/UC08P/VQw
	rYmmKgj8dtUWo6KBPH+Eq/Z178cxPnGWYBiELfhTX9PPZfE2W9NcqKKa4pBsPgv3aL6zsu9ron9Gf
	+eAlcQ4XuUX1dUfAnbkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLUk-0002O3-5i; Sun, 15 Dec 2019 04:27:02 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSy-0000oV-8r
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id D28375AD4;
 Sat, 14 Dec 2019 23:25:02 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:25:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=bDy4CFknF9Jl+
 PVBjSI9cqXdvgnSOo0SV6PphkH8UTw=; b=LZgPBbm5M2VjJSlwLAVQ8nO/CO0oa
 M9J2VcU0BMKrUI52BKC2sq8Pvp7lvVxKgyHEaha2PMjK0zk6+jLUllAKi2rRLJdb
 Sw/6FFcr6umWrJBXysKqWmmvA59DyOnZCAQwuQer/wJ0BImvkiWXSacsPdmBRXNo
 FTodb5CGOWHg5XYZt5Q/6VXiynRov92jGvWdfN+W/fMQduyE8UtcdFGPH2DlMkEy
 Z/aTjhRCBZbMT4yb2AbpOJrCZ75YRpsrOE631m9kO5ZjFn6CdXelKODXpiUT38ji
 ZFDQU/KecI1PIKFkbXq1MDWFtAUlNA+R9O49SePYNVrDZhOnPM7tufOSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=bDy4CFknF9Jl+PVBjSI9cqXdvgnSOo0SV6PphkH8UTw=; b=U+kL8qcP
 AgdD+YUKTOlqTuVIIgVb6ekbTdsGikTbgPhhfod10VwdB5yzhfvQyReapR0xT0SF
 FpMCBpkuPR54OTjo94j8CHooGhO2DhJXLJoswM7psCjO2SJQWNzOr7pMVUkhTfpW
 JTVSF0JK2aF9V+4LEzj4VFH0uFCHc7Ef3aAiDphqcW1ZWDeQrj5LHr8k4gyfKCY1
 py92hUqIZwHMQZVLMw2q/BL/+OnkbItYyRrq0lOadNoGbdJYfvjIRQq5ihaqK5vT
 bGA3KH/kiueOLvCOyh8yOzoHFGro00DpoSG+wTp2qdGf75cSt44hPShyTuaP9fPz
 D008NU11xZs5tw==
X-ME-Sender: <xms:nrX1XUM1_brYRZiUfFcsbFaNhduepsbE3OkmwT84UEf_VNCL-PVD0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:nrX1XVSGG-L9bGFfoetks_iq_qqUDvAx5RJYrMWGtgwWMPn44OYakQ>
 <xmx:nrX1XSyaavD7-7sO5VutgFsVxluRtF80eiammAmSgZ0PUNqGUyM7jA>
 <xmx:nrX1XbdhJ0ADbHLRH3wwu0W2fiYP9CHrAbKTdPib3Xo2VSeKIyEYbA>
 <xmx:nrX1XdjwjHR1c_bjDRW5lqMq_IHHPgZUeQO2sJNZwIalhaI9x49a6A>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 60A3180059;
 Sat, 14 Dec 2019 23:25:01 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 6/8] arm64: dts: allwinner: a64: Add msgbox node
Date: Sat, 14 Dec 2019 22:24:53 -0600
Message-Id: <20191215042455.51001-7-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191215042455.51001-1-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202512_497681_5D826F14 
X-CRM114-Status: GOOD (  10.53  )
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

The A64 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..10edb4b59203 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -496,6 +496,16 @@
 			resets = <&ccu RST_BUS_CE>;
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
