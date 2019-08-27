Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442949E904
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WejkTEny68uztqLaXpMMu3SgLCNGnRiw/p/Phf2fkCI=; b=QUBt4dT8ZOdzl6
	xz4lSwVHZsBBDJvy6uPzpn3WefG1BNzar5evEbqaPWRxu137vwj0Et7eP7t8r90o3OwzShHFwgJ6E
	F+hE/ES16MgMaRRblrReMYn8hY3uRe42YuO8PG66ViopNuuTXfAasnczpRM4wHTqszt+ZT0M9TpTK
	ai51QxrdFS6oGKOzuBk88rYGgbiS1yjcHK1F+/Ld2d7hRz2G3weuyeTrWeYhPoqa7nZ4orQuBeNIA
	oc5qIiF++/WEsZ+Wv8lv7sW0jN8mxC78gtx57K9RTpmqcfucGuqOhAqvUuP2lGv4zEcwLdFp8Kpjw
	CzaVoXkIumrD2/f7kBWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bNV-0002ya-Gs; Tue, 27 Aug 2019 13:19:17 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMh-0002Ml-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H8K63XvXiamxPZXRebWXLEEdML9YvlbYp7zKGGBHZYJpuIPap9WL0gLFWqffkO/5G1sNZQCE9+ty7Nx64j6Kdh72AUWcaU/QLbl9ySrNRbOcrGfzu9B7N97uLxZPmy278u7ZMeZqF7gTeN48Cw8k28Dne7bhRfCra7jGkvssayVqaj14hcUsozmA0hCub+Pf2V5ot9mNa9+dfL7PbRCgB/ZEPDozvHahAHNN9xGaWgzpix3gOddP1ZJldDJMT8Xr+xuCWM0KM9tvMKtdkcHpX1OMAHa8auf7C9gDlX+5xn/rVoi6361GUXcP6OSc8ud5NnObMCNIb1g23xbNy/kLrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5MB6IyCXnB0qtUygRj83JqJ+nvrG2816pauGH3zrXQ=;
 b=HgTONVn0sJidteIUzOpVB8MORXmigOCJi6psvg12DQrHUMLF6TlS7NurU1sahSPf5EhcSftvAfg/3iTlo5/Wu34NXcJZ2Z4f8cVHbyUSTlw4iMXWqv634BKT1iL2PEU3qdFUvFNGLsi/4g7HoSLOCNAuWxoccvxNfA5EjGq3z2Vcl0avGMfmuBKUUfyUXGgJisinnHAUNvCUatzFjc5/MlJ7WozvUhSiT7JoGFjFTwiC6LZtjJRCLQRPDXT7sXeXK9640Zf4TeSLXql3cqfAtEjjRNDs+UXB1kveVuYFJCpI3UrLFwzugRepw1OrwZ7X0G50YzXJlbDeXSbiZvx2qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5MB6IyCXnB0qtUygRj83JqJ+nvrG2816pauGH3zrXQ=;
 b=OBkXOQ0cjh+FhwTfElahjn8PcuxZp2kQvi6hBm5IEFhy95U6gzap1xXnKqVhSt+R55G+c9EBqdZ9fxFiNn4OOQbV46Np+8OMPEPH3vRI+bdVOhVCzk/YCHUxrYgcaqHaoS329Qq37WCUtJvwRyURZepGhJ6Tzo3ZSNr7bRpT6JM=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:21 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:21 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 02/13] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Topic: [PATCH v5 02/13] ARM: dts: imx7-colibri: fix 1.8V/UHS support
Thread-Index: AQHVXNnlxGs20PyAuUCUZYQriV3PlQ==
Date: Tue, 27 Aug 2019 13:18:20 +0000
Message-ID: <20190827131806.6816-3-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: fb227d67-8966-4dd6-8f66-08d72af10813
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB387264A6DC985B1922ED4A78F4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(11346002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(561944003)(14444005)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(76176011)(476003)(2616005)(446003)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3qBUY8ebj9ajY/huKckGvdZenjDnvq5Vr3BEm0kwdf1U3Gd7HsabHOuo0XRXkulcZFWW3slcSrIB3QgXJtLAW23iZVO/2xK0eJTh5MVUiU4mDXpF83s4ePuRm4cOQmKnvtG9410KAP/ASZUpqFPfWPd9JgtFtFwsFa8ByCUMPz+BAUwoYSGFgBAHK4CzuV4P3kat9AmbgDbzGYKvXDKQ16mRqaF68uUa+3AB69EfKHguhM64Q9tJxTIxByDAeFGwDKopLQuZu/6TPUzaaBOtbz3hv6Es9ywcWxDEJ1LoDkLzw0s6kxkqY+bktWzueNZ/LZFCe6cRpXHjtrAtwmb78WGCZe9hDL4ubC1vNumgd4gBlZGBNap2eLbbdT9dOx6qvQee80VkmF6VWasEjohpQyt5srXyuEnwaTLxu7xeFN8=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb227d67-8966-4dd6-8f66-08d72af10813
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:21.0057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9bwiY8eFjXKyBHmVdSDaYiNah0y/N08TANfZo8255zyqciOq6XcD3rhuNkdjyJfUEUPgZ+Xq5jWITpOWstF3kyX9uT6LV7QpuF7bhIstInk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061827_559428_196ABB94 
X-CRM114-Status: GOOD (  12.49  )
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

Add pinmuxing and do not specify voltage restrictions for the usdhc
instance available on the modules edge connector. This allows to use
SD-cards with higher transfer modes if supported by the carrier board.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v5: None
Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3:
- Add new commit message from Stefan's proposal on ML

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index b72940e7d00b..cbcb97886e80 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -304,7 +304,6 @@
 &usdhc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
-	no-1-8-v;
 	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	vqmmc-supply = <&reg_LDO2>;
@@ -612,6 +611,28 @@
 		>;
 	};
 
+	pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD	0x5a
+			MX7D_PAD_SD1_CLK__SD1_CLK	0x1a
+			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5a
+			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5a
+			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5a
+			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5a
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
+		fsl,pins = <
+			MX7D_PAD_SD1_CMD__SD1_CMD	0x5b
+			MX7D_PAD_SD1_CLK__SD1_CLK	0x1b
+			MX7D_PAD_SD1_DATA0__SD1_DATA0	0x5b
+			MX7D_PAD_SD1_DATA1__SD1_DATA1	0x5b
+			MX7D_PAD_SD1_DATA2__SD1_DATA2	0x5b
+			MX7D_PAD_SD1_DATA3__SD1_DATA3	0x5b
+		>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX7D_PAD_SD3_CMD__SD3_CMD		0x59
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
