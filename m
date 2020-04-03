Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90FE19D013
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSaZtdlIiCx/uCvwBGaUcSIEY+lrqlYtsIKihSAM5II=; b=lHWpzIL8BFrZDG
	jHvTWSKJ01U82M1fKfMUaCH6a/LO4nnvgGlCnXIBlrv7eoU9wU63EuLb1x0Bt7xgAYX2lxtgjhNtx
	9+FyV9hp/KPO6h8UqHK6ENG0c9O0eFInGs3SRBt2Fh6jV4Cg9Qona1q6NhZWPSP0f6CWVzc/C9fVF
	5Uzwzyq8QkUJahtSLoo0CbA/b+X1CppbbF5fH74LD6T5gL8repPytgz8BsgIUNWqSMayAvfHYyyTt
	X35kdVFxvoX8XwGmBTWr0bNCdU3/KCcVRCDdhvaV6/kmuvbYAKMDG+eoUCyhfuYO03dTLJwemRyY6
	4kaSNRdm6A7Ns6tbMYBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFZY-0007E7-FH; Fri, 03 Apr 2020 06:12:56 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFZ8-00075I-Cu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585894350; x=1617430350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Emo7d3R+B23zlGMnmJ2rQj1NNS1k6VBlsbRb2My/sVg=;
 b=bCP1cCzcbNXhIcT2Cqz3RDpMpfzzPxVk0zTHxOaM+qlHtkah270qyfWX
 8OGoWhCdeM5zK1nlKr2R3rpQEWZa+aifgyEbia1sm9GHIabt5c2l07nha
 wfEecyd5qIquPI9trUr7X+aGELsudl51fJGVUJjHMe0luMxwNpQ8NsfpZ
 p9AiBMcACqG5A9UrH23MxwJ40KiysmxuJy7nYo++uUoeyBZx90qtMrOTL
 QxBsOjJn6pJ7SCeRbtv41BkWS4ATKM4E0HBoS+h8DRdks2GaV/WlataW3
 bejkv/NTC/Koci4Qp7OvYFfLdtGdK+5+d91xc6tkKTLC6YgT3tfTM11p8 Q==;
IronPort-SDR: Ush4M6ZyxWi66O65gViPaVpRjWKSc5Cr66FkXnWZOm8F4Lzuoo/+gcAp72o1juk7NY2QxeRHm2
 iP5CmKsykUHxLtFVyrzy8rwe4V0b1lKUfFAfkVTuAiujYlJLIBylCOmnjbd8q+yX0pATV7O8FM
 nbM+M3QLA29ik2g3AG+RAvEScChoIm+z4psXj37aFrDQAniv5SrVDjqyx9DVe8Fbwv3dL9QKET
 6lFccoXRvEdBuq8yy5b+C83jSpsEt1uhFIDdvcrMgbvlGpl7lY3VDvQIIIasmT55wEppDVLFmS
 7kU=
X-IronPort-AV: E=Sophos;i="5.72,338,1580799600"; 
   d="scan'208";a="7987663"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 23:12:27 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 23:12:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 2 Apr 2020 23:12:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aelqPAGBlIP81p/YypccWaDN6fYsc1KbDoq0SQJLez+3eMnhN1xjovOUf5bMYKlqwNtCm+pMyo4z7ekrAbpFjynoOMgCUJQsY8yPpnFgCh6psYrTN4m9M5qvZqUbM2PzB4cp6583QbiLlB1vUqyKIbVjeGvcy/DQ03lu8KtVFr01XBX0+V3RFChFXDZCtU/AsTfAsNIB1IhZVHaLgihMxw8JsGiwVIOp+OMbwEjKPFsHLz2RPzD1InRWxHTCQ1WOtL+dsG6AkWIBfbFmdu1As0iqC5+eFIrpY0n9IyqYcK39Y9TR42Xkoh+vGbCqJqQqKLAEuLNypQ/rxBE3atmdhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+N/nWCZ/diO5VV8ulMbFXrfdrQR6tqIC0S7lnKimPUY=;
 b=Foog/yNLqBT93mXHxWgPdbJm4hl/GQhrawXq47LnixzZxmfN8VFUgYdCj5Imoe7fxEsvZZ6noPN7+bH5G2Me6o6G2+KE1Vc2wUcsP2F/AOabNkA2YFBcSyQxS3D08ccZwEF7qPA/0rlFU7fU/GP6l7WlJilPTfps/o10UB+3EeI3K143/BukMKNLotSsYqWJPlsjhjkGBuLbu5U/Tdj6+Moeoe/E9VFjmksjcer2QHhlW4ob8wYJb14wjvCMYKTuwn8lddy85KUK+6ie6AoS8EXy4OzUJOfqMyr+0uCoOvWv3iIsIWDn/rhM99/hZCHA8isHPu1rgICx7geWolua5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+N/nWCZ/diO5VV8ulMbFXrfdrQR6tqIC0S7lnKimPUY=;
 b=W6LOYfitTJ94QRPv1F6EHdeS4+IwnnqSOUWrY9Ac4roLQgoqB2QE2z/fEuvKQxp5snf57QeX23K+361JImkkqXVukkaL9/NKWDvAkn2u9h2eV9GTG9TJteOkebQk7fYeMCvmS/n1P4qTgJcQsfxWeCErG2jc3cyDZpXednR7Irw=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4183.namprd11.prod.outlook.com (2603:10b6:a03:18e::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Fri, 3 Apr
 2020 06:12:25 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692%3]) with mapi id 15.20.2856.019; Fri, 3 Apr 2020
 06:12:25 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH 2/5] ARM: dts: at91: sama5d27_som1: Add SPI NOR flash mapping
Thread-Topic: [PATCH 2/5] ARM: dts: at91: sama5d27_som1: Add SPI NOR flash
 mapping
Thread-Index: AQHWCX7YjlRGoQ8Ew0moTICne6FpUg==
Date: Fri, 3 Apr 2020 06:12:25 +0000
Message-ID: <20200403061222.1277147-2-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 285f12c6-4457-48a9-e715-08d7d795fafd
x-ms-traffictypediagnostic: BY5PR11MB4183:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB418353D74D3D1CF4EC1F3BFBF0C70@BY5PR11MB4183.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:983;
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
x-microsoft-antispam-message-info: yjWVzsEl8WsouGGMcVUMQ2n1z15wLqLbMGW/FUejieiNdkJ6DeW0wdHqLVx5xRpUtxLuOcR+PowpaqA5hYHO4ZSMOBV2qedqLg0xJI0dQetpR6nTQ6rjM6LheTCfkd7N3xM6ufteEugnrVLFYfxjQIbyXr2icQi3fwnW2JoKnOGXntFZM+bOXU6RkWbRFIArEMuSQ9XOCxEPXOdowIzRzTgcWAehiTFyuLTv87Ih15ScODHnRBZtBqJwEu8KCjWeUnwweIt0CxS5xoXYFEqxFQfQpVxP/wckK8KCs0Wg9SLTlDXvURrohj+2aG6rNQH5ItcPZHC76QPCydwfKd5Exb2GC61wWKjVlYri3M/HWYOCOlAb08Kla9ycdZUTdkoa3VUvU+ASa4KkOzxoWPvVmCBZ1YuRrZX/rQ5ZLsamIODVk0MSpCgp66yh8x6SbJ9W
x-ms-exchange-antispam-messagedata: Kq+R7hROOaOtRKeLCKFhojRuQnzEZstMT0gQRr04BNORugekrzU07oUJ69yLbaPF/8WLuSX5t2JH6esMOCSG761m7BJNRHtBIQgw/G80pvjiZPIhjKRf2tENumKMGMDYri3pnGQU1e4nkuuWBegv/Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 285f12c6-4457-48a9-e715-08d7d795fafd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 06:12:25.2280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3zfRKP6UAn2s5nlZrNYzoUIWpqkd3Ld0+T4jzaJj1uYJsF9yrdn1Vp8yMhSzwt3wMBtzu53PQoBj+OA5seXZoo1n5UQtBZiFGyXRtNdK98A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_231230_550803_2C1991BA 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
 Tudor.Ambarus@microchip.com, robh+dt@kernel.org, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Add SoM1 flash mapping, identical with the other SPI NOR flash
mappings found on the other at91 boards.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
index 6281590150c8..919000f467e6 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
@@ -34,12 +34,44 @@
 				pinctrl-0 = <&pinctrl_qspi1_default>;
 
 				flash@0 {
+					#address-cells = <1>;
+					#size-cells = <1>;
 					compatible = "jedec,spi-nor";
 					reg = <0>;
 					spi-max-frequency = <80000000>;
 					spi-tx-bus-width = <4>;
 					spi-rx-bus-width = <4>;
 					m25p,fast-read;
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
 				};
 			};
 
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
