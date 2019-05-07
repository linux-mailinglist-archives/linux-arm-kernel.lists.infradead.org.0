Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE5515747
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 03:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MM7ivFD8SJoFUWKPDuE+eL7yRXunxfiGfhchqaToFT8=; b=M8AhpAzkYYYvJh
	BlOyWaw4pPso+fM04v8SGendMZAUWpxEpkdUa3SC3Lp+pTRBpgVWmgzrfxxsCekWMLEoPpZyd/n7t
	xN0cuXpubBrK2bRUls3cyvNtBjwgM3dE4Az4dCGnUrLNnTKlwJAfyrCOCvDJf6nMidGAEoTqImv1/
	PiyLfynyVElFg82Wj7qzPPpGetz5zFw6I5lPokKdsUbQml0ldndpgAR+D4WaywcGAUDjVoHAq7K1s
	KXe2ARRUIpUfdRC0y+po1nnWGnPll8nHE9Fmj6i1GIHxh73q4VybvGsR28dr8QUq2VEBwBxPkXwuK
	RsAtbQRcdchQuXcoSm0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNouS-00080k-5f; Tue, 07 May 2019 01:28:44 +0000
Received: from mail-vi1eur04on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::614]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNouL-000805-36
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 01:28:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=54/FlCurW15BSMk7Gar9wAQsu+ticy+6F9OZ5t8rnl0=;
 b=DJ8YWiEkQZAsGMmof59WtbPwS5GJbzhk47K5zr/ZbI1fhbQ9LZ2CRED3cxG+5/aZv8B95ylamamlW+zbBbe9kJlUojpBEJ6IqhAE+HnR6MDCaBCBlAtgoePhlEfSc2mmhSWAdnjBjCK6Aw9Tk4wElt53AUdX1z8sxGHzFb9CWkY=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3721.eurprd04.prod.outlook.com (52.134.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Tue, 7 May 2019 01:28:26 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 01:28:26 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, Peng Fan
 <peng.fan@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V4 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Topic: [PATCH V4 3/3] watchdog: imx_sc: Add pretimeout support
Thread-Index: AQHVBHQpa5JP0ZHgW0eqFKg4Rv7umw==
Date: Tue, 7 May 2019 01:28:23 +0000
Message-ID: <1557192198-19640-3-git-send-email-Anson.Huang@nxp.com>
References: <1557192198-19640-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557192198-19640-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0084.apcprd03.prod.outlook.com
 (2603:1096:203:72::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 716b5302-a5a0-42bb-e020-08d6d28b4bcd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3721; 
x-ms-traffictypediagnostic: DB3PR0402MB3721:
x-microsoft-antispam-prvs: <DB3PR0402MB3721E9D0C59A291179980A47F5310@DB3PR0402MB3721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(316002)(7416002)(4326008)(2501003)(6512007)(14454004)(2906002)(6116002)(81156014)(36756003)(3846002)(305945005)(7736002)(66066001)(2201001)(53936002)(50226002)(8936002)(8676002)(5660300002)(11346002)(486006)(476003)(99286004)(110136005)(2616005)(86362001)(6436002)(26005)(102836004)(6486002)(14444005)(256004)(76176011)(186003)(52116002)(68736007)(6666004)(25786009)(446003)(64756008)(71190400001)(71200400001)(478600001)(73956011)(6506007)(386003)(81166006)(66446008)(66476007)(66946007)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3721;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x4c5IcLvOUtyQau/CxRx2fdnXCOgl3/gbDgGLnMudoe0SjKZLcJM95KwpznkmlhHhOVZ5i6QuxKU43B/LL/bBirAfWkIJd3EaoVLKzyFYuz9/O/twlv1Mugj47cY3fc+z10OOU8S+vekYShx+GQb1b5MEfg6kzNVmSRTJXnG7fLMndnxFNsgY6vfgKc7lXNCpNcTrqVNSUS5Rvpsq0Lc2/ek84Q8MfMP176bQhVlVdmCeXdL5mbjH9MbYZA0haUSBd/X2/vRmG2Legw+X3Hqx5jWZ4zd/mQrfY+A4uU98qAPF8Ayu13bWcCVcZLUJYNP6BuRYmjKkFqxK9yXJFO0s8DlRZRB+/BkwEoZyW9TdT0URBVRz1T0Sy9beP1YIBeKSydCQu/EvM72vsw7jo3HotHezly9CFCNlMTBNWKXp0o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 716b5302-a5a0-42bb-e020-08d6d28b4bcd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 01:28:23.8167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_182837_137301_E45A69DC 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Changes since V3:
	- use devm_add_action_or_reset instead of devm_add_action to make sure action is taken if
	  add action failed;
	- only enable pretimeout function if everything success, including irq group enabled, irq
	  notifier register and add action.
---
 drivers/watchdog/Kconfig      |   1 +
 drivers/watchdog/imx_sc_wdt.c | 116 +++++++++++++++++++++++++++++++++++-------
 2 files changed, 98 insertions(+), 19 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index f457992..5453855 100644
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
index 49848b6..6ecc03f 100644
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
@@ -111,42 +162,69 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
 
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
+	ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
+				       &imx_sc_wdd->wdt_notifier);
+	if (!ret)
+		imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
+	else
+		dev_warn(dev, "Add action failed, pretimeout NOT supported\n");
+
 	return 0;
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
