Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 809F284767
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxdYrhnIxocJERONNhUXq8Zh+TlLxRYE8jPyrTQeKI0=; b=ogi8sGP76nBXSj
	WcewZKC/hK2383quGnBt4d6LrjFnRwpVUsHuzNcNKqng3o7XX3zgc/FoFk/Bsl2FHZMY/m1orQMPm
	+8sZfuUX7ZlQIunRnpZlpJCN7BH3Qb6rW81lCPGIL4ECOXs8Peg9Goi4OWtjAVHIc/It+BDSHDl5n
	CVdpGnvZcwLoQRdBkf+YoAH6vL8J/wunp0+U9T6dih9QIxrlwIi6DzbJ2PFCR9CY+exmho2J0ZJGJ
	akgNOYdCrglwp1KNOHKeRwS8zpetbZOy+p65snroNlvewzrOZsH1M29e0UO3wuAAUIFIvgrfhZGFE
	epKB8JqPZ6uY449KXIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHLB-0006dL-OW; Wed, 07 Aug 2019 08:30:38 +0000
Received: from mail-eopbgr00091.outbound.protection.outlook.com ([40.107.0.91]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHE-0002nw-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwHOV5vJaL9s+lXZ/4TqhoPWBcFm60ib1cQxAijVX+cmEGgLjg/yQvOFW2eXVr5pqk+LNaZZI801X/XAN14QGqmPAXYOoj2+qZAyxHZZuG8eLjB2cWws2T88navM0ES3X3owFExQOtg6CXfbu/wS5nlntDYPkOjrjrTx1/My4iRdZPBtuYb3m19nz4F8JSJ8FWqUAuvqWCYcAW5qet8xGDOwXH0gXsjUyduPiu0Y7+bIx17pLif98pMbIttWDc+mRmlXN0eLcwEV2l/3Fwm9dM4PnZLKduq9MWQ9MJpc0IbPpcI774Ll5AkBADML25vL0VyKVIWaVV1G3IIjhzBxWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XS1eMki17z51actuZ4PXRZQTgGAjAiYyaK4QToU7D5g=;
 b=f2Gc2RStF2YS7BFDBR7+v/nAkdgesKL3OkJb+NzW/S0gDM6qQ+NlnTiF+Hdxugu0vmSg+4Tv2gaXNDOfdbKabvoAeotCCRUqFYrycYYzBAee5a2bsTQxOL2fUgDcsouvIMvKuMz5dNsUUfQppP7XYhwWRLhj+0ZEImqB13LYTbaVUPIp2RLrJT+IVgnP/rqy0/R631zVYfOkbgNkeZ6Ci607NPAYec2+KOrNfEsvf6i+Z0ivkCd7goV9Vu/M2cunzsHyo0oUssR0FaTL0XRxGn/HfbiYgGaA2KCHphXRXLDZ+yhU/z7v0B5NAegmmW2MN/KaPfVmAZEVpjoT2e0aAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XS1eMki17z51actuZ4PXRZQTgGAjAiYyaK4QToU7D5g=;
 b=CbMIUhHIxCnQqI/S9JxTJHSf9oAVOU9PO5YSHOIXuBNRySq2B7uo3+OYBGB8J05FpFajk86EBuhewY4dryHiU+YVoqBswglcW1p4NzUyxGbH9QFPA5UxFMKY7v3skoE0nbbNfBuRko9XhT54Lx4tdEqz/9N1wxTTIpZ6D2l0fJk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2928.eurprd05.prod.outlook.com (10.175.25.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 7 Aug 2019 08:26:28 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:27 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to can
 interfaces
Thread-Topic: [PATCH v3 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to
 can interfaces
Thread-Index: AQHVTPnO2dmXEu4+HUek6D7d0b8AYA==
Date: Wed, 7 Aug 2019 08:26:27 +0000
Message-ID: <20190807082556.5013-12-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 183f6288-914f-43aa-e5df-08d71b10f123
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2928; 
x-ms-traffictypediagnostic: VI1PR0502MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB292893DC354B2E39A3C56C93F4D40@VI1PR0502MB2928.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:758;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(64756008)(66556008)(66476007)(66946007)(36756003)(11346002)(476003)(6436002)(76176011)(2906002)(316002)(305945005)(2616005)(66446008)(1076003)(54906003)(110136005)(68736007)(486006)(14454004)(14444005)(5660300002)(446003)(256004)(86362001)(44832011)(50226002)(4326008)(66066001)(53936002)(6486002)(186003)(8676002)(26005)(71200400001)(99286004)(6512007)(2501003)(2201001)(71190400001)(102836004)(386003)(8936002)(6506007)(478600001)(7736002)(7416002)(52116002)(3846002)(81156014)(81166006)(6116002)(25786009)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2928;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 19siTMFJMY9Dps/wyiMgwlh7Fn7K6XgBJ64tiIi1EOWoOK32nKoQsVSNdtK/GzmcO9hvWAi6aXEsmbi/AJtSkWkLKfzuptdYypYWJyAhLFz/3quQ6B44mrV/56cpEFHu6hG3Cax5sPzPVs/NAv/w9sQPVcgWXFLNsglcU0bQjbe7Nch69nZHd2XZlJ7qqsqeZtRlD43gyAzEaM2DCYjtMwUcfbqlydGMW02954oKAWXPv1d7tX1aXEHP8WGReLbrXpiyey10RRwwgvh2uL1sPRwSDy8z5U4OxeBXiakPdlglITu4W6/6lP0l6QZY6ot8wdLQBmMGq4/Mx3cBotcS/uMRBar6kKs2WmMD0FNcsdEiScm6bhXugxudE38CRvZHZ7z5icBLAsIvkgPMF1Hy+7T64Xc/0ertpdVUF5fK7R0=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 183f6288-914f-43aa-e5df-08d71b10f123
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:27.7671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6EiC3QmQ2QkBSWq6n2I6p/+2KKayhqVZ3QJnEiAapLuzWmCJLa4arvZnt4jP1+ZYaLmpcWZnKIwvv2mVcoy6/ZKOj0umEm31RAsyFr23EOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012632_480200_87939343 
X-CRM114-Status: GOOD (  11.85  )
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

This patch prepares the devicetree for the new Ixora V1.2 where we are
able to turn off the supply of the can transceiver. This implies to use
a sleep state on transmission pins in order to prevent backfeeding.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3: None
Changes in v2:
- Changed commit title to '...imx6qdl-apalis:...'

 arch/arm/boot/dts/imx6qdl-apalis.dtsi | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
index 7c4ad541c3f5..59ed2e4a1fd1 100644
--- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
@@ -148,14 +148,16 @@
 };
 
 &can1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan1>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_flexcan1_default>;
+	pinctrl-1 = <&pinctrl_flexcan1_sleep>;
 	status = "disabled";
 };
 
 &can2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan2>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_flexcan2_default>;
+	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
 	status = "disabled";
 };
 
@@ -599,19 +601,32 @@
 		>;
 	};
 
-	pinctrl_flexcan1: flexcan1grp {
+	pinctrl_flexcan1_default: flexcan1defgrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
 			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x1b0b0
 		>;
 	};
 
-	pinctrl_flexcan2: flexcan2grp {
+	pinctrl_flexcan1_sleep: flexcan1slpgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_7__GPIO1_IO07 0x0
+			MX6QDL_PAD_GPIO_8__GPIO1_IO08 0x0
+		>;
+	};
+
+	pinctrl_flexcan2_default: flexcan2defgrp {
 		fsl,pins = <
 			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x1b0b0
 			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x1b0b0
 		>;
 	};
+	pinctrl_flexcan2_sleep: flexcan2slpgrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x0
+			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15 0x0
+		>;
+	};
 
 	pinctrl_gpio_bl_on: gpioblon {
 		fsl,pins = <
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
