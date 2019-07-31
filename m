Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FBE7C1CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFtW/HLmkH4V5Y1rjFbfbFcdCIGuP3ZV/9aR8oZKkC4=; b=ZP7+R0CrNgrfF9
	Y5D2C25qYXuCeSqdsnvbIYu44dvL0dXshwTEqqnvf1HF6BaeYZUpYz921+9KRXy+xpFrM2zRhUYm3
	6o0zc+cXoX4gsn2+IHmMpvSONWo4DSpZbIeN/re8IK00P9yOJykYZFzYUYf6Kf3d3FMBTDUAHc9UX
	pHL5Yy+sltHkDXCoUxP8cGTz4Mc2IjiBuPGsI/nRF8oX/oxwMTLN56NV3DCZtCCLd/YzBBP7XJLiv
	dUopPecNZtBfzv96gqLQz6VGVWkwtROQkvIzPNbEq/xIqAT1F/1Jq6W/jgyt1Ud0QXC7yQat/VSyK
	9eUm4UNpBYtgZMpdyIKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnvp-00038A-4C; Wed, 31 Jul 2019 12:42:13 +0000
Received: from mail-eopbgr140132.outbound.protection.outlook.com
 ([40.107.14.132] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnsK-0006NF-B7
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPJ5FvebPLAjXGMY4W7r4n1F52sxHJG/+poPkqKwhg+J01RS7aUFxzGdRD3vyZnN+GmAiEmXhHhJU00dSGe+PPD6eg/9cuwu8vqrR85t0URaKh9cdhF7f0Az/vWm050wyLkVg7/CycsVLnLhA82jIdQzX3JOYwyQKBhdcbfawtBC5boj0CAZoxwk6H6o7/Q1vILif22T09K44HasHgSbZDdbPqzxC5ZeWi7QeCjXBcyYkh7PDYXfgEXQ6Tjj0s/WIF4VkICK+EDzbICo3c0wCIDeUtYpDMsSO6m7typ7AkNvsSzlGQnjI7Pn6HBYWYxOBJV6OQY7ez0gRw54+gvfpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oKdVqV/SWA672uR0Bgwf3uHyZ+iYlbFbfC1zpSnbmaE=;
 b=TEZvYjA19w18PQIB+icsGZujDkUyDJZiGENvnEdT8vxkyo95SEbEIdJHn8qrMmbcX+KO/NKrBi+qYZXgyIkQr3WQDCUvCIDJqjk1TtoHbwyqcs0tTPitFzI7yf+GJCsW3G21Mpj5lEZG/AFSGzk55WgfDq031m+jhuV41CBgJHHAYQXZKUq4KoHiVGRMzc/vJMXruxKZMFB4gD3NLwcBFPmwt51Kn05yH+lGV6IvFd547Pe77MWo7u33Qn1fTqkNRNl2stkaBbYfy8sYAZVDOoE0zVbSlGZENciyHynxys+4puCN1aX16Pqy3VWI6feb3ogBHmXIoe6mH1+L2Cd/Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oKdVqV/SWA672uR0Bgwf3uHyZ+iYlbFbfC1zpSnbmaE=;
 b=Mjwnu5NtRAggk0GSDdYcFejt0wP6G5tId+OgK61xomPPmI+oQUFuIaV5RReoRD7zroh6rko2POJsDK6XLqAbyuj1IPMQ0/SSEIFZV/M1u8vu8NXi175MJ8wO/IptWxLai+TpHqquomGkK4Oe9R/WAg15BVdUTwLsibg9TWYu8p8=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3648.eurprd05.prod.outlook.com (52.134.7.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Wed, 31 Jul 2019 12:38:31 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:31 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 15/20] ARM: dts: imx6ull-colibri: reduce v_batt current in
 power off
Thread-Topic: [PATCH v2 15/20] ARM: dts: imx6ull-colibri: reduce v_batt
 current in power off
Thread-Index: AQHVR5zZQocT+NOJxEesVaMyNOrJ1g==
Date: Wed, 31 Jul 2019 12:38:27 +0000
Message-ID: <20190731123750.25670-16-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ac0f7dc-fb15-4844-42e7-08d715b3fc15
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3648; 
x-ms-traffictypediagnostic: VI1PR0502MB3648:
x-microsoft-antispam-prvs: <VI1PR0502MB3648F1D242BCC0BC9969B08BF4DF0@VI1PR0502MB3648.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(346002)(396003)(39850400004)(189003)(199004)(64756008)(66446008)(66476007)(66946007)(6512007)(476003)(66556008)(8676002)(86362001)(36756003)(44832011)(478600001)(6666004)(5660300002)(71190400001)(71200400001)(1076003)(53936002)(6486002)(486006)(6436002)(2201001)(446003)(52116002)(50226002)(11346002)(316002)(99286004)(66066001)(2616005)(305945005)(256004)(26005)(14454004)(102836004)(7736002)(3846002)(25786009)(6116002)(76176011)(2906002)(81156014)(81166006)(68736007)(386003)(6506007)(2501003)(4326008)(8936002)(110136005)(54906003)(186003)(7416002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3648;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qUtRNuUlYV2PlbOegm7s38Nx+LL9cXyN8Isznmdtfv9wAtFzlVKKumtZ3z/hrxAQiWJNPoKX/eWVjJQPK9SeBOWUjdFtgkb+WQbXIemDJSYWwF2exL6B1CUrI9A4bWOVWcylpz5FM+PJUucKrZfjRK3I6EyO49JMaDa0vL1w4YlZkY4eHR0FeiffjiBoz6+anH6eyTDCM1KAdpMM1gkWuiETzLpgNU2HEilDpZCjP7qdH5Uw+Hepxz46n5+U36LqHiCRH1NNNCLQahhNuiX3NNIKrVqtTL7BuHLJi58mHyqRg7d50K/L9Ww0YaA1HAge1JbiA8Z18ekaEe7HBZFlf/csG3g5MsIxwFqX8D9y5b1Ft5vvHhizrTR+4jOkcGMpM55f18XmVl3r6j7xaM8EfLY8u5uOKSZE10jY2Zr8Egk=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ac0f7dc-fb15-4844-42e7-08d715b3fc15
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:27.0444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3648
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053836_407797_8F1A12EC 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Max Krummenacher <max.krummenacher@toradex.com>

Reduce the current drawn from VCC_BATT when the main power on the 3V3
pins to the module are switched off.

This switches off SoC internal pull resistors which are provided on the
module for TAMPER7 and TAMPER9 SoC pin and switches on a pull down
instead of a pullup for the USBC_DET module pin (TAMPER2).

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 1019ce69a242..1f112ec55e5c 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -533,19 +533,19 @@
 
 	pinctrl_snvs_ad7879_int: snvs-ad7879-int-grp { /* TOUCH Interrupt */
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0
+			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x100b0
 		>;
 	};
 
 	pinctrl_snvs_reg_sd: snvs-reg-sd-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x4001b8b0
+			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x400100b0
 		>;
 	};
 
 	pinctrl_snvs_usbc_det: snvs-usbc-det-grp {
 		fsl,pins = <
-			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0
+			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x130b0
 		>;
 	};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
