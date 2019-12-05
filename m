Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C302114032
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 12:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TnWifuqX6rxcx2QYeAL/EoZNDMa3fW2pqO82O/qKvI4=; b=f9wz+IIe0ZxbAj
	IVyrhHRyRTg1s8z/DKprogGwkO6JRVJieGJqNVNVDCIbKAy5NnJirf94wlaF7pTwc3Vb6GLoO1B+h
	MyAf0m4ULKD+31X9ZQTL6PrSazFWkOKHIZLUTAUh02LysgOYux8BC22lbVkwUnJrvu7SJ6w03p23f
	Wws1aQcAf8YT5FLQLbpPJF4YVO/+uriey4QR6KSRbWKCK/I+lx4oVd4ZgjT7lcUBqro3sMZYUCv8f
	hC32izM6oOEoO3t8RIqwFN7ipEDkDnqyEr+JzB8G6Ub2rBV9dc9lRdX1/f4BRhN3/5a1Vtba0Mr4T
	duQlOIZ7nLnXoeudgn8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icpQr-0005DL-4I; Thu, 05 Dec 2019 11:36:29 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icpQj-0005Ca-AK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 11:36:23 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: MX4SMX03Epe5zSiLe4Ykvi67hrT1G9Jp/hSeat+cxxnTd1cxhkqKihGRhgbBu0dh8X1o87NiLf
 i/3NiawRzE+8QN/BFl5QN75vmNpuMGruvOh2U5QvEn5wgnATjwyT0OopfSgpPZElOv3Fv9eL7K
 UtwxGgUBPE3T/phTvMxTPjW8mmCqSQTCtmh9aE/wUiovSNFO1P27aOLyBtE5cAcjWM1+cvFQgf
 gfW9ZJcZjXo1qBy769UB/DP0YEdu63F1Q4+YXbY5lqBC5XVDhl/MZIZSjlR2yTtni9gjZQjEpl
 edA=
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="57915304"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 04:36:17 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 04:36:17 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 5 Dec 2019 04:36:17 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] ARM: dts: at91: sama5d27_som1_ek: add the microchip,
 sdcal-inverted on sdmmc0
Date: Thu, 5 Dec 2019 12:36:04 +0100
Message-ID: <20191205113604.9000-1-nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_033621_364298_CBCD41DA 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Specify the SoC SDCAL pin connection that is used in the
sama5d27c 128MiB SiP on the SAMA5D27 SOM1.
This will put in place a software workaround that would reduce power
consumption on all boards using this SoM, including the SAMA5D27 SOM1 EK.

Uses property introduced in 5cd41fe89704 ("dt-bindings: sdhci-of-at91:
add the microchip,sdcal-inverted property")

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
index 7788d5db65c2..6281590150c8 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
@@ -24,6 +24,10 @@
 	};
 
 	ahb {
+		sdmmc0: sdio-host@a0000000 {
+			microchip,sdcal-inverted;
+		};
+
 		apb {
 			qspi1: spi@f0024000 {
 				pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
