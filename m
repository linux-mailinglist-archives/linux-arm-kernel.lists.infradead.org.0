Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344EE164511
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XeKZL6Po1AIOpoFRoWCLzsvloVD4eyfpv5k84e3BYxc=; b=aDbZIUJS7hkGw/
	r3Nt829TamdfieVIRAf/p+ptKtlif8Kh1PeTwwJWyBfDvgbuFJABCLOIiwx2FoRG5nbHrm3JfVRmA
	m6IjNK1jM1s0xzpKolfy4696W/fnPOQE2ZzR4E0a8l5ngKcN+9sSwZ9pAAsg2u1L5dveZwZAhJUbi
	oD94/4YB2rdaFhW7YnuCwzZNA1OtqOfQdaUCCFcI1BaxBPQcGGBRhNTz+4dz5CfMPcbcDYGzTDVum
	q0HtODc7s4bhJ0Jn3EOMwbjcTCdRV3oKPEZxYAbFMz8JD/ng0kraNmIsxAiQBd7qWRfu2NFEeOHl7
	oX5qxfOZj8AO+HjJ+bnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4P8b-0006fS-Ha; Wed, 19 Feb 2020 13:11:37 +0000
Received: from mail-he1eur02on0700.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::700]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4P8S-0006ey-VI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:11:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFsJSqnd2Ga/Mia1ixKtsUv4O37KX20a6zzyeQpLwxLgcIMWUE8j2g6iQtVqg91lhtwkPQVmP5nL7ES0gHac+N+eRnby06seNxFVMTPZc78l9eBZ1nQcLkM2uivTIhqcnmRkny849MplCIYigJ7OQNCxUhDaJWD+QVLPMX5jLMCkC1S7oeD708seKrS2a4P6DgnJZFkhsB8Vv7T2KC78yZW3MnQ4khgUuy7EPEEhQH/4qXjg7yoqCKpjUl7BG4m6SDflxLnA4Ro0J3de46YelLRHIt5Ir03U96Ukx1HPFVyo7dqEyspx00RkPDd9z41mkyoUeTUoNQpZrqIaSTT8aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HWWyT5xBxQRBMC96YA8KTfqnxQue/DmYtW6XtI49BtU=;
 b=BjcY5UlcCJkQWYEON7H+mFaXW8YUx6xAwY00dFWfufb+uU/XIuH1SDM1PUBv6tpybyttHeSQne/Z0c0fqIdZYgmsGICJcesJNFvuGVwRQMn2yNgtp65tY8V0WUnUYgFXcxBR+H7Q6s3puKG/SG2tc+dO38aUIaj7TBaS6Hfbi29TRti4Mu3cRghFS9ojjfN9daBwCbBXQbM/vwuAyNtDE2VEnMvAbGn+78uey/IZIwm/zn1yWYkSiSo8dcFVEjYQewP7BQoRTRdCxx9fIODqm/YPwSJfaD7Lb0kKmW22LorNTwdb0zJLoBhGGPSfMTEse1tgd0GGiyooeeqTA4w5ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HWWyT5xBxQRBMC96YA8KTfqnxQue/DmYtW6XtI49BtU=;
 b=knftrQzUefIwDXRwWp0YECWXKMX9ffx0fhRl1YzGihXKsIi60SujdF3VNGRbopyTJo7jWekt78Qn4+nzh6buU3GlK/B2+sV32Ysk3baY4uOP9oH3h6rc9c1xR5KWxN7UVY4XhsZQSppRIVWuQAMY6YRKD/ZaLKwb0/qPNznMr5o=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6112.eurprd05.prod.outlook.com (20.178.204.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Wed, 19 Feb 2020 13:11:24 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 13:11:24 +0000
Received: from localhost (194.105.145.90) by
 PR0P264CA0152.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1b::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 13:11:24 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH v2] ARM: dts: imx7-colibri: Fix frequency for sd/mmc
Thread-Topic: [PATCH v2] ARM: dts: imx7-colibri: Fix frequency for sd/mmc
Thread-Index: AQHV5yYW1MJ7wsEAJkO5IbqDZXMXGg==
Date: Wed, 19 Feb 2020 13:11:24 +0000
Message-ID: <20200219131121.3565738-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0152.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::20) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 264d84c1-21c1-452a-6cdb-08d7b53d38b7
x-ms-traffictypediagnostic: VI1PR05MB6112:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB61123F0519D3A4E19AFDDF0AF9100@VI1PR05MB6112.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(396003)(346002)(376002)(39850400004)(189003)(199004)(4326008)(5660300002)(86362001)(66476007)(36756003)(316002)(54906003)(956004)(66556008)(2906002)(66946007)(64756008)(66446008)(478600001)(2616005)(71200400001)(16526019)(7416002)(81156014)(6496006)(186003)(8676002)(81166006)(26005)(52116002)(8936002)(1076003)(6916009)(6486002)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6112;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bgUF27a0ElrK/IwiHJv0kndq0KBKg0mVI8ntY1Mj0JZ7874i5niwJ75ln2O+fb9mUmRceEX6eehgFHct6JCHF1N1oKn5BO6ynEVby2eAPQxGwots3qRN4rRrScAXr2ATw9ddJ31sN7vFYZjGAbYz+O8BCi9FvHzLXE9m7i4SNT8uvRcap+bmooS8ajVgNJcAYrv9UiXWac36oLsd2FrmjTr0LbsInfruahbYw67aHXXofh+9s6ojR9eHDZceTxlDNFm9KL2i2D/KXLXjCHchrUyQYV9HwpTbSm8ZQjv5h1rF3U5HpxEsFp6VzTfcLzdZ9Li5LlG4n/nx0x7l8AdhpfF4kiishAbChCM2xwntl0Q4y2bLAjzQ8HtYeTZzUeJHKUwWk844q3gyor/JcXmOcDIlYgzmKkhIaNARpYPQ8SZHVDDxr+KtCT8YY0mOPsHq
x-ms-exchange-antispam-messagedata: /9lJU4AdTQlE3orF51R+ir7v8/4zebnr7aKOtJzMkw9Tc+gC6GFwBuHCypyFwfv1uwNdJ066n+ZH8dBP5bwqevp8gwwH3/pMrACZcyqnYH6a+L9xtJQbodwWeYgfXxXVmjSap4hBf7xX8rzJFETM5g==
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 264d84c1-21c1-452a-6cdb-08d7b53d38b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 13:11:24.7091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Egxs/DAC2qdsBAKy8+qDHrsDdabNZb5S1lCO1hnOIRaTpwHqGA+As+3qMeca2JvsRV2c3DR6iR81c0CDTQyb+RBlwOoI0wmryxTirjicUkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_051129_011420_827FFC48 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:700 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SD/MMC on Colibri iMX7S/D modules successfully support
200Mhz frequency in HS200 mode.

Removing the unnecessary max-frequency limit significantly
increases the performance:

== before fix ====
root@colibri-imx7-emmc:~# hdparm -t /dev/mmcblk0
/dev/mmcblk0:
 Timing buffered disk reads: 252 MB in  3.02 seconds =  83.54 MB/sec
==================

=== after fix ====
root@colibri-imx7-emmc:~# hdparm -t /dev/mmcblk0
/dev/mmcblk0:
 Timing buffered disk reads: 408 MB in  3.00 seconds = 135.94 MB/sec
==================

Fixes: f928a4a377e4 ("ARM: dts: imx7: add Toradex Colibri iMX7D 1GB (eMMC) support")
Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---

Changes in v2:
- keep the Fixes tag in the single line

 arch/arm/boot/dts/imx7-colibri.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index d05be3f0e2a7..04717cf69db0 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -336,7 +336,6 @@ &usdhc3 {
 	assigned-clock-rates = <400000000>;
 	bus-width = <8>;
 	fsl,tuning-step = <2>;
-	max-frequency = <100000000>;
 	vmmc-supply = <&reg_module_3v3>;
 	vqmmc-supply = <&reg_DCDC3>;
 	non-removable;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
