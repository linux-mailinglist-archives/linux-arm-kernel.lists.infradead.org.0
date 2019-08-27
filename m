Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1362A9E90E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YUc8hgpob9PLpdrdhZbmly7syjMy4L+MsF8KsrasZI=; b=fh8zI2f8u/5GbL
	2zMhi/5ElBFLEnU95T/itI847T/kNH9s7VISs1ZjEOo1M2watl9QVqgLwtyo9MWwdvHx14NktWl+Z
	rKbodG0I0wiWNTa2/xsDFb4kxHHGL/nPDUtO5GRsTcpze39DkxsJ8RvZk+rnCLTcHx6p8QUSJbol/
	f3K7+c4FfCTZtd1k+A2OLeekk6ckn9JZL5JiMOWHJ27vkmEqrO5wcyViwBKU0G2O8shgUAfGHlg3u
	crSsvfakdkKDPaJTqpAbGu0YFr7NZFQ3XXQsxIW7PbWKbNiTiZh6M6/1AxSeW49In7AY0hJNGl/YS
	Yr0lZnHxPlSDBeUynUgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bO3-0003TF-Id; Tue, 27 Aug 2019 13:19:51 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMl-0002Ml-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vm6WUyT+s14uwD2TgkRDi4Z4DnR84wcAxbMQVMiPOd+VJHUYC4WwerwiZKhWMP/IrWMLezeAID9rfgnXVavm0CHvarDCGa9AvOpnnnJ6olQd5YLNyC08+vUtEgy5O5FjyvLL+Wg4kBROpp7V7Y8VxnZBI3k6lFMqIfj7Ml3tvAxHOIELWhT6ed4JQJli8N9tvSCJk2a1kYuVbMHLen28vc2CmGz39FLXoo22cbBl2YBLV7xEsXhAHkDbfiIwTLg8PxsAlI1Kx9sutQluwm88rfTyfPIaQMa0H1/DWShP/NEdFv7dwLew2wBq1qBM5vYGSm2FUl8xaumC+MukczouXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAO9756tEeuvri6tO5CKyZByGep91qt6LAWQXanuLUw=;
 b=OpIz1Mjfj/CEB1tJipMNjuaTgiQGgowtpSRZ+m+hl/lLyOrbq+5iQpoHv7OxX3VScgxM+KnhZGPIWhQN1Y37MDE9Za5njnWEDRAMxqiJ2SJgsW49UoKyGhn8AqIyw+XY7mAWW9TSIuY2Le4CNlB/StdGe7fSa9TTnSU6nVgbVTuB0/IbyVEePH+dqkgslKekUB4VQBRTb4qa2GQedp4NSQ7fPXiR0tXolq8LcmqvqJ/LE/N9ViwlQKMjZb+0BoJcSuZsZeCbfgdY7R4JuMHnARCg0JWtHKvNcwNFh+QPA0FpN+Pm1mTcEmOGpMWZcHOz5OHxuzw6pezVAnfUFtOypA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAO9756tEeuvri6tO5CKyZByGep91qt6LAWQXanuLUw=;
 b=V+VghhrldfW8UwTy30fatcps7tdGM6Z1kocRrzog9EXP4A3+9VtHE00+oMss42Wrmi0zQTl06KgBi3i51z9O0xX+ZfsgZZ0I4Nplv/PUfWMXnQSLHw9Donq4H+jLCjW1tdSalTQCRMEz1JjtglEE4p1LIK0XmRzGubUcCdYZXqI=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:25 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:25 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 04/13] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Topic: [PATCH v5 04/13] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Index: AQHVXNno53Gw0a13I0uZ7yJYLnnq9g==
Date: Tue, 27 Aug 2019 13:18:24 +0000
Message-ID: <20190827131806.6816-5-philippe.schenker@toradex.com>
References: <20190827131806.6816-1-philippe.schenker@toradex.com>
In-Reply-To: <20190827131806.6816-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06b824ea-3b89-4762-7ddc-08d72af10a86
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3872729430190F772F42454DF4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(11346002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(76176011)(476003)(2616005)(446003)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011)(32563001)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qO82iaZYgmCMsLqItzpwxjg9CcnNcNWrFbzFGkYyUkW/ecQ1o99Zc6yzpS5+ukA9/YZ3/5l/A36QbOGxV0goY8P8Hg0zNikvfYuLo3MelxWetRe+xnDUeRWukPcoWPAl8ix5ThVea8f6nJdNmKuFt2WXn9km7ShsSlz0/YocRb8ks/NJD9Jz1YewjMH/ccU4p/nh5Zt5SHxguZ8W9uDtbqMlwfEjZBU/TqTshyRJ9Tj1dCGTPqYuHX0jljMlOfv4uW9vH8uVr1Xjt747lW2id6d2J7ngakcwycArZPhIdT7EnLdR25VsAGOlDDeaqfb6nmmCdzVuWb+0Jw/KMpDmnE35gTHwU6XZPaomRnUqBZ5n7xcnGxJDuRfsP1LDJo8riG1dKmtQGpUJLwR+wkuuQDVgsepXgoQIrqDGiIfgWUQ=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b824ea-3b89-4762-7ddc-08d72af10a86
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:25.0054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zT/E1BYzYK3W4YxxnoTFQPE0L2q96+B36Ent3QVgehJa70Frj0eWqsucPn5/vFQp/E/MV/11+H7GykU83/lcTtp2VIpGHlJWJ3sUJ9nkxNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061831_271769_6EFAB948 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.114 listed in list.dnswl.org]
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

This adds the muxing for the optional pins usb-oc (overcurrent) and
usb-id.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v5:
- change group name
- Add pinmux to iomuxc

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 1beac22266ed..07379d3d2f4e 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -415,6 +415,9 @@
 };
 
 &iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh_oc_1>;
+
 	pinctrl_audmux: audmuxgrp {
 		fsl,pins = <
 			MX6QDL_PAD_KEY_COL0__AUD5_TXC	0x130b0
@@ -604,6 +607,13 @@
 		>;
 	};
 
+	pinctrl_usbh_oc_1: usbhoc1grp {
+		fsl,pins = <
+			/* USBH_OC */
+			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x1b0b0
+		>;
+	};
+
 	pinctrl_spdif: spdifgrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0
@@ -670,6 +680,13 @@
 		>;
 	};
 
+	pinctrl_usbc_id_1: usbc_id-1 {
+		fsl,pins = <
+			/* USBC_ID */
+			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x1b0b0
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD1_CMD__SD1_CMD	0x17071
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
