Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D163138AAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6VhHIf7eii5pIEv0C7X7hZsBswbxNqij3tmocti/Mo=; b=qC5qjjrdlhIvlU
	mQXWT1ElACmR5hXZAf02IOMZ5/ojeZhSyFUnlv0GFVaU1+BLczkB+RnCwl5y68Kob2mSWe2P86U8f
	fJX67JA4HN5m+CgycszZFMPqPhchqN8YczC0BmAuyr/E+BUMihTu56eZs16SKrzDZUB44JaUkoU3x
	w+71aRP9/HnXiAMx9u9KTzyijJ26orOR5c2BQ88GqKYTjvmXxq2eKVbyDGFfM7x2DJTWKsSVuemmn
	dpaH764UZ68i/Y0SqZvEc7twIrzKks6sbfO3usIwpSellMs89SmsAh8UMTlVV7a0pIEsztjH/o++c
	cr1zjEqT44lNR1j01uzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqs9k-0005w1-H4; Mon, 13 Jan 2020 05:20:52 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqs7w-0003Y9-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:19:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 56ED65EEB;
 Mon, 13 Jan 2020 00:18:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 13 Jan 2020 00:18:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=8789/HvoJo8OL
 hH4D97+su6QiBZWTXGYa2xCWRaRHwI=; b=Xm14WEZlxtedSncCmBRW3W1yr3vuL
 DJpp5oTgFoxFtLCBzg10dRqONGfimSLuhMXww78K8FJFP7RZwUn2NSJ827CNmGdM
 sCanoXdQK7aq26wG7k93il4YgIvHCqNvL9GME4Kq8Qfs11RvFvtQX/njFlKI3WUZ
 L2yuIWKbvdyj5H/7NZkMiPXlX2BxcU+pcxLJfcmBBPQMp/N2N2lJvCcf0YwsbV0K
 6D0sIhfElNZwa9Rie5cjNUu8n2knBGNPj1+QSsQEx/u+nTT2hA1zVVlzNdGaNGD0
 HnywuOEjb74e5TdXkK2X+t4FMBXS2gAwNcHDZwk8xIwhmoJOtK0Mhbjtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=8789/HvoJo8OLhH4D97+su6QiBZWTXGYa2xCWRaRHwI=; b=n6L+ER7I
 7jzBxqPMp0rVlYjBfZiCmBnHiYsI67+D7bBNjWj2FeAukngCIZp37Vm8QjnX234z
 pSa1JRqLRwlicEhNUI8ewHiLtmjn3Aw5pfukIN3l+5r9XqsOG7TaWU4OWbv5Kcdk
 l4k/jVxWVjd8ddIeGNILRJjg5GPlT9yiAtY7frJtUiDahOnEm/4Q0hUQP/N3GG7i
 n1nsVcMbtqjhr8Nebh53Y2b9/k3G/BKwe8nAsu1kVsKzOZJhG6PwjpaNsD+P1XoS
 IdtLto+stNbW/XGHA/pkWW/aNfo8DKazHoizceV+JJIOkTwH9o3M82rNpdtJuvF4
 Ea+4v0hkrXAUAA==
X-ME-Sender: <xms:v_0bXgEx38KmBBW9nMwGd5TKdTT3Ksos3geBB_5vYWE16MZB65d1iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:v_0bXrbJq7ZQfzQR8GEUNW_7zzo8FQUiXawGxVqcO8gp5Qdjr4IyRQ>
 <xmx:v_0bXkOukVl4R7GQdhW5O5qVqWTRTU6smoQYIlyytnf3u7H2_xjhxg>
 <xmx:v_0bXsxPBMsiofY9XhYAN7bzkgYEPMtsx_6KAdh7Y2heBwROwCV5Xg>
 <xmx:wf0bXgJMU9s3w1ESMj_U5i3JH1flcZQ0KIM-6KsgdoNfHv-Rhutmig>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 85BFB30607B0;
 Mon, 13 Jan 2020 00:18:54 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v6 4/6] ARM: dts: sunxi: h3/h5: Add msgbox node
Date: Sun, 12 Jan 2020 23:18:50 -0600
Message-Id: <20200113051852.15996-5-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113051852.15996-1-samuel@sholland.org>
References: <20200113051852.15996-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_211900_745988_DEF17F51 
X-CRM114-Status: GOOD (  11.25  )
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
