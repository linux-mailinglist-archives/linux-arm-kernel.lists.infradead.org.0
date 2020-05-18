Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2321E1D77C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6iI6Z+kLNczqYEB/k4bQU9Eyks3r4HsovIrabnBuuz4=; b=cVVkV1tUzTDC2P
	PLV3TJwxm53lum8Ni3zFzm9nE/bsIkxiUOa80D5li8pWGlrIl1QrUbTzZz/I228iN4OEubF58Gwjl
	HN+ATFdH3AtimEl5UVcbgzLQVo5Be/aLr8Bnria8D+APwAwx9FiQLKAQTD9WHK5VDDne2xIElpz9F
	VlUIguvDi82HLBQ0h2LRNcETu4dSPk9sQT0nQmf97uGTZgamYvzQKZML3de3RPn7D6bCETMpXL0SQ
	iXm49xT2qoqBE8oFuvWKT8OMCJdzKDmG1I9xNLCwCOjG0F84zrgyEE1KbtZd+sjaLYaGIKzQh0lH9
	aH9jFawU8mrbK0coS9bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeH5-0004dx-N5; Mon, 18 May 2020 11:49:39 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeGw-0004d5-BR
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589802569; x=1621338569;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JQ0NAO/GtfI7p2wQggXC6fNNXetSUF0RmF3Qo+o4/KE=;
 b=OBzXmusFrpcZufGsNoTOVdtOyHUFOaqoAr5hiSmnvAoIiXS+3y+8jews
 KGHJBT7FiI+LUt8iMPEsqMHB9Apg3bf2xajf78POQJ9mobAkfHXl55wAM
 9CL7VShbIVoVtF5x05KoVK6yXaW+sT/a+96FnkHuIGKMx7esNSYw9pb32
 nB3qZnS97sqxBciNCqCYYf90pbt+tByA/++qARqMs8jEslIdi8xcqaUC5
 zBQxF1kdju9tD3s8+bOpyFPENfWlsP76gQ2jhAHHBjVBl4JB5kwJ/kHE0
 mO6zyT+I9KIdpqqZuhAHNP2BSGBhExBhyNsoorYeV8x7Qg24DA7G2ftI8 g==;
IronPort-SDR: 7JlGoEpwLqsVTx6ahRjFajvtgBseb/xhAoifPjvkRspLLZEvC7EIGcmlcNg1uygyvSMpwDm6x1
 nI3ouhg4RrZGowmsov6ry3AgKc8ZhyGWAHOJ4oeWOgW7i43Ds3V2XNHKrYUQiD7fJj+VgvMEeQ
 BYZ1Yod0U/gRQXvE2sZHo5CCTZxoSzpjn3hY6YsBrJNaTDeuLCIWUAYNuXtqu0yrf7qfXtcuRx
 2yf7YukXheleu94yDQQGuTTUcy32gDWwhxchvGNEDwX1tCt1gIK9Q7TspA23GZLn6ua9EgElkL
 ClA=
X-IronPort-AV: E=Sophos;i="5.73,407,1583218800"; d="scan'208";a="77017507"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 May 2020 04:49:26 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 04:49:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 18 May 2020 04:49:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnsXvnP+fAy+rbaYyglK19VYTANZsiCyQGW09tJ86Az9VxXjoaqMJxVuI5/yLoq9dBh+qjJogFI7mB/QNbm7cN9qKQqyZ40zJWhrFTUlGNXnqOnzlbGP0d4z0px4ueSm5zdCZ0oVK6WZqCJ8276tBSTrfhNxjhKOxDhi8ryWYS0QxnoVqW7gjUUWgdy6BGIpYK+E1npS7hh9XtK/TWTIE/f58nwDCC5ezPNKIb1CudrZsw74EMsa4BkMKIa9zsxPFItqf41TzZN7i+E5VfGPylGvf2Hv42qedPTU6WLn8vMWcdpo8haG/5LI7qRPFY4X6hKILsc5FUK8e5JA2Adg6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5fAA5BSfKpVFTNEtwZa8SkJDizMP/Hcb7mhzrYAlR4=;
 b=CwgyP1Sx+SQZs7mehhGQM1fEMuyGDcrtzkUmS36QFJif5K5saa7jaI4g1/2BF2PUZx6xgKEDwmlPdAi7waSmre6fKMdq9pGC6mHBDHQveEizNil+dclcWPzZT5w86ahqid702btpWmqpEtMQr53f6BCrehUceCTqc5oOCioaKvNZCkZRelpYXuHDcnx77Bwt4tYKuZLc3AEUSPfLMKB3vcI3dfyQ2C4fqbbHOigEJm/Oid+a6P85Kn3mjlpYu1R4WCmCecQ56f+7FLo5uk+0LPUjkftA6Iuvd9dFIjprlbxjNFghLTEhYAJ94EV7I676zd4kABIy/lYt5twrKOijlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5fAA5BSfKpVFTNEtwZa8SkJDizMP/Hcb7mhzrYAlR4=;
 b=najrLRyRjNrpd00la07YiGY7ksgOavr0u4q7c0FZzFBj9ofbn/mCgKQ+0LNgNja6ezsQHB/nuvLad1F5ojHGttnzgEknL2CXEXxoZyQI2mATZSOZUfyFUBGCJ7ILOSGjrw+Ac9mjfBHErCzyExgiW2G9FAGeMvPKIKmMEvzmSkk=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4102.namprd11.prod.outlook.com (2603:10b6:a03:181::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 11:49:22 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.034; Mon, 18 May 2020
 11:49:22 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <Ludovic.Desroches@microchip.com>
Subject: [PATCH] ARM: dts: at91: sama5d2_xplained: Add aliases for the
 dedicated I2C IPs
Thread-Topic: [PATCH] ARM: dts: at91: sama5d2_xplained: Add aliases for the
 dedicated I2C IPs
Thread-Index: AQHWLQpeiYvdwjy7WESHl6IsEN1h9A==
Date: Mon, 18 May 2020 11:49:21 +0000
Message-ID: <20200518114802.253660-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69d04bd6-dcbf-40c1-bb4b-08d7fb218179
x-ms-traffictypediagnostic: BY5PR11MB4102:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4102755933BC4A3CED5AE708F0B80@BY5PR11MB4102.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xhFuCK5DNNnSgel839jOz8GynoM7CBwIol4oYkf2pcvN7ASNZ9O6VBlTswV2+4QNW3naT+LuqO7550o3sN8usdD+84E3hwyVilsUmAKlgufxVJIgXaKwo6pfuDBJdqv4UhwOMX9ZAgfDJeHxHtbHr2g9IIjDe2f/WKLTOyMJsG/GLwaxshKFML8bFfaKADxwE3Nh7P79+8PzyDYmfzDJXQ+uZh0eETR+PNFn937J4H9xCIufytTMPV4ukwrQmf2iHUT/vPPkDiedAxL/N/mPjik77UAePQWeWT/TRPBQjcFohyOtCelNMDh90obPhN+4QSAo/Yg/E35fsK6fRUPILDk2KKz2CO42P5v1HCzU4g87a8n8HD2EhIuGOW90JQWT7+1+coo2p4IxBFUh5L48n/6IyRPvgkVtvc48rgHDUp0Oa7QEu97YI4bOIB3S9zt5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(366004)(346002)(396003)(376002)(8676002)(6506007)(4326008)(2906002)(6512007)(6636002)(107886003)(6486002)(36756003)(71200400001)(8936002)(2616005)(26005)(5660300002)(110136005)(66556008)(66446008)(86362001)(64756008)(1076003)(66476007)(91956017)(66946007)(54906003)(76116006)(186003)(4744005)(316002)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 2PGXPQluRbAz2OegNuRm/BIFTynAREp/XT7VvEBVPnrPukxvpGbxP7+hSvrwkR6nBV0RgfsBTV9WRVOXdHfKBSeAE9FQeXaudaC7bynCrlhLZlc0/fCCFFZFl6n2k5PRBUhEdepliWtUINFNJtTaXvQZcZyUgui6soTxjeI/2K+93HNJ5S0O8VWATjylPrDCKa/oCIvKXuW8cginBTjkAx4AS6DIxPpz2VYIymiZg4YQeohc+7NiuKX/37bhgE2gjBQxJuSaGYkHlX8Z8TevdTyDz82FUN0of/4i5KkXdzbPpoaAbyZl1JJhEx3TEh/tSn0JosVZs6U0j6R78evlPuLBQfEKEEULIUDNoJbbRYc4DzLEesusRK7168NX59hpAYTzSJcAPH/xL+d99mi+oZYAvolDoNa+8KYcxyE7G4Hv2UMYGUQ0eFeRkO13VjuAsD69rUJby93AOLzIW3Iu85YAmmqttL7eW+ez5NG3kmA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 69d04bd6-dcbf-40c1-bb4b-08d7fb218179
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 11:49:22.0226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cs27xMgAQvBTh+kcDlps1CdjMtP9rv7JXnrh7+AmwuyIwFjW1K8o3nQQAmCU/7L0svEe0wFfuhH/05bB45EybSvS9+wC1IlRIYr8c0L9UFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_044930_464964_2C46663B 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The sama5d2 SoC has two dedicated I2C IPs that are enabled on
sama5d2_xplained. Add alias for the i2c devices to not rely on
probe order for the i2c device numbering.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index 851b8587068b..a927165ea7c2 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -18,6 +18,8 @@
 
 	aliases {
 		serial0 = &uart1;	/* DBGU */
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
 		i2c2 = &i2c2;		/* XPRO EXT2 */
 	};
 
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
