Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BE81169A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3gS6CXMuSXQXgoynSuX6Ws9NOAIVoY3OPSBqng245s=; b=QCla++1Fjh6uJi
	1j44/ekNR2SLq/Kx9JNOIVao/e+p3C/xL42Az3p5TWcARLtU7DLm7YLzQcqj06v4MEN1LOb1rF2SK
	c27a8YrI4VggfIwelgpAjCawG85+m4J+OmD9qjoZ6zhO4BlWwL2TJ8LiC/zHr+1YBYE1XB3pvkr/N
	qWf9+YyOKm2IMwazA4CYCe+HZzigmUfxnztbRDMz0bGN9SOSMtbh51bxmYbY9ISzuqT3QuVRBG6b7
	mHugDt2m+1LoxcxafHO/gU3pO9hoSFKAcsDaCA8mg6tIZ3UvMMA5GfSxyqAEX/h3UqC6E6KyHPDqm
	8gjgVRQNcGtJWDkIQ59A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFWY-0003A2-Ez; Mon, 09 Dec 2019 09:40:14 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFWG-00039D-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:39:58 +0000
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 05870240002;
 Mon,  9 Dec 2019 09:39:53 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Sebastian Reichel <sre@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] power: reset: at91-reset: add sysfs interface to the power
 on reason
Date: Mon,  9 Dec 2019 10:39:49 +0100
Message-Id: <20191209093949.44028-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013956_458745_4028695B 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch export the power on reason through the sysfs interface and
introduce some generic reset sources.
Update the ABI documentation to list current power on sources.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

---
Changes in v2
=============
	- Be less specific on the crystal oscillator value
	- Add an Acked-by

 .../sysfs-devices-platform-power-on-reason    | 14 ++++++
 drivers/power/reset/at91-reset.c              | 44 +++++++++++++------
 include/linux/power/power_on_reason.h         | 19 ++++++++
 3 files changed, 64 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
 create mode 100644 include/linux/power/power_on_reason.h

diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
new file mode 100644
index 000000000000..83daeb9b1aa2
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
@@ -0,0 +1,14 @@
+What:		/sys/devices/platform/.../power_on_reason
+
+Date:		October 2019
+KernelVersion:	5.4
+Contact:	Kamel Bouhara <kamel.bouhara@bootlin.com>
+Description:	This file shows system power on reason.
+		The possible sources are:
+		General System Power-ON, RTC wakeup, Watchdog timeout,
+		Software Reset, User pressed reset button,
+		CPU Clock failure, 32.768kHz Oscillator Failure,
+		Low power mode exit, Unknown.
+
+		The file is read only.
+
diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-reset.c
index 44ca983a49a1..3cb2df40af37 100644
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

@@ -146,42 +146,42 @@ static int samx7_restart(struct notifier_block *this, unsigned long mode,
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
@@ -204,6 +204,17 @@ static struct notifier_block at91_restart_nb = {
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
@@ -248,7 +259,14 @@ static int __init at91_reset_probe(struct platform_device *pdev)
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
diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
new file mode 100644
index 000000000000..9978cc757427
--- /dev/null
+++ b/include/linux/power/power_on_reason.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Author: Kamel Bouhra <kamel.bouhara@bootlin.com>
+ */
+
+#ifndef POWER_ON_REASON_H
+#define POWER_ON_REASON_H
+
+#define POWER_ON_REASON_GENERAL "General"
+#define POWER_ON_REASON_RTC "RTC wakeup"
+#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
+#define POWER_ON_REASON_SOFTWARE "Software"
+#define POWER_ON_REASON_USER "User"
+#define POWER_ON_REASON_CPU_FAIL "CPU Clock Failure"
+#define POWER_ON_REASON_XTAL_FAIL "32.768k Crystal oscillator Failure"
+#define POWER_ON_REASON_LOW_POWER "Low power exit"
+#define POWER_ON_REASON_UNKNOWN "Unknown"
+
+#endif /* POWER_ON_REASON_H */
--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
