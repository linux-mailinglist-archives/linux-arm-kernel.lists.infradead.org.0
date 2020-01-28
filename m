Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C8E14AF57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 07:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+nA/LCV0deX2V7+Y/fTGx4v+DD0rRfnTO39h0dHWiI=; b=FGFApk+XgJdN6/
	cnE78KImr3kLm8BQhenTUdb6CZV2fPEDIVmJOvKZrxFXA5PZEUlOy4nxDh1M6rbDVztIvdRdwAWnY
	AAVPhZmTdQ8wxjt7AOtfYsXcEVzWMC/ZVXDuXeo+36yHgUczGhmHG1i4UjGVQSQDW0fi/752fFnni
	IutQVhq5tXrMEHjT0OQYvNl5zd9tHBX9vEXzLSEfVEILKN3ckFh/yQBMy6QClwy0irXEpdPkCgYGa
	OPa4kYkwkbWpVjQ9c5UpyS2vIdhsjTmNk4kBZKFQ82G9HJudv7bcnJT8d+okwUD+N7Vu8zwCkkt47
	lPuykjLDypEp2g84PkqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJyi-0007WH-Nr; Tue, 28 Jan 2020 06:04:00 +0000
Received: from mail-eopbgr00052.outbound.protection.outlook.com ([40.107.0.52]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJy4-00078q-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 06:03:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlblF9/7WRdavX6zT489BUX6KVAVilfCw/2GQXMde9pBTcdRqoGLONPGZ1U4b6yprYTiGQWq7/hTvjMQAj15nCgFePCO3OYOABsPNZ6XlLqNCT35QyGpNaserD+tPMTXmreMuhUo8ga4wV3jgxBTntGW/cIIvF7qiFo0dl7J5t4ppwXOzzZV90Oa9Ut+Co8bWs2ADpnXPDiWrfSvbkkUcqnWhc3rL3t4W/07V27G/pMNsKPTCY3ZTq/CpqF8RvMR9kz/8HHoOYe4xNH2HuDZVuHjwlTj4IcowqExqGLHd1dzo7YQIio1UKRNqWfkgJrfUxIfFiDMdnVh7eWwd4hyjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=am3QQVO4A2Q8JSmD12ha7Qy1WjL/Iw3B8FFXaDsVf1Q=;
 b=jcZuIQyYsxTdUgsn3rXgAX0WpeYUewN3hKResN1w6JKKTAvlrt1j+744IMAK7lSeP5ZEJnjd1HCdWtKzO5lnhSdhxhPmimyD5dOKKkrCwDgy13B1EU3nenYjHGiIapImXbsfNQrGPXVxct/W3mn1JtrYXfcJRe7vBEUt5XFCT0Ueumhxiv6nNZVCJutoTlXKvMHPbrNYjT1rL/ZSZQOTSFEl3T+91hlM10UHX6NX2loiDIN18mUZYcvMLkHxFDWZsXfacJWKSkObepSVzTxJ9rywKLx0yVFIpwIDL3cAYF9gu9CTCogrxXPeGukhFoJ05bK+J5h4u1SDrdHGt3xJpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=am3QQVO4A2Q8JSmD12ha7Qy1WjL/Iw3B8FFXaDsVf1Q=;
 b=TCfsrCyrgSVzFftGDaUmKg30rOJjrVcmlUVwifxy+SoJw2tW0ZBLsuHW4ElnSAzlAID400cLptQICc8FAlucdbzL+eRGdI3wFZREGEpWS+A1vNj2gvVXw2SMhVkcsG4GT6BJVBobWi+ljIh2bjWxTa0PG8SQHGcOO5PMGBtbOY8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5377.eurprd04.prod.outlook.com (20.178.113.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 06:03:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 06:03:18 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0087.apcprd04.prod.outlook.com (2603:1096:202:15::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2665.20 via Frontend Transport; Tue, 28 Jan 2020 06:03:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "arnd@arndb.de" <arnd@arndb.de>
Subject: [PATCH V3 2/2] soc: imx: increase build coverage for imx8m soc driver
Thread-Topic: [PATCH V3 2/2] soc: imx: increase build coverage for imx8m soc
 driver
Thread-Index: AQHV1aCigJa3dHmiEUaofW1PYvJuZA==
Date: Tue, 28 Jan 2020 06:03:17 +0000
Message-ID: <1580191098-5886-3-git-send-email-peng.fan@nxp.com>
References: <1580191098-5886-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580191098-5886-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0087.apcprd04.prod.outlook.com
 (2603:1096:202:15::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b0f90412-cef8-4f46-3f89-08d7a3b7c51d
x-ms-traffictypediagnostic: AM0PR04MB5377:|AM0PR04MB5377:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB537795F4F8D6B1D3FE0436EB880A0@AM0PR04MB5377.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(189003)(199004)(2616005)(956004)(52116002)(86362001)(8936002)(8676002)(81156014)(81166006)(36756003)(64756008)(66446008)(66556008)(66476007)(44832011)(2906002)(16526019)(5660300002)(66946007)(478600001)(6486002)(110136005)(54906003)(26005)(316002)(71200400001)(6512007)(6506007)(69590400006)(186003)(4326008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5377;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D1mEfX4lIYF8GlVtFXkAdv3UUndh0I61K572ZNhaSAJrfoBQ7FS3kF6YOmWvlKYFOwiGuNyqCxBZfONNnUcpQNTPdtpPdOZb9fiQjAGmPpWl09Kf1M6TgxYOq6Hldmx6c+lTAeGXQTs44gYUS5vgJXIBMk2Et1RUFTe4bwU3BTL8jmLZOahZiwdSDz+HvvdfT+qsiOjidwO9uKDZbyJwAfOgvxccrA1hcy8fl+BAQc8NsZ1dP/tsPrDChtGFlo0SIkTTaSeJnGDX80LHYrQ5dtKtD/HbbsqVvIcQboYwfVOAHNtwSB+mzKH1+p1/i6ZX92wuJJm9DX/9V097qMAWKhwIDAQkh12SB1ZtaDqEjPy9p+4IwnS1LhFvrSpPjnlH8fa3ynJLTQKAE73fvB9rfUdoI188y82+m3l8tVk1KbA0O9ctxI0asH0CrbSsBsQSmfRjVHkbUxyPDt3Zf0K8dAAk6kt3yYXqdWgE1dyABTwqr8jH7Z5mPq8QptS3ZS/HOZLTPg/DNilO7+88jpjFa1EXDOdxw5IxAdbR/Xx06RkCZpEzUrGk1hmrEpVuGxyo
x-ms-exchange-antispam-messagedata: 0Gn1R85pswAlGXV4jz4ura+j/drq60ka8VPxceP69Vxk26FX/ACqJk+O/CL0r42ZULAceSUcwWKM7xHVkI9Kv1zsPmkAXiF6pV0y2OvYyJd5Ll/qiNR9zuYM/5nrGVAsqMm9/5Kp3CN7jUweLx+xgA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f90412-cef8-4f46-3f89-08d7a3b7c51d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 06:03:17.9117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9+SqGCFqsDmT+rNIHl0d6jn+h3dnzrHL2WY2zpqYJsYCBb+nKo8bf/OrV59+VGI8zcMAHH6xsd4fnoFQrTLF7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_220320_539338_4DC94268 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The soc-imx8.c driver is actually for i.MX8M family, so rename it
to soc-imx8m.c.

Use CONFIG_SOC_IMX8M as build gate, not CONFIG_ARCH_MXC, to control
whether build this driver, also make it possible for compile test.

Default set it to y for ARCH_MXC && ARM64

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/Makefile                        | 2 +-
 drivers/soc/imx/Kconfig                     | 9 +++++++++
 drivers/soc/imx/Makefile                    | 2 +-
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
 4 files changed, 11 insertions(+), 2 deletions(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 2ec355003524..614986cd1713 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -11,7 +11,7 @@ obj-$(CONFIG_ARCH_DOVE)		+= dove/
 obj-$(CONFIG_MACH_DOVE)		+= dove/
 obj-y				+= fsl/
 obj-$(CONFIG_ARCH_GEMINI)	+= gemini/
-obj-$(CONFIG_ARCH_MXC)		+= imx/
+obj-y				+= imx/
 obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
 obj-y				+= mediatek/
diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 0281ef9a1800..70019cefa617 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -17,4 +17,13 @@ config IMX_SCU_SOC
 	  Controller Unit SoC info module, it will provide the SoC info
 	  like SoC family, ID and revision etc.
 
+config SOC_IMX8M
+	bool "i.MX8M SoC family support"
+	depends on ARCH_MXC || COMPILE_TEST
+	default ARCH_MXC && ARM64
+	help
+	  If you say yes here you get support for the NXP i.MX8M family
+	  support, it will provide the SoC info like SoC family,
+	  ID and revision etc.
+
 endmenu
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index cf9ca42ff739..103e2c93c342 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
-obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
+obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
 obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8m.c
similarity index 100%
rename from drivers/soc/imx/soc-imx8.c
rename to drivers/soc/imx/soc-imx8m.c
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
