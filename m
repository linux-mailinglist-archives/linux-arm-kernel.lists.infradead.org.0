Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2BF8471A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZTNyXO3+RrrSImwfgWjLpT3VF4zVVkhmVKr4oOkcpM=; b=UrIzads2tH3PB9
	6ooILsPeaTF/eo7DtoHjjZ7dJ1zux2RQneZYHHaEYWzwWOXaDSPF3Qva3MZ9SsTpmE3anDyr0mKXj
	KBg3Q75BcykeLGs/Oqjg3q0JEUhgyZvd1+cgQhNkxJzAKDM/J0bj3DaU5jGMkjv0r1wvCGoRt+vb0
	83G/SGSySNd5PhhYZVjqGjPmwaaJZUtYzj4gpTDKnDbQyqmbiWMfJXXs+rZ77ccLZzpMJyA7Fdnk7
	NjpKrg/EwG675SBSjIMSFq+vXLuv3/6f3vtiLqqij767fJ21D/4C0yTEgXzv9J29lccoHM8pRBMBg
	lRCVpKMjT6vHyA4eEJyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHHL-0002ft-Ph; Wed, 07 Aug 2019 08:26:40 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHGu-0002et-Oe
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmRTVVHOM4y8lOYjS55HP0g6NuOjcovgDWDmSJ+4fHm0MYqHrYmT7lTDeiUQ3GVYz6Pze+XWMyKRbCd0nnJfPqEAQWxhcfcpkhM0BssYH8gnm5hvkRHhP2fRyQGHNf8ljr8VfjI/l3MkoDRJx6JoP2Kpu2Nui15FNTUrGMyvFdcDKDv/F1mz7QjtXwO+Crv41bh+tYSX1imcHul6ElD/T1Og43WV8f7v7Qbw+EuscDOKAYGpapf1KX31gmz8JkgVuIRrxGq+xKXurou0VeuX9ixxMegFdCUf/hB2TWmimeGYVclNYVhivlW3w3UGDA706wh3dyo4Dnh/u7HQJpmjyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stwqFzQirz8BhfzPyeHeCHcBpExlu3AWsGnpPUQW1eg=;
 b=Ntk0R0SmxG0Fu4qoHIEa/3pZ6JJPlgH9ehrE6fG/1CKgG7VzHVR2nsr8Uy/WeVqp+17s0qJn2I59lml8Akp5OT7qa5z/KhUpOYfDkGNz6R1KOCOyPowFTB1bzKeBZEu1GeYMRquO495m5YRDo3zHnVdLuY526kWgACe/5kH+H8amHfcbgEx+IxeUVfw1l+rDMRTQf+7Mmwq4jh2ag8b37F/y21iqRSg/xEkj/p8RsJ7I2L/WOxQjwuKdZ8k1qOBvQvYN6i4L9MtZjv8IEm/lcfCSzcIzCyyi0F9rBkgNLkzdUHh+xIi3CkoFEoUUfEbnpY3I+KIFsvH/1Q3O3Ve1mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stwqFzQirz8BhfzPyeHeCHcBpExlu3AWsGnpPUQW1eg=;
 b=efWo5HDbmlfIMxCD0Kv4rs276FPscQbupjZUqlSWSdPhpBNcW52wzH/s71tm398xNCC1YS4SOzsHTpU/CbUH5nLktzibU/OtwhFTUimD6+A82Xy3kwhnD71hXH6bG8b5ZJN3Jrh9W4BGhUERYCuZsc3x8EtJTilFLFF/xDF/64I=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:07 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:07 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 01/21] ARM: dts: imx7-colibri: make sure module supplies
 are always on
Thread-Topic: [PATCH v3 01/21] ARM: dts: imx7-colibri: make sure module
 supplies are always on
Thread-Index: AQHVTPnC62smdERzBUeVZ6bSvCT1Kg==
Date: Wed, 7 Aug 2019 08:26:07 +0000
Message-ID: <20190807082556.5013-2-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 845f5446-090c-4f29-22c7-08d71b10e530
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB36141EDE3D869D8012F7187DF4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(4744005)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ICKgSuUC2VznVToFG0GZ9O66B9rhIEYUH3NpODRbOLTo5nTzXDrRSaBcMypy2GVVPiS7GPpScnvDRQYs8zGq40QWtmEJGqZ44nreGAVj3/Hd+8MgEhMBP2NynltC+XK5pzNMSfn1dg9qcI43CutJX00l0heac7MSAm680VbLRDFYdQcbOoleGVdivSHdsJ+MAT4IBDjAwSqgDqxmM588GECtjVG6CrDOx2ylOuoYSTCPt/l7684CSEiYAUtXN+TVR1lLJG/R8hjVwScR+5YH6I8HtUAQzk/B+uj1AG67GBlEJ6eC8CYUWXwVVrtxB3e3vBR7u98+ATXCqlnhds/yQ/ydrRMVjrPPJVrhHRLKe7OyJ9ldN4bT9xp9V6VBfJxRScpoS216bXhF7dWyluip8TYxfJ7t0YZ/21RT6Z4zUmo=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 845f5446-090c-4f29-22c7-08d71b10e530
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:07.6867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bRq4H2bMUkFcGefUdxkM9HFW0fPkgN6qnnPEdFndROGUNMOM6W0q+WnNSrUB7NVZPsiv7tcqn95L4fsPqNc9jH7blidGEXB05FujN5capco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012612_959767_E93081BA 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Prevent regulators from being switched off.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 895fbde4d433..f1c1971f2160 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -54,6 +54,7 @@
 		regulator-name = "+V3.3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 
 	reg_module_3v3_avdd: regulator-module-3v3-avdd {
@@ -61,6 +62,7 @@
 		regulator-name = "+V3.3_AVDD_AUDIO";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 
 	sound {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
