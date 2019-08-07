Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFED584778
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlS/KTikAPSsAvza0fCVDtCYXFAdS0VXV67cU1Q0tPA=; b=Y/e09CemDzfWro
	NE2fxCRhGl1YSZVMtRontehbxUhS6ztLxyk2/XxPvFD32X5aGNhLw0xnue4x9n7cCYam/XbLKiQSz
	uNmewu+s8U4iSlOCMVeC0yCXo6k4GTBo1A6CeOV0j5A+merdp3iGwa3+cGvdYYoQFVn91LAacyYXm
	k8vcNHyYbSYbVFsZOM1C/PfWKEbLpqT5r7ez23J+l1rlbdf2jL7pJTWOk0HDMaSxPPYPO3zyijBjb
	jE7duwLehh9558jIo5DQoPEJiiSkOkHGnoUQRo1DXAPq7SZZRyC1isSIqtw/V+9Y/27EN1aBSgzXF
	55zb7VsNPvOKS+tLDGlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHP5-00012p-9i; Wed, 07 Aug 2019 08:34:39 +0000
Received: from mail-eopbgr130100.outbound.protection.outlook.com
 ([40.107.13.100] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHY-0002vu-Fp
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kuAVcj03Rsxf7VAyG0dy+F9gCnN4kY7dmQuGPZmFwWLIYWsqfqt3ZpexZT/sXksWUfsrfodKIweNkTDArR7zTv2n5JJl0MfcBCz0jJxnnljDiDJph8cRN+tUSpf5eoKstfulGm3jNdBGhzU89z1jO9BFxSGhYaqlq5sKUfm7hWMrAc2tT+KVnjnR7NoAWvszU4UjuzcgvnrOIPnseuv+n4KWFh+f0c3oVOqDud2iHwvKnEPfsoCmDQa/edxllP1ykY0vpCubXvWO7uKFwbRE8B15DElTAus/ygF9WZ5fgGjcBSl/PV6N+pA1xXjb0K1nwbt8Z7lgRj/dIEwjh04IPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i0Ir+N5Ubp3qBJ4EbxAC4nu+WTl+G3a+BREAAsZ6ips=;
 b=UhGGRHaSQoEndD/rRjDkmvCFuyhXRSC01mI/iKTtDJ3Gkuuac/00+xbT/K1wsAas/1XV8Lf2nUDr+iHQhI8Xde1yKpoS6DynUEPZVT2j9aL3X8bqTEIg0I96EMLNA9NoTXVqowAusjI55Z5RMF4K/SCD0mIDiOM0bdMlQS679KgGQzQpnL29/4sAZhSmq6V6EaQGkkcWm7/8sgoC5xYrZLoSTw9oA+vbq4pOvYOk6MYuV2hz5Q/gxN2tq+5Q07AHvK1vDgpu/yi+63VbPeumRhmxCrmzHY2BbokzmAUlufcPAJ9Mcahe3jKnKrgqzvOkXZ+PlRBmzAaJ4qcIbZYsyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i0Ir+N5Ubp3qBJ4EbxAC4nu+WTl+G3a+BREAAsZ6ips=;
 b=AFdwJTs26yG6NGC/mbp3ZH62jinSdVOWIh8jPHg8sa4zKLah2ytRc+29PEjIE9+mYCLghQJ1T+cmviVF4qvchLAdHMIa+gCvhKKGifNlJKDuCQ0Zc4+ISVDXbK2qYldp5HAUU1PNC24FYXhxuHs1BWiqZupdxFZ4bUDizrjjTcQ=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:49 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:49 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 21/21] ARM: dts: imx7-colibri: Add UHS support to eval board
Thread-Topic: [PATCH v3 21/21] ARM: dts: imx7-colibri: Add UHS support to eval
 board
Thread-Index: AQHVTPnbj0jToHnKjkCtlwoMjdIJNA==
Date: Wed, 7 Aug 2019 08:26:49 +0000
Message-ID: <20190807082556.5013-22-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 56b62bec-df0b-4870-e05a-08d71b10fde1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB3614A94C84CDB8BE292CB039F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:196;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UdX47PZ4WXRcXH4fTKZ86yVf4NE9t1OLPlTDR4YZZJ9xzjdqTndNDuFSf0X3kCqsIzbNwXpJsFGtXkJ2RH+gHoqiT23kfngxXBWKMDpAnRDiv2GPYtDtyTQQ+fEuheNM/wN59WRAk4xNyR6AaqbDqWoWqhprV4WMdaBOa4EakVHdPcZ+RxJtxwtW0/rk6WlnhG8qrMBE3SlvSE3fCwgoUoMCLXvYAY95/ndqN109/ALMFwdn8JpvJ9/WRe+JFDQ1sXwruYrnUpF6j/ktphztYEG4UuIMV7Poya+HTJvphu5yz/pboKzeG5vRpJJwiWb3nMsnv5/o7+WpPrhXL1ubbMyG+DiO47pd/QIuBatf+emAy0NCIAtiFTyrLa+ESUiJtM+KIhQdV/XKsx0LmrjmXw2zXWSsGLidTPK9oxkyHqw=
Content-ID: <F3139A4FF8FACE4784DFE15E9B07434E@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56b62bec-df0b-4870-e05a-08d71b10fde1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:49.1208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kTrjp4ZkmN+A+Ydc5MAeNqF4BjnISWu3OaStFuTHqqsYv+Yl/vEdVuXVjGcuNVbounLkzNGnhDR7eyzMGKi7xAFnVwSERqDE8eScjuJpYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012652_713458_9041DE18 
X-CRM114-Status: GOOD (  13.74  )
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

This commit adds UHS capability to Toradex Eval Boards

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3:
- New patch to make use of ARM: dts: imx7-colibri: fix 1.8V/UHS support

Changes in v2: None

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 576dec9ff81c..90121fbe561f 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -210,9 +210,16 @@
 };
 
 &usdhc1 {
-	keep-power-in-suspend;
-	wakeup-source;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_cd_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_cd_usdhc1>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_cd_usdhc1>;
 	vmmc-supply = <&reg_3v3>;
+	vqmmc-supply = <&reg_LDO2>;
+	cd-gpios = <&gpio1 0 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
 	status = "okay";
 };
 
-- 
2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
