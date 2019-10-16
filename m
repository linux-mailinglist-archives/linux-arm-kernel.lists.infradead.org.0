Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ECED9826
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTHvGF7V8wj/k2zXPa1da33uRQhhuNbaNDIU0/cgVNI=; b=no47vNSsnJyeLA
	4cI5Bgi1wGUHHc7eeYk2N1P+TQsnKSFZwACL/BJhdqFQy3xbcToy1rXV5VwoP98/TYUt6Y4n6DWQn
	R2PIK0QoNDC8LJkEjXLa8VM7gYIT+y1GLcHzpheKlqSmjmSHJ5NtYxH4gcI0niqq55v91i0v1gp27
	eukoZF52/6NNVlrdkyIoTOm7OkXgppu3kwYT0lBDSZjb9iljwyWlczv3f3cDEXpq+ZqMUrzwNamCY
	uVeV+CImO8GCbctay8FniiS0BhVWW6WAuSHm6lTCo1OZmTc0a6NJCBysj13SPBcDmdCI+eIc8+5uZ
	ZTFo9h/sqBhqCVfF6zrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmib-0001vP-QI; Wed, 16 Oct 2019 17:04:13 +0000
Received: from mail-eopbgr50116.outbound.protection.outlook.com
 ([40.107.5.116] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmiE-0001mC-As
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:03:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FexwnGOOg4vxGu8pr6OYDizcvSci5iCLPSYDJVBu0Dv/LRDdvayM2mvOsqYxrbVu/a5JCLEg6vghSf2mcVG8TGN7wSWAsiUecqlLkpFoZ3LORqmkio+iQau7l6sA3wZ3996zLXJSkJZ0EojTdXX7/xuUOLKXj4GVnk98gP36IWgY+ExZkZkYAn4UEhzhXgKfYU3kit+/saJSYv0aAQYajRVUdTJTTPq+Jt+T7VLv4/vQBjo6Rpq09Jc5wAT9dFUBTV87WkKXjxieoSihvCPTGDkz75pZXSLU4Rslvs3Ym6drBqc5dgflxCH7lgJGr8St2ZLsvTnnCGjUIgnZqTDmMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2KHzMMPenJBZsh/D/nXaN7t+dK9qPfx2E7CTPkdl2I=;
 b=Zy9IyiMiBHisjAdAkdc8g3LviRO8oZFDmdXIqLw60AsdybP22BMVbYF0i3rPSvi+wtvVfN5cJOqc70fLYMRFQPcb+GW15zqoMvNfLl60lc3nksYE5DDp703dXs0sYwBpQbutL9UpaK1V7VMRnI9GVhf438cTpjLzn9N2FZVXhUlZ2QHHZKJUZWUmU33wa7Hy5oiUHa0J46loniPAw/368W9ZgWz2hzduH3IRbupSPneYuX8XIuH7dOcbN6Jg8JZvf545NkdWvFRlHqUe5zkOxjmx9cl4mdoQEDfZtcxg1oY9K1udPc34crbgarfkHqhH32sbKXYP5ovxwsW1GIvq6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2KHzMMPenJBZsh/D/nXaN7t+dK9qPfx2E7CTPkdl2I=;
 b=XYKBTpNbKja8cc2dqoG8gWPdvcJdThT01OjrGVs1C32hgzo9R7oZPCFifwmRNWT6GeEuLqquX8Ye/fn6GcxL/jNa1qDoFyAvTq2js5PQ1APw2VEAOqYCnlw34anlN6yjWiB1Q8XqlY5uytaFmiaIHNQyWRSSS6pr81vw1wIx044=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.19.20) by
 VI1PR0502MB3039.eurprd05.prod.outlook.com (10.175.21.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Wed, 16 Oct 2019 17:03:43 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 17:03:42 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Shawn Guo
 <shawnguo@kernel.org>
Subject: [PATCH v2 2/2] arm: dts: vf-colibri: add recovery mode to i2c
Thread-Topic: [PATCH v2 2/2] arm: dts: vf-colibri: add recovery mode to i2c
Thread-Index: AQHVhEOqcqFDgpT0dESzpQCsH2B8aw==
Date: Wed, 16 Oct 2019 17:03:42 +0000
Message-ID: <20191016170332.2013-2-philippe.schenker@toradex.com>
References: <20191016170332.2013-1-philippe.schenker@toradex.com>
In-Reply-To: <20191016170332.2013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR10CA0039.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::19) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:26::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43b1c53d-bc24-4342-883e-08d7525acc6b
x-ms-traffictypediagnostic: VI1PR0502MB3039:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3039460578207F4D7C846BF9F4920@VI1PR0502MB3039.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(39850400004)(136003)(376002)(366004)(199004)(189003)(2501003)(476003)(102836004)(386003)(6506007)(26005)(7736002)(50226002)(71200400001)(4326008)(478600001)(8676002)(8936002)(186003)(2616005)(11346002)(3846002)(44832011)(446003)(66066001)(99286004)(14454004)(6116002)(305945005)(4744005)(86362001)(486006)(2906002)(71190400001)(110136005)(54906003)(316002)(6436002)(66476007)(5660300002)(256004)(6512007)(14444005)(6486002)(76176011)(81156014)(81166006)(36756003)(66446008)(66556008)(64756008)(52116002)(66946007)(25786009)(1076003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3039;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q5EC/+ZlYm/tdK27NDPBpcxYlVlBZ/XWlAGnsiw9Z+qmNkhk8LpN3GGqbuNrWKFVa+mUl55T3RNOP6uBtAjFmbjfk6tfoKgHowTZ5F7ig0+f3mS/YfNce/Neih7e9i8pydVKQq0OUXbIuiZ8uCsm8bPh45VBQa1JAap1qOH6hFtu8QFEXDUUbwBLomWYzDOJW+bjtSqO9RKXYAps+gosmFMsOtwN3o9GLKak6tlHleMnC6nNTrdIOdDCyzRQPtA6SVcd+78ziQzHZBXqUHPnAVrrge1N8XKxCmwuuVQiSrc7CJtdgn1ODOY37OZTfH5L/QSSC+G9FodYeXY27adrhhoKSlsJjFnrrGtbztiu7UAha1AwYaskQOFsw6oB+QstJtYYqSAB6mec/yyDXOIY/cFDaIOO0Ixhh9G/6QO83wk=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43b1c53d-bc24-4342-883e-08d7525acc6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 17:03:42.8946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dQ6/8FJO9jx3v3o2SjrxFJ67bfgRA88OA/FlaamEmcoXDDTo9OiJKP+7Yw3K44qHxJM3OimRn6uY029f9nk+Jl/K2VFOiCNw03wO3QqyCVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_100350_374698_4DAC82F8 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.116 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, Luka Pivk <luka.pivk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables the recovery mode now available.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v2:
- Added scl/sda gpios

 arch/arm/boot/dts/vf-colibri.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf-colibri.dtsi b/arch/arm/boot/dts/vf-colibri.dtsi
index b6a1eeeb2bb4..fba37b8756f7 100644
--- a/arch/arm/boot/dts/vf-colibri.dtsi
+++ b/arch/arm/boot/dts/vf-colibri.dtsi
@@ -129,8 +129,11 @@
 
 &i2c0 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c0>;
+	pinctrl-1 = <&pinctrl_i2c0_gpio>;
+	scl-gpios = <&gpio1 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio1 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 };
 
 &nfc {
@@ -308,6 +311,13 @@
 			>;
 		};
 
+		pinctrl_i2c0_gpio: i2c0gpiogrp {
+			fsl,pins = <
+				VF610_PAD_PTB14__GPIO_36		0x37ff
+				VF610_PAD_PTB15__GPIO_37		0x37ff
+			>;
+		};
+
 		pinctrl_nfc: nfcgrp {
 			fsl,pins = <
 				VF610_PAD_PTD23__NF_IO7		0x28df
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
