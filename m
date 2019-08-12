Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0C8A115
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W3cTfUvxkPxWWwJ19qyI1dhuzH0I5h7OSuszeKFFGs=; b=DFvrUnvptL0NQc
	fwMHLbUwSxVWu483RqCKLZ8gQMqX+d4yJFJRdxwp0OyQZi7bHUn6yjv9rQKsJjEIh9NojBzyIFysf
	L8QhFXJqIm/Ba56bD3nktBtDfLojsHRL9GifJb0O2+1Tr28Q797THgUmHym+ug5TD2BA/Dw8P8eUe
	Oqi3vqkEql4CVDlszORHnNvVLDYK9FkTpQ2Bjyj//t4oAH6XcnjH8XtdCU/MerphRAc62ydrf8wvB
	nTImaldKqDNdvPlLtH/aiYjnQs8p3OTdhPQgjveCoi7gMS6y89yR3cn7/WRjs8IaCvGTM7qCCvt71
	7bslj03TnrULuskvNmZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBJv-0008S3-KW; Mon, 12 Aug 2019 14:29:11 +0000
Received: from mail-eopbgr150123.outbound.protection.outlook.com
 ([40.107.15.123] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCt-0001rJ-FL
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ajKnqoIuUDjrJKvRs2WM598i2cBf1iELCC4sgo9gPaSRfWF4kPJF0rAU+YJIKWuV/ZNlVp0M7wePvdtz+lIhb7KH3LKJVyrmJVn34DwRR2mq7bt021PLBP7Y4uVmn9Xx1kuKFaqytOTS/yntRR/VJraKXjhsXwDj8TSHgu4+y4CaVGNdGL5cobbFDZjIwli1KhLTk5v45NYqkLRBp7QczLHAq0k6Y7gZG4j8RefXc91MrCK1IJijKtA1LXq2usEe95De56HAAO5ZjfOcqM32ihNyS3r0lVc9+PvBgZPg/pCziEs51ijXFUtxISHXrPLr3tAs040w0HqhSof8KwI88Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8tAr1GIzPqc9erXN+gVJpeUYVqBdlaXWfA3rv6//Yl4=;
 b=HyNrA+4Yv2QA+xK74IAXI07VaTLlFs5Lkje5HI6aJrx0RzGfjs0nQO82kddDVZMDOpBftn8pqvctJ+4JKahCcI+vWeu5JYlzRga9qWzcb4b7WSOPYAiFdd3/i683knswcS6tV5UnNti2rJLaBkwN9RnOFWDGmF645iDP+v1jikIH3dzGQloZRzK6vFa8x/3XFkbKj/HVfqtapI9LHY8DW+dFkzPFt6Q350wk0TYE8QYlaASHkW8/y3yiJXTiKL8hT+p2La65knnOd+7dEMygxKJlXIun7LVdDv7oEn4o/MWzrnJuvUClJOaWTEHd9KDofBzl7OdjJ/9xL+K7/OUTIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8tAr1GIzPqc9erXN+gVJpeUYVqBdlaXWfA3rv6//Yl4=;
 b=aXXrZdqdwPxmYAKbeOIC6e1TD8bxykK+iUs10OiYGMIzAYbMnX0BN9dN66N8y+OHuAytP60MmJz7EaQP6C4wjYlozbhFXcBBUmPKmZjZeQahwUqSk+nzeh/wmUQPb+zYGHHfIGPaIwzZSybQPWFgcX7A0RZq7srQ5Ce+4Omg6fU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:47 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:47 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 21/21] ARM: dts: imx6qdl-colibri.dtsi: UHS-I support for
 v1.1a hw
Thread-Topic: [PATCH v4 21/21] ARM: dts: imx6qdl-colibri.dtsi: UHS-I support
 for v1.1a hw
Thread-Index: AQHVURlGJmcIK6KxnkK60xS6fTE6VQ==
Date: Mon, 12 Aug 2019 14:21:47 +0000
Message-ID: <20190812142105.1995-22-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: bec61211-e0a6-463f-aa50-08d71f3068a4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2942D12104097B1D8C9ECACCF4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(376002)(136003)(39850400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(14444005)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PBPUIGfqklvjJtYGZGEQwJPWAuE9bLNT6VJsspJvXhZKU5kYdEK8vwkIeHBVTXAOHDHJ+AIZJHwP1hTiC/9v2dd5iHs6iSEwaNdDp2t2g27Xwe90dJtU7PVQTs8fZ2BN9J6dHlYnQhzbRptAYuuwOaefDFzRdAbCgy+3dbsguGsnlU4MvQh76jY3ilNLTcFajfpGRvUaz+zeLIcH23QttsB7wGVOhsB8xJ7mIpGTzVpgFVyQFlxcZkF9G2NevC+SXS6oe/kCsRt8hAOw7v0MMWchbP7eMDqF6gcAd5Dq3xH7zRRkgPVyPh0tcIeBLp0BvzUNMC0oiRyHg9Hu/+KB3D3TiyWGL66y62d1G7SxZzV4U4SBsvDdFBUTGAB/by+/x9GZJ/i0f63BpDPVZhiUssfnthF3+9BHjD2RKhV4RKI=
Content-ID: <5E152F845EAF2941B1550AFAB2D71F5C@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bec61211-e0a6-463f-aa50-08d71f3068a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:47.2486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p2bR9RbEdhp23xGRWW9hCtsM/ok4FJnG1wDF4VsTOcMHysaRAlbYpzwSaqyA3mrTE504HoFoi3QqS6NtlARNqnoiLvuT9+0kaMQrjsA+v+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072155_730875_84631AE2 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.123 listed in list.dnswl.org]
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
Cc: Igor Opaniuk <igor.opaniuk@toradex.com>,
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

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Provide proper configuration for VGEN3, to make sure it's is always powered
which allows that rail to be automatically switched to 1.8 volts
for proper UHS-I operation. By default it's disabled.

With UHS-I enabled:
[  104.153898] mmc1: new ultra high speed SDR104 SDHC card at address 59b4
[  104.166202] mmcblk1: mmc1:59b4 USD00 15.0 GiB
[  104.173923]  mmcblk1: p1

root@colibri-imx6:~# hdparm -t /dev/mmcblk1
/dev/mmcblk1:
Timing buffered disk reads: 226 MB in  3.01 seconds =  75.01 MB/sec

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v4:
- New patch as of the recommendation from Marcel on ML

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6qdl-colibri.dtsi | 43 +++++++++++++++++++++++---
 1 file changed, 39 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 9a63debab0b5..0241613b5e2b 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -226,7 +226,12 @@
 				regulator-always-on;
 			};
 
-			/* vgen3: unused */
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
 
 			vgen4_reg: vgen4 {
 				regulator-min-microvolt = <1800000>;
@@ -394,13 +399,21 @@
 
 /* Colibri MMC */
 &usdhc1 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
+	vqmmc-supply = <&vgen3_reg>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	label = "MMC1";
 	cd-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>; /* MMCD */
 	disable-wp;
-	vqmmc-supply = <&reg_module_3v3>;
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
 	bus-width = <4>;
-	no-1-8-v;
 	status = "disabled";
 };
 
@@ -706,6 +719,28 @@
 		>;
 	};
 
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
+		>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD3_CMD__SD3_CMD	0x17059
-- 
2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
