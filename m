Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15F1D2663
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xJuqogjGj03ESd5vRbBE8YFQaiQvrjrGCC/spVJ86M=; b=mHqPNjyZ0L2ZSj
	YkMWg36b5AM82btl3aI+lF9FnaLbpa3YetHXfsh1/WYfLQ5bA/cYPXbJcE1ZS4djgkxPbkBb8tNwM
	DkXLHpa4vji1Tzrkok0aWDl3Vy5KbJswoh+jwvOp2BGDZFvz6ns6wi70eIkIHDBGEx0QmW/ZXDCxy
	1VfoEuOwfjhmWa4osLVVTb1BaTcwaDLfFcc+KkUmZg8jqD/cIVOL+nTg2HrP/YGAGeHwPtOZmF7hy
	0UNoHmqTLWXo0hmyVp6wpEe7gyLL0tEHlX8prkL0DLA0wv8c3TEx1pELFnzQSbxXNJ+U9crQOG0Z7
	18jKqgMLSnwBWFGitWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ62p-0002TR-Hm; Thu, 14 May 2020 05:04:31 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61Y-0001hQ-0g
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432591; x=1620968591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uwKEtD8/jRPYcbdZfaS8zSHNukwdI+nicX5PxlTfCl0=;
 b=Qwzr+7U9X7K24LhmtaUE8wS4Lec4Je+vc7THj0Gne9A5XQCL7dgnVWeH
 il1c8+Kqvdi6PzqTekmwpwTucWUC4CItyZcRVYpfUNVfPv+2JnwNzgROy
 l9FNqHIcEA0rSofk1mB8POvnIO6plR5L1wssq1ctrhi/XKKQOLN75eX6x
 X8JopbtJJZRCPlHCBBUIcrxmPY8KfpsRKvfB8dkZoKHFWtRGcyY6xXSxD
 Vyb5tSNbc361dkz+QzTjtGDaq1Y/JaE9GP4Dk6jOEZW8SpTUt6lfZP5HG
 /B7kMOnEXBX3FUB2iUCVQnIbuhOeuNcecO7A4H7r7yi6TE5d8GjrcgNeV Q==;
IronPort-SDR: nJz0MLT5Xq+oh0PO2Hi/+DskEDFrqbtVfDe7MjzS8x4bwYwN7ACJCeatUFPJVlPV4NBExVqY+R
 pUHInAlMVyKSM9OFvIW/M5/Pv6eUQ3GO8euHBN5HcHm9L+dIungJmQQarmFviUrrvDVXwk8ggd
 ZRbGqGHJUw+RwDurL6b4CU683rPctmEWxg758xx6h4j5Ar6MjNneOdKNnC3g19DwCT4q/VWuXI
 EsR2Pgw14eIu0v1M7IZLSEXBruw3FSTcOSVNicWE4MP4GBYiUnyYH4u1DIB7Nq7SI/csvhVywd
 Y6U=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79551080"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:11 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NDbhdtpA5xxFtwqp3T8T1Qt9RHRPrPSfUuNkIMQNJ56aZXtGVEhi+5DXKYUjpU68TdfcqO90VUXrj2cG3RNh63v1DhcqFcBaLylFF9GfRlJedaiLVRmYA2KT1n9w0d57VNW0+qyD3ih7TONajYvIFQ46ICbT5LQ4QULSyjv9MmfWZyUZb7SqG9Os1mv/lEYqAaATW4vtHSMhGnGVHOjXpZwbOEh7LQ0fyH3dUApIZXVOriNRxvPH+GWkmlF0ScxHjstF9KDHkXnH1WOUkO3gTCWL4NcqPGFISR6jqLNT1RnrtNV2YqSXJfK+f8LeydmLhZkgWw9yVYW+vEo4BNaUfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qj76Nd280d+F00QW7LmSHt+TBxuC6yQmfWgNj7ec0AI=;
 b=jCUmLyljMvOq4Bl2rmXcOdhz2UjbZVAZjZ5avsP1sK9/EScyJMwogYvZBszoXEMwaKKkqIlRpMCuRQvv7ScFVzU/i6ZV4CFBrI9gLb0sQpJm65me56n4deJd8uvr+ESkUYnkLlDibaozCHzdIJp1vtIHioVhb3iahp5Q7A/gc4MVDyao2nUcfwz/ttr1UdNbKpER7sKOvS0x16nYCXJ2ZAQ0TfPv8VhHGY4Ozcn1n5ROs1kWIEHrM7SUcIFnWWSq6cG1CJ342jOjMuowz+ItNFt76RwN/Irnihipii7Y/NI+KRsu+4erAuaHvrtqa09Yz9LXc5q03Lik9QxRXEVpww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qj76Nd280d+F00QW7LmSHt+TBxuC6yQmfWgNj7ec0AI=;
 b=CfLQzLX2y18hXACRwmpDQstBvq0g4eWW9VIXpa8njYeP5GdTS/253wEYCGD+YsTn6F1F7rWIoPg0hClHFbNnNFQSiVAEXCHFaV5qR7mzpaGU0ohHaxIcFC+w75TuAJkDi3eN2fDGQ9C8/UD/VxYryaB7g/dH+51OX/94Mgltwbo=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:09 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 05/16] ARM: dts: at91: sama5d2: Move flx1 definitions in the
 SoC dtsi
Thread-Topic: [PATCH 05/16] ARM: dts: at91: sama5d2: Move flx1 definitions in
 the SoC dtsi
Thread-Index: AQHWKaz2EBruUKsjvkCe6lIEn8yUnA==
Date: Thu, 14 May 2020 05:03:09 +0000
Message-ID: <20200514050301.147442-6-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 5c59111f-d2eb-4a0d-9c2e-08d7f7c418cd
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB448314E897F63F05DDE065B9F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pK5Dox+1/80E5H6JLHR9R3S1B+0XPRzYMkzN8N1D9p+FXweFeIifTnpqDUNCLVL1w7TJ9+TOlTJJnwJco3J7Qv0Htr94CWkPgMHVt5dFLdzNhMhgNufQRZZSUYEvKr0Hxu6Y+zazw2XTEioAWt10aWpWAP+5OlyNkRFzcRsx7GjVvC26FNhxSsnt92GbTuv5T95OCAbPc770qsq5td8AoKtdNxNF6aPxCP7vzfhywVelJwQHM38u04ZGNf78w5eoimavSPBdOtyF6Rd226YNc138ZCun4tO2uTmtpIzx0z41JQ8003z43HcRrhoMh6gpE3SrXxwVVLA2gZIC2LWjYlsyihub/U8cYad54gAlYj9xsJFw7tCUf7ZiNW7Xcj9cakIUqgvC9DTpeXOnElOsN+6Z3vjeYyUL41WXFn3iBkex1xT+y/xjDqi3MxPIJffz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: zaJHXW0GCur6fyqDiBzbeb+o6of5zpe+04+yUumHArpCbfFGamlW59wJQI210+TrlsoeDGD8CyVg/ihMXkBn+cPtjL+vqYUo1jS+6pLieUSzGmLDKTV9KSsVYiacTJ4Q3fEjdut4bfpBlk5vEZ1rV+sDtMQDRjTpvSKx7jC/Qh6b2hc9ltG/jefHBEptIkJBtYb4dHKw09vW5OcEkoNDOb8jZvUzTLUS1Whp8umR78hQo+lq4BYzXt0IK1oHtr5GkZ2XCn6+SYk5LoamBrGNS0xrfoe9pC9bTMxAX6SB5U8YSMQBaGH4tqtsYzM9043zDshvxl8lWMMa+6dzeuh0+3BcTqNQ1bvuDCjY4zQBN3U0m534Wlttv3dLViZKCVwmHgJ1Q5ZvyrqTd2gZQ1qQFrxrgYuarlkTLzviCxXAf3mbNtRYTdgFSB96amQKcyvOAuF3aePifbEIAKgTMhjsNn/fioW+TFSVagFrPf8Y0C8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c59111f-d2eb-4a0d-9c2e-08d7f7c418cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:09.6534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FmEnrkcp2tFguz+iv1AJjqsTM+uHO3Y7Zg6ys200uopLAqE8/XOHlZ2FbmsFLgy7TGxmfdsGFfm4U6TaOhaIzznzCF26tySZLUtqDHZFDWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220312_126963_1B099875 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

The Flexcom IP is part of the sama5d2 SoC. Move the flx0 node together
with its function definitions in sama5d2.dtsi. Boards will just fill
the pins and enable the desired functions.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts |  7 -----
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi | 12 ---------
 arch/arm/boot/dts/sama5d2.dtsi              | 29 +++++++++++++++++++++
 3 files changed, 29 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index abbf14e29d85..a0deff15fb9a 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -126,20 +126,13 @@
 				status = "okay";
 
 				i2c3: i2c@600 {
-					compatible = "atmel,sama5d2-i2c";
-					reg = <0x600 0x200>;
-					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
 					dmas = <0>, <0>;
 					dma-names = "tx", "rx";
 					i2c-analog-filter;
 					i2c-digital-filter;
 					i2c-digital-filter-width-ns = <35>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_mikrobus_i2c>;
-					atmel,fifo-size = <16>;
 					status = "okay";
 				};
 			};
diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
index bea3d60b9722..a06700e53e4c 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
@@ -36,18 +36,6 @@
 	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
 
 	uart6: serial@200 {
-		compatible = "atmel,at91sam9260-usart";
-		reg = <0x200 0x200>;
-		interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
-		dmas = <&dma0
-			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
-			 AT91_XDMAC_DT_PERID(13))>,
-		       <&dma0
-			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
-			 AT91_XDMAC_DT_PERID(14))>;
-		dma-names = "tx", "rx";
-		clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
-		clock-names = "usart";
 		pinctrl-0 = <&pinctrl_flx1_default>;
 		pinctrl-names = "default";
 	};
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 89064225e9aa..79ed7bd02df6 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -645,6 +645,35 @@
 				#size-cells = <1>;
 				ranges = <0x0 0xf8038000 0x800>;
 				status = "disabled";
+
+				uart6: serial@200 {
+					compatible = "atmel,at91sam9260-usart";
+					reg = <0x200 0x200>;
+					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+					clock-names = "usart";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(13))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(14))>;
+					dma-names = "tx", "rx";
+					status = "disabled";
+				};
+
+				i2c3: i2c@600 {
+					compatible = "atmel,sama5d2-i2c";
+					reg = <0x600 0x200>;
+					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+					atmel,fifo-size = <16>;
+					status = "disabled";
+				};
 			};
 
 			securam: sram@f8044000 {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
