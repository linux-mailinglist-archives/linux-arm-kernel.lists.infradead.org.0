Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03D97C17E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+m17UAUuyVdZiMe6XSMZ6iBxgb49FSCWAnGl6g5O+kA=; b=H04c1WnH0vgyIj
	c/bsafCr/G+4IQ3v7zqoVqMspjiODHWg2/n0nB0g5oHHp0Gk/yEaBWKDCkN0Ck3u0dbOGQcCAGqNS
	n1WUE8aoQTQ4inDY/IzyYexz4GLbx1eQcarcm3enx28FI6VW2/6KGDgDxt6AdpMMnY/uplW64dGy8
	pUl94yLLSaqOQL8LIxHHcJEl4CEY/3dS1iEd2H10YvvXDaO246MSV+J0tcNcu1wtypa7sKrO4CwUx
	ZykXj1C7FyPpP5+W98kxSKsrKI+7+VQfzOakfgxbwTxIAO1Hn19PXntWWTW5elYW9bQysGbe6A0qq
	rtz5lyDDThPvSGqLIlTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnsL-0006Bq-Oh; Wed, 31 Jul 2019 12:38:37 +0000
Received: from mail-eopbgr30120.outbound.protection.outlook.com
 ([40.107.3.120] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnrr-0005tZ-OP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfmOnnvl6oONxi3TZXiyOarPFLpTKAPlzAXLgn3jWwQMT2MomVpmpovrR7cXdMa9KAAUkt9tTHsVs/XPOvRKLbIC9PmjuHsPYkGKi6TO4TFh8SMcGjO2N6PiXnut4NE0E5cLizrc273k620LcSxSbtXsmKznNN1HTP0dbXb1gja320Yn3P25DVocALjVvX7BdrQLOBf6FJdviHPjnCDiKaXa9fzAI3MhOBNRezYOz0SItCpltykiK9DzelqraJNyS+wpo4cQfUnJdK3gab0pZ6p5CLM8mKaQwfyCNVVInfHM+pvGXv8BdIRN6IO4PugFmB9qmjWmYERIO+9TitHe7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KvTSlKwlyM3A4JjJZOWeFx3QtVyJcCpEY4tgRXDZoNo=;
 b=BM+rmO6wjVyhQxpyxRz805DBQKhHIxmr8YDdASfp+x+f8RdflX7WAjEVZJkSWjWlivLqCfdkXEuMf2XZZPjL5B5V9udTvEDHmND3DGbsK0qGEd8HqzkIImGWU3ThNBoc5SGLZOfBF2NcJvH0GqItrbEX+pOjL+TKFxh7tvmfaNll9fjHgrttqWuTQ/FmKcIAQwLlTilmHtYQF86xp2cMh+llv3qSqnn0XIyMPnxRY84JNfOjvZMwTf0fmkBgltMwNuES1V+kevoAui4nJDO2DdAlu+v4Ml8jtNuiOuFeTH2F0E/NUHcv3EeLN6oqChpurHwCvuKZVdEH6btWfjw+2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KvTSlKwlyM3A4JjJZOWeFx3QtVyJcCpEY4tgRXDZoNo=;
 b=ikmpWOvpZzpxrZXQD6Lu7+ezK0OEQsfXEoZVSOBUV6p/JWe4+rMtKbBYID+CVOROsyk14V5XDvbG7otyX1fuK+XbohwmMc3kAxfm8FLjJQp8j6Zd12aDuEftrMNJiZsqlG8dBwziINnhFBJnONftRgVVz2Se0kT3niOBZhVo+ms=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2944.eurprd05.prod.outlook.com (10.175.25.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Wed, 31 Jul 2019 12:38:03 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:03 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 02/20] ARM: dts: imx7-colibri: disable HS400
Thread-Topic: [PATCH v2 02/20] ARM: dts: imx7-colibri: disable HS400
Thread-Index: AQHVR5zLnUdQa6E7rUWjJNiDWooPFA==
Date: Wed, 31 Jul 2019 12:38:03 +0000
Message-ID: <20190731123750.25670-3-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 394ca94e-46c1-431a-7b5c-08d715b3edf3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2944; 
x-ms-traffictypediagnostic: VI1PR0502MB2944:
x-microsoft-antispam-prvs: <VI1PR0502MB2944803C3BE746E7F3EB0CCBF4DF0@VI1PR0502MB2944.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(346002)(39850400004)(396003)(366004)(189003)(199004)(66066001)(305945005)(26005)(2906002)(81166006)(81156014)(7736002)(52116002)(1076003)(36756003)(476003)(64756008)(66446008)(186003)(66556008)(66946007)(66476007)(256004)(2501003)(14444005)(71200400001)(8676002)(86362001)(68736007)(5660300002)(71190400001)(8936002)(4744005)(76176011)(478600001)(54906003)(110136005)(14454004)(6486002)(2201001)(6436002)(3846002)(99286004)(6116002)(446003)(11346002)(6512007)(2616005)(7416002)(386003)(486006)(102836004)(44832011)(6506007)(316002)(25786009)(53936002)(50226002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2944;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UdWY6FxhYQwHh0Ol4NTTCPFrlOdfokbrNMZWAVxuH8g57YNGpYlH4XYAPWwSrU/MneF5uf9l9KzlHh7QDafBAQLzpV+4Y3U8XOQ6kkDT0Sa12SiiKu/V8BznJ3AGOoS414n5VZ8i5EQltv7r+Wcninnk9vHq7kUgn7I1ZO/qkNM8MqxdcpVHnZD9RWYC/jILkFHAYLx1La0NOt/nFN4JxEn6dOxXMjjjYi7jgttZIwCIdUmFMkoq2wtPuMxxQf+OLrEIoucs0XllpgzM18aSbWwm2kjR24Ftpec0KrT0mVlPp11ZJqzMs2jJKPKRUd5kERBbJQMNP0ZlMskYuQI/4jUD2AtZNpmU6v3r8QFeaYNHZhq7aFx4Lpscda8EdmqU1Sb5wlLIWvYSA5PtSlH3+vvONRmflzDmg+2OprlnpNk=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 394ca94e-46c1-431a-7b5c-08d715b3edf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:03.3689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053807_793584_5E06C386 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Agner <stefan.agner@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

Force HS200 by masking bit 63 of the SDHCI capability register.
The i.MX ESDHC driver uses SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400. With
that the stack checks bit 63 to descide whether HS400 is available.
Using sdhci-caps-mask allows to mask bit 63. The stack then selects
HS200 as operating mode.

This prevents rare communication errors with minimal effect on
performance:
	sdhci-esdhc-imx 30b60000.usdhc: warning! HS400 strobe DLL
		status REF not lock!

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index f1c1971f2160..f7c9ce5bed47 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -325,6 +325,7 @@
 	vmmc-supply = <&reg_module_3v3>;
 	vqmmc-supply = <&reg_DCDC3>;
 	non-removable;
+	sdhci-caps-mask = <0x80000000 0x0>;
 };
 
 &iomuxc {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
