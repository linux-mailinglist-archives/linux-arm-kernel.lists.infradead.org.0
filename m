Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BD484771
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urmPPiJng07fKz1GHvPxSSnXLUFK8SrQDMPmbj5Vl1o=; b=OQ45WLA7MPA4hM
	TdA5m7LGBjBTZSf34ilyoPIduBk3w6VMK8xFMr24D8HpHwdRue89sxT8lxA0Cda0EbXHKfAcd5y3b
	tiWntBKU9x3EX6xY0UWB0uhfTVgxvwYG1sZKlb8J/aekBtZe5WMMZSj7kd6Qv6sqmrgfoAaOSHkFf
	8ufUtDCIWl/URr/ONp8gjS32GO5ox6D+MYOuM+Gn6mvp+KTx7mmNoU5b4qHWdXjpTrCesGvHpGzWm
	kYPatYjdN6W/GT2IP8vZYhP0TkvTXOG0zP1dSSGJSxdc5NNJyif4tkpxFO7HLeU9/7c7CLN10w2wU
	88xJ6KhJsSdZ4eHGTWQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHNb-0008LI-Cu; Wed, 07 Aug 2019 08:33:07 +0000
Received: from mail-eopbgr130100.outbound.protection.outlook.com
 ([40.107.13.100] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHN-0002vu-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jS8buJnx7pAsKIyG5ugA1pTOHAcSzjR4zKgsqZah2vqT2Y7Red5yuKY2GhBvkmVHSXsnU/ram9/qgw1AM0RCdcPeJ504lLgtQhmfHbLLbPatHisJru7473ScaAlz8C3DbxEhYCUz5fI4OFz8o14pBzKady/IzXsI1DDTK9BTGVUiie/o54jxSIo2ebBMIcH2Q12lBYwXyHX380OPwbsauq4DqdkqT5XRnCO18iJp+dRuxUVXSzD7ZR3lyPOxlj/Th2tQCLiljS1tvUzf90YJm2Co+lVI/mjyMP5sr7yMef76NlhTtbI3lTzGLs1YffcK1F+k+rtd1qqTQc5jnCwgXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0K3X17obhRSAD4LGyqnpINkkfREol4HHYtGFEnAdoHo=;
 b=HXt8rW1N7aYQ650w0AVLxGLu8PJ8Uwrm1MMPvnFtytt3iSZgVZG9uETtb88B+A5pghwp3/3LcgYNqdjWji2IPEIJbolJOh6EbTCOeAuqIe7O+rMTvL3+4BLTO5IHURzESuer4OWh3WAwbVSssDiA5G32eAemFgYG8h1kGNFocdBee10EMf+3TAwFlupdZtGPra09wVFnirofKOA+05ZS0JlNPklBj4V2Ms39yufOOQ5P31h9scbApzhdwamKxMO9NZhIj79twJOCdgRmPG+szaDRlp6xhVoujnzO4LJbcAAZYGYYDcp36yk71PoH062pm1AvXiPSw4hWZXPs342UDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0K3X17obhRSAD4LGyqnpINkkfREol4HHYtGFEnAdoHo=;
 b=PVZHNled7N4AQmsjPSt5oAMIfB1UwcsUmcwUJFzBtMyX/UxSRwkweNI1Ad+G/Gu65KkZ1IQQF8yMYqDkJNRxKdkKsoZZ9R9qhVLcW9fRnRj0PWilr7fhPAnZAvHlZ9qzMFjO6NRVmE+TF5fO8K29QhonukAsUiouwzPbPC5zaO8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:38 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:38 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 16/21] ARM: dts: imx6ull-colibri: Add watchdog
Thread-Topic: [PATCH v3 16/21] ARM: dts: imx6ull-colibri: Add watchdog
Thread-Index: AQHVTPnVE8xtMjRGZ0aIz8jrggbNSQ==
Date: Wed, 7 Aug 2019 08:26:38 +0000
Message-ID: <20190807082556.5013-17-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 5ed0d4fe-eec2-49d2-63bb-08d71b10f75b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB3614B10B4CD7051DFF4AF62DF4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(4744005)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P2kJw4ODRXqrOwiLM5qxlzp/+GHPy/GBRsAv8wdiaA8IgjV/6vcaCBN/fPeQd2X1T/i0RZAuJOef+6ivg4fvjON9yEkmgtq5gm2k6RSs5tWExA5K6fpw3VO81GAX+e2CwYF5C5xH3r4P0DNkwvAS3QOvRLmFnbDu5414pgIL4mv/GHxPdywxvfULA/mAj/Njr5YF9dI7hbH8jHd2caXC3GV0J/FPLM8w83zPS5S96ZZeJ+bLgvzA1PA5JGIKaDsQE/PJtVIUit7AdxZKbEESq/NwkkUJeus48H75sjWbS2Xzk1FL4ZeOk+QqWh18qhjstIHcjsPUnwkR/NDJOIX/5nJGENWAihpKRV2CE0mZjykShXYz2LKipEMM2WWNEfEqnV+YVDDAA86s9ToktPIHMnWkvRu7oFI/ZME5ORfDnDA=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed0d4fe-eec2-49d2-63bb-08d71b10f75b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:38.1621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U4h6zTsAclBBJz7+08piGxotKnkIcum/9SzoaopnMTAAwUQJPyS3Otuxb+TFKi4rjVojSnKxjjLb2kdaSvsmNdrqR8nFPErYM5i2vtTp2zs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012641_218710_4E4FEB8C 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.100 listed in wl.mailspike.net]
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

This patch adds the watchdog to the imx6ull-colibri devicetree

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 1f112ec55e5c..e3220298dd6f 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -199,6 +199,12 @@
 	assigned-clock-rates = <0>, <198000000>;
 };
 
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+};
+
 &iomuxc {
 	pinctrl_can_int: canint-grp {
 		fsl,pins = <
@@ -506,6 +512,12 @@
 			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT	0x14
 		>;
 	};
+
+	pinctrl_wdog: wdog-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_RESET__WDOG1_WDOG_ANY    0x30b0
+		>;
+	};
 };
 
 &iomuxc_snvs {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
