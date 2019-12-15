Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641D11F5A3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhJ6f9b0024Xaymkego94BOv1JL8I6iHIgY1DhK3IZU=; b=gROvokBhX/inCr
	g7KpeE71FM0XyaOmqAbq597/EZJl1MSQL900a7c2AQ/HE57pb+L5j6uxcans1fgI7a631kycsA5ji
	EW6UtsLPXnXfDFXAqwJNMM/0+AehUPXxiThLnHPUNpxMhORpcBLZvRDkbqd98xer8m91u9MopGlKv
	tG9pCpHj0xtEJyGuQ9P1f+DuNnzCr75afbdgG6LIuALeKUCG+C7u13kaNsdCLer1uDyGi/+3U2T+Y
	4xv8nJKjyAITx5Pv9fnIdgqo6E2ievGUEf5P8cVys5fderYeBNsnUODHpH59/Bvd6pcA2a1Au7hPM
	FURG8svtes+kxRF5XREA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLT9-0000oc-Ki; Sun, 15 Dec 2019 04:25:23 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSs-0007zL-Q5
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id E16FE5AD8;
 Sat, 14 Dec 2019 23:25:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:25:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=JeR0cnryoywMK
 HwISvSewvjFYfRlDvtFyO5FMfPy1yA=; b=XBgHdhO4Xvt1A3axNmQfNuWp6NPJz
 PdKf50xbI6aXXF54u3H+59meFbQh1XEE8bIp1JTQYRgvDHg007nr+goNWIkss57h
 DvGgmTu2Afl6dZpUliXa7TbYmTbOLPXcQdjghc5XP27CtPw65hlOEUMLyiRjHsjE
 Z1NtEXNbsgZu4mOlrOb7o78yzXd901DaDQ/uQdtw1mC7xwLdFYSIvcYV2uCThgp8
 QoJLTsu0ECbAx+4c7qjsbCwsx0hWBhdywTJ1X4ggey5DMOmIji+gzYaI1vdp7SBi
 WfWM6lB9seX3DML8GKw5AGm+zU3UBl7s6MXprnN7rgpoRYyhHKSRscgtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=JeR0cnryoywMKHwISvSewvjFYfRlDvtFyO5FMfPy1yA=; b=Legs+nZ4
 u/quZffYg8D714uR+n8AlFs1YdSOKulyg+5qv6Pg8Tk7t1nVgG+no2v5MjkVJWmh
 Ln2cY3WO005rVPvRI0WIC6ulWXiz1lsvTSyy5X247BOw8/CFQEFo2K2KYP8J8g8X
 bT9wM8YJ2GxxotQuPIFfDO/RBCpp+YVhQrXtZaM+LC28QB8jnCJcp7HXeUt2SRW6
 4Am4SXlYeru927B7tkTGMDsWArPXMSjP2VtaaXan6tekkCMJpkzdoc/AinhS//fr
 dOOH1qQ3UrUQjqXgE+ahv+9Z9HOFg/A4XMH8sfY/aHR+Ss2HLIsX7iXDZMlxu7jj
 oogYDurPB8hK2g==
X-ME-Sender: <xms:nLX1XdNI6GZsZaYg0-4bbejqvw4eb09AemPOcug9YScgtUXXRftv_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:nLX1XUOJ_T9rCjWao1X_dv32zPwuA7zWqx6B36HOVXtzljdjZVZsFg>
 <xmx:nLX1XXSQtG3FpDD5bjTcflMPOfJtkWKSS_ZyhMA0Vyk3emN_M0m_tA>
 <xmx:nLX1XeDCmMFM9Hww8OVdwKFgyU9ses2WoytM-ni4xWvMp-slq90QWw>
 <xmx:nLX1XVnxN3cIVF5Bhna_0Tb_1HgY4BnkyyIfrtfdAr7hYP-fp92JxQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8A54580062;
 Sat, 14 Dec 2019 23:24:59 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 4/8] ARM: dts: sunxi: a83t: Add msgbox node
Date: Sat, 14 Dec 2019 22:24:51 -0600
Message-Id: <20191215042455.51001-5-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191215042455.51001-1-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202507_034432_1DAAD8A3 
X-CRM114-Status: GOOD (  10.94  )
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
