Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD702007E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlwBI2RyoVS8tRIn8PgONrIqOBmZGubHl8IAcZsat6Q=; b=DMGA3m3WY0d7yo
	6T9Tz7L2LK/FcrE4f/aN+6fWNF3k80ztQjv/ZlnLvp5gfaxyVuMPx0EXzLCMfdxsRD6BeG3TNzOyy
	DrTvToNQq2bSNeJ2bRxEm9WuN3lgs//eqZ9nCMusqhQ0FREg6CPEnurC7zlzbVs4fUjiigQWmggbg
	ibQVvd5NoJpL+7cfTiI7XYeNiy7jfDELj1q7XXUbWOdGOkf43qaIwVPo3dtjUgCIKTyiONiiR9DJO
	6B2ugwDZtejLCOAzHmjVl2B0Fu2/sRiBGFJK+zTUVQwZvc4q9YjCXocNMzecXtcmtMSkjSMnhiqNg
	yGwOnlhbkixNO0crPlKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFGU-0001I3-2H; Fri, 19 Jun 2020 11:32:58 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFK-0000NK-P1
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566306; x=1624102306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p+8RoWLbgzQ96coLA+SJ/+5qhlXapbbgZpZg9wtUuf4=;
 b=yget+sMbjOBZ74MysQs5Yfwi6ycBig670vyqEAqyL0rtfr28mLNj/TKW
 IM3L89GTTxH/NON2Zdw/ugVfcaTNLRfrffSxve/1PPy4otwsmh1iJl1/p
 pgF/5te5vp7SlDAb1SQtNsynas15ht73sP28bogMdskWmeSaAwvmfqyxL
 7ZLCazpZaYSqoEHlZ/plzw1oa7RiTHjh7xE3Zpsye5+6ZWRT4nJUE3nYy
 SIsHs7Kd2umsZl3si3dkZhVeMaypANZhT3EQAsTxWAmUjn2x82PtrW/pS
 6lEECdOyyr0c1PuHByPV6fDI5xftzn/8CMUlNnnArvZgfVc80p7kL+IjL Q==;
IronPort-SDR: 7kjYpE4qCwU7hpIjsZCmnRIAd63u0JaCTHfE16IVpCjaQ2e6/R8xLUWIuAK4TWhSkZMVlPBqUx
 k/J21FbffWBfXn9Lyq+n+lrdD+MFdotgtghkdXt9jJE1iJEKpVa7Y1Xo/WVcLR/nEhtDcadQ6A
 64zHnZLFZQPRgDD4ukTi/TJTK0TYQqGVUdaHWFruG7I+rPWADwZjcQuAam79wLfsQTlqIaLcs9
 SN6CxnQ50EAExGTADKCK9Fy/8NUWjQgrkjKOaPwa7Mx1UvYxSVnfvaURqLEe9r5oh0AQP4kG/Q
 fWU=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="84298554"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:45 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:35 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH v2 5/6] arm64: dts: sparx5: Add spi-nor support
Date: Fri, 19 Jun 2020 13:31:20 +0200
Message-ID: <20200619113121.9984-6-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619113121.9984-1-lars.povlsen@microchip.com>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043146_848637_986E071D 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add spi-nor device nodes to the Sparx5 reference boards.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5_pcb125.dts        | 9 +++++++++
 arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi | 9 +++++++++
 arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi | 9 +++++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
index 573309fe45823..d8b5d23abfab0 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -39,6 +39,15 @@ &sdhci0 {
 	microchip,clock-delay = <10>;
 };
 
+&spi0 {
+	status = "okay";
+	spi-flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <8000000>; /* input clock */
+		reg = <0>; /* CS0 */
+	};
+};
+
 &i2c1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
index 18a535a043686..628a05d3f57ce 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
@@ -38,6 +38,15 @@ gpio-restart {
 	};
 };
 
+&spi0 {
+	status = "okay";
+	spi-flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <8000000>;
+		reg = <0>;
+	};
+};
+
 &gpio {
 	i2cmux_pins_i: i2cmux-pins-i {
 	       pins = "GPIO_16", "GPIO_17", "GPIO_18", "GPIO_19",
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
index d71f11a10b3d2..fb0bc3b241204 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
@@ -51,6 +51,15 @@ i2cmux_s32: i2cmux-3 {
 	};
 };
 
+&spi0 {
+	status = "okay";
+	spi-flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <8000000>;
+		reg = <0>;
+	};
+};
+
 &axi {
 	i2c0_imux: i2c0-imux@0 {
 		compatible = "i2c-mux-pinctrl";
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
