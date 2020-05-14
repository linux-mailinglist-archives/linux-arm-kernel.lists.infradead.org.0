Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CEA1D267A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 07:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGZ03ryiK1jMXbueJu67m8mcq2vZCFm/yyn7o5zztaQ=; b=sTXNm8Z01c+d3c
	XWwYMcv92Gik+/0ZLQwiuJGaSYJliF0bnmB9FzRbI9V0aDJ2hualUgsumMDfgxZzjeTFWzMJmwifF
	Z8rR129DEdi+H8vSaxMZf7lZ/zd9DpJwS6TKNx1faNyHm+RF0xmPEe6aHK7b50UeR6rDddc54ecYc
	Cn8A3tEO0nR5sWxGVG9mPOoWjuoziKYRXciE3BJFGtN1noogllNBduL4RqCBqyQ9v4tqW3JxZILrJ
	/PFgQLqHfDqabCi9DX5mT0p+uA7m7z25dWFVmZCvlm4JLKpKSUHxkIvJZN/DnJ4UW2WzYuARfo+wH
	4Q93BoY5CHItZ4H3t1KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ66R-0008HQ-4f; Thu, 14 May 2020 05:08:15 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ61f-0001o0-O9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 05:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589432599; x=1620968599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+YVMvm9pRYREiIzIQWVBMuBAx7EqbPvCLveGl6UB6Ok=;
 b=GaRBgbL0sqStNkaewE5vTTnx+KenScr24Zndht3HHairEXLI3k4pN0/C
 ju9ka18Jnq0WADMRV12Slb2ZQ4XE+GVbCphMex8b5KKxJTrn3taDXVioh
 sjoe4dWVW/jb7RDlrpwHWA5i47IEmcuZg8Dyzknj6U/f/Oyg53ud1qCod
 14MdeI0WEqTaALYeGZhr2KN7gXe/xkL+HA55Pl4Mr6A2eqVfwxPaC+c3w
 +mio4Az15/9Vd34CeJgvRB5LDH0t9ve/vOCKumL1R/xYayVsPBuX2ddLN
 jdwCdLu50IbxaFvIs5OzKdpSdR0vY3lMmTaKyrtZaGj1Fg3YUN/a9Xi1C A==;
IronPort-SDR: D/5IThzsK4Rd0y8X9emAdEUl/SFGt/2CJL4Whk3F+tbu/4jSr7pvnbkThKo4oZNYDz7vUazAEJ
 4MidPV8fA4FvEpE1szQaCM2GaY8PAOZT2x7ZjZtPmn1MFIA4RK/s9wW4x8xa/nnE9kCyK6TtuP
 WSsP8an9j/TGY8BO6mkZaJ1MLCL2vFbyCe/i8Y/gCgpwNKq/gshx9DB1yiJFPT6mZ8t6C68ZPs
 n/WoCrrdf1og97jDIJcrgoBvhoIjMYK7b97W6bIZ/4gaBsxzniPgzifn/Ob8U9csTHivaCjuBC
 nYM=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="79551121"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 22:03:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 22:03:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 13 May 2020 22:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZERY6ryP5KsGnZmmfFi4FqPZmiB7RzjqmC/yknOGnHMtoEcxCn4POS57IEEJoncxqOig+9+jQOl86Wb6nWecYjIiJhPD9Jhvo43EUkUe0bw6TPd7xh8krAPe0pfL81LP8uJHBGwJIZngRRdJBCIQCYSfb2+CXakohpKGRSRdj0Xeh5lRv0jR5xs5fukMZ4wbeFrdv+s+Xqt2br9Os0DBRJ2q9Jb8EtAveRmIj9LQRAICjPOQTAGZvTDodHTrBpytZU4bgKuXPh/UaVPsJCIPX9pds/ifKj5FIRnC+cj7IOLOLOLFXDPqQxG0u2cjMgboquxK4S1nfKKEs1n2hP04kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OC+EAvpAO+0aQRN7D/Yvy10ctQQHTaEK9Z1GkajQiEE=;
 b=XOWsj1rk7Ow2wCjIXzbzl9jDkkQdXndsh1E4pwAQiSgU5e2ZD30Zf0jjRw4gtR49p0W70pZDzi8r44HUch9bVPxja0sLjcyjUdwPHyJDXcA/JjZwRfhRmmyBkVFmREbMBNZqCENaMdynTviVASoNi58+b63Z+0RB2Om7hgTY3qwBZ6Um+4EfqBjWEF2r+Q2zAykbMTWpGRqwJvIHXkVVgA+uvaZ7gaoo6qI2lDQfc6NMR6D1P5UlNnXR2m0FyOSnRdIO7BrhDbzx7I2N4yD12ix1RsNC2wOpdvDPZgY/KjgrB3tTefX2/U7fCrpfgaZ9hs5h1klMtz6/y2D9AnO2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OC+EAvpAO+0aQRN7D/Yvy10ctQQHTaEK9Z1GkajQiEE=;
 b=o6c5jBRbSxPsZ8u9BT6H+kypNXGj2vvqOgSuzvsAM+OZXxPw04uyqZjptEAp4+TNN8AWlBdoBq2ZsR7DVqVStiFvYlSzGHHsuyjFayJPYqGH5QgsHyoE8t1HVqPZPuMlxUZK7ea/fe+Vyj6+TWEvHo5ijzZ+YaTG1NKQqIN0Kaw=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4483.namprd11.prod.outlook.com (2603:10b6:a03:1bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Thu, 14 May
 2020 05:03:16 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3000.022; Thu, 14 May 2020
 05:03:16 +0000
From: <Tudor.Ambarus@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <Nicolas.Ferre@microchip.com>
Subject: [PATCH 14/16] ARM: dts: at91: sama5d2_xplained: Add alias for DBGU
Thread-Topic: [PATCH 14/16] ARM: dts: at91: sama5d2_xplained: Add alias for
 DBGU
Thread-Index: AQHWKaz6EKQYTGVqKUifmquBLv69cw==
Date: Thu, 14 May 2020 05:03:16 +0000
Message-ID: <20200514050301.147442-15-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: c8793658-1b2d-459d-4a3d-08d7f7c41cf5
x-ms-traffictypediagnostic: BY5PR11MB4483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB448320A51FD6A75A418D0DF2F0BC0@BY5PR11MB4483.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 040359335D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rmQHOyHsW84DtwSyQr+ArfOLOQxODdxL0Ybp+AxqKhEbj4OnUOodN2cW5aBuiw/uMtghx+2Mst983eN5ROnyMUiufV4t3nS2BAQAeBqyYtpPbws7O0mpjBmQktZncDTYWKZfl3MstM7vYYl3co2j2sPe9IFzf+B6qUl9nKtUoF7fYJN+RpiRXkzgaLPYaJNUbzYBuvTpLybL0KBDjTqyVE+tcsaWEH1zuol/pO9E+9TODpsMMMRGnMzRdQhKibrtSM162842U8D+QSy3Fz/CCBDZmMAaJRGKGNl+DN3oKOpRtJCLLKZUHCPmpzj+L883LmyzcHQa5vwD0PNSrWhWjuoqSUoisPENrKeAihAyUy0CxxLt2Lty0CsXxO9HrhHBi/XJ38H8Cu2XCAFCyPWTlY1FYj9DmLe3ia6D6BggOdEni496vMe+DJ/Qh2Bw/ibN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(346002)(396003)(136003)(39860400002)(6506007)(76116006)(6486002)(26005)(66446008)(8676002)(6512007)(86362001)(66946007)(2616005)(64756008)(8936002)(478600001)(66476007)(66556008)(186003)(1076003)(4326008)(2906002)(4744005)(71200400001)(6636002)(54906003)(316002)(107886003)(5660300002)(36756003)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4HEXe7xZws3I8BXXbI/77zLoJkR/KXjB3E/Yx1U9/HgFPXT4I/96U0Ksx9JrS6RdRzdVsvHQMSeu3/nA+JAvH4q3D1zXXlxLkf9soYS02jEHKz9bZ43LhGgLxdFh7mv83sr49Z6TSTAscowlS+9qAzewT5ENtUjz1nhBTMedHLikgFuscZsucqtyPHEUJy2qlwmiIoapUEcfqUrPqDOI1IbgMIOlzmmi/U8dKAwsQMb4sgUKFUcvAbVMrLSLkAlmV+M5i5FaHOLdYqzRKP9wTDowErN63NcmJMPpWfI93fqhYdc4v1e11afXNIvgqqW1vDEDJpnGQZneFidxD6vZLKPZ89Aj00eaGDRXwhKFa2nIAlbFCH21wRw0L4jiXrjNz7VLGsAPp3LQ2LUH4d8tETPrzA81qwDf6tdbsLeuvIaNlUSCFNQROqVBqj0MBI5zEE5lmZ/PshnF1Q3hbJxw7mj09KARighGU9xf76aM2G42XMCvxYWxT6qlun920lh+
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c8793658-1b2d-459d-4a3d-08d7f7c41cf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2020 05:03:16.6413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gzfDLuBoIW03uF9qOc7f3yRSWBRkm1xPqjbrVMI7YBzaD68/HB9JnN1wvtoQXPnKZNdhUuEwWQOSNe/CfWKM6BCwoNzGxO0XOR38T1OKUd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4483
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_220319_859781_8E9685F9 
X-CRM114-Status: GOOD (  10.15  )
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

The aliases should be defined in the board dts rather than in the
SoC dtsi. Don't rely on the aliases defined in the SoC dtsi and define
the alias for the Serial DBGU in the board dts file. sama5d2 boards use
the "serial0" alias for the Serial DBGU, do the same for sama5d2_xplained.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index da4442715ea5..01ffbddd4ab8 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -16,6 +16,10 @@
 	model = "Atmel SAMA5D2 Xplained";
 	compatible = "atmel,sama5d2-xplained", "atmel,sama5d2", "atmel,sama5";
 
+	aliases {
+		serial0 = &uart1;	/* DBGU */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
