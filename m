Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BDB1D267B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcCXcn5yMtEPef9nAyJ9ctLPj4jEfZ/PWOtWPNN3+pQ=; b=qmHm+4m0sES2wJ
	UgP4nfZfv+Bd+mMGKeUmAs3sAbSVznS83LCTeev3IVOW4zICg/8jVotH/lJMAX/5pv9WTVnB7XvoA
	woXEcLGand672yqOGEjqCW/p2tdlwjfuUjvbwCz+hJonJQa9vA5v4z7ERLF0TwUSRzXnED4xd5Ff4
	6pKAM/hi90JWPuD/IpGTarHxS8uvf7dJaVmEg4MKrSUUBzj6/1IfKP2mjDGNBR6xtt93XD59WXcn3
	jkbwn0tNVU2vf4TGmEy96w0sXYuEL7RSHC3MHfq49Tuwa5j3cNf3S1MPASTqsfm5DG7o5BPKurCcZ
	WDiUpTufk/++V5zVuJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ66e-00008r-Uu; Thu, 14 May 2020 05:08:28 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61j-0001u0-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432603; x=1620968603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=REUmqZhkVMIJperpWE96I9V7VPdHvJoOefpTDdgxed0=;
 b=f35g8XrZuNGL133LXv71aRCiop6HPUivHoYLl/LK0UDIhZzlZ6QIkvAn
 b6zU9tzlt6w3+RbSMp939PltmJs9jI/4YkTiZh2wO/aJiZTyf4nAD74fM
 9AJ1i3FnpMOkP1ehIVOKm0iqjj1QWK/vDow1V6j77d5qp3ils3CoeEfvd
 1jCl2+xVB/KhRsjs+C0GRNdb2zJQo7W0e6mhQ41VoQBl+ziAQ1xZQ2KVZ
 muaTE4YtwlRmm3gJs+RTeS+Xg5CxipvFRUCH+OtwjD9fH455dpI2kPWlO
 N2i4CW9zDB2klx80BfMLG8YcgKCSZontUfKhH4Znrkfhgsn66+IEIjECP w==;
IronPort-SDR: IyHfnBJpdBcmdAPy1svuOxG6qgDFgbelPd1aPQ4buDadop+5aUYe0vh0LHkCr5v+Q3Wyrn53Ff
 wUklHYPHr588MR+9osOZ8v3jhCR2a0pvH5w5b97D89ZZUE/t9ldvLavpXohYhlyG9IYsIj1/Ff
 CT9z3gg0kc0K3yqTxTR6WhKzYtL4oSa0CpXdSAGlKyIMwTodhG3INdZJJ1vE/QsOTSxr2LVexj
 LyyYOS0lyVgNiok7mTKDgGIeP9YlEPCmxOhKgibhEgkQ4yft4qdutAwIltk8FsqkbC/nX8OEr/
 Cmw=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75847121"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:20 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 May 2020 22:03:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fb1KkA+P2e9Bmmx58dBJan5D6dcYbmSoKM2i1pxUtBcpmy7thQEWB65HDzpfdzWj5TcRsFgUTS8M7ZNj8+9BiU1TZCQSWH1BrTP0oyJwc5YhQfQ2GsVtYiBUZgZvegbmLMd74EaaEXzgoauQG3U3L0K8TY5Majv8Yx4TFZUFSPvx2yvSmWZMQkDPTjAPIOl2ZYB+u9BfMDHyzKsgUQdqoh2O1b6hRDhk24uwgoQh5PSAhkqYdUJgcb4lsKBAJDhVenm/E6SYQubCzxDIEyJV66gSDIIeiUrz4wpprpC+2beomWqJGv3vuB4kAncOK8d44/Q+3MALaO3UqPBHOgrmtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AUf5vY2DEWA5d6EMO3qdaoT8QSIevx1l771TJTwJ4Mw=;
 b=Ggiuu1bu/st4p7ku2JqxG6fChlW+W6OZIXLZFVqxVnSA/jsvNBoyh7lOH3LyBrXvZjPVx7IzcV3KitOOmE7v3vW79T49Ps1eR/ZLgsrlgqC56aUZpji5S6jeMwCCDxtB2krUiqFLElfGA1PxVCpA5HyfERDgKC/sKV0B+VCubowf31jD73DTXVvtoAUjC/ffc5YcImG8FtpHPEViJatPOzeHIcrTR6dwCANiNzQ7flhkWyvrtrbTRVJ6ZrqiupxpVQpL9f424zjpEzpK71SOTKZ7ZtOrZR0yR/EqzvFZfjr3ySb+a7QzQvEamKAkjf6p5Dn9FuW2Qy25qZdnrWLTwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AUf5vY2DEWA5d6EMO3qdaoT8QSIevx1l771TJTwJ4Mw=;
 b=LM/kEw1Fl0pjSJJ13KgisuI5MIs5NMhqkpFDRkId467BP9P7X6NBXFJqFHwjWjZUgmjmSG3jOh6nexDn7sotClFk7YXGQA+yUHpswTfM0XYEbnpK8WApIMMMwqO1bHCDkDbNnaYQafAe9rMIJo0n3SIu09ab/ri7o14MNuQqRb4=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4040.namprd11.prod.outlook.com (2603:10b6:a03:186::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Thu, 14 May
 2020 05:03:15 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:15 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 12/16] ARM: dts: at91: sama5d2: Add missing flexcom definitions
Thread-Topic: [PATCH 12/16] ARM: dts: at91: sama5d2: Add missing flexcom
 definitions
Thread-Index: AQHWKaz5XueFWLPwRk6ZXAr8TP7nXw==
Date: Thu, 14 May 2020 05:03:15 +0000
Message-ID: <20200514050301.147442-13-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 522b823b-c50d-447b-2060-08d7f7c41c2e
x-ms-traffictypediagnostic: BY5PR11MB4040:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB40404BD7C3250B90C0EDF05DF0BC0@BY5PR11MB4040.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6CsCvL6b+OQmUJjyPRwveBhoZ1UIGPJEldL27Jlpf+EwW6zXCywDba5yHiNXY+LbUKgsOvzobHPXwiRqYuW+Z2XFrFex19F2xnKo4F7qxB06kvJQKzCw9dqkdgjT1nUQZE4NKbriOFd9E7oYptiH8TaZvhO4Kr0QW5tJIZ2N3D1MeJKeYer2i+MsBbR9Bh/kHqgiXJhj/+NZfmgORqIXbOkUOa5W5UNqLiqIrCxKdYcvflWiISG6qP8HDDb/X4mbv+igwKxZ+ZucNVRgcxAmJMF5eoZl6KjbBF7CFJey4h6fqDR4f26H4USGtSvLvgY/VR2WVFiqxmdasxkc2W4de1XbOEUvXbGY7xlpeaOZ9IFCwbnyLFvx44aXxXapHmlJ5uNVAOh/w05QfzjAmOGU03iS5dXQb7ZvmC3OPHT9GR9+HVGHFNNRxkUV2pNGk1CA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(366004)(39860400002)(346002)(136003)(186003)(8936002)(36756003)(6512007)(5660300002)(66476007)(316002)(66446008)(66556008)(6636002)(110136005)(4326008)(54906003)(8676002)(1076003)(2616005)(64756008)(107886003)(66946007)(26005)(86362001)(6506007)(76116006)(478600001)(6486002)(2906002)(71200400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Prj3KiDBk7gCdAogjzFFYpIjko2PUeo/f96M/CTMF1+UZ+MmHuRu0RLk1Hrmocan9G6dDqY41ql+Jkc/qSKW78ZMZvjF2ktBzhyEdOD/4XrlrTcTKwYV8cHdfPvaGcWPdzh0ZdODsMm4MP5pvfOGMf56x7GUERsdQhGf8PoZHu4w4TtaG02L7oKW59SjEPab7yVsvDQBCx2qU6f/RjYWHWOWu7dQVURKQOkcpY8WowueD2k+TCO0i2+KNowz5gTLs8sGt/QLEntaqKYQzAj06EVqUkVu9dpw4rgbHCsTlWds9n7BCkJ58vPgogWGqmgUy6HGNu0Ol6Z4IVuk1ke/3f8k7Jkii51tN66K//zrT49axzwetGWKD69BMZ0TJQYt/GNdCtZ29zf17FuakdOQ+GSN73BqM6/JMT4xhNv0ZxnGA29WbHUrSLkfEgY8fotwrSks3eDhEIUIfjnx+y/pq/66woG/XEW1KU87iBxBE0KrBhlDrOzIpr4yKol+9yw6
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 522b823b-c50d-447b-2060-08d7f7c41c2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:15.3091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PT1bvCVJ5mCMrPdwhszdbdiSt7czoPYMoXe4pzOHAmTJ0PSOVkEnWY8cVPlP0s+oCpfaEeRWoP+Eqi8l1CPZ8btKcXnQ4tzsBmQE4AXJjOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220323_567645_D32160C3 
X-CRM114-Status: GOOD (  10.22  )
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

Describe all the flexcom functions for all the flexcom nodes.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/sama5d2.dtsi | 79 ++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 5bba8024f485..b8cdeedee6bc 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -723,6 +723,25 @@
 					status = "disabled";
 				};
 
+				spi3: spi@400 {
+					compatible = "atmel,at91rm9200-spi";
+					reg = <0x400 0x200>;
+					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+					clock-names = "spi_clk";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(13))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(14))>;
+					dma-names = "tx", "rx";
+					atmel,fifo-size = <16>;
+					status = "disabled";
+				};
+
 				i2c3: i2c@600 {
 					compatible = "atmel,sama5d2-i2c";
 					reg = <0x600 0x200>;
@@ -910,6 +929,45 @@
 					atmel,fifo-size = <32>;
 					status = "disabled";
 				};
+
+				spi4: spi@400 {
+					compatible = "atmel,at91rm9200-spi";
+					reg = <0x400 0x200>;
+					interrupts = <21 IRQ_TYPE_LEVEL_HIGH 7>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
+					clock-names = "spi_clk";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(15))>,
+						<&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(16))>;
+					dma-names = "tx", "rx";
+					atmel,fifo-size = <16>;
+					status = "disabled";
+				};
+
+				i2c4: i2c@600 {
+					compatible = "atmel,sama5d2-i2c";
+					reg = <0x600 0x200>;
+					interrupts = <21 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(15))>,
+						<&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(16))>;
+					dma-names = "tx", "rx";
+					atmel,fifo-size = <16>;
+					status = "disabled";
+				};
 			};
 
 			flx3: flexcom@fc014000 {
@@ -958,6 +1016,27 @@
 					atmel,fifo-size = <16>;
 					status = "disabled";
 				};
+
+				i2c5: i2c@600 {
+					compatible = "atmel,sama5d2-i2c";
+					reg = <0x600 0x200>;
+					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 22>;
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(17))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(18))>;
+					dma-names = "tx", "rx";
+					atmel,fifo-size = <16>;
+					status = "disabled";
+				};
+
 			};
 
 			flx4: flexcom@fc018000 {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
