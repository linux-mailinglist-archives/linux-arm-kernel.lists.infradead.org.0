Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69221D266B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgrE37V0+LIcdCGmUaq/cf8rz+mXkvqQyxhPc/dqRiI=; b=h8hvm5afA3r18O
	Uhpxd2v5mKunQpAiBW8iUjQoB9DpoPGqrfAXjmTyr7ZO9+Q4xhvTJ3AA3+affrTvvQ1W1xwK5pJ2N
	R1K6iR5hizBOiomGkcima4kcbaY04LGTsyA7ujCYL3D3S5NiYVzTZUK8bi+6UvgA6oLt6IlKL20Xs
	WYUSCUhQNKRBZA4C/WofG/oLOi60MpQL9fnXmrH5kLrxL15PKSpfKMnwtefaisv4tUOhKGRQPmDLz
	/iO572vtB8FTHdGB1rP7DdNgYYZVS/SyCPefMZE9eizf6URZo+uuKYhG9HADtbu+lJyquzCax2h+C
	NqeTjav68O/ul+LdEckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ63n-0003LS-Ms; Thu, 14 May 2020 05:05:31 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61a-0001iH-Rv
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432594; x=1620968594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mSFKxGNK3tcU0apiuObjXoQJ+Y0Rf/5QEWeyIXgG9QU=;
 b=niezh88G21eae5hFZzhzTVc1icCRL/gcb/UI4eQidr+NPQ53GWRtjiYX
 uZJQJT2b/73oHdYH6tA9DUeroq2R0JFXvrbmCiSjVRLRGTf1XfLvSdRPS
 rkh4+1d0+t+QBKpTKGQpq7b3zD6wcb8mlXR4TSiBTj34aDxdDajYI5yWk
 tW2+ru4Cc6tm41rm69yTEmf0PXDClr4BWOIu866dLfdi5Hlr8Yy4CrQIK
 D6kwvj7yr4mslWjOzd07A/fIsqXKpPMewLW17YosHC8j7WOvDSruoxE11
 5fTNTzuuIsNeIIU1t5xZjkASpo54ic59ckVD8N8nNcykOeqv4HdE/eM41 g==;
IronPort-SDR: cxLuRPIpnYDjDji4CdbSo9m23HywaqaCC8q2T6e48K6+nf5lHJy/I5Puk4N8nVmQwFK53ustIO
 z3ttkzc89XZp9xDiT4obhO9XoLFe1oAMvemjJkx5y1xE5Up6ufvw23E95vD/ycSkVdp3gbqjI3
 MHV6/IcjTuWC+D+Y5QTi4rhHZ507UKj5iGa7mEJJOmg1SKNyf99TNbkX1wKQtoyxGRE8ZbnVWV
 2wnGKTvMqtABeP7u5w1f2n5MGfdGyWg/a4CponPL5hBzgn9iEaxMr5z88gSfNQZn/+D+n5PNiR
 hi8=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="76601054"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:14 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kgZEFt9HKtG/wyeBuvXHSRKrLfiD4IgeBENOr884+RSzefJX3QYqG3mEcHKRoZwWuEaqOW3pEqVyL2IqXUaL2Sz77/VgJh/8wRXFKL0oxV6RidG1ycAlmUU/esOPUCvEaaZou5V+Le4qgWh4DhLiyW+pz+HDa+lSGXR/qtjBn/HLqgF3WeHk/UVRJjHwzhUxQg3LNVtDfHhn9+JxIOMlj/ON4oOsWvOUYa+J/jEExSZeOBGpKM7ou8NSl7UU/RR4rbl0tYOi7Rb9XxK78RfmQKDphGxyKKON9tF5CIZDz+EBR3xdcXSWNhLCeh8bnnuEV9AMjDUbXKPoKhvB3Jj0Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfPoTcRLO6itAxRwyOhpuxBtGL4L/TP4rLhumQT/DAM=;
 b=MZ2CcrHrIvRzABd5KSu9b4wy6pbdxEgDPqu2OmT26PkjrDAZO2hszCkXo5v02ygiJTxcIq6K9zsle5TcVV9O+tpKBAqUNZ/mvK8MR5gpvzbPLvb/TT4K+yRvqKd5bxoS8Uv4tI+afNfUqAFBEXiC4C28BGPDVEwoVOQFvLSArfOQbYOH6LwzcJgJrMfHXu7OJ+vmpEPNvUyuFDIjWGyE+tDz11dZzpndlJXiiB83SDX5E8Vdy/OKlPY+tjeLhHfJFVaMrjjxcAo5SVe2YU0qcpzu2bv4ddH407T66cy20d/opfZK9t91ZwcObAfXPDYx7G9ojoz9nOEoFYOQebu88Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfPoTcRLO6itAxRwyOhpuxBtGL4L/TP4rLhumQT/DAM=;
 b=RxJW/0nAyQzI0/AjCkZWlS8SReFur8MGXurQgmBEGWKiEqYLbTrXlkUkywt464+n0TroQ0ESmGCd3743vx98qHZLvewXZgLDs34rLajxHnkChLl2Rz7tCGNjxAj49eoObm1PMjZbcvtlHigSA2QWD3bs5arfqWccFjU+SpvmxsU=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:13 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:13 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 09/16] ARM: dts: at91: sama5d2: Add DMA bindings for the flx3
 SPI function
Thread-Topic: [PATCH 09/16] ARM: dts: at91: sama5d2: Add DMA bindings for the
 flx3 SPI function
Thread-Index: AQHWKaz4TQSCVge1sUO+XxKHywxFMg==
Date: Thu, 14 May 2020 05:03:12 +0000
Message-ID: <20200514050301.147442-10-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: b1adc88e-431c-4cc1-32f4-08d7f7c41ab8
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44834D6340E07E909267A4EBF0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GiySZp603Uj7/ZREf6sv3wpE9+j2R43P9pzrpkvIk5My6cEAGBd5ixC93lZrsHbNT8VICE1R1DZZtqYfygupO+I288LJmbvJaqAG6iID6xBbKIhk+f7OroDKJ3SlWjOvbsbm+kUtflV+rzgu3nbOn7liX1SXjkFHAzEZBSgVTFkdm4ZwAuiHoe5dq12yfIGRAauNZ6PGBThnvZM6MuW0yKBbZNvodEs33h/i0FSHFf8DzrdeKwXEImP45D6/NklaiXFw75L37WGQe28hR83QuhEeZLAr4fpRKGTOg3xiNFkxPKHNuNattEjOlDbKUY+BZgbolHBSN+Cg9R82HAlN7TarNpuS2A+3p/D5o9qj415Q3ihkq8VGHY4XSGvFhgEHU8Zcd63x9AM90VKoGbmcEGFrPrG8ulBBcl6IB1YOgImjM52oDO6Bj5uDbQmfhynF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: qRa+1N2RAC663xj1u897D9103zKMGTavz1G8J4Ut+5igIJMExgMTB+KZOQFcKdreJeIhSBymX1qVbaltMBUVeLBbYADwhWJkSrws08gohmHPJiPRCwbfyE8lhWIgqCoV5jB3eitfb38Sp686MlMTrv7T83JpoOZmUkuCF5PMm/+Z01cA+NdDw2P6uF09MkXv4qXINHIOiKz+sjrsE1AFz9C/qA3vwZNC4f8X/RN49/2/xImT3SiyMHlneKHG4sQqLvQH4N7NuqHma0HT7gxvOSAZSKKO8pCwV4/+KETzg1Bm2sROhOcO9tabfa1KU9JFQJJhnx4tX8dIM9Ob+xnXyG8ax5312OOFoWr24AvrRU36OAKMjh5Hb/V7dZdWAB/7ITfX/YHVPezkeyU7Zs/QBiuQyyUXPNbFx4/z72bEQAHyDvBgbQmWwg4QRxNVPVSKwzeC5OP49xu+LDuZx+tsJvP5qa5Cgg5Uu1TSYhV7kAEATnR9tIjIF41Y9BzPealF
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b1adc88e-431c-4cc1-32f4-08d7f7c41ab8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:12.7995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VAgoe3+n8DP/EoT7f2yALsVsBKvwLn8uc0HFeKs1mmCGDu/8dqltP3RJfk23vrOCS3blYOXowJVeNabt97+/JVxB/aQ7h+JTqgYkdIWr8A4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220314_980943_4BC4F73F 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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

Spare boards of duplicating the DMA bindings. Describe the flx3
DMA bindings in the SoC dtsi. Users that don't want to use DMA
for their flexcom functions have to overwrite the flexcom DMA
bindings in their board device tree.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 +
 arch/arm/boot/dts/at91-sama5d2_icp.dts      | 1 +
 arch/arm/boot/dts/sama5d2.dtsi              | 9 +++++++++
 3 files changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index 6ad66d034305..1aa8b79d618b 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -179,6 +179,7 @@
 				};
 
 				spi5: spi@400 {
+					dmas = <0>, <0>;
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx3_default>;
 					status = "disabled"; /* Conflict with isc. */
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index 4a01ab8e7e70..559d8ae93af9 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -167,6 +167,7 @@
 	status = "okay";
 
 	spi5: spi@400 {
+		dmas = <0>, <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_mikrobus1_spi &pinctrl_mikrobus1_spi_cs>;
 		status = "okay";
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 66aa8d6502d3..5a0162915ae7 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -919,6 +919,15 @@
 					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
 					clock-names = "spi_clk";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(17))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(18))>;
+					dma-names = "tx", "rx";
 					atmel,fifo-size = <16>;
 					status = "disabled";
 				};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
