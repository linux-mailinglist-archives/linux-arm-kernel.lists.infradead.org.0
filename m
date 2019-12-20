Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D656127942
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyDt5xkIDZWNqTQuPSJmL1yjP8WYv95WKUtEtOqYiT4=; b=ICdvWm/3aBFI4f
	isN4gZOKjBtChkONaFIsbRfsXTVi16yJ7hPCrKJOFyodxO6s51kvS6cRG0DSCO2PQvuxSA7XyxIil
	ox2Vo/IHfABtzmymySfMG8TciZEgIeZwM4bKUotnr0IETb2lE/80JJhJEmaCsIyjHXQPNlkjrldmB
	vOejwJMortlVRLoz/ZqiVYlKYV2nwywDbUY5yDbjCtQPqO4jUfGf1o/zEFNkntF+ukI06GZLw8gCv
	8GIs6oh9zv4+L+2wzGvVw4HqLtRjdYLJGWtDnMqMppb315+EXA4bAf78b6DOcdwJcbtd1VprXhJja
	aGw98nDi0OZGBBB0zKYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFV8-0008Hi-Ju; Fri, 20 Dec 2019 10:27:18 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFUj-00088a-Eh
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:26:55 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1D6BB24000B;
 Fri, 20 Dec 2019 10:26:42 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Sebastian Reichel <sre@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/2] power: reset: at91-reset: export reset reason through
 sysfs
Date: Fri, 20 Dec 2019 11:26:38 +0100
Message-Id: <20191220102638.154206-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191220102638.154206-1-kamel.bouhara@bootlin.com>
References: <20191220102638.154206-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_022653_762150_1B315B7F 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export the reset reason through a sysfs file so it can be exploited by
user space application.

 $ cat /sys/devices/platform/ahb/ahb:apb/f8048000.rstc/power_on_reason
 RTC wakeup

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 drivers/power/reset/at91-reset.c | 44 ++++++++++++++++++++++----------
 1 file changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index d94e3267c3b6..c1625572f07c 100644
--- a/drivers/power/reset/at91-reset.c
+++ b/drivers/power/reset/at91-reset.c
@@ -17,7 +17,7 @@
 #include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/reboot.h>
-
+#include <linux/power/power_on_reason.h>
 #include <soc/at91/at91sam9_ddrsdr.h>
 #include <soc/at91/at91sam9_sdramc.h>
 
@@ -144,42 +144,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
 	return NOTIFY_DONE;
 }
 
-static void __init at91_reset_status(struct platform_device *pdev)
+static const char *at91_reset_reason(struct platform_device *pdev)
 {
 	const char *reason;
 	u32 reg = readl(at91_rstc_base + AT91_RSTC_SR);
 
 	switch ((reg & AT91_RSTC_RSTTYP) >> 8) {
 	case RESET_TYPE_GENERAL:
-		reason = "general reset";
+		reason = POWER_ON_REASON_GENERAL;
 		break;
 	case RESET_TYPE_WAKEUP:
-		reason = "wakeup";
+		reason = POWER_ON_REASON_RTC;
 		break;
 	case RESET_TYPE_WATCHDOG:
-		reason = "watchdog reset";
+		reason = POWER_ON_REASON_WATCHDOG;
 		break;
 	case RESET_TYPE_SOFTWARE:
-		reason = "software reset";
+		reason = POWER_ON_REASON_SOFTWARE;
 		break;
 	case RESET_TYPE_USER:
-		reason = "user reset";
+		reason = POWER_ON_REASON_USER;
 		break;
 	case RESET_TYPE_CPU_FAIL:
-		reason = "CPU clock failure detection";
+		reason = POWER_ON_REASON_CPU_FAIL;
 		break;
 	case RESET_TYPE_XTAL_FAIL:
-		reason = "32.768 kHz crystal failure detection";
+		reason = POWER_ON_REASON_XTAL_FAIL;
 		break;
 	case RESET_TYPE_ULP2:
-		reason = "ULP2 reset";
+		reason = POWER_ON_REASON_LOW_POWER;
 		break;
 	default:
-		reason = "unknown reset";
+		reason = POWER_ON_REASON_UNKNOWN;
 		break;
 	}
 
-	dev_info(&pdev->dev, "Starting after %s\n", reason);
+	return reason;
 }
 
 static const struct of_device_id at91_ramc_of_match[] = {
@@ -202,6 +202,17 @@ static struct notifier_block at91_restart_nb = {
 	.priority = 192,
 };
 
+static ssize_t power_on_reason_show(struct device *dev,
+				    struct device_attribute *attr,
+				    char *buf)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+
+	return sprintf(buf, "%s\n", at91_reset_reason(pdev));
+}
+
+static DEVICE_ATTR_RO(power_on_reason);
+
 static int __init at91_reset_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -246,7 +257,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	at91_reset_status(pdev);
+	ret = device_create_file(&pdev->dev, &dev_attr_power_on_reason);
+	if (ret) {
+		dev_err(&pdev->dev, "Could not create sysfs entry\n");
+		return ret;
+	}
+
+	dev_info(&pdev->dev, "Starting after %s reset\n",
+		 at91_reset_reason(pdev));
 
 	return 0;
 }
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
