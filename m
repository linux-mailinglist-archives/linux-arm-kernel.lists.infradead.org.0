Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3935C10929B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMfYXd/vFTpA4NFBOkkj4L5oQ0RitGHE2OglKnIkZuo=; b=L47fqmbwT/OtYg
	F8I6A7YhO+t7jNlQ7Bt9EG4pSknDI3+Cz6tb1cc/QZGzXO+9z0lFTxNG6sB47/Cp5gbT1FTFuotjo
	NAXiy2MZUjeAa2nmx+/AidbrhF2O+Ol4aH4eyCIyS8tdjmzBPD3z1zhC4q1MCtUDMa/cnkESmgyAx
	ER/GUv/X5/bpdj976tHp+g/HYqERQYTZlbibpSKRkubK6KVQQioFIqSCXcEDqjQk3onN3NYU7LtUY
	YClyKU42u8lHy9Uz1gMYLpS5XUe8I/fXqeqzaRoLQubV9brRFz1FUuNBIZnWhK2ZA7PhvKQcorKEF
	eAbQmGs7v5RHFigc9u0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHoT-0003eq-15; Mon, 25 Nov 2019 17:06:13 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHnz-0003Vp-Iy
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574701541;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=yN/4dwxR2rLJrfgok1uBLXq52iC/4EfyQceUfthKmpg=;
 b=cOJJp6Baa9iTkW7BrRyu6ScOA+hlao3Y5MN8RNvPuVEK9sUhv8AaLHNCUbRksLyvWI
 ZbpsA1sePl90n4bOt4AZah9CZA6L1CIYvUhXpadGdcmEhQlLPLWu7SU2ZOAK+Bow0bNT
 UieSWCOyW91cECXyqZIxPMO+Ch+F4dlDsK3eBuCDyo6Csqe502NAMeSRkbGlLWbR5GmR
 n3sEvZRl7/BQLB6Y70akOl7ZBdBwRMPUuuSDcErZf8fP9e5G1CMZGmnkbmYqwK5RFPqr
 2y6CMSpNiNC5Gp4Pa1T1bGQSPEMazMDdTMlTVTvPf9P3JozkFvRHh10TrWbFmh9M9dKN
 IXYg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPH5c2r8
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 18:05:38 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 3/4] ARM: dts: ux500: Move serial aliases to ste-dbx5x0.dtsi
Date: Mon, 25 Nov 2019 18:04:27 +0100
Message-Id: <20191125170428.76069-3-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125170428.76069-1-stephan@gerhold.net>
References: <20191125170428.76069-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_090544_221968_DFC12867 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have aliases for I2C and SPI in ste-dbx5x0.dtsi,
it does not make much sense to keep only the aliases for UART
separately in each board device tree.

Considering that all boards set the same aliases for the serial
ports there is no reason to keep them separated either.

Move them to ste-dbx5x0.dtsi and remove the aliases from the
board-specific device tree parts.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi           | 3 +++
 arch/arm/boot/dts/ste-hrefprev60-stuib.dts  | 7 -------
 arch/arm/boot/dts/ste-hrefprev60-tvk.dts    | 7 -------
 arch/arm/boot/dts/ste-hrefv60plus-stuib.dts | 7 -------
 arch/arm/boot/dts/ste-hrefv60plus-tvk.dts   | 7 -------
 arch/arm/boot/dts/ste-snowball.dts          | 7 -------
 6 files changed, 3 insertions(+), 35 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index ed91232a118a..841934093c3b 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -24,6 +24,9 @@
 		spi1 = &spi1;
 		spi2 = &spi2;
 		spi3 = &spi3;
+		serial0 = &ux500_serial0;
+		serial1 = &ux500_serial1;
+		serial2 = &ux500_serial2;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/ste-hrefprev60-stuib.dts b/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
index b78be5f4c212..d2405133860a 100644
--- a/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
+++ b/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
@@ -13,13 +13,6 @@
 	model = "ST-Ericsson HREF (pre-v60) and ST UIB";
 	compatible = "st-ericsson,mop500", "st-ericsson,u8500";
 
-	/* This stablilizes the serial port enumeration */
-	aliases {
-		serial0 = &ux500_serial0;
-		serial1 = &ux500_serial1;
-		serial2 = &ux500_serial2;
-	};
-
 	soc {
 		/* Reset line for the BU21013 touchscreen */
 		i2c@80110000 {
diff --git a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
index 60eed262d920..54b0f8282b2c 100644
--- a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
+++ b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
@@ -10,11 +10,4 @@
 / {
 	model = "ST-Ericsson HREF (pre-v60) and TVK1281618 UIB";
 	compatible = "st-ericsson,mop500", "st-ericsson,u8500";
-
-	/* This stablilizes the serial port enumeration */
-	aliases {
-		serial0 = &ux500_serial0;
-		serial1 = &ux500_serial1;
-		serial2 = &ux500_serial2;
-	};
 };
diff --git a/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts b/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
index 9be513aad549..36163c0b5267 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
+++ b/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
@@ -15,13 +15,6 @@
 	model = "ST-Ericsson HREF (v60+) and ST UIB";
 	compatible = "st-ericsson,hrefv60+", "st-ericsson,u8500";
 
-	/* This stablilizes the serial port enumeration */
-	aliases {
-		serial0 = &ux500_serial0;
-		serial1 = &ux500_serial1;
-		serial2 = &ux500_serial2;
-	};
-
 	soc {
 		/* Reset line for the BU21013 touchscreen */
 		i2c@80110000 {
diff --git a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
index 73ea3100f186..cf59e9bb9a74 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
+++ b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
@@ -12,11 +12,4 @@
 / {
 	model = "ST-Ericsson HREF (v60+) and TVK1281618 UIB";
 	compatible = "st-ericsson,hrefv60+", "st-ericsson,u8500";
-
-	/* This stablilizes the serial port enumeration */
-	aliases {
-		serial0 = &ux500_serial0;
-		serial1 = &ux500_serial1;
-		serial2 = &ux500_serial2;
-	};
 };
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index ce136412b6da..f8dec3976c91 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -12,13 +12,6 @@
 	model = "Calao Systems Snowball platform with device tree";
 	compatible = "calaosystems,snowball-a9500", "st-ericsson,u9500";
 
-	/* This stablilizes the serial port enumeration */
-	aliases {
-		serial0 = &ux500_serial0;
-		serial1 = &ux500_serial1;
-		serial2 = &ux500_serial2;
-	};
-
 	memory {
 		device_type = "memory";
 		reg = <0x00000000 0x20000000>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
