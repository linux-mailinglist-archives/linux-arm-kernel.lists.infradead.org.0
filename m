Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D92613CC2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 04:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRLbRu2dqZY3qew2g7KF/dqyBREog+b4OwBlM6fA6Mw=; b=NdNYbtBXDf0q5C
	nF66TXafpnEd/H1dVX4kQemirDH4tAtwU04hbhf92pUGaf7/vuzK5f4A9auj4UbkSKD+5LmOLkcwP
	WPq4XduP+QHj+63q+2YzYWjl12hD93BBkS4TWuYIrwRvx532N+67QnVsxi4HeUNNli8i9pYXYSWHT
	WPgh4gcycCbQyfZimjgxL+XoLL+BqBEkLWVs71FbMnPl+yoptPKTJHh0bEJCwx6VpjLYyTNts2Bgc
	xRQchZWtzEO6xvLHvkZNQHxJ/9RjAMLbzN/JgEzO2gMiQztUJjlqKJmSwTngT+fvD6Dzm+1eyQKLk
	NdssEuc7sIbFI26XtqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN6gy-0001OP-CV; Sun, 05 May 2019 02:15:52 +0000
Received: from mail-eopbgr150087.outbound.protection.outlook.com
 ([40.107.15.87] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN6gC-0008At-KE
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 02:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lRq9Skx4F+BiFbJ9UTmSd06o4Rko8cdVr8QBTAyDFQ=;
 b=e8o1oO/Ehmo4hu3xDO80h/48ZfoCIbjSyAnFdOgc4U6+hWLNHEbv1sd4bOJx2Fmi4M5o7pWm0dgkUnLME4napW0Z33uosfYck4rbnbqGexuD2ulpnTYfejc7lyjng82Ntukpe5YToP/p4ncVHIwXPA7zMbk6JCG8R22BDyJFd8U=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3721.eurprd04.prod.outlook.com (52.134.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 02:15:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 02:15:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-watchdog@vger.kernel.org"
 <linux-watchdog@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V3 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Topic: [PATCH V3 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Index: AQHVAuhX3Dci+0ziCkuAahuxTj8vrQ==
Date: Sun, 5 May 2019 02:15:00 +0000
Message-ID: <1557022189-10993-3-git-send-email-Anson.Huang@nxp.com>
References: <1557022189-10993-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557022189-10993-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0145.apcprd02.prod.outlook.com
 (2603:1096:202:16::29) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a0221f6-f6d4-4cfb-f637-08d6d0ff79b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3721; 
x-ms-traffictypediagnostic: DB3PR0402MB3721:
x-microsoft-antispam-prvs: <DB3PR0402MB3721AF2978B4E371F6B68A90F5370@DB3PR0402MB3721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(366004)(346002)(136003)(199004)(189003)(14444005)(2906002)(256004)(86362001)(25786009)(71190400001)(14454004)(76176011)(316002)(2501003)(36756003)(6116002)(3846002)(2201001)(52116002)(478600001)(68736007)(99286004)(66066001)(8936002)(50226002)(71200400001)(6486002)(6436002)(6512007)(53936002)(4326008)(81156014)(7416002)(486006)(305945005)(186003)(73956011)(11346002)(66946007)(2616005)(476003)(66476007)(66556008)(64756008)(66446008)(446003)(102836004)(110136005)(5660300002)(6506007)(386003)(8676002)(81166006)(7736002)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3721;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /+zuer9pNces6ETef91Xg5b71Vwh8S14uaaiTWEzXP0kIV+9Fwu1//+6GmotyWtE5JXUcLkP168uJSsyw41Yc6Mz5eH7hfAqDcfdD5w5AJiKqfC34+CXUc0npman9N6Qh4jKzyuCRj5C7VozJFnPkbCVHYegOnaAuFqUD68x+cNSfTYZxEjhUXR6jQv6T+S7fdwUIQ3TWjUwdqfQ16lEINixBW4m/i2JLadhkJo1/uEeBPxtnsx21882Rycrfc2hjO6ir0pJMVq03TqA1/1WgSz1limEQqpjVnRA17g4fLh8CtrKXaJypQ2nbxhKE1+X1Y6FAcE4+ypFPsjhH2dlBNyr5HbVJZtYLwYpo5pumQrZEktW8c8D17FigwwvZyngkn4fquEDkh/uTxo7GsdNFgrjmZpueuzLVnisEGrmVT0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a0221f6-f6d4-4cfb-f637-08d6d0ff79b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 02:15:00.2296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_191505_072432_C52752F6 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX system controller watchdog can support pretimeout IRQ
via general SCU MU IRQ, it depends on IMX_SCU and driver MUST
be probed after SCU IPC ready, then enable corresponding SCU
IRQ group and register SCU IRQ notifier, when watchdog pretimeout
IRQ fires, SCU MU IRQ will be handled and watchdog pretimeout
notifier will be called to handle the event.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 drivers/watchdog/Kconfig      |   1 +
 drivers/watchdog/imx_sc_wdt.c | 114 ++++++++++++++++++++++++++++++++++--------
 2 files changed, 95 insertions(+), 20 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index e19960a..dbc74e1 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -710,6 +710,7 @@ config IMX2_WDT
 config IMX_SC_WDT
 	tristate "IMX SC Watchdog"
 	depends on HAVE_ARM_SMCCC
+	depends on IMX_SCU
 	select WATCHDOG_CORE
 	help
 	  This is the driver for the system controller watchdog
diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
index 49848b6..d8493a3 100644
--- a/drivers/watchdog/imx_sc_wdt.c
+++ b/drivers/watchdog/imx_sc_wdt.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/firmware/imx/sci.h>
 #include <linux/io.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -33,11 +34,19 @@
 
 #define SC_TIMER_WDOG_ACTION_PARTITION	0
 
+#define SC_IRQ_WDOG			1
+#define SC_IRQ_GROUP_WDOG		1
+
 static bool nowayout = WATCHDOG_NOWAYOUT;
 module_param(nowayout, bool, 0000);
 MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
 		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
 
+struct imx_sc_wdt_device {
+	struct watchdog_device wdd;
+	struct notifier_block wdt_notifier;
+};
+
 static int imx_sc_wdt_ping(struct watchdog_device *wdog)
 {
 	struct arm_smccc_res res;
@@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct watchdog_device *wdog,
 	return res.a0 ? -EACCES : 0;
 }
 
+static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
+				     unsigned int pretimeout)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
+		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
+	if (res.a0)
+		return -EACCES;
+
+	wdog->pretimeout = pretimeout;
+
+	return 0;
+}
+
+static int imx_sc_wdt_notify(struct notifier_block *nb,
+			     unsigned long event, void *group)
+{
+	struct imx_sc_wdt_device *imx_sc_wdd =
+				 container_of(nb,
+					      struct imx_sc_wdt_device,
+					      wdt_notifier);
+
+	if (event & SC_IRQ_WDOG &&
+	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
+		watchdog_notify_pretimeout(&imx_sc_wdd->wdd);
+
+	return 0;
+}
+
+static void imx_sc_wdt_action(void *data)
+{
+	struct notifier_block *wdt_notifier = data;
+
+	imx_scu_irq_unregister_notifier(wdt_notifier);
+	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
+				 SC_IRQ_WDOG,
+				 false);
+}
+
 static const struct watchdog_ops imx_sc_wdt_ops = {
 	.owner = THIS_MODULE,
 	.start = imx_sc_wdt_start,
 	.stop  = imx_sc_wdt_stop,
 	.ping  = imx_sc_wdt_ping,
 	.set_timeout = imx_sc_wdt_set_timeout,
+	.set_pretimeout = imx_sc_wdt_set_pretimeout,
 };
 
-static const struct watchdog_info imx_sc_wdt_info = {
+static struct watchdog_info imx_sc_wdt_info = {
 	.identity	= "i.MX SC watchdog timer",
 	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
-			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
+			  WDIOF_MAGICCLOSE,
 };
 
 static int imx_sc_wdt_probe(struct platform_device *pdev)
 {
+	struct imx_sc_wdt_device *imx_sc_wdd;
+	struct watchdog_device *wdog;
 	struct device *dev = &pdev->dev;
-	struct watchdog_device *imx_sc_wdd;
 	int ret;
 
 	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
@@ -111,42 +162,65 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, imx_sc_wdd);
 
-	imx_sc_wdd->info = &imx_sc_wdt_info;
-	imx_sc_wdd->ops = &imx_sc_wdt_ops;
-	imx_sc_wdd->min_timeout = 1;
-	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
-	imx_sc_wdd->parent = dev;
-	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
+	wdog = &imx_sc_wdd->wdd;
+	wdog->info = &imx_sc_wdt_info;
+	wdog->ops = &imx_sc_wdt_ops;
+	wdog->min_timeout = 1;
+	wdog->max_timeout = MAX_TIMEOUT;
+	wdog->parent = dev;
+	wdog->timeout = DEFAULT_TIMEOUT;
 
-	watchdog_init_timeout(imx_sc_wdd, 0, dev);
-	watchdog_stop_on_reboot(imx_sc_wdd);
-	watchdog_stop_on_unregister(imx_sc_wdd);
+	watchdog_init_timeout(wdog, 0, dev);
+	watchdog_stop_on_reboot(wdog);
+	watchdog_stop_on_unregister(wdog);
 
-	ret = devm_watchdog_register_device(dev, imx_sc_wdd);
+	ret = devm_watchdog_register_device(dev, wdog);
 	if (ret) {
 		dev_err(dev, "Failed to register watchdog device\n");
 		return ret;
 	}
 
-	return 0;
+	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
+				       SC_IRQ_WDOG,
+				       true);
+	if (ret) {
+		dev_warn(dev, "Enable irq failed, pretimeout NOT supported\n");
+		return 0;
+	}
+
+	imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
+	ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
+	if (ret) {
+		imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
+					 SC_IRQ_WDOG,
+					 false);
+		dev_warn(dev,
+			 "Register irq notifier failed, pretimeout NOT supported\n");
+		return 0;
+	}
+
+	imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
+	ret = devm_add_action(dev, imx_sc_wdt_action,
+			      &imx_sc_wdd->wdt_notifier);
+	return ret;
 }
 
 static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
 {
-	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
+	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
 
-	if (watchdog_active(imx_sc_wdd))
-		imx_sc_wdt_stop(imx_sc_wdd);
+	if (watchdog_active(&imx_sc_wdd->wdd))
+		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
 
 	return 0;
 }
 
 static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
 {
-	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
+	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
 
-	if (watchdog_active(imx_sc_wdd))
-		imx_sc_wdt_start(imx_sc_wdd);
+	if (watchdog_active(&imx_sc_wdd->wdd))
+		imx_sc_wdt_start(&imx_sc_wdd->wdd);
 
 	return 0;
 }
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
