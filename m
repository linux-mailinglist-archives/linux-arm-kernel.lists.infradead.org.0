Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B751D264E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ANdZzrPCdIax3Lo3k0a0fkzAevtFjV/6+DNGAchqGU=; b=hL6RBtgA7nzu6v
	toTQYDjTjZ/8krwCypzLmBCSn9/XEFhPJMUDALySkj03VYosl+8IQtKDVV9FI9AJ8N5/sTizmwNAq
	RzXNmlTTA31valsWkWwF25NqxIwjBpKhHxFQDxuvRIcW7jQoZxlQrpxv5hS1oasfjjNx4hSmHzACl
	ACedepmT1uptX0R7AUI+NUzKg4qZIbLzZXFxHEcHrFfHHSBzHg2sMYZrIw3bl1zJPgck4KjiPJyrR
	p5Maw8UAL+uYbpPW9ERi6eEOqQL4plD6CbbTLIMbIfgyTxRO4faZio+06UCaLJph9luxK0mT74ewC
	14Ijay4MeTNLLU5TWoSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ62R-0002CH-Jq; Thu, 14 May 2020 05:04:08 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61X-0001hB-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432591; x=1620968591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e4owMMcfdvo5QlqDlb/cAttptD/C5XOUa/sOyzKLlEo=;
 b=W/sbb7xIh7Mnhbjid2/VhDOWm+4A9tdJ89Z2l0bghVnNhPWABLeAnyOI
 H3AzPkPpREE90Umfl5nX0h2L+TC0ru6TeZcImw0vYxBryyUZ/BIjPkLTT
 SWOBWrs12Lqqt668HGwTBsIiwXl3JRv3WjJLxc3rCt3vcyOkOT3j8IRhi
 SgyG5owtRKWJDXPXwjZQ6N4SiNPB0aCJFDBwet94Grxk0c/bMgD5WETVv
 X9+vcK2jNOgfelJ08JiGckF40Hv228vDMWysuTF7nao5uJk/Zw02RTfVn
 y1a7FIcq9oLFgJH4dNRpl6KpyTH+KfJi4GICMtoh+hD0MWiNRfPT3l/xE Q==;
IronPort-SDR: psbrwxyIDRj8WwC02FUuk3QDLEjATPoFTI0+ycxR8yBhne+MSY2hS8Q7/85cRLLwZlHsUhDblU
 afgkbiaQqGGnbaa+xV+0hqL8Pfhy5UsQKIoGlGNFEciaTlmGMlwa52A7Ig2vqBuLjj6asIveZB
 zKozwoMZqRlXxfuX4eyO6AX+5rFqoXexCIkcDgR8SM4Hae7pDdBGuVc6NgYgcrQKREa0ctIp4S
 ID5qmzZdClHbolHfd9//PEVpuYoscOhFYsapgXyb/vWXE3Eivk/hD8FIKbM/FC3ErW/1MA6L39
 HOg=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75847101"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:10 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kl6X8YyM0pMDEhIMXlI+5Jehxuh4RUTRf9toNDU2dhE4FLyDGc/zYQ5bmCWuU/3KqGI8PJLBcHTz73SEmMTZC3ykKcQYKq0u+GhECc616otIj3C05kIuYQTz9dUPOKX8RZMtw7tFOSvvzyrzoKjX2Oj5Gkh3iwQv/TalwMlygrYYk1tnbnAHbHArNhRHwnrEop7z1SjF4j4pQq5cWZccpvaX7vzTwrSbObbY0oK3wjN9ur3/NK65kYtrF9ibHK7sr7e3jLA+Ai1Fd7cQY2qgJqm3k2yLk2OnKlMMviB11zM3FW2C0ais1ch5zSvT9mGZIljkGyjmSrAxB8bmHlqatQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dleEhI5Wp5PoiRCO7Zb7ZATDXKN6zjfTXiIO17oWzBU=;
 b=UbB++Kpc51imUAkWQx1KnaXZwk1u2UmM/sP0MnS9fBjJgc9DH58crHjD0QfifO38NXLlfuNtOouU3anDBLneJYjYEEj1O2o93MtXoeq/qMqXSyS9i1ygOI57qGdBWaunqzDJXTR48HpC0RMCeF4MHDmPTYhQNdXU/BWNV3r39qXvkXZjnRk/5Wz2GLpq5q9zjuNKi1XIIKIuvVGaQJqEW/WNGAHLz9dDP6FCCpR9BTRTNwl3jjxhy4QvQxlbMeO3RnHD6u728PeYEUgDvSlvi63Bx3u+9NcNNDFN8UTlFBBTYYfYf3Nh0VQmViFytRCp9Z1Kh+qnfh1NS7GmFudk3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dleEhI5Wp5PoiRCO7Zb7ZATDXKN6zjfTXiIO17oWzBU=;
 b=Y1xpWIEYwUK+eMPkC5e4OtUBoQIhIJXKOlqney8bd/wMvnyM6VDhm93bt10nqeDwG5Sged8LK5j/+CnqYc2+RPpKHSH16bfPT1lHoR1ONWqh0efGpQcPH/W28IcaxUfSGgAs0oIwNZWkOSI4rcSFCAVvMkfI0vcsErPNmPPw4UM=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:08 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:08 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 03/16] ARM: dts: at91: sama5d2: Move flx3 definitions in the
 SoC dtsi
Thread-Topic: [PATCH 03/16] ARM: dts: at91: sama5d2: Move flx3 definitions in
 the SoC dtsi
Thread-Index: AQHWKaz1grvF6lJZUE2ad+lZJ9HQCA==
Date: Thu, 14 May 2020 05:03:08 +0000
Message-ID: <20200514050301.147442-4-tudor.ambarus@microchip.com>
References: <20200514050301.147442-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200514050301.147442-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30913fad-3675-4ea5-3f23-08d7f7c417fa
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4483759C5099554277929344F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LRkS7Pjs5g8bVYU7Uciq1XHNRUEG2jIJlcL/NX+aSsvD9QxfMWeABo2wh2rnXZGGQZW4QgFcQk/fo8DnALmKyKmCNLSF8oKsSgtbS2cHyrXUP65zotHxfojwbtTS2IhW7WuT7N3sz/ntZT1eHg8MIu4o5yll8whWtGaVsf0OJjiv9wdHLYFrtPF2fXC+x/AiLRHVY5flwHImzZ6otW6qW9BJJXEyKEcOINnifdjdvwbdiqCVc8M5YR6mls/XtSGVi/D+jT3qgP8Quim5Lxg0LsR5LOXuBOemgxqTGVcDIFrm9G/q3UUut2ds98YENcAvUxs4oRYyf8MLLFGhqhqnaBOZWDsG/5VYBD/6ZRmThEhFssyamC1QkprTxzlgTV6TCR/GhCm0kBGwkPIndzXWyapC2MguEnQZgra6ArHASacDi/MKsVHEqGS1qyvly1zh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: t+NAtaS39XTEWHNjM6tELu6y53JgFrle3Q4WsqTEcnH4QPc2WJlIlwltorqO654P7muTWV/nt+CiEGFe/suikOctfG9QQket2zN/tmQwUjVJX9Ql9NA/nNjeON/DGDRilb/kePhkebAgjL9MI8fb1DwnqzoOP4zgsVKo5DCdK6V5mvJHkFKu7OPP7mt1RYIrOyPhhGiRWJ6YdofQKoF6qNi3n3NX6c62pK3KmTUNvK8cZkZaLY3Lt0vsSWMVcd40En/B71d/kJY+wSvBxRFQFb1raFsdXEmeCtFM0a66ZVhh3gscUIW4+bu4KkT9Yhszek2GlmjsIZ5WpXjjsgOszHMbdpc2DKRvsLhRQMf9ph1Adx4AL7bhPD750if3I3BntZPbFjEVy8eQumLFzID+WfVaZ3vQciAR8kPQcUpNJ9f+bKirzU/gXZyJqmwm2F5D3Ybq6f5PZZDwxfHIH9xxtSBxEWumoiay5sT1Umu2xPs=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 30913fad-3675-4ea5-3f23-08d7f7c417fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:08.3022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x0OkcxZ241PVpHlRYAAiLpSXuuYqKonMGJ708h82JBjlp/4L0heFMqH5NWNuo1C5ZMwYrOKTsu1D32vpQC8l5eYRr0oHOFtRHtcic36owKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220311_663790_4B00F574 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The Flexcom IP is part of the sama5d2 SoC. Move the flx3 node together
with its function definitions in sama5d2.dtsi. Boards will just fill
the pins and enable the desired functions.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-kizbox3_common.dtsi  | 13 ---------
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 13 +--------
 arch/arm/boot/dts/at91-sama5d2_icp.dts      |  6 -----
 arch/arm/boot/dts/sama5d2.dtsi              | 29 +++++++++++++++++++++
 4 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boot/dts/at91-kizbox3_common.dtsi b/arch/arm/boot/dts/at91-kizbox3_common.dtsi
index ee6f036aa008..4351a8d32225 100644
--- a/arch/arm/boot/dts/at91-kizbox3_common.dtsi
+++ b/arch/arm/boot/dts/at91-kizbox3_common.dtsi
@@ -325,21 +325,8 @@
 	status = "disabled";
 
 	uart8: serial@200 {
-		compatible = "atmel,at91sam9260-usart";
-		reg = <0x200 0x400>;
-		interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
-		dmas = <&dma0
-			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1)
-			| AT91_XDMAC_DT_PERID(17))>,
-		       <&dma0
-			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1)
-			| AT91_XDMAC_DT_PERID(18))>;
-		dma-names = "tx", "rx";
-		clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
-		clock-names = "usart";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_flx3_default>;
-		atmel,fifo-size = <32>;
 		atmel,use-dma-rx;
 		atmel,use-dma-tx;
 		status = "disabled";
diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index 5f4a7c8725f3..abbf14e29d85 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -179,26 +179,15 @@
 				status = "disabled";
 
 				uart8: serial@200 {
-					compatible = "atmel,at91sam9260-usart";
-					reg = <0x200 0x200>;
-					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
-					clock-names = "usart";
+					dmas = <0>, <0>;
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx3_default>;
-					atmel,fifo-size = <32>;
 					status = "disabled"; /* Conflict with isc. */
 				};
 
 				spi5: spi@400 {
-					compatible = "atmel,at91rm9200-spi";
-					reg = <0x400 0x200>;
-					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
-					clock-names = "spi_clk";
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx3_default>;
-					atmel,fifo-size = <16>;
 					status = "disabled"; /* Conflict with isc. */
 				};
 			};
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index 7216a794f4f6..8a4336e12a60 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -185,14 +185,8 @@
 	status = "okay";
 
 	spi5: spi@400 {
-		compatible = "atmel,at91rm9200-spi";
-		reg = <0x400 0x200>;
-		interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
-		clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
-		clock-names = "spi_clk";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_mikrobus1_spi &pinctrl_mikrobus1_spi_cs>;
-		atmel,fifo-size = <16>;
 		status = "okay";
 	};
 };
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 5c31e4068eb5..5e84cde8226a 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -804,6 +804,35 @@
 				#size-cells = <1>;
 				ranges = <0x0 0xfc014000 0x800>;
 				status = "disabled";
+
+				uart8: serial@200 {
+					compatible = "atmel,at91sam9260-usart";
+					reg = <0x200 0x200>;
+					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
+					clock-names = "usart";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(17))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(18))>;
+					dma-names = "tx", "rx";
+					atmel,fifo-size = <32>;
+					status = "disabled";
+				};
+
+				spi5: spi@400 {
+					compatible = "atmel,at91rm9200-spi";
+					reg = <0x400 0x200>;
+					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
+					clock-names = "spi_clk";
+					atmel,fifo-size = <16>;
+					status = "disabled";
+				};
 			};
 
 			flx4: flexcom@fc018000 {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
