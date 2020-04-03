Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F365119D015
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YCUuu/Bt+VqG2BCJC5g9I02eb+iSjWnNvDV0x7pGvCM=; b=RtWCQ4GmiqfiZ2
	ya1nNyqE1/2/vH6w+cSEloVSGY7FvLbKqpXcrewoGwuy99Cckg+Ss4Ymk3rvuTxrmfX6AMAmaElbE
	XpUm0DG+LY+k2xtjjy26EVaRhveyoffmfpFnY+sqMLPOTaGi/QJz3nQ1x7gdg/c86hDyZktnlGjnP
	UUR6gmJ/QQz03CT/ZFG6UhCjULjQqb2XR4V5YeEOd72utdDXZrbY7ztOxmS1pqHs8ZFVo3NQRhAZb
	c+do6rJd8NLUUjKJIE+6QJ+cON8uQ29F5fzoBKC94vmqd2CF0YhaD/AReqWSKucGltx7l+0U2DcS6
	XC1WQJ5mLeFx7LhRX4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFa4-0007l8-Qp; Fri, 03 Apr 2020 06:13:28 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFZA-00075m-6v
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:12:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585894352; x=1617430352;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Nxf9ou59CVrUjihCB/PyPCcOUFYz+n94wClGPJdgy0Q=;
 b=Fy/yqGmel3qOBTeGV4jmENgK/buHLvtNoREP9aDRC3w336aO4E0UeylS
 Yc6t1nTOJbjcAmg1u7DKGwjqUQMOW+Fk7+O0JDX/2ybJjMSNG6gPGMjuP
 nGjF8N5yBGb0CRBfwRfbzdNCUrXn0lG+8+i93HQtHPplb5FQRYjAIIWXp
 Tw0JYbFhNavLtA3IJxI62iIZESkdYG9g6OTEN0VZ838sICaI/HEqhafEv
 EhHA/xleUYrEBOXDN4zkYDqWjuO65ZSxKOEbC5vQu9In7WCjIelga8tqV
 EmIEksmCCC1f2hAWTGSKa+vZBxfx0ZkYEa4FARlSeY+fqXQUdvm1ru0IO w==;
IronPort-SDR: HOI3pVWNoy8kZjS5jLDkjCbH5c2a4XdI/+h/qlaNckaOPEIRYxxAkyoePyPjvdqtdp8p/hGLPQ
 CG02H2x8aKleBJsbF62RPDtJbgB7fzLfAdJU1uWDMN3+SiOSo40izE6itSMP1oSk/Vp0pXeLOF
 rbsrX/AYCR5zH3wSAIcnBEQEo3sRrUVoTuhkdPEt2VG8qPcpO10kZwuEMgi2swCuRjYrBbiiCg
 Ej3w4fZX1xAAQa+N7o5fcJiXCn/DKmuL67deCC3RA59fQqfxUYYyIUACTczogrBQJJXADbQwXR
 bFg=
X-IronPort-AV: E=Sophos;i="5.72,338,1580799600"; d="scan'208";a="69286922"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 23:12:27 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 23:12:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 2 Apr 2020 23:12:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hMNiBisvRmF4HrRrypawLPxwiOai8jPbrWSoICKj7WtMQelqE67RsK4tcsZ1CrCU82kCkqT3wA9pF+jFbwkGZaOMAw5bZH6htXSj9Ds4j8j0b+cxxBYyvWRucI/9B8q3pvG8SH4sDXS/c45oY9oWuDFB7IhyB+IoAHWlGAQqdB6K+0LbJ8ezVTL4PdJndzTIqKlyZixvC6iihVtOFG2DBalOv+K+ibTqtgVUzTWjIePYeNjH9o60nCNN9Fm4qyFgriAHyCJ/e9j5M+IJ57Qwt/QhrCmLJt/qgTe7GcI6riJdNlVFlrTTDDBwvWeOXbbnwPU+FrTxjQwcSWCYBohTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kWdTC6PymwkyS1Qb5cvOVoxNnkN6b9LG1Mfkg4mvVF4=;
 b=Z23RQ3E274EZj6Dd7Z1ES739Yzj2g2SmeFGZ8GK9fNVrJeC0Y7DiENZagL/ojJwgu/bYlS3VZLQlhOlXChaxE393Ocm2m2NAcqusGx+0/XA+cK1xbewUfZXyzqqxqKDs4+S5HqOjeOcpU3W6Z5jzCJaDAJzPwRA95QB0gSPP1bS63zGDm4qDaIAX7uZDXZcxiBZjZq+ZoTV+6JcxHOGidcn+kiZqu+OfciSF6nE48l5he5/P0XKJjQ4m4PtLnmDEl3xhwswde2ylr5Z8buxr9vtpRToKflI4lFRl9eRXNZKAbM0zfdLWd7G5nE++QN505VLcqaQrPMLQFVuZNulbbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kWdTC6PymwkyS1Qb5cvOVoxNnkN6b9LG1Mfkg4mvVF4=;
 b=Vs2WYatCEMe0uddSOWl/gMtJGgNBjXmfrOFWSaVzhpoX/rdfkoHUofQUNdlU+KM8rD89X2Vzo1j7NdikILGdnUw1KWafYMeCcUGRpSo7CuOCOnZarbzbEDMyFoaqA0tsg+Ch1lRAEnkF1doMC98Vb94K9bOJnJ+dU66EW42FO3A=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4183.namprd11.prod.outlook.com (2603:10b6:a03:18e::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Fri, 3 Apr
 2020 06:12:25 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::e918:9196:b47e:9692%3]) with mapi id 15.20.2856.019; Fri, 3 Apr 2020
 06:12:24 +0000
From: <Tudor.Ambarus@microchip.com>
To: <Nicolas.Ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH 1/5] ARM: dts: at91: sam9x60ek: Use quad mode in the spi-nor
 flash
Thread-Topic: [PATCH 1/5] ARM: dts: at91: sam9x60ek: Use quad mode in the
 spi-nor flash
Thread-Index: AQHWCX7XRQickBY2QEaJIS548D2E2Q==
Date: Fri, 3 Apr 2020 06:12:24 +0000
Message-ID: <20200403061222.1277147-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Tudor.Ambarus@microchip.com; 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21ecccee-91bd-44b6-e871-08d7d795fa71
x-ms-traffictypediagnostic: BY5PR11MB4183:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4183B8B648AD0F1769D56FA8F0C70@BY5PR11MB4183.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0362BF9FDB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39860400002)(396003)(136003)(376002)(346002)(366004)(6512007)(6506007)(478600001)(2906002)(6636002)(2616005)(186003)(6486002)(71200400001)(1076003)(26005)(36756003)(316002)(66946007)(8936002)(4744005)(86362001)(54906003)(110136005)(66556008)(64756008)(66446008)(8676002)(81166006)(81156014)(4326008)(107886003)(5660300002)(91956017)(76116006)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0buRVzxXZO4yWqjvW0NJCBlZvXoF7pj+Oq5tsZFKmoVvxK1kVR+cU9afXjs55DkC5xBUWMUyZTehboOaIDGqCmHSoevBwJPvv+67WlPPmPC1m/g+T+/CPAEuKBg6eh1w8T7kPajnIlVTHUYWFZ+75/UfREikjzMqro8GIQTNd5g+odZ73JlqhU89qHdIBMQcR83ZJZp/ViPazcQT24tt5MUHksayvsJvLmeVlrSwVrho3Scwi5UlBP1Zllza9bG1n8qfuJNKG3wXwK/X0Yyf382Zq8/0OslF3tLaWM6ZdVhAOUkQh5NT+Muo0NooG4GplZDDvgiFV8mXdAEmIFfIQtHedjHEg+61heTJP9VsorvBP3A/k3+iHjp+H5/yDqKkFgvtGyOtM875pgKDPjlJovr1zYPRT5CBX1q8WdxmJp2ND6+kNnHYKY/KDVXTjsLT
x-ms-exchange-antispam-messagedata: quiwcC2uyRGgMjaeCKEFwWt54h7SGlpvtugNIVNt6l/QLI3kN5WipxgCftaKBDkTE7VlmFu8nCVYSrUmgSuNF/X/AvVLkEwTvALsz8/6WisnENfCPtGrBXdkCy3nQ+lDkB5djb+6I3VK5L/6i4kVDA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 21ecccee-91bd-44b6-e871-08d7d795fa71
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2020 06:12:24.5673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCKXyTxCz2PNsyXeXrbadgpJjgh6EsTg84ZD2BdspXbba/IdnBAtMMZDi2F1OYVP22bgk9wzxGTBdErMLiddwRw6oPu33XiQl+fd3Ab04jQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_231232_288722_52B27E1A 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Both the QSPI controller and the sst26vf064b flash support
quad mode, enable it.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index b484745bf2d4..8c3f621efc4b 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -579,6 +579,8 @@
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <80000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 		m25p,fast-read;
 
 		at91bootstrap@0 {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
