Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EB21D2671
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jT+oTumefoZR1kpPsPS0rOYJKG3R+1pp2I+m2eT4b2c=; b=sHZxJJaYR8QqXW
	iEbluRqTqIBg1exoDsjBPkrQXEf935tu8vUdrVQowgvZSVEURsFoexHVRmNpIZ7RBDMu5cKKXV6uw
	t1jarNARNG1zzalZxdVik5qz52vK2sjMzJev0br7XmqkJL8nrnXpAoD3AnNnbrAqrh9OEJR4fnwun
	LwA2Y60QjSkiKdF+Ue1fYY8KDvB7hQWSUYuDll6P0nNmw2avbOzkBkMAU8CTeVwdNuNYunC6pWcpm
	RR+ngKWn+tuQHQw1rjiWgOQHDKjbFXPUxxQLE0tmppuWPzv/ayq0J0+OMhdsfB0g/jCmf6nFRhWkg
	D+iLY8h7GaGDazkvEaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ65J-0007CR-Ir; Thu, 14 May 2020 05:07:05 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61e-0001o0-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432598; x=1620968598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UEAFtwaIJrplZiQG5jKU8foi+hArmZTQqw9UX1gy3Yk=;
 b=CRF7rfR/k+Nz1NobQvs4oK650mlewPHjmuDOkA9NnXyVPH1lel4pBcz9
 tpJqnU2Fmp/IxPwloCd8/PAIUL6KfC2SdBx3xA4rbPr03ia6TIk3DTEZB
 Vf3FQScExANU02cLkvzonTGFIaRT3aPWoa9fvDNEweM7y48RFhJ+QGCke
 gIzGBQPQoLB+9I89XT898i2/mtt0xvxAiZybelACNr0J/gT4LmUfUllIb
 ZV/BWxRYv9+NFUAU5Y7uddzbZ+Xz3kCgwbWBlcfaaewxMNM5e1SWNOJvy
 x+0ess5pN3bsDoGM2vyViPTHtisaJw9XXVMZrIoyfhq4oOzXpyB2D31+x Q==;
IronPort-SDR: zw+cSl6v/2S0eyvRggZRQNKfwLTw8RypxxUZkJtndG8DQJ6u+1IVL009iclN859qKdZfNmeNX5
 22E+Ee3d4MOEgVcgOGefu2d0vrP882iBKx1b0Uxw4pp07wEBoIywkM0GovahOz1ITEZBleOplC
 Z/k/J2TXEqFvWBj253Q5HV44S3mJrScZmzoRFtUizF1pYnmYhEMFVlaL5rPsxfg3jCLbtLFA58
 hjhzQn3oqAQE0kcwllJ9hEw6yFtYkl6kFf5Y1k3wGji7FS3iOIJdTrFGN054SEbPYMD19Hh6sb
 vsQ=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79551092"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:14 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HS8geOli02rygJPnpP5p0ojwnl5nOHlCbZaJXkVSUivzlpuTXztLvfn1CF/VolBak+mg2mi1tIMjSyfaOUFnJ9Iy56v2CpNEHY/nHnJH4gfGDt1yQja8DNlcg1N34SByC3oGdT8/+J+6tFFKQriywfGqpPPIU3K1b1DtqtHE+Ph6Xgs7QFMH6OeWeWCEZ6g/X3UZWlFHcPItoVPzWpxQC3yA1OTYvSqz+6NeiBRz/0T8x4XQTq1+Oy9c66R/dzzi8o8VCFo+8fpaO1zrjyRATXnF3rScWUIambVUapQ/mRXaKc1LLvR9JuTysrv7bImcZdfepkIXXx/0m8adAug9SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBdbe0U4zpNmbLKIuTuN3e0DRmi1aSerJSXH1pbSK1M=;
 b=mYgWA65eEb1+br3KARTgYnRIhBu0ZwskWPYKDZR417+o/yb0PJfJmV0tAg3XhgBoWNyMb5tsY5RmgtVmp0NqfUscUUh+GFkkIq8Yej1E/2VYjV/MpjMbMW0libS5Pr3AN36kCmIZZzZdojKtTRjFjgtiMcGFK0A57buLJ4NOWLIxf500QoVOHb0ErGJnmt9cOvUIrwNVuqiprWptHt56xegNjUDuMuyF+RcZE57LuA1LvJhxA2MtIpLO5I0fzuBpehtjn/rs0CC2l2HkRjazaJGM5hEc5VRz9zE2JS9CpPjaPWQ/xo5ZnmLLhel4cO3s6NbVTASQenIY+P7rJ+1aYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBdbe0U4zpNmbLKIuTuN3e0DRmi1aSerJSXH1pbSK1M=;
 b=vhAORx2oEiyYk12QWsT+PZL7AHgl69fAkpkkz2oYlbuAEVWPaa9hIdewwWnw94JDGRCoqJQqlGCmTxlbFvCi5q3Hr2BsafQpmoZ397RZlVWU8YmMYF1iQY+CVL/EQXlO1BVc7B1TOUFpp2eUYxkBCT/i9PfXyJ0MR40kwiN3Ul0=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:12 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:12 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 08/16] ARM: dts: at91: sama5d2: Add DMA bindings for the SPI
 and UART flx4 functions
Thread-Topic: [PATCH 08/16] ARM: dts: at91: sama5d2: Add DMA bindings for the
 SPI and UART flx4 functions
Thread-Index: AQHWKaz3X6V0ap5Ns0uiIyl1zvqZWg==
Date: Thu, 14 May 2020 05:03:12 +0000
Message-ID: <20200514050301.147442-9-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 6c2072aa-a530-4403-76f8-08d7f7c41a54
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB448303FD676F8A58DF1A5E64F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CBX8tNyhEU/U4q1THy77w4vTQ6Dcb+RES4fK/AZ6/Y09dYgXcOq/LDObU7qBT4ZZ5X2hpMlAt7d2H5RUwD01mvHabUI9TbhcsuPfnDNSx8DjMmvnnU3QdZsnJKx3iScbpVZdt+H3HhvrSl5wQCYuUGwMg34Y8TMpiXiInAsVBlfvHhVfmPsf/obbma3YuOTwFCFdK/XtcB3IaRUwsQNMhZmht88Zh2qkwWmU5DaAFQeByAWtE2a92g9rlxo7LGvmfrRwccjdAhlgHzV4Ksr2zGZ0/OjaTfonoySrSPhAqSASC3vT/udIQNjgYS3Kmm6BkNyO0JdFQrHwtUKM5H4LcT2OGlm2/eDVF0R/RA27bMI/KiXYWsZkvxU9NGNCN1tpE5t0FpoVPv1c4/8HEor/PXu4YFY7EaEnw6bCSlFMAD/mXSblTJyKzsSp5Lql3T8d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7Ihgh+74K5wB5k7aS29l9kKKIIX4XxCuLRG5Fzz3vZOcRZ0PUokS9LI6qjbu5jWSt74jxT5HdU6MHzZ9Sx5EEi7ywvZgxswyqkDe3Mc0t6+35zszoCnbkzVAoTaHPXPAA0FZ+rJjr7SL3T0kcsBjo2XaqZpQ8UzL8KOm3UpYHg2D2HLjCmteieYfiqOXXTV69eun6VFWkOy4SOecxhu/dDXmDw9ovas/wzzts96+aXyMoYpCbp3DVKPRnzzUSZz9Qhu6atvOrrLQ/60d2ApB+4eq+hmTj5PvMJbKhX4Oe5sVKntjuT0vHb0ggzvJAww1JQFaJMthHwc0olImpZwrH2zXf4PeWSfxw3t0XsM+Fhh9ad816J6qOf6roenuM3MSK+T+e2ML5Wbw9pvaYL4L76Br/cjo371AaLV3hPUbrXOwTRy69V7RC55PVWYbsRa6z03yKGgAx61/bJbAlBfapJQxeSn7KrBbzQ8GtecIkcznoUeI1ejcEZbWmr191crM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c2072aa-a530-4403-76f8-08d7f7c41a54
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:12.1539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xeU/idwkBMKIxzC3T/liXlYAYQk/KPZpTx+Si7DwZ+jfjseQZt9zXVaKCKWHMP234qunouc/vyjIzIawX6Pn6vp2v88x4ni8DXatM0zG/S0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220318_303221_DBA6A098 
X-CRM114-Status: GOOD (  10.73  )
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

Spare boards of duplicating the DMA bindings. Describe the flx4
DMA bindings in the SoC dtsi. Users that don't want to use DMA
for their flexcom functions have to overwrite the flexcom DMA
bindings in their board device tree.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts |  2 ++
 arch/arm/boot/dts/sama5d2.dtsi              | 18 ++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index a0deff15fb9a..6ad66d034305 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -190,12 +190,14 @@
 				status = "okay";
 
 				uart9: serial@200 {
+					dmas = <0>, <0>;
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_flx4_default>;
 					status = "disabled"; /* Conflict with spi6 and i2c6. */
 				};
 
 				spi6: spi@400 {
+					dmas = <0>, <0>;
 					pinctrl-names = "default";
 					pinctrl-0 = <&pinctrl_mikrobus_spi &pinctrl_mikrobus1_spi_cs &pinctrl_mikrobus2_spi_cs>;
 					status = "okay"; /* Conflict with uart5 and i2c6. */
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index dde969a140b4..66aa8d6502d3 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -939,6 +939,15 @@
 					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
 					clock-names = "usart";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(19))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(20))>;
+					dma-names = "tx", "rx";
 					atmel,fifo-size = <32>;
 					status = "disabled";
 				};
@@ -949,6 +958,15 @@
 					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
 					clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
 					clock-names = "spi_clk";
+					dmas = <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(19))>,
+					       <&dma0
+						(AT91_XDMAC_DT_MEM_IF(0) |
+						 AT91_XDMAC_DT_PER_IF(1) |
+						 AT91_XDMAC_DT_PERID(20))>;
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
