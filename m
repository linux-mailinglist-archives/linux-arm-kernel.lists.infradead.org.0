Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA3EE4527
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qG/iHaVN3MKSHZ1D9MJd5CLQDJLoUiOtBc+DIkOoqaI=; b=CBaILffvxWmrfG
	/WhBQx+i0WOTe8vChcj56KjZVgoyNxUnmMqV/IqGmbLd2BFQkrY038alXABQY8CnV3ebZhB6pOCOM
	e0+7NzxnYTIShFZ+L0mfwDKlfpIAzQ0EEqHgrqr1oztTb91kfKI7O/1p+c+NyqeWyzs6YylzwDUc6
	jKsCmXH7RP0jOGgTz90S7CzJs6rbPKQdCLxhXeC5QiZ5V09LOGTiJwhTD6gqAdWkVHB8JcwvEch/e
	UR40iUElJk4kUj1Wl48lZxKYoW7T5lBSA+PLlVIHTu2lhJvOVFbVGV65ok4tEwd1FhGWFWkC8s6P4
	lxfKmje/yvBg+xFnuDAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuZ9-0004ZL-JY; Fri, 25 Oct 2019 08:03:23 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuYe-0004J0-9Y
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:02:54 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: okAxLpkf03Y4C1W42prpxYb3sZ9jXvYf+/H5BOw1AlH/UK9Ukdc772kia6FUmXKPJmz3vYJ6OI
 TdTz7agHB0yLDhBZ/Pr9MnHS0rahBRSQvDyRYhrBoSYkQlC7vAFOwVUnQIMS3Y4tmgrqdzKdyw
 L+aOmGlhuCFwKgbbNUhn8HwUlrWZhBpa3omZvp4qQ6akXva79rvVOG4au1c0N1kelNP33sJPO9
 JWRJsAGfEOIV2PJYzv9kP9ttUvaxFiWwdu8ZPjtxuA9e4mcmdo36jM0uNdmKVgvIlMnAw0KZWb
 tUs=
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="51523132"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Oct 2019 01:02:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 01:02:43 -0700
Received: from M43218.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 25 Oct 2019 01:02:41 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-mmc@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: sdhci-of-at91: new compatible string and
 update properties
Date: Fri, 25 Oct 2019 10:03:42 +0200
Message-ID: <20191025080344.15492-1-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_010252_374671_73A9263E 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, ulf.hansson@linaro.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org, Ludovic
 Desroches <ludovic.desroches@microchip.com>, robh+dt@kernel.org,
 Eugen.Hristev@microchip.com, adrian.hunter@intel.com,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a new compatible string for the SAM9X60 sdhci device. It involves
an update of the properties about the clocks stuff.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes:
- v3: rebase due to conflict with Nicolas' patch
- v2: remove the extra example and fix node label

 .../devicetree/bindings/mmc/sdhci-atmel.txt         | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
index 503c6dbac1b2..69edfd4d3922 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
@@ -5,11 +5,16 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
 sdhci-of-at91 driver.
 
 Required properties:
-- compatible:		Must be "atmel,sama5d2-sdhci".
+- compatible:		Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
 - clocks:		Phandlers to the clocks.
-- clock-names:		Must be "hclock", "multclk", "baseclk";
+- clock-names:		Must be "hclock", "multclk", "baseclk" for
+			"atmel,sama5d2-sdhci".
+			Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
 
 Optional properties:
+- assigned-clocks:	The same with "multclk".
+- assigned-clock-rates	The rate of "multclk" in order to not rely on the
+			gck configuration set by previous components.
 - microchip,sdcal-inverted: when present, polarity on the SDCAL SoC pin is
   inverted. The default polarity for this signal is described in the datasheet.
   For instance on SAMA5D2, the pin is usually tied to the GND with a resistor
@@ -17,10 +22,12 @@ Optional properties:
 
 Example:
 
-sdmmc0: sdio-host@a0000000 {
+mmc0: sdio-host@a0000000 {
 	compatible = "atmel,sama5d2-sdhci";
 	reg = <0xa0000000 0x300>;
 	interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
 	clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
 	clock-names = "hclock", "multclk", "baseclk";
+	assigned-clocks = <&sdmmc0_gclk>;
+	assigned-clock-rates = <480000000>;
 };
-- 
2.24.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
