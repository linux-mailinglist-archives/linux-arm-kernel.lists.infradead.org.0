Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED16127940
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xYrc558qzjtGTPE2eDzJUxEa7Ot4tY9WvFoFU8QUkjY=; b=PrWJMmW4WP2D4t
	UwsCH1e98zASMyYyQed/aVew1x2vQhE27MMKkDV6hA1ahDHBFqiFxpu7ynj7LU1Svx4lSRsuLMqPp
	r2sl0J3A9AGcpo1DlofTOsXb3FavUW2RPpHnYDwylsCUjjA1VQkhRueDFE3yKpQI5Qez6rWMNwOCL
	244YqWvyDMMjQPlSsI4ld82MR8tyHSBYrsBAphZE2xUxVGggnaCOcmRE+AqS+ihU/VYAHbHJh67Ts
	dPp0M3JMRmc8CFNgsj347kS0u+349ytB9y5yXT5/4PRzBY4lDwXqhHGa4Q58enURq9G8gTZOPnio4
	VLKTUsihZmq/Plk0M2ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFUs-00089U-MU; Fri, 20 Dec 2019 10:27:02 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFUj-00088Y-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:26:55 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D9D1EE000C;
 Fri, 20 Dec 2019 10:26:40 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Sebastian Reichel <sre@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/2] power: reset: Introduce generic reset reason
Date: Fri, 20 Dec 2019 11:26:37 +0100
Message-Id: <20191220102638.154206-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_022653_510571_D29CCC9E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This introduce some generic sources of reset reason to expose through
sysfs interface. Update the ABI documentation to list current power on
sources.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
Changes in v2
=============
	- Be less specific on the crystal oscillator value
	- Add an Acked-by
Changes in v3
=============
	- Really be less specific on the crystal oscillator value
Changes in v4
=============
	- Rebase to 5.5-rc2
	- Remove remaining crystal specific value in documentation
	- Split the patch for the sake of clarity
	- Match the documentation with the actual header defines
Changes in v5
=============
	- Reorder patches for the sake of bisectability

 .../sysfs-devices-platform-power-on-reason    | 12 ++++++++++++
 include/linux/power/power_on_reason.h         | 19 +++++++++++++++++++
 2 files changed, 31 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
 create mode 100644 include/linux/power/power_on_reason.h

diff --git a/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
new file mode 100644
index 000000000000..918ab178fee7
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-devices-platform-power-on-reason
@@ -0,0 +1,12 @@
+What:		/sys/devices/platform/.../power_on_reason
+
+Date:		October 2019
+KernelVersion:	5.5
+Contact:	Kamel Bouhara <kamel.bouhara@bootlin.com>
+Description:	This file shows system power on reason.
+		The possible sources are:
+		General System Power-ON, RTC wakeup, Watchdog timeout,
+		Software reset, User reset button, CPU clock failure,
+		Oscillator Failure, Low power mode exit, Unknown.
+
+		The file is read only.
diff --git a/include/linux/power/power_on_reason.h b/include/linux/power/power_on_reason.h
new file mode 100644
index 000000000000..5ef8e78f3de4
--- /dev/null
+++ b/include/linux/power/power_on_reason.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Author: Kamel Bouhara <kamel.bouhara@bootlin.com>
+ */
+
+#ifndef POWER_ON_REASON_H
+#define POWER_ON_REASON_H
+
+#define POWER_ON_REASON_GENERAL "General system power-on"
+#define POWER_ON_REASON_RTC "RTC wakeup"
+#define POWER_ON_REASON_WATCHDOG "Watchdog timeout"
+#define POWER_ON_REASON_SOFTWARE "Software reset"
+#define POWER_ON_REASON_USER "User reset button"
+#define POWER_ON_REASON_CPU_FAIL "CPU clock failure"
+#define POWER_ON_REASON_XTAL_FAIL "Crystal oscillator failure"
+#define POWER_ON_REASON_LOW_POWER "Low power mode exit"
+#define POWER_ON_REASON_UNKNOWN "Unknown"
+
+#endif /* POWER_ON_REASON_H */
--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
