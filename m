Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A239F2B3F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thfenm/71XBnhCEa8kI0UTjSu0LVnp0fInfqm090R6M=; b=Nnr9Zad54lhszO
	kE/94eCAprZ0oBmgWm5+iB13zhoZ+wxlxpvbO987uF/InqSXN4dMCOUM7KH91uEfBmLIlOfEiC6yp
	Pvpnr/gR2hZ6o2H7gT79BEzM4k35SVV64zNdvCYsm3ci6W+l0iMsBPtnjoXZUCIhDKGbrckgSEHly
	E7RSnZdPiJEHzTf3ceKtG7Idbq31+mbtQ8BMauUe/aZrbtsIRtYeMxu8QiMGAlq3t66/nt6rWEwWW
	xqBSiBNZuNnswZ5nieVHsh7usjXmZkGAXHrI8aI3pBQT0eOkoKaOksRWxDKTJCT8VV6paeAjXrvWs
	xFm+DFLN5VSN/0+yP9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVELJ-0005LM-Pm; Mon, 27 May 2019 12:03:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJs-0004Aj-UA
 for linux-arm-kernel@bombadil.infradead.org; Mon, 27 May 2019 12:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cM5Kam9nldWrMwog26GEyQfqxRFgS6SClh6fjqYfFQY=; b=BuMZUy7Dk29fJnVqq5j2Es25hS
 yheF2Z8+n5L6huxL312wSPRkobYxGtf3zvojaTdXYsH0mnguNKNjh9d/E5mzwP3n2CDDJi3l8q7iM
 L9PJYonM85ZUA2cbzpqmEtKHYxeII2C0qz7eR3LFEGpXNsU+EVuZWO7OT4yr10YLQdYFROMGJwHEy
 CQC+cExTnZMn9eKMhu/UAUJv1jDekjI3ZTM5GgIV/0vnD84lbc3gXYS/+V4PliSiFnpMiK8/7TUq1
 2pz63Jw1GJMvzWeCq9zrR13C6kZVvVLcJMG/9GjEA0ZoxyEMFFQGnieP3794+Ton3JjNdnDDC8GWB
 RsUZ289Q==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJp-0002tp-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:01:34 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 99051FF819;
 Mon, 27 May 2019 12:01:04 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 10/10] ARM: dts: r40: Change the RTC compatible
Date: Mon, 27 May 2019 14:00:42 +0200
Message-Id: <834199999676fdb119f3aa1966eb1b1d1391f347.1558958381.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_080133_872682_BE2FFAE2 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unlike what's being reported in the device tree so far, the RTC in the R40
is quite different from the H3. Indeed it doesn't have the internal
oscillator output, and it has only a single interrupt. Let's add a
compatible for it.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index bb856e53b806..96fe39f27f24 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -318,13 +318,12 @@
 		};
 
 		rtc: rtc@1c20400 {
-			compatible = "allwinner,sun8i-r40-rtc",
-				     "allwinner,sun8i-h3-rtc";
+			#clock-cells = <1>;
+			compatible = "allwinner,sun8i-r40-rtc";
 			reg = <0x01c20400 0x400>;
 			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
-			clock-output-names = "osc32k", "osc32k-out";
 			clocks = <&osc32k>;
-			#clock-cells = <1>;
+			clock-output-names = "osc32k", "osc32k-out";
 		};
 
 		pio: pinctrl@1c20800 {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
