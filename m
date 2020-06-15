Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9A61F940B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZA2iixo28ugI7NcwFNu5ti5EaQ25SEuwfiSs6uT/qZc=; b=HjQ0li8riCUwBK
	imN6MUhK0NBYbqoY1dTbSzvVxsp2cxutuEwT9eFOAW1ygQQ7SWkyz75NNMWQAr/aUKjHTYjZU3rIE
	spdnM/hZbGPPOV2DxzmnnexlI+GeiYLEtPak4Uk+4cl+9JVUIcq1TsVRIS0SHVpi/ySiNXxSybyIH
	JuaP2PAyzKEHfrnTwGhXogQmKGCYkKB1KeuaCnStKfFWQX7C63Jzw0ujmgdtVT0gQ67q2sSK0TbBC
	FQDI5+5n/8uQoF/4n6B9HA8SvEg6aufmjKBTd3qdy2krBmU1GGdNMdw8WA1/f+mxKIyTSAZgwpBoA
	VtZQ26B3oFR1j6wFsYNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklr8-0008Cr-1Z; Mon, 15 Jun 2020 09:56:42 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklqP-0007sW-OZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592214957; x=1623750957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GzeJj/XXb+bfDz1yMw3bsPNp+jtcDG/wV7P8Xtgw3Ng=;
 b=S0LpLBIY0Ws3aV9+EJaEuiq8hteQZxakWTrNgCA6gElh6m9hVKIg1Mjv
 GuYj/r+oyDntsm/NE9bfaa+URjQoqOmr8xF6RHpcFN6tt6z9jaHSw1H2a
 cj8jZWwCeenSSXs7lJGQh0GQq5vJoPK2KVXR+w9aC90WSZudeeYIvr5g7
 VfX7btxA2CrgcUZxm+YzrvcFHUbPDmMAkRI1bWdwBTSvjFOdbBP/BlyAE
 zuvGw8+mjHKzESoFQItsIWMX7T/2i80q+KiFmDXNvRO1PJvaP5v6n+9Ls
 bX/PuBcSC53002N1oqXmX59+9QuvQXhqjmTaqD2km3Jf/1Rjg10V4OaNB A==;
IronPort-SDR: FLUh7f3tYdmwYeq/0GKWObURf1q1qgv21VHkgV76si99bxpQJ7GomyUsx6gbCHtDg8FKrTm3Ou
 O9Qu1RWxXaqg/C1/s1KqEavDwxx4SU/4XENFhU9gcWQTuwqFSxXYWcxB6o7wxRqoU2Nk2gNjMH
 NlEpS6tr8nmC5VDHatNayufgNOg7qcxbp/2xAbOAEcsoA3sbK5R8ag2DbjQSNmmI9/iZug+rId
 4R0CpGFWxocpdKyn/sfgmCHj3tpPXEufZMPTezRyvbBm6f0aKTxJDVHePBqBNdqy+YDKbh47El
 aAw=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="76588047"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 02:55:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 02:55:34 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 02:55:34 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/3] ARM: dts: at91: sama5d2_xplained: classd: pull-down the
 R1 and R3 lines
Date: Mon, 15 Jun 2020 12:55:23 +0300
Message-ID: <20200615095525.43414-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_025558_061202_B4BF3374 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The R1 and R3 lines drive NMOS transistors that are OFF with a low level.
On the SAMA5D2 Xplained board, if the pins corresponding to R1 and R3
have pull-ups enabled, there is an extra 2 x 30uA power consumption.
Use pull-downs for these 2 lines to remove the unnecessary power
consumption.

Fixes: b133ca7a653c ("ARM: dts: at91: sama5d2_xplained: add pin muxing and enable classd")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 055ee53e4773..54d96649da77 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -430,14 +430,18 @@ pinctrl_charger_lbo: charger_lbo {
 					bias-pull-up;
 				};
 
-				pinctrl_classd_default: classd_default {
+				pinctrl_classd_default_pfets: classd_default_pfets {
 					pinmux = <PIN_PB1__CLASSD_R0>,
-						 <PIN_PB2__CLASSD_R1>,
-						 <PIN_PB3__CLASSD_R2>,
-						 <PIN_PB4__CLASSD_R3>;
+						 <PIN_PB3__CLASSD_R2>;
 					bias-pull-up;
 				};
 
+				pinctrl_classd_default_nfets: classd_default_nfets {
+					pinmux = <PIN_PB2__CLASSD_R1>,
+						 <PIN_PB4__CLASSD_R3>;
+					bias-pull-down;
+				};
+
 				pinctrl_flx0_default: flx0_default {
 					pinmux = <PIN_PB28__FLEXCOM0_IO0>,
 						 <PIN_PB29__FLEXCOM0_IO1>;
@@ -614,7 +618,7 @@ pinctrl_pwm0_pwm2_default: pwm0_pwm2_default {
 
 			classd: classd@fc048000 {
 				pinctrl-names = "default";
-				pinctrl-0 = <&pinctrl_classd_default>;
+				pinctrl-0 = <&pinctrl_classd_default_pfets &pinctrl_classd_default_nfets>;
 				atmel,pwm-type = "diff";
 				atmel,non-overlap-time = <10>;
 				status = "okay";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
