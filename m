Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA5419D016
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+VIwjT61RMo1vzZXCb1NOIKEjaFkTEb6/Bk0yCef00=; b=oNYZGFGvGyH2Oy
	BDEl3iyBWmVf6Y/M4rR63temnJkpLEf6rIGo0hBRXw2q29vVOcqHOKfeSPr8B1yc3q2NU9h0STuVM
	iKPWU2ooH9daIPrLk1PdH699r+Jdh1LCSlCP6Fl1Q1RTeOCqVWe7VQU3fsFbxPr+7lmEeIS/2/4uF
	oUAkxUw8PB6XiQDwZdhQnd9xZN4sxrYbdaD4T+M7Fndcz2Oi9Aw6H7p6COXRK7uJTw86UjeESARtg
	N2PxgTL4XxebQirnHPWoBunkrj1CWKnn48T02XtakMMERWKBedbbGq4B3tlyGC9+sfnaApnqLGwd/
	9dUGLkgnLuhWE/EqE3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFaF-00082b-S7; Fri, 03 Apr 2020 06:13:39 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFZB-00076M-4p
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585894352; x=1617430352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SfQ9YesmicZNOeYKGPEZI8U4s+yp/yb+G05QhDU5kH4=;
 b=RvGJRhF9ULTshHvBYvehO0e9rqtmFJvW7y7Q7Ya282Yo1i1XsKuoyPfn
 TMjg9nXUBmpdL3FJY25EZRbfi7qG5vlHeaNvryCukRcataL7FupzfmMAl
 xBBAQmumXWWKESYhbACJnS8vIVE+i7vkbU18+HwyuX1yoaHDAcMtmhqmr
 pckZyP/WZhEC1jQ7pTcVHNRj+gq8fwYdH5rTyvY3GYgvLvtWd9yDnx9E+
 hyA0v9HLEcCbdLJpF92tcGLZfXGqwLNsFiE9jL8jU8q49o6HaJHPJeJUQ
 rMct885l4lVKacit9jnMD+9aWg+hES3RMB94BT1ZUymH8GKf8L9jfOMwm g==;
IronPort-SDR: 4OLut00bgXT+baw2B8lKSDxqYeSsXxRRDTRjcxoOVUSY2oYmxyZ2YMZilJGIjrRhj0I69alYjc
 lFA/ERfutKpnABRjZBMjTwPIJbz0GTGSKuITsdZbRxaa3WH3SOV77nfd978H7VW7JgtxSE53Jl
 9pXcYfsXIuX/waxZWlJ+62eAoYaCzLApqnVWF+3GVGDPQ/46EcH4P8KDth2wBMYz6HJT66r+g8
 EcCNtskVWk+OsuSklM0GJAf6FxPz51kBqzghxKPzJqSWwrgrbB9ddsWZxJq02R3wqfWmU1tQWP
 Kl8=
X-IronPort-AV: E=Sophos;i="5.72,338,1580799600"; d="scan'208";a="72178030"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 23:12:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 23:12:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 2 Apr 2020 23:12:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjaMOW4T4VSh0PjaqXcCw3gU2QgE2CpP3w+hgwWgSIvRAZdnlVWsmlJ8tKQEfOPjMlpCJHOtZTa9I1yuZ1JzZeuYHr3NeXpO6vJ9DiA+vAg6nY+la5mWQe9T5hxgggeAlPHB1vjDjLTNlf6xULDnYmNXxGLjnoGNkpr9sBDu7we1vJkerdV6RTkoWDJx8pg+/hrHtgWuV93YsUc8IRTC1ZAuEmP9Fyo1cmjBwA0qpUpi0U2+TS69/fr7nT9J6egm1NSBYix8yepTMwEup2J7f+bf/Swwa84tYZzkm7+SwIamo0xUZHC3eE8ZDnk5gZKJGSjADTofCmmBjT9tneRmEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9ehwDFekAFmVp7g0RGtwsrLczGO4tcsUFy/TNHzdDg=;
 b=U9vW3FU/aFad5SksjhWx87R593/eKfcTSMM3vIhY2ac4VDCO6XPCQAHA7+CzPfyz2Txah7XEJtigsDAZ/WyeVHEGbaK+P7FiiDooa29dacK+QZBrjazFBU7eAZ5TlzlgZ13//mD9niyXHvQECL8JVXMzT3rDSoKZaYg9Mc+d+k3cZRyQOqBsAMmRiKbl8BlUlTEjS3Y5YiL1bpliXFTsmYnng2fx7/Jf9wNFfGK6eeGbqsuQJYFLFzWvgPN4XDNm1C+FPYV/3Jg4j+nKnR6mBEWaCrZqyDLEnkWSjhfLB+jYY+9s7m2uMcogyeczyUMflb4I4A7U9BXdUUSmwFGYgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9ehwDFekAFmVp7g0RGtwsrLczGO4tcsUFy/TNHzdDg=;
 b=EvVpRUmibQwM8HCNlz0n7xVaQfFHSB+jdxuiC9qRRKBHC6Of5cssUfZgpHdJIanACy81crnEA6yMSneq6ytl1/UDvYz4uVfTHD3af5GLPXAPlbyvdiMF9tW6Uav4jHXbdl89+0jN3dAnc0ErTXSacaMHklVJqwVD0MKKdfQ9ur4=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4183.namprd11.prod.outlook.com (2603:10b6:a03:18e::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Fri, 3 Apr
 2020 06:12:26 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692%3]) with mapi id 15.20.2856.019; Fri, 3 Apr 2020
 06:12:26 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH 3/5] ARM: dts: at91: sama5d2_xplained: Add QSPI0 + SPI NOR
 memory nodes
Thread-Topic: [PATCH 3/5] ARM: dts: at91: sama5d2_xplained: Add QSPI0 + SPI
 NOR memory nodes
Thread-Index: AQHWCX7Y4zwUIV8V60yUq/Xkexo5pg==
Date: Fri, 3 Apr 2020 06:12:26 +0000
Message-ID: <20200403061222.1277147-3-tudor.ambarus@microchip.com>
References: <20200403061222.1277147-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200403061222.1277147-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c20a8b4-778c-4d18-b706-08d7d795fb7b
x-ms-traffictypediagnostic: BY5PR11MB4183:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB41836D62D997EEC03183A5C3F0C70@BY5PR11MB4183.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39860400002)(396003)(136003)(376002)(346002)(366004)(6512007)(6506007)(478600001)(2906002)(6636002)(2616005)(186003)(6486002)(71200400001)(1076003)(26005)(36756003)(316002)(66946007)(8936002)(86362001)(54906003)(110136005)(66556008)(64756008)(66446008)(8676002)(81166006)(81156014)(4326008)(107886003)(5660300002)(91956017)(76116006)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tlzQk8c5gZGOAiCI2bOsNw5wZ0TMS/Ztdb+naxKLQyoTrLogF3xNAkLU0SOBgCo8I/FnGw3NLdhsr9VypEaeaIuqzCsUZNdKb7ewsQOmfU2Y/7V5/zHTXtCBCdnboi4IB6gCCFF0L60vQ/ATMDbRP8p95B16SAJbofWOr0i8ZeYLj3c1DJDGbZHUGURHMYwFqn8UHZiN5J2S0iy6C9S+hU/QET+3Y3UpQ/DfABEfkOVi6MQU0Eiph71s6IVjanduJYBZo6GJdtvSby+l7PMiuwP8oMJOj0FiYd8sG6qbYzx1CwNMSM+f6IFzvZbjYHiYO6AR1kV+21MQZax4Vp7P6RX9IWosyXrM3gSh9rZ1QfGchbybDtrBV95JVv3eTAqjVTbInzrpl4Jj+Tquh/OW8sEQruVo0GWxQTJhvPSJQZkyQUC92RCUWnAa/xk5rqnP
x-ms-exchange-antispam-messagedata: zNfX3eiANRlQD+niqIH/3frgejILM75OsgZcuVJFR37cCf/gYArFadL8/E004djR5K3QhC+f9feXma/9Fzj8+EgAoSXdPyN5JRAOP96BcuMvFyL+X+515OlBZfXP/lehZVXSdKKru8ZzGX0UedHcEA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c20a8b4-778c-4d18-b706-08d7d795fb7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 06:12:26.3583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +nxWvCaePNKQUOgZEHyI1o7N/BnyVqe4aP1gsstXLAJAMU9+H2N2J27FSpDQP2HURsGvbVg37YGS3+artDAzNEUa3d3w9AOqZ4MAmemwwZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_231233_222503_16FCE5BB 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Tudor.Ambarus@microchip.com, Cyrille.Pitchen@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cyrille Pitchen <cyrille.pitchen@microchip.com>

This patch enables the QSPI0 controller, configures its pin muxing and
declares a jedec,spi-nor memory.

sama5d2 Xplained RevB and RevC use the Macronix MX25L25673G flash
memory which advertises a maximum frequency of 80MHz for Quad IO
Fast Read. Set the spi-max-frequency to 80MHz knowing that actually
the QSPI drver will set the SPI bus clock to 166MHz / 3 = 55.3MHz.

Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 68 +++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 055ee53e4773..e0c6cff1a312 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -72,6 +72,58 @@
 		};
 
 		apb {
+			qspi0: spi@f0020000 {
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_qspi0_default>;
+				status = "disabled"; /* conflict with sdmmc1 */
+
+				flash@0 {
+					#address-cells = <1>;
+					#size-cells = <1>;
+					compatible = "jedec,spi-nor";
+					reg = <0>;
+					spi-max-frequency = <80000000>;
+					spi-tx-bus-width = <4>;
+					spi-rx-bus-width = <4>;
+					m25p,fast-read;
+
+					at91bootstrap@00000000 {
+						label = "at91bootstrap";
+						reg = <0x00000000 0x00040000>;
+					};
+
+					bootloader@00040000 {
+						label = "bootloader";
+						reg = <0x00040000 0x000c0000>;
+					};
+
+					bootloaderenvred@00100000 {
+						label = "bootloader env redundant";
+						reg = <0x00100000 0x00040000>;
+					};
+
+					bootloaderenv@00140000 {
+						label = "bootloader env";
+						reg = <0x00140000 0x00040000>;
+					};
+
+					dtb@00180000 {
+						label = "device tree";
+						reg = <0x00180000 0x00080000>;
+					};
+
+					kernel@00200000 {
+						label = "kernel";
+						reg = <0x00200000 0x00600000>;
+					};
+
+					misc@00800000 {
+						label = "misc";
+						reg = <0x00800000 0x00000000>;
+					};
+				};
+			};
+
 			spi0: spi@f8000000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0_default>;
@@ -535,6 +587,22 @@
 					bias-disable;
 				};
 
+				pinctrl_qspi0_default: qspi0_default {
+					sck_cs {
+						pinmux = <PIN_PA22__QSPI0_SCK>,
+							 <PIN_PA23__QSPI0_CS>;
+						bias-disable;
+					};
+
+					data {
+						pinmux = <PIN_PA24__QSPI0_IO0>,
+							 <PIN_PA25__QSPI0_IO1>,
+							 <PIN_PA26__QSPI0_IO2>,
+							 <PIN_PA27__QSPI0_IO3>;
+						bias-pull-up;
+					};
+				};
+
 				pinctrl_sdmmc0_default: sdmmc0_default {
 					cmd_data {
 						pinmux = <PIN_PA1__SDMMC0_CMD>,
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
