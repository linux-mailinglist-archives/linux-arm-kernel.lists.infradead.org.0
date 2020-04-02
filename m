Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EA519CBBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 22:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LLAYQrB/p+FmdS042LLGfhK5/Gr318voDA7aDaTduo=; b=C1agaODqA0/KI4
	PXhIvlxBt5Jq+z7CRnkGm4hFSnUVW6t18INTx4oWJar/u8GiuijKwyy8x0PFrzXyYZn1yfmkEDn0P
	67SzRxpkRU3anIRmCqE3D8CKeYfffEQfLPViFV2aA3cDbvqqTo58Np84kPQ+25cXf+I6Bj5dh5P/m
	Z7erS9Hj3ixMQFTD/X3w3WHNeknsJRcXsWV3geqrbCOMKcBEnBWc4XI43+Tlsp8kxq2WafdtVoeyG
	SKO1zY8eZwzAnczAl4cfP6DxXEuYuL3xWBURKQYxZtnKzb1A/EzsgVof/ZKAGxPrbYt1FkA7gxEAL
	uKBOkChK/BtyOLAECtWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6dW-0004mY-8U; Thu, 02 Apr 2020 20:40:26 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6aU-0001TJ-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 20:37:22 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 83A9123E2E;
 Thu,  2 Apr 2020 22:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585859835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iTNc2fs+paG8g8wv0IEPzpme3SvoqEVu94xwCji+MGA=;
 b=IN1QfZM5KYGPlTrsGi0UKBAcUrtYm2KmQZc7Ds+5dc2GAjGU8uQcDG1RL7SMshvMOjyAS1
 F7Yp8ULLRPXDOV5JyhTtZBQXQ8HwBvBkBG1fIdYyvpyq6kDhVDXEbdAScfI0gsyhcOmZn7
 MAxsS75KwcNCONTDszdmZ+StZnL000E=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/16] watchdog: add support for sl28cpld watchdog
Date: Thu,  2 Apr 2020 22:36:48 +0200
Message-Id: <20200402203656.27047-9-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402203656.27047-1-michael@walle.cc>
References: <20200402203656.27047-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 83A9123E2E
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.169]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_133718_678258_A05C8FC9 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the watchdog of the sl28cpld board management
controller. This is part of a multi-function device driver.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/watchdog/Kconfig        |  11 ++
 drivers/watchdog/Makefile       |   1 +
 drivers/watchdog/sl28cpld_wdt.c | 242 ++++++++++++++++++++++++++++++++
 3 files changed, 254 insertions(+)
 create mode 100644 drivers/watchdog/sl28cpld_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 0663c604bd64..6c53c1d0f348 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -340,6 +340,17 @@ config MLX_WDT
 	  To compile this driver as a module, choose M here: the
 	  module will be called mlx-wdt.
 
+config SL28CPLD_WATCHDOG
+	tristate "Kontron sl28 watchdog"
+	depends on MFD_SL28CPLD
+	select WATCHDOG_CORE
+	help
+	  Say Y here to include support for the watchdog timer
+	  on the Kontron sl28 CPLD.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called sl28cpld_wdt.
+
 # ALPHA Architecture
 
 # ARM Architecture
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 6de2e4ceef19..b9ecdf2d7347 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -224,3 +224,4 @@ obj-$(CONFIG_MENF21BMC_WATCHDOG) += menf21bmc_wdt.o
 obj-$(CONFIG_MENZ069_WATCHDOG) += menz69_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
+obj-$(CONFIG_SL28CPLD_WATCHDOG) += sl28cpld_wdt.o
diff --git a/drivers/watchdog/sl28cpld_wdt.c b/drivers/watchdog/sl28cpld_wdt.c
new file mode 100644
index 000000000000..79a7e36217a6
--- /dev/null
+++ b/drivers/watchdog/sl28cpld_wdt.c
@@ -0,0 +1,242 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sl28cpld watchdog driver.
+ *
+ * Copyright 2019 Kontron Europe GmbH
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/watchdog.h>
+
+/*
+ * Watchdog timer block registers.
+ */
+#define WDT_CTRL			0x00
+#define  WDT_CTRL_EN			BIT(0)
+#define  WDT_CTRL_LOCK			BIT(2)
+#define  WDT_CTRL_ASSERT_SYS_RESET	BIT(6)
+#define  WDT_CTRL_ASSERT_WDT_TIMEOUT	BIT(7)
+#define WDT_TIMEOUT			0x01
+#define WDT_KICK			0x02
+#define  WDT_KICK_VALUE			0x6b
+#define WDT_COUNT			0x03
+
+static bool nowayout = WATCHDOG_NOWAYOUT;
+module_param(nowayout, bool, 0);
+MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
+				__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
+
+static int timeout;
+module_param(timeout, int, 0);
+MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
+
+struct sl28cpld_wdt {
+	struct watchdog_device wdd;
+	struct regmap *regmap;
+	u32 offset;
+	bool assert_wdt_timeout;
+};
+
+static int sl28cpld_wdt_ping(struct watchdog_device *wdd)
+{
+	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
+
+	return regmap_write(wdt->regmap, wdt->offset + WDT_KICK,
+			    WDT_KICK_VALUE);
+}
+
+static int sl28cpld_wdt_start(struct watchdog_device *wdd)
+{
+	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
+	unsigned int val;
+
+	val = WDT_CTRL_EN | WDT_CTRL_ASSERT_SYS_RESET;
+	if (wdt->assert_wdt_timeout)
+		val |= WDT_CTRL_ASSERT_WDT_TIMEOUT;
+	if (nowayout)
+		val |= WDT_CTRL_LOCK;
+
+	return regmap_update_bits(wdt->regmap, wdt->offset + WDT_CTRL,
+				  val, val);
+}
+
+static int sl28cpld_wdt_stop(struct watchdog_device *wdd)
+{
+	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
+
+	return regmap_update_bits(wdt->regmap, wdt->offset + WDT_CTRL,
+				  WDT_CTRL_EN, 0);
+}
+
+static unsigned int sl28cpld_wdt_status(struct watchdog_device *wdd)
+{
+	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
+	unsigned int status;
+	int ret;
+
+	ret = regmap_read(wdt->regmap, wdt->offset + WDT_CTRL, &status);
+	if (ret < 0)
+		return 0;
+
+	/* is the watchdog timer running? */
+	return (status & WDT_CTRL_EN) << WDOG_ACTIVE;
+}
+
+static unsigned int sl28cpld_wdt_get_timeleft(struct watchdog_device *wdd)
+{
+	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
+	int ret;
+	unsigned int val;
+
+	ret = regmap_read(wdt->regmap, wdt->offset + WDT_COUNT, &val);
+	if (ret < 0)
+		return 0;
+
+	return val;
+}
+
+static int sl28cpld_wdt_set_timeout(struct watchdog_device *wdd,
+				  unsigned int timeout)
+{
+	int ret;
+	struct sl28cpld_wdt *wdt = watchdog_get_drvdata(wdd);
+
+	ret = regmap_write(wdt->regmap, wdt->offset + WDT_TIMEOUT, timeout);
+	if (ret == 0)
+		wdd->timeout = timeout;
+
+	return ret;
+}
+
+static const struct watchdog_info sl28cpld_wdt_info = {
+	.options = WDIOF_MAGICCLOSE | WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING,
+	.identity = "SMARC-sAL28 CPLD watchdog",
+};
+
+static struct watchdog_ops sl28cpld_wdt_ops = {
+	.owner = THIS_MODULE,
+	.start = sl28cpld_wdt_start,
+	.stop = sl28cpld_wdt_stop,
+	.status = sl28cpld_wdt_status,
+	.ping = sl28cpld_wdt_ping,
+	.set_timeout = sl28cpld_wdt_set_timeout,
+	.get_timeleft = sl28cpld_wdt_get_timeleft,
+};
+
+static int sl28cpld_wdt_locked(struct sl28cpld_wdt *wdt)
+{
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(wdt->regmap, wdt->offset + WDT_CTRL, &val);
+	if (ret < 0)
+		return ret;
+
+	return val & WDT_CTRL_LOCK;
+}
+
+static int sl28cpld_wdt_probe(struct platform_device *pdev)
+{
+	struct sl28cpld_wdt *wdt;
+	struct watchdog_device *wdd;
+	struct resource *res;
+	unsigned int val;
+	int ret;
+
+	if (!pdev->dev.parent)
+		return -ENODEV;
+
+	wdt = devm_kzalloc(&pdev->dev, sizeof(*wdt), GFP_KERNEL);
+	if (!wdt)
+		return -ENOMEM;
+
+	wdt->regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!wdt->regmap)
+		return -ENODEV;
+
+	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
+	if (res == NULL)
+		return -EINVAL;
+	wdt->offset = res->start;
+
+	if (device_property_read_bool(&pdev->dev,
+				      "kontron,assert-wdt-timeout-pin"))
+		wdt->assert_wdt_timeout = true;
+
+	/* initialize struct watchdog_device */
+	wdd = &wdt->wdd;
+	wdd->parent = &pdev->dev;
+	wdd->info = &sl28cpld_wdt_info;
+	wdd->ops = &sl28cpld_wdt_ops;
+	wdd->min_timeout = 1;
+	wdd->max_timeout = 255;
+
+	watchdog_set_drvdata(wdd, wdt);
+
+	/* if the watchdog is locked, we set nowayout to true */
+	ret = sl28cpld_wdt_locked(wdt);
+	if (ret < 0)
+		return ret;
+	if (ret)
+		nowayout = true;
+	watchdog_set_nowayout(wdd, nowayout);
+
+	/*
+	 * Initial timeout value, can either be set by kernel parameter or by
+	 * the device tree. If both are not given the current value is used.
+	 */
+	watchdog_init_timeout(wdd, timeout, &pdev->dev);
+	if (wdd->timeout) {
+		sl28cpld_wdt_set_timeout(wdd, wdd->timeout);
+	} else {
+		ret = regmap_read(wdt->regmap, wdt->offset + WDT_TIMEOUT,
+				  &val);
+		if (ret < 0)
+			return ret;
+		wdd->timeout = val;
+	}
+
+	watchdog_stop_on_reboot(wdd);
+	ret = devm_watchdog_register_device(&pdev->dev, wdd);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to register watchdog device\n");
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, wdt);
+
+	dev_info(&pdev->dev, "CPLD watchdog: initial timeout %d sec%s\n",
+		wdd->timeout, nowayout ? ", nowayout" : "");
+
+	return 0;
+}
+
+static const struct of_device_id sl28cpld_wdt_of_match[] = {
+	{ .compatible = "kontron,sl28cpld-wdt" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sl28cpld_wdt_of_match);
+
+static const struct platform_device_id sl28cpld_wdt_id_table[] = {
+	{ "sl28cpld-wdt" },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, sl28cpld_wdt_id_table);
+
+static struct platform_driver sl28cpld_wdt_driver = {
+	.probe = sl28cpld_wdt_probe,
+	.id_table = sl28cpld_wdt_id_table,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = sl28cpld_wdt_of_match,
+	},
+};
+module_platform_driver(sl28cpld_wdt_driver);
+
+MODULE_DESCRIPTION("sl28cpld Watchdog Driver");
+MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
+MODULE_LICENSE("GPL");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
