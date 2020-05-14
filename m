Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783941D267D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQTGc5MtMPQzFze8o4kRtzwfLKaLNAav2jjluVxPIXw=; b=PY570+I7ev2cSs
	rsScteRD/nEYq4I3Lii4pYqDFUFB0vNHSIq6sJu3xxNTx93gZP2fTiomRBrhPGR8Ze/uM79TEN1SU
	//gWbenTcrXeiEiRBJQ3o++aO8EKzLoTgSbIm0kfiGSpyf2aL3+9OTwztBaXhhQGr/NNsw//BkEdd
	oJonR46wevgQ0lHriBaHxB6jhUgMmEu1Jk5v2YVR8csxuZTbuZYJxfJMDA0ub3RNC/qljTGTP2nzs
	iQIkwQxypoWmSu4qUYfk6OoBtbjJWzd8Frpm/Xp/yFLBFw2IOAGqnze/4dIUOvzUgKwvlJVGjxsiy
	qhgORNHEhBH0HjCXNPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ66z-0000OY-Vt; Thu, 14 May 2020 05:08:49 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61l-0001u0-3r
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432605; x=1620968605;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gNsJN16dftxhVUqZ7QfdzcXbr1yXGtf1D9kTTtLsCfc=;
 b=OP8pIp7B2dc0j8/pBDyretxtSUJTG+BLVH/m8KJhP3MM1+naGAtFoLvz
 YKRX2DwVk4/aHvhAmbWCo3AtWrjtnkvXdW8hol9RCY8JrxRWZwqJjjQBM
 fYFTLJxQrN37sHwwIV1930/CivAUKPpZhZ5xMPPQBLK5vVs4xsgC7yO+a
 /vnuiOcIxbHWCaYOnMKZp6YzacO1wBc0YT1DvfN5y4Pi5UIlwaRu2Na1B
 sqbKFFMamzvWpn19cs7h0nCpJ4Zw1FjZKGpMDYZDDumRKeAT6B2O+ojus
 5L2YBokSRPixc4pJIfFhgHz4DlY0Yz+Qvvh/2VC7kqhpSGYT1sBImaHuk w==;
IronPort-SDR: 0rOmSUjnecy1Ucukmz8yTdXuhum5mXNZPFnV3pYCYxSQHTvR7vYieHohjgbrFk578scsQWGjPu
 adm/FlG6IMgeKHW+BWpY9Eb9Z9hd+FBw79ZJkF9PBJZHnYsLw0TogA6aBWM2jpeLGv+AKsCulm
 lyB52NdBbMppOZo7h2wtWiUvT/bKJ/fRR5U0kIqPFT9xFrv1XD1CHyY3qWiwvEbs21ep8Gj1W3
 eP5ZTIWdsR90E0SoG3DTkr/gS1Ycy/R7ye0NeloDyp7cKjqL45BDaknamloamiY0sI4w8WJIdz
 JHM=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75847123"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 May 2020 22:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKNR5wWt23y0D2sbPY2hBMZLXEpWxiUICVReImUenj/ILhXChMrv+N9reebnZwDM8ZPWBUYYYSHIcpHM0OtfhSK+ZOSvIg9/A6dsMUOibtcrd870SUvGl2DUiHghB0VI6xR7JZ8n5KFg0OZyvLj7QqRkV+aJhShEyvbekqD8am/ZzNnbu2R2c5iyOZY38LKtUtwahGG1YGjvorbHHoUszAyTEGnffdAtLAFiqjY8yd71OgQek31UeSdZyeMdTCPwxX4NKl7FdRBDjtfrtyG9RRZnShMzAMOtNRwaYk0dJ+SKp6c3O6FSYBSMyI0RxvLaLfZ6Ztko1AmKubfPg9L6Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmoiyrE5RUii9XC88nPX/QJvvRzd+YwwtMBKLjtqN5k=;
 b=YubOqCsn03wgz812T6izFUFI4kuUJtx2VKLbJGOZVly8CiQHkcJI+vhoq6W/RobZ0LSuZJxJoINNrjxhHemAx9B1Bq3LwHyNW2VrZQdJR/qyvlZUKe6ubzTshNlNRxvd5gtGJ2VglEoekm/T/dWJKXQaA9sOBT33hcKd3zAptXouBBPFiyEOuSEIZUUv8ENyuraqendMQma/nXcdNiKYZkBodNihq7sOQYePDFlECIF1GKP5/tKYB5Zef6iibpFoxjo3XMzustNG8D4rc/O5MDAbugtpfC7fvlUBd1IrpLgSH7y5e79L+W167dqqsMR9exkEeDzu1ppX0VctyU96GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jmoiyrE5RUii9XC88nPX/QJvvRzd+YwwtMBKLjtqN5k=;
 b=mp2iQccuaewdVR6IOpC/j2eOA58FMv/ogdbq1s7pxtYRyfzpgvPz/YFHsIebuCoTwe4WZsqb2XrGjIKmWa31ma3Bap25sX0rfJnDbATb9YYvfRKTIuScieGuUpr4C44y8vq9XG35WZNFVcNTXo+suUs7xi2eOs/m3/oaS5/155E=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:17 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 15/16] ARM: dts: at91: sama5d2_xplained: Describe the flx0 I2C
 function
Thread-Topic: [PATCH 15/16] ARM: dts: at91: sama5d2_xplained: Describe the
 flx0 I2C function
Thread-Index: AQHWKaz63D7EDAmmS02hJMxEpz7A8Q==
Date: Thu, 14 May 2020 05:03:17 +0000
Message-ID: <20200514050301.147442-16-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 0b09c713-a33f-4c75-de8b-08d7f7c41d61
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4483089F42F5C4F04BC6674AF0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q6GCeZY/Fx6Yz/p6AU7JGMLWJMLDmZlLVCvJy8i+9nHM1O1RsT0w37nKO23EEugpYSZCONLFYDd9P5f46DdJvJbd10h4cx14b2BdG3wMbGF+F1ttH1vdTW3mvfXvCD8LTf3AN1bgVSu9/RgJ6Y5rKntaME53FVnJocEyCzlVPh+9hbReHrCUIuEVUQ1WZf5EQS2i8R4YcA5K3bl5vSz+qRYhsl9FJ6A0v24bd1TglJRhTDTamo+Nd2qZXv6y61hC+g9NB/ujlA0aiPqNsFo4TUdmHeMFURaOVtEsS0zhjDAMZWCO9Yx1cbfnG+VXlPGPuC96BMYDl3vXvFvVrHhYtQWbKCZWJ72u00AvVIYWVpnJl/mqHq4S5kAQDTXtL8LgFBG23T3NooUxJfUWvywsSybjyBo0xl7U/1sRLB1KbiGz6D1iIOuUl/IATNdeyMir
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: iaoEz5r7VobT/LSyi00C6GpQcrBw8kspoC03yQA8AifOHzpJLgrfYRSW5maAS6Ohz9NVtExiLyJ8M9TnQL5JcJWo3+tCiml2BAU4ixfn8PWdzrDwyTZ8yHpzBD1Z6G1nuGac8L5qPLK1QVPhub5PBNqWbnu/d+jo1M2nTt8fPwEmrVKgY/qNv/jQTqbtAPS0AO/FjHiHc9Okuo5s2qR1cjRsNHP3bqHKPQdfujb/ANbZBnCZriAH4iNa9Pn/zq6diWMTKsJJqQ7DOEbXe9dTBAJc3/lbu4tCPoHWr2/G1WkpInWtdRQxxAlPIsKMl4AbK7ltftUG6CjOuR70GavaBQp80r4nZuniOp7VDBxzC60IHqiI8NerJodhxlPxLIfzbS61IP/kOHfY7QMYEO7udzV1tSYoYjJnxiWxH9BN14dRNCom20yn60SqvjYNO19AgPnI2mjm/TC09daBGzl8S7I2qPzsqNX8dAOkBR5nlelSYUv2azUpYvihUQ+IoXmJ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b09c713-a33f-4c75-de8b-08d7f7c41d61
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:17.3159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Idhpysq78X1GtBbP3CNI3PHXRaF8ZVkk+gMw0AsSf1aSqy+Ht87Q6WGBGE1oTZp50ROLedWx5C5mIvtqTEsnbffuUuhLefqIvblxjCm8AAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220325_238741_D5DF4697 
X-CRM114-Status: GOOD (  10.56  )
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

Users can choose which flexcom function to use. Describe the I2C
Flexcom0 function. Add alias for the i2c2 node in order to not rely
on probe order for the i2c device numbering. The sama5d2 SoC has
two dedicated i2c buses and five flexcoms that can function as i2c.
The i2c0 and i2c1 aliases are kept for the dedicated i2c buses,
the i2c flexcom functions can be numbered in order starting from i2c2.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 01ffbddd4ab8..77e5d4f5a102 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -18,6 +18,7 @@
 
 	aliases {
 		serial0 = &uart1;	/* DBGU */
+		i2c2 = &i2c2;		/* XPRO EXT2 */
 	};
 
 	chosen {
@@ -336,6 +337,20 @@
 					pinctrl-0 = <&pinctrl_flx0_default>;
 					status = "okay";
 				};
+
+				i2c2: i2c@600 {
+					dmas = <0>, <0>;
+					pinctrl-names = "default", "gpio";
+					pinctrl-0 = <&pinctrl_flx0_default>;
+					pinctrl-1 = <&pinctrl_i2c2_gpio>;
+					sda-gpios = <&pioA PIN_PB28 GPIO_ACTIVE_HIGH>;
+					scl-gpios = <&pioA PIN_PB29 GPIO_ACTIVE_HIGH>;
+					i2c-sda-hold-time-ns = <350>;
+					i2c-analog-filter;
+					i2c-digital-filter;
+					i2c-digital-filter-width-ns = <35>;
+					status = "disabled"; /* conflict with ISC_D2 & ISC_D3 data pins */
+				};
 			};
 
 			shdwc@f8048010 {
@@ -523,6 +538,12 @@
 					bias-disable;
 				};
 
+				pinctrl_i2c2_gpio: i2c2_gpio {
+					pinmux = <PIN_PB28__GPIO>,
+						 <PIN_PB29__GPIO>;
+					bias-disable;
+				};
+
 				pinctrl_i2s0_default: i2s0_default {
 					pinmux = <PIN_PC1__I2SC0_CK>,
 						 <PIN_PC2__I2SC0_MCK>,
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
