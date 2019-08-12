Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387148A0F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juUrFFOLUn72uuyGcxi1R4IjV8TAxq/URE45c9h43gU=; b=cX/jQu3sFHt+bS
	rCAapAF4kweG1mdXEcMLcb0phBngkxrCvivblgOrQeHLbRnxsuDwj+qKYe+rh++cYbf5z5nMtcDbw
	sPzjk4Y3vijMdJkcfMxRC0zK9lUynTEPvU6tidqR+cXy+WGED4fPf0X6fbJjgs0G6pWe5eIctd8Yb
	rjwGwZDUc8btWbhlM/kQ6kAEoCy4xYdmjw3JbPN4e2aocYbXiHus5odah8FcLwDfh15Wz8IaZjQ6y
	OjcUWnKfPK1Uo1zZmmrJ/wr2/smqQj2fSTp1bYTe1JccfagA34Z4YbQqJRcBN+4/+VNKZtmZGzdIW
	QQXmteYmnmxGD0Kr4aqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBGE-0004L2-F1; Mon, 12 Aug 2019 14:25:22 +0000
Received: from mail-ve1eur01on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::711]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCd-0001e3-Bu
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hIRZ2hI2D9fjSIRYuPKu25lOwMgCxBfLLCuY1SxQ4iFSbmkWiz80KN3abpJ+R65jXQBakt1Ws3lD7Yxtja+TCNvhxvkitrbPIShQBYIFck/60SkRRyrXVPohmqdpVleZyuukYdaaxZPF7xB6c77UwjHQ0QHPVSHi0/RAwzHsR0xhnpSfycC/aMPjCkyTZgRjRyFzz8PeCpFWUt5jestiR5qmeV5a+rTyt+LbKx42CVpIppZfMXrvCVNSpPXQVVYEIBoQLjzaYUSg+I2DgJZ3/0tj7E075znbmOtM7KLbj6DA/8uC50PkKJA4bzpdAgKt/4BHIwf6FpZfE7xVHM817Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NDy1L5U6xp0iacLO8nad/HCH5CUuB3U5SC2dF2Z3Xpk=;
 b=f2QkTDNqTD2sbvkM60ViqiIq182YHE2voJt7BjBgxe+VFUJSGk2sCBVCbUHPZgb1zcOCHdPK1v0k8V49lYMKWoQ7mlZ4USIVgFidRmJPizKRWi8I1TqtAaMP5TuvZyqdISSjdFjnb+rwq27r2MGS4x6foV5kh4IZwQXmTtNNHZ6Na8ubA7P1wX3AFkcJ/VuK7w03oiPqjirW//j+v+ahVFMhw9IzMgJepqigrqwRabS0tU8MU3DWxeT27bKkVNEZ7RoioJp0hoG1qr8jY49ebyne/IVeIdpCLnDkoyl1973Pve9+5WKqQDElfxg3c8S9fQvH9kF5hyV+1jzFvKmvLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NDy1L5U6xp0iacLO8nad/HCH5CUuB3U5SC2dF2Z3Xpk=;
 b=gMKwg6FdM9zR5XVbGAEh3UZ4qmAvQep5UsMglZFBoYJULyvfIGTxr2H+fDZBmiutcp/cEVU1Uarsm26EDq5x9x9S0oX+Rf0c/MiNIJeoGP2pYeLGw7BXQdl8JZoRufgRA4gw8AQnkDleCq/+iKPsitDEP4Wl/666PCSVU8CJDL4=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:28 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:28 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Topic: [PATCH v4 09/21] ARM: dts: imx6qdl-colibri: add phy to fec
Thread-Index: AQHVURk7/55ROUuEwESnbBW0XYyw6Q==
Date: Mon, 12 Aug 2019 14:21:28 +0000
Message-ID: <20190812142105.1995-10-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25b1b4bc-2a23-445c-ab34-08d71f305d66
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB294247A702AF14FD2E8B7443F4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39850400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(4744005)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M127OYan1f5pX4TD+C7ZN9ngrvUJxU2vhsBiTfyoOqB2Nrq6bBUxhhX3qcOfe/mNzg+a00EYyD1aAvhHAfFJrfAHdbgQOy6KoQFhsJLGVpiZqMvB5qo6Jn4au9YhFPHxgzNX9PI+GmBZcJDN+eWMByiaY2/riJca6iREFXARloUTlgDbeSwxgjoyAPqXTHmWN5fce6VXAat3ZTFLfKcPcjaMIAexhhMUQ1OJUmF2hadTAjViFiyLLPtIvVPnz/ALPeZCYz71ozq9ZXaUJfpLeM5eyp6CtQKYz8JYM9IxExLgat+TCaEYh8EFHAS6EUKWKgdfLkLPry/VaqMsWo6Xj3Ub4P8/W+C+wtIGyFU/V1n1hRmKcke34OsKup2ihMFTT8DtQwG0Aj8pka+jrUlF9Wf2riFNnPGZHDR0OHaU3fY=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25b1b4bc-2a23-445c-ab34-08d71f305d66
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:28.5863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eUOvZDl0wv+Lob/rLMUdrJpyzO9aORm78HpyynG5fOTYdDq+w/adnJR8iFZtV3NnwrsyBoMyObu2z/qmRmvyeJzjaUkguEp2JA+cjvQyIQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072139_886544_B156E719 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:711 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add the phy-node and mdio bus to the fec-node, represented as is on
hardware.
This commit includes micrel,led-mode that is set to the default
value, prepared for someone who wants to change this.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 1beac22266ed..019dda6b88ad 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -140,7 +140,18 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rmii";
+	phy-handle = <&ethphy>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@0 {
+			reg = <0>;
+			micrel,led-mode = <0>;
+		};
+	};
 };
 
 &hdmi {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
