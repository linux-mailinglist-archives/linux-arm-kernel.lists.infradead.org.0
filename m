Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8B212F64F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:49:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efueM+s+a5GeR8Nrl2rRs/hG5wJbpUxgXcJbvm2wXoU=; b=a5D2g1igpXkeh8
	e70/LDQ6K711JQUQ9pWXtkQpAHYfIeJ9tBNYCHCoSrQOPVlOrjQ/GkHl+eW7fZbFIm1qWEwWDr9v8
	c4tST0mehpv9q1sQel0dO49YHnx+MhxA51jWNzRoaJaMQalXditFhv368NnBuFJtheOQv8Ery1wuV
	Z0f/g3lNRejokOE34yzeEeGl060+64KbNT3k2UquXBlxVBcvK+GVejRchESGASJZs5cuaYwJ7141i
	0nglxUojlQlzAOQqIN6RTrYV7T8KykTkAUvZupc6C1EXS23ibXkcSbAO9R/4pBqchEzYJNS/y9BOq
	s+Mx4JRhekPPcL7n2jjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJa9-0008S9-6s; Fri, 03 Jan 2020 09:49:25 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJZy-0008QM-7d
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:49:15 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: tdklW5nqeBRItvXvioX1YiwWH0NjFoPVgpis2wAKX4f+DgTiC4L9focbjE9qvUEkwMEgVlI3Sj
 6kZXqc13OIP5IEQYSdWX6W0lQIG9XP0BZ7agi3t0t5/GGvUVUnWaxoU4J8cpg4KQd4e3RqeTFW
 tT10S+PDv5FPYqekgvltvHs74D9qRJOD5NmFuQ4EWjj+JUkE1VAlRdHrO07f2UNU7urWk7777x
 w4/Fm3nV0jXarzjT/LBpgYuxqtCGd0+HkAAg4Hr6yGfUCfy1PuSIlfEpO2+mLDoGPnKHmFi5n8
 Npc=
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="63549989"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Jan 2020 02:49:11 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 Jan 2020 02:49:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 3 Jan 2020 02:49:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E94XzVKAiboPpc7fUQOdCztqRMGtkV8TGrAMeAeDR4BMTlxFd4ZKYsIiYYoXt9CbF89gvUEu1ebxTy+TGTPNaAvNferORys5fAOGS2me/liGBBoeGMXXe1K29H4qQ3BcAIsWroy0sV402ANjOg+Ek1usPGV77vDXPPOCvUZ6twl2OawpR6L19lfp3rvvMTfLv/tIt3s4IjZq/Trn2OHJW8EGj8xFnSWaB4rDhDSiy5Ddck1d3kpQNmvtB/50SY5sQ7ERWjQh33Xuls+3mUmRSN/HMUHseTFPLSIw/BNe1Dge7NMxfhMbYnpKuHbm9T4hYV3xqrGicNoqobmcNGM/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S0faNSusnFY0oLWC3QmpbekQ4RtIJOw9yxLif3zF1GM=;
 b=jiNfHvDaWOBSVxIuKuwFd1Enc8GyLK229fpD5XrS1uzHHoLEvzfyS1ZZasTHQSdkpvEKZui1LDBd0Fd9LOnF8TIIXmXrZznazddpfMkZeNekDP4XUJH7silF64B0i0xyLNKLNXeMYPJOe+mRnELgIDdGUL41sc3k4fUlpcV++ZvB3wph58cS/ud1QPKmvJufjyC7HPfd8lifN9cpzvgY9XnXZmwNxuMuKPbx8h46LO2KA8ovmmMCl7BhK1v8Gk5iVltREJ5+2NBKcstqrjgOGOXLrMA/yS/iF3yhlGkAHqcMVzpTwP2B92AytEPwe928KgLpeoIFmSLjRIKcmCVbXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S0faNSusnFY0oLWC3QmpbekQ4RtIJOw9yxLif3zF1GM=;
 b=jld1yPTVoAfpSeREMC7TY/l+X/3uuLCZK2937UUGcLMa4HPuwpWXorQmaRtaMVy3LlJU6WNBegmNxT1/0jpC71Cb355p9nVTNyJd7WhaAKMSNaxfQa64gVduMNQzEpslyrXFOzEf3emgc7yajTPorlZhpaK4P+SUhWYBuEpeu1c=
Received: from BY5PR11MB4497.namprd11.prod.outlook.com (52.132.255.220) by
 BY5PR11MB4322.namprd11.prod.outlook.com (10.255.89.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Fri, 3 Jan 2020 09:49:09 +0000
Received: from BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd]) by BY5PR11MB4497.namprd11.prod.outlook.com
 ([fe80::6189:c32:b55b:b3fd%5]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 09:49:09 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 4/6] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Thread-Topic: [PATCH v2 4/6] ARM: at91/dt: sama5d3: add i2c gpio pinctrl
Thread-Index: AQHVwhsLdxsZpEnI6UWudjXfEFHmNw==
Date: Fri, 3 Jan 2020 09:49:08 +0000
Message-ID: <20200103094821.13185-5-codrin.ciubotariu@microchip.com>
References: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
In-Reply-To: <20200103094821.13185-1-codrin.ciubotariu@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.25.143.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b32bdd86-b601-4170-987b-08d790322e5c
x-ms-traffictypediagnostic: BY5PR11MB4322:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB43227236EEFA5E7967BA8802E7230@BY5PR11MB4322.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 0271483E06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(136003)(39860400002)(396003)(346002)(189003)(199004)(36756003)(478600001)(4326008)(6512007)(6486002)(110136005)(54906003)(316002)(5660300002)(186003)(66946007)(66446008)(64756008)(66476007)(66556008)(8676002)(86362001)(6506007)(1076003)(8936002)(76116006)(26005)(81166006)(2906002)(91956017)(71200400001)(81156014)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4322;
 H:BY5PR11MB4497.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /gorkqQmQPKyu3PocDb71WlHaHCPtGnPO2wqlT3J7pjSZjDr4DcNaayRoaLsG1wOEA+6txDiMGPIEedMl8vTQWRDVHMTVdORrHldGp16P1B442sA1SBIJgIH/P6ld/1QbzvwTdwPrF9nVXKLpUYfIOZouSapiJj36uSqr5aMlLND2mhw+vTqUNNjEJe6XkPC3VFLuiW+gNSByIzNAdm/2uHjxc4aks/D0b0j72+bHFWMu34p2jG40IeXpsYCaWPC/E2olrGAeFJi6LSlEF+wrZsiT4hsnblAu1m+cKDmUn9CaDZjJbZAlQfzbzp0aozaGZegjdnkn02AC6yUI7SYpD531xxHUA91TzFlMNVZtBochVPHlYr37bJtTTWG85N4+EZQ5jEn6KXFIvtD8uE044MPXctB9a+VblJhxugfH4zceHQgepPCSfBH+3Xw7m10
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b32bdd86-b601-4170-987b-08d790322e5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2020 09:49:08.3187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I4m8CQeAuJqfZ/LKUK4nGv75rvFfHTDmjVuSxe0+AkUupNpAqDjepN6bu1B27/M+K/TF/mYGtHisMR3zmujMSSfW1xzvqQcdY1Ft0KcYup8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_014914_282083_5214FCBE 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 wsa@the-dreams.de, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kamel Bouhara <kamel.bouhara@bootlin.com>

Add the i2c gpio pinctrls to support the i2c bus recovery

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---

Changes in v2:
 - none;

 arch/arm/boot/dts/sama5d3.dtsi | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sama5d3.dtsi b/arch/arm/boot/dts/sama5d3.dtsi
index f770aace0efd..faf8907d8d7d 100644
--- a/arch/arm/boot/dts/sama5d3.dtsi
+++ b/arch/arm/boot/dts/sama5d3.dtsi
@@ -159,8 +159,11 @@
 				dmas = <&dma0 2 AT91_DMA_CFG_PER_ID(7)>,
 				       <&dma0 2 AT91_DMA_CFG_PER_ID(8)>;
 				dma-names = "tx", "rx";
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c0>;
+				pinctrl-1 = <&pinctrl_i2c0_gpio>;
+				sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&twi0_clk>;
@@ -174,8 +177,11 @@
 				dmas = <&dma0 2 AT91_DMA_CFG_PER_ID(9)>,
 				       <&dma0 2 AT91_DMA_CFG_PER_ID(10)>;
 				dma-names = "tx", "rx";
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c1>;
+				pinctrl-1 = <&pinctrl_i2c1_gpio>;
+				sda-gpios = <&pioC 26 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioC 27 GPIO_ACTIVE_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&twi1_clk>;
@@ -357,8 +363,11 @@
 				dmas = <&dma1 2 AT91_DMA_CFG_PER_ID(11)>,
 				       <&dma1 2 AT91_DMA_CFG_PER_ID(12)>;
 				dma-names = "tx", "rx";
-				pinctrl-names = "default";
+				pinctrl-names = "default", "gpio";
 				pinctrl-0 = <&pinctrl_i2c2>;
+				pinctrl-1 = <&pinctrl_i2c2_gpio>;
+				sda-gpios = <&pioA 18 GPIO_ACTIVE_HIGH>;
+				scl-gpios = <&pioA 19 GPIO_ACTIVE_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 				clocks = <&twi2_clk>;
@@ -639,6 +648,12 @@
 							<AT91_PIOA 30 AT91_PERIPH_A AT91_PINCTRL_NONE	/* PA30 periph A TWD0 pin, conflicts with URXD1, ISI_VSYNC */
 							 AT91_PIOA 31 AT91_PERIPH_A AT91_PINCTRL_NONE>;	/* PA31 periph A TWCK0 pin, conflicts with UTXD1, ISI_HSYNC */
 					};
+
+					pinctrl_i2c0_gpio: i2c0-gpio {
+						atmel,pins =
+							<AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
+							 AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
 				};
 
 				i2c1 {
@@ -647,6 +662,12 @@
 							<AT91_PIOC 26 AT91_PERIPH_B AT91_PINCTRL_NONE	/* PC26 periph B TWD1 pin, conflicts with SPI1_NPCS1, ISI_D11 */
 							 AT91_PIOC 27 AT91_PERIPH_B AT91_PINCTRL_NONE>;	/* PC27 periph B TWCK1 pin, conflicts with SPI1_NPCS2, ISI_D10 */
 					};
+
+					pinctrl_i2c1_gpio: i2c1-gpio {
+						atmel,pins =
+							<AT91_PIOC 26 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
+							 AT91_PIOC 27 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
 				};
 
 				i2c2 {
@@ -655,6 +676,12 @@
 							<AT91_PIOA 18 AT91_PERIPH_B AT91_PINCTRL_NONE	/* TWD2 pin, conflicts with LCDDAT18, ISI_D2 */
 							 AT91_PIOA 19 AT91_PERIPH_B AT91_PINCTRL_NONE>; /* TWCK2 pin, conflicts with LCDDAT19, ISI_D3 */
 					};
+
+					pinctrl_i2c2_gpio: i2c2-gpio {
+						atmel,pins =
+							<AT91_PIOA 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP
+							 AT91_PIOA 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;
+					};
 				};
 
 				isi {
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
