Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F8912BD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 12:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2UgzNP7eXv9DMIxXNSLg1lydeJDML45y9NUx6clOjsI=; b=b53rOMJZC5sezJ
	xpFNrikZwFX790rVfsRAnyJa+P6U+ROAQPLgdmvyYusp9bDf6dsrzkbH7yXzR6DAE6cqNhbEsza+w
	9t5e0GvBj/5WLGjJgUo76RU3gUYjF53sFLq17XRJRKmS5DzNlbJFF6KOJnstiHXTELQWWzLJVTtch
	MqHHRlb+CkiiUnBhGTtGkFGZG4QPkrsPZIuemCQX4dlXhEh0cg1/DAYeB65Z8N/QGYNODZHBFwbtg
	Je91UVqyDZGlrAlh2gxiGyhUo3SxiO52MNm/rn0xWBLqTvI/2wJoFINTImTFGyXUKN5TUNWOrL9hB
	/t5vpPmm3p9H6fwgWBmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVjn-00014Z-B6; Fri, 03 May 2019 10:48:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVjg-000142-EO
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 10:48:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id 13so2401298pfw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 03:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CtRnF3C3SrPtDzWYrijbevMMvebx7nVoCcCzEGjiz+k=;
 b=RJK/xJPim39XkImo/YtK9AQ7+Ap5N0NWwMJuNR+mnh6nqrfOjeUmbe8qd9c+Uszfrd
 v3AVl5w3xsN/5dcG9t9s0uD1h99zCtpA3wo1MMF3NvzQrStGK8jqpQiLPyZApEgouPwZ
 qIFFRAxY779YlEPdHOSUybfiJ/cD8QJ94tQQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CtRnF3C3SrPtDzWYrijbevMMvebx7nVoCcCzEGjiz+k=;
 b=dyUlq6SGxJsdegp62OGdqPGG0AZvuboYUGBg4zse2EwrkxTI6AwQ5oTjsOA1o9iXm/
 Waf4O9qyUJN2W8MHfXJ+Uj1M2Ums+FSZX28fetMnR+83x95Xyp5ElfJb++53qxDlDMfY
 Wo4wrda8nMjHJaA8HQl3d7u1zcqCSAKHh+s+E1NOvy/YMq+0Zeaft9Om9DO1sS2lo/Xy
 aXI4ZbwtcvqZ/umBiqPE8/AzZLNgp0hrOd8fuN33GToXPGP14SWTlU6noYhEl37lBqRD
 OvlmpV8HSYIDPqpwtzq5eNOoDSoRt/Ewe4D+cMNrT2g33PxKN9BGNKy4o9gcFWzIxwea
 mSPA==
X-Gm-Message-State: APjAAAXwMpRExX1BzPuuZCKLr5iS3CkTCBTI7RkqmQPu/vmSF3zTJHrP
 CZUIjJkleuqYNN7ZCtbifeT26NsCTk0=
X-Google-Smtp-Source: APXvYqyIOUbBzj8SnfhhfLgP9Y7Ulu74W17b22tiSiG84nQI3rr/jZ4wles58cXdQHvH5gwgrOph3Q==
X-Received: by 2002:a63:8f4b:: with SMTP id r11mr9441799pgn.271.1556880490220; 
 Fri, 03 May 2019 03:48:10 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.165])
 by smtp.gmail.com with ESMTPSA id k9sm1965479pga.22.2019.05.03.03.48.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 03:48:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 1/3] arm64: dts: allwinner: a64: move I2C pinctrl to dtsi
Date: Fri,  3 May 2019 16:17:51 +0530
Message-Id: <20190503104753.27562-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_034812_985276_598DAF0C 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is only one pinmuxing available for each I2C controller.

So, move pinctrl for i2c0, i2c1 from board dts files into SoC dtsi.

By moving these pinctrls the i2c1 node from Nanopi A64 just have a
status, which is disabled already so remove the entire node from it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v5:
- drop the i2c1 node from nanopi-a64 
Changes for v4:
- new patch

 arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts | 2 --
 arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts  | 2 --
 arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts    | 6 ------
 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts        | 2 --
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts       | 2 --
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi              | 4 ++++
 6 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
index 019ae09ea0fd..c41131c03231 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
@@ -85,8 +85,6 @@
 };
 
 &i2c0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c0_pins>;
 	status = "okay";
 
 	sensor@48 {
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index 0a56c0c23ba1..c2a6b73b17cf 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -145,8 +145,6 @@
 };
 
 &i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c1_pins>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
index f4e78531f639..9b9d9157128c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
@@ -120,12 +120,6 @@
 };
 
 /* i2c1 connected with gpio headers like pine64, bananapi */
-&i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c1_pins>;
-	status = "disabled";
-};
-
 &i2c1_pins {
 	bias-pull-up;
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index b7ac6374b178..409523cb0950 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -122,8 +122,6 @@
 };
 
 &i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c1_pins>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 0ec46b969a75..12afc52e169e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -92,8 +92,6 @@
  */
 &i2c0 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c0_pins>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 8c5b521e6389..b275c6d35420 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -842,6 +842,8 @@
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_I2C0>;
 			resets = <&ccu RST_BUS_I2C0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c0_pins>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -853,6 +855,8 @@
 			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_I2C1>;
 			resets = <&ccu RST_BUS_I2C1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c1_pins>;
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
