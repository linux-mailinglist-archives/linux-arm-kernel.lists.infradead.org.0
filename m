Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E955AA22C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGOGKHgiulCflK/MBuGXBxBC+GfpVT8D3dyPWNgf4gw=; b=sKXmcEkQ4g2yor
	usfQFov+l39/LT7W7aB2t3nl+9NbEwiqJa8+Fo3TUNm1TgZKetCFyHLnyKFCVQy1vGEKxuhuU0tCz
	G+K4vfm3ZYBJaUnu38qzbW27f02SpfH3s9S3TD7zHWCLEUvsDmA7H5sYi2G1+5xd+4m+JD9HGcEXM
	vmaYR57clxz9+z/3JV2zEP3bLeG9U6Lu8Me+l87McV8lYYMblLYLSeWOdpdNEDx2peWrDTNPPu01g
	xaNlpuWDsAWnUxDjihhgH04HyxedDnwgXIPfIdYAJkfBzHWBi0eDNMmtEoqh586+8fz9sbwHLJlVf
	xaV291/I9G5z7PTlX/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qQS-0005Il-KE; Thu, 05 Sep 2019 11:59:44 +0000
Received: from mail-db5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qPQ-0004UO-6l
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:58:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBNHDZDUStnaEK+IP3odLMWW73tyPifIcIAcCJEJYsLFS779s023ty+OOpRW3ZKsiEUSP4pJpsbw5XVvb2vCYaTZ77dWucPcYOtZJVr+mzpmYs+fv+RRik8p+bGkC8RuqmrmsQmCQDUV54LIzKozeoeGTlcme/FdT/Os4GBatSu3FMBYUX5UbFKT1R9sqDVj6Pv8Ril4z33WsWi75xXm54JwiuFAKdeAi/ASXw4CDOH8dv56ShYrPTze3irhweVb0ojf74EaBRgyfdhhJUM2gxUPXToPRTmj7O336p7fp8MF0ZMdJUPH6jmajOWTecgYCbB64cSMNhrR6PA7IdpMnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fp5oPWpD9FJ8RjbconZIqtxGX2SD2xtan15/ZQiSPdQ=;
 b=NPLP2Zd4F28/xsnf4U5bEQedLmd2Bf3NcjiNolPma5LjxNUd3vS4JFz4g9eaLzGrxlBh8kWn+LWEJaaFWmF7KlMj6AatM56NkeUMAkc5s6xWF9eo7HzxF9WuVwlZEdOnuMxHrZStfjg2B7mIseO1daV5cHVvUvE4f1pZUangBr9i3jg3WcgwYKrJncusxV6IbulCxuF9hediQh3vh4wHaWZ/wzD7MqWgo+Ldod3gk2/OYN0SKOxK60cGo20mX8cHxzKNap5JZW3Se5ALUQj5NKMnY2sOMfFQqPeWI2/FwZ+kXQXSAByT+7L2A2d6R6GuEeB4FZr0LOgUGyMPmQGilw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fp5oPWpD9FJ8RjbconZIqtxGX2SD2xtan15/ZQiSPdQ=;
 b=qxZS6044mZq0bZqH2Y/H3WG9LSvRSKKZNsIy7/Z+FXchAEjMqadKMAGE4HctmeKP8GnGrEJgYxLdsnLRwavhpNWhHUkTGTSsov8SULIv1/jWGh8YnkEAQgb6jFFhOSPK/5QHvBidGX6lWNy/nQzHF3olSwo5grD2aeDhORV2hEQ=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3805.eurprd04.prod.outlook.com (52.134.16.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 5 Sep 2019 11:58:36 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb%8]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:58:36 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v4 3/6] serial: fsl_linflexuart: Be consistent with the name
Thread-Topic: [PATCH v4 3/6] serial: fsl_linflexuart: Be consistent with the
 name
Thread-Index: AQHVY+E/MloBNx91oUyoeM1sfbjxqA==
Date: Thu, 5 Sep 2019 11:58:36 +0000
Message-ID: <20190905115803.19565-4-stefan-gabriel.mirea@nxp.com>
References: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6P193CA0005.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:3e::18) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6b34273-9458-4a64-27cf-08d731f861c8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3805; 
x-ms-traffictypediagnostic: VI1PR0402MB3805:|VI1PR0402MB3805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB38052955DD56A6D5D244C9A6DFBB0@VI1PR0402MB3805.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(199004)(189003)(476003)(81156014)(81166006)(446003)(2616005)(486006)(71190400001)(11346002)(6436002)(1076003)(54906003)(71200400001)(110136005)(53936002)(8676002)(7416002)(102836004)(478600001)(36756003)(14454004)(6512007)(25786009)(2501003)(2201001)(86362001)(256004)(66556008)(64756008)(66446008)(186003)(66946007)(26005)(4326008)(3846002)(7736002)(316002)(6506007)(52116002)(99286004)(8936002)(76176011)(2906002)(305945005)(6486002)(5660300002)(50226002)(66066001)(6116002)(66476007)(6636002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3805;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Cl96CVrnKVWxXban5IXcji3mTF+4FFG8Bf6OxLCZGKKa1RL3JuwB3LkH7ZCWGTd9tnzC+0fOxhbckxR0nob00xVSZZzUBi2Prym59p9frcsyHkg/mWSbM6TCS/6cCy7l6ZmVjBhnG4sgkuH8K7fB+Pl5cZl7IrQsF49zIMGbUvz0tdZJH9wsYuTiS/cua/l9i+ivFGTrPntEDKt8Nj2EFtEePAimAWitDqhl2YM2R2RW1dDd1i7CcGXCBBgOsC0ZtPeUawmKwUlbrC772hXqdK0no7AZni5xNzTpTcHVSTT43K+cz8TCK5ykUfMVHXXq2J8gsTqXPCi+fpFIMqXx9HsvqtSG5ZK4TvX3eev8+mnwzTlaeR5fEigcDgeXfsrzeHsvapXaSCudeYhYJox6ay68zdmPV0E8vaE1iiZETr8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6b34273-9458-4a64-27cf-08d731f861c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:58:36.2080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ilreRH8d5tX6o1p/0yw7bANubUDFwkP31fmQODkmAZLRJb0r5XTKw/fTvekxKN273250Sg+3ddBI+kQjgMBr+ccwRXqKoKZ/laD3MNOzxsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045840_331620_28E65626 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For consistency reasons, spell the controller name as "LINFlexD" in
comments and documentation.

Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 Documentation/admin-guide/kernel-parameters.txt | 2 +-
 drivers/tty/serial/Kconfig                      | 8 ++++----
 drivers/tty/serial/fsl_linflexuart.c            | 4 ++--
 include/uapi/linux/serial_core.h                | 4 ++--
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 614012a61754..23162492ea2f 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -1091,7 +1091,7 @@
 			mapped with the correct attributes.
 
 		linflex,<addr>
-			Use early console provided by Freescale LinFlex UART
+			Use early console provided by Freescale LINFlexD UART
 			serial driver for NXP S32V234 SoCs. A valid base
 			address must be provided, and the serial port must
 			already be setup and configured.
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index b658589208bf..2d5115375345 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -1434,19 +1434,19 @@ config SERIAL_FSL_LPUART_CONSOLE
 	  you can make it the console by answering Y to this option.
 
 config SERIAL_FSL_LINFLEXUART
-	tristate "Freescale linflexuart serial port support"
+	tristate "Freescale LINFlexD UART serial port support"
 	depends on PRINTK
 	select SERIAL_CORE
 	help
-	  Support for the on-chip linflexuart on some Freescale SOCs.
+	  Support for the on-chip LINFlexD UART on some Freescale SOCs.
 
 config SERIAL_FSL_LINFLEXUART_CONSOLE
-	bool "Console on Freescale linflexuart serial port"
+	bool "Console on Freescale LINFlexD UART serial port"
 	depends on SERIAL_FSL_LINFLEXUART=y
 	select SERIAL_CORE_CONSOLE
 	select SERIAL_EARLYCON
 	help
-	  If you have enabled the linflexuart serial port on the Freescale
+	  If you have enabled the LINFlexD UART serial port on the Freescale
 	  SoCs, you can make it the console by answering Y to this option.
 
 config SERIAL_CONEXANT_DIGICOLOR
diff --git a/drivers/tty/serial/fsl_linflexuart.c b/drivers/tty/serial/fsl_linflexuart.c
index 26b9601a0952..ca90551384ca 100644
--- a/drivers/tty/serial/fsl_linflexuart.c
+++ b/drivers/tty/serial/fsl_linflexuart.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * Freescale linflexuart serial port driver
+ * Freescale LINFlexD UART serial port driver
  *
  * Copyright 2012-2016 Freescale Semiconductor, Inc.
  * Copyright 2017-2018 NXP
@@ -938,5 +938,5 @@ static void __exit linflex_serial_exit(void)
 module_init(linflex_serial_init);
 module_exit(linflex_serial_exit);
 
-MODULE_DESCRIPTION("Freescale linflex serial port driver");
+MODULE_DESCRIPTION("Freescale LINFlexD serial port driver");
 MODULE_LICENSE("GPL v2");
diff --git a/include/uapi/linux/serial_core.h b/include/uapi/linux/serial_core.h
index 63fa56b899e8..26967c2f4a4f 100644
--- a/include/uapi/linux/serial_core.h
+++ b/include/uapi/linux/serial_core.h
@@ -293,7 +293,7 @@
 /* Sunix UART */
 #define PORT_SUNIX	121
 
-/* Freescale Linflex UART */
-#define PORT_LINFLEXUART	121
+/* Freescale LINFlexD UART */
+#define PORT_LINFLEXUART	122
 
 #endif /* _UAPILINUX_SERIAL_CORE_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
