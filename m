Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662A6C893F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IKehbx6h2mvnltWzoOiCuOZym/mM57ryBXtnZCIi9aA=; b=IA1SWPkJlSAwfc
	qrQiN2q5Wyc2aV2dR9FRoNNMissQzDltr+dh4e/+sMsdSt2imSSlzVfxdxOygFqOaV5vAPBy8XXyN
	Lm4mNfpfjJp5v+vR+yXsjmx7W6B+wsQGGbHacH0fbKIJtINHN1Hw5fLkclZIOAVlSIh7dcoGvbqBU
	p+FsZccglZ1Je6KzVRR63cjNWEQkwBdzUXU54G/dyYMxyc2rSpvLrYteHFV8gmEz0jaEAaRqwFuFZ
	Nv4z30ygpIue3VUMyhS0qEL3bEvPNuuiNMe05/AoHyqmXTLHixstIsJY+vmBSHOWhPg+ZSK4tlyxA
	UUAcL0RjiBvfTJ8ein0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeK6-0007Go-Fi; Wed, 02 Oct 2019 13:05:42 +0000
Received: from mail-vi1eur04on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::602]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeJF-0005KX-AD
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:04:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GGtWBNqo3gmWKnYJJvTBEUsR7ZGt90B+S1WX8bK5RPsJJFVAyEZdqkDRPdcjJaHH84SPXn0jdCf5BZuwkMbbf34yd5sf8Fb4L1SepribW3e/vHzBAhqfL+MFxGqyKWymWB7M88VTbU6JWZf6Tkj62sAXZIChcuCKmoAsGD58vCP/dJJPIhpOsfUpS/LFyA3JnJNXnnEvxsbII6cVKIqHb4SvWFcYe9mKemp5n1UoLCAPrIX/N4rQtxgQe16oDbS3jKgl0UfL0ycNIwgproA3DbppASnzgPFw704AdpbyIy2LBGMlluKh424xPR6dhxr31yntizspMkBwj7fgmQoBog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VqQUcoI7siuClgI0M6QIJ4XwGRz82ZJqe2/hZfHIipE=;
 b=NjwB8j8HIHxjV2aHQig12B0Y+60cmK7pUBs4UONCh2hRxRczE8ciP6qY+4bVkrTKg+otQSDCbr3heWEdQ5wL39tAiquJW71btSD/3QgMCwvrM2BdQlo3WZtF6uSLAh7+3XtC0DbMbwkNgE3GVRakDu9GXV3pdyK0SpIWamzg1OadPdqDuwNsVBF1CYFRtYBLr8cx5wqCQD7/ODOF2MUpUdwv41sd+FxiIEKNqJ2NXRS8P4hB+UF4LUlG8u/PiRYZ/A4NihCZODwT7ZMV1Uros2MARh+kM56Zkl92U/A9fAEeDQ30fsXrmYoMbbXaQ+KxDqn/AWjVLwS4lEWulGzXeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VqQUcoI7siuClgI0M6QIJ4XwGRz82ZJqe2/hZfHIipE=;
 b=Bju7Yd0nOkj7DKHCTYz6anSiB1lm59miWBY9DCt2EUC4kQKvQ7WvCK1JKiXoOqfxD7iOJscm4XJWWdBv9jaQmCks58tbdFSFB/fxtN8vD/i0b4IXTKkZvvGntul2vU5UahGtlSy0yEFYDGylMLHwPJofsD5Zq5QZ3qTGfXckBgw=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3918.eurprd04.prod.outlook.com (52.134.17.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 2 Oct 2019 13:04:42 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::fd33:c447:3cab:c36%7]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 13:04:42 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH v5 3/5] serial: fsl_linflexuart: Be consistent with the name
Thread-Topic: [PATCH v5 3/5] serial: fsl_linflexuart: Be consistent with the
 name
Thread-Index: AQHVeSH0+mfP9oRy8ku2MCfc+O1hUQ==
Date: Wed, 2 Oct 2019 13:04:42 +0000
Message-ID: <20191002130425.28905-4-stefan-gabriel.mirea@nxp.com>
References: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: PR0P264CA0194.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::14) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.240.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43b86077-b31b-469c-7e91-08d747391746
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR0402MB3918:
x-microsoft-antispam-prvs: <VI1PR0402MB3918DF9161580DE1DA820DD6DF9C0@VI1PR0402MB3918.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(376002)(346002)(189003)(199004)(102836004)(2201001)(5660300002)(26005)(478600001)(76176011)(486006)(386003)(14454004)(50226002)(8676002)(8936002)(81156014)(305945005)(81166006)(6506007)(7736002)(7416002)(64756008)(6436002)(66556008)(66446008)(476003)(66066001)(2906002)(11346002)(2616005)(66476007)(6486002)(66946007)(25786009)(52116002)(2501003)(186003)(256004)(446003)(6512007)(6116002)(3846002)(36756003)(71190400001)(71200400001)(4326008)(1076003)(86362001)(54906003)(99286004)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3918;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jUxzy4Xu/YERbC9196grQB+gqcNhJNtZSpfz3FYc0EVBV7j+CdsreF1W+Hm5A7cZOuaL9wgF9JxDHk5p5K8Dv7OalRiYpj91fGRD52IslCftWmHOt8S6IMX/GUoX2dKrSODMLnq4q4KWunVbbxB8YM0/1IRtBDjxiqfw4MLOlVm0uv8YlmXN1DvMedeWxmaNRwgGaD/RMPgp4wTElt0yNTNw9PfNbT3dB6M4HbHQZxCniSBOuIgfQy0a+85qLS9qwVEy9ZO4kf6UMr/qCp6/TCqHYjP37mntd3ohyEh4LB6GERwcpj3d8h4q5n7d5t4a2fG00PMyvyRfj8cdCNn7KmQbxOi2ZUv5wEx8bo/sn4BXL+hvPZSh1MQPBRkf1FoTRSIzgeX93HzteL+A7ANL8UKOXqtKpq2+r8GWrffwRUc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43b86077-b31b-469c-7e91-08d747391746
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 13:04:42.8666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SG70gBIXmhO42yRLgsh90GW9uieiuAQ9oDvHydIMgm6foY+0c1JDLx8ERIPesR2ajn5jH+N07hfqztytMftVPcrERdrcPlyrklvpJz84zO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_060449_380035_C8C5C075 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:602 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index c7ac2f3ac99f..666326d74415 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -1101,7 +1101,7 @@
 			mapped with the correct attributes.
 
 		linflex,<addr>
-			Use early console provided by Freescale LinFlex UART
+			Use early console provided by Freescale LINFlexD UART
 			serial driver for NXP S32V234 SoCs. A valid base
 			address must be provided, and the serial port must
 			already be setup and configured.
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 4789b5d62f63..c8e11f62ea19 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -1391,19 +1391,19 @@ config SERIAL_FSL_LPUART_CONSOLE
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
index 68d74f2b5106..2d39e13176e1 100644
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
@@ -933,5 +933,5 @@ static void __exit linflex_serial_exit(void)
 module_init(linflex_serial_init);
 module_exit(linflex_serial_exit);
 
-MODULE_DESCRIPTION("Freescale linflex serial port driver");
+MODULE_DESCRIPTION("Freescale LINFlexD serial port driver");
 MODULE_LICENSE("GPL v2");
diff --git a/include/uapi/linux/serial_core.h b/include/uapi/linux/serial_core.h
index 0f4f87a6fd54..8ec3dd742ea4 100644
--- a/include/uapi/linux/serial_core.h
+++ b/include/uapi/linux/serial_core.h
@@ -290,7 +290,7 @@
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
