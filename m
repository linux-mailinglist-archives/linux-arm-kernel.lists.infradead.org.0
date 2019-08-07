Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142CD84761
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7dsn3JWe8PXzLGbYmPuRoIi7B2fleuTfLYKIxM/WfI=; b=XCE4Ek9rMan3xO
	512XouU1AKCXsrFNW3XlPg1skwo9RLFZPLGHI8b882cdIDMyPHg1HFhuneY2o+Pz6M4BrN7T3yyuD
	JmpSrtMRA4Qlnqc2uC05qvIy2UsnlLYXVaAoXO0LZ9/dW9dR7f8n1BFbYtJMCf/nE9u/aemzszgIM
	ttTjagTl4wiD7llIymGbg2SUG2yqiDgfsTI3nzze/sfZ/SOJjLTwoyuJTh6EGP/LTIgmELUxDUGM6
	rgFdyY8//tTIAu+En0WsF4ONMzK+4a1brughNUJfQmzFUHpkqcW4dTmMQ2CPg4jPBfHmrCNJdt0LE
	fBZ4ovgd+UUTi/Cn5SiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHKO-0005P3-GJ; Wed, 07 Aug 2019 08:29:48 +0000
Received: from mail-eopbgr00091.outbound.protection.outlook.com ([40.107.0.91]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHC-0002nw-65
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQQE+uXoX7iu7ck8bRK3+t6EC1imNU4cljHagITDQCs8aEsOyjTdN1XwSUGdO1S06STaHCysE5uktj+YXHI+UGlZsWVda3bly/nYDLnmF0aC0OnEBed/lQZQGYX+GnlgvNYXvnV1I80UAs8saKxDwPWErAyeE3Q/GXgV/VAO4O+KpKaqZdOHeMuAmfKaAvRULDMUvDt+W/KksBqNUjhqN6CtYuVGHIjPxWOWF6yXdOBzd1s2yXPGnOBguNszl4G5YA9GuT+jT51Q0akbVlZjryOeqiFjm8wzWlhahNZ4KHxLxZfHDekIa2zCj8lFU/NStmYU/FkYPwFoTth/vAWuww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KS2CADGPaYm7ArcbDFzXj/Te3GT91m8cjIUKRUowElU=;
 b=EqqceZDjFeyOXTMAu73EJ/lvO2ERmbxHyt5CJ1LNOYecwwoDYj6v6wj5CYnpFaOX6geVpnSQTRgyPcZguN/Dc90asuCebFpRubtTEyuQa3K6DEGBkUhivQjY1Jps8JtQKnFI9TOU8qw58f5mWCctCCLv2Gd9hiq8VvvzG61DgdxzMxorzgBwocMyryZR1midPWP8Xgs6yPcos66mkRIsbFCcCyy4HWBpjSAWCA6CUELf6gYUohPPWzx0vMTDURddImddruwvRBOswybGl/e7QDA6f0a1ve8IBbtVqq3BLwYseFaZ7ry/I4RrRxreXnYFiUYMogMLU2sp1TmAdcQwFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KS2CADGPaYm7ArcbDFzXj/Te3GT91m8cjIUKRUowElU=;
 b=r8cQBit2IwB0Q37La7MYmo10SO8UZgK38hH+amqFQREsTv0EffJ/yvx6F7x4KkVccqjrFt0qKEf5SkaP38sStmmPmSaFpZM9z+Yq0X+mQWME4KyDCAHJZDQyJfsPHOTTcS4het8Qcz05YqlF2TdFLlL4ehd5vYJRGWd1STWOeNI=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2928.eurprd05.prod.outlook.com (10.175.25.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 7 Aug 2019 08:26:25 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:25 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 10/21] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Topic: [PATCH v3 10/21] ARM: dts: imx6qdl-colibri: Add missing pin
 declaration in iomuxc
Thread-Index: AQHVTPnNUloOartdxU6Cf5WMSyR4oQ==
Date: Wed, 7 Aug 2019 08:26:25 +0000
Message-ID: <20190807082556.5013-11-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 74264afb-c81d-4d77-3012-08d71b10efec
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2928; 
x-ms-traffictypediagnostic: VI1PR0502MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB292898AF572DE92FB75810DCF4D40@VI1PR0502MB2928.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(64756008)(66556008)(66476007)(66946007)(36756003)(11346002)(476003)(6436002)(76176011)(2906002)(316002)(305945005)(2616005)(66446008)(1076003)(54906003)(110136005)(68736007)(486006)(14454004)(5660300002)(446003)(256004)(4744005)(86362001)(44832011)(50226002)(4326008)(66066001)(53936002)(6486002)(186003)(8676002)(26005)(71200400001)(99286004)(6512007)(2501003)(2201001)(71190400001)(102836004)(386003)(8936002)(6506007)(478600001)(7736002)(7416002)(52116002)(3846002)(81156014)(81166006)(6116002)(25786009)(32563001)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2928;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3BsqZtszGpDMtzLwgGzaycXCgEcjlsvKdqVi1UmKHPSH+M4WoegPiw0GSwaxTY/BKUadPJDsgtUiHQk6IZUP1gOIbSkPxrPdVQPzCY3abYZwOdPY6I7rMPL1mbnEtkpcTfyaUrbBsw+ELN+z5y9oAkIKsvPKXPzMLnfsDZ+vdtfQtTVSJwf3BCJ2eo9urwBzS/xYAURMyN4vGYi4veRxudEcEp0hr5Z1KTAPyhqZKov5SA1sHSRigOHEwPtGIE7CpmbgsJSFzbZNtxLbTuFHmOScwbaq9/JmDUYwawE7UuDWE+8VSJK/idaNbx65k23dysoKQxrMmJg4umNxUn6N5LHAj79wUY5ykx8dPAgXbgwHN9j5IWW0mMid23A4q6ZsDuwafKun3LfA2P2plmdTLpOCJ1PpqXPrRZp7UNr4cyE=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74264afb-c81d-4d77-3012-08d71b10efec
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:25.6853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u513AruqVknxK0TiejFyYwQIHJhO9zZfJE+Qkl/mLVO/PIo8ALtYEeoBPNnIqbMqeylJWOzygUGBiQ6Q3fhyGdcq0d0x95FH+eAIGQs8ZS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012630_433768_67C5A892 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.91 listed in list.dnswl.org]
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
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 019dda6b88ad..9a63debab0b5 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -615,6 +615,13 @@
 		>;
 	};
 
+	pinctrl_usbh_oc_1: usbh_oc-1 {
+		fsl,pins = <
+			/* USBH_OC */
+			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x1b0b0
+		>;
+	};
+
 	pinctrl_spdif: spdifgrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0
@@ -681,6 +688,13 @@
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
