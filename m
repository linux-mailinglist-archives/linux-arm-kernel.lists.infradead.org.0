Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0C312CAE3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXGGh6fffDIiflFvsGNvA4fBFPqjddmexmmDeF93IG0=; b=m94Ls3pyffmxOe
	JRfRsiEqZ0Ga+zfUivmociZfTYjnxdMpleFRnHGirvIT1vYXSm6E4gsGsplV4qTtl7Zl31Xgesfkg
	BUzRXckreMxDCtuRf3XVHiP/hC0KnDSMhqP+Avvcp9FX1s0k9VD+PsR5hYzJcUtMcqb/XhPgCs4gh
	0axPbWVRlidehF7bw1NZv7zKgds+ZdN5pJ02hobk55jVT0XdF23yu4nTdNvKfzCEi8BrlIOGGXD5e
	ENsZ5gG3pTGezg6PN/dON8kheS2QBoeYIziaZBcirAmVY+4x55phHWpvgTv7iwv5vletZMJQGuihC
	mLExSXnftK4IBBBaxKhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfRc-0001cX-Py; Sun, 29 Dec 2019 20:45:48 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfQz-0000Yb-Pz
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:45:13 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D21D0E0002;
 Sun, 29 Dec 2019 20:45:04 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 4/9] rtc: at91rm9200: move register definitions to C file
Date: Sun, 29 Dec 2019 21:44:16 +0100
Message-Id: <20191229204421.337612-4-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124510_144299_952F0574 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Eugen.Hristev@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The header was simply moved from the arm mach folder to drivers/rtc but
there is not point in having it separated from the driver.

Also remove unused bit definitions and use BIT and GENMASK.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-at91rm9200.c | 46 ++++++++++++++++++++++-
 drivers/rtc/rtc-at91rm9200.h | 71 ------------------------------------
 2 files changed, 45 insertions(+), 72 deletions(-)
 delete mode 100644 drivers/rtc/rtc-at91rm9200.h

diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index bda8e009076f..997734ed9a5b 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -30,7 +30,51 @@
 #include <linux/time.h>
 #include <linux/uaccess.h>
 
-#include "rtc-at91rm9200.h"
+#define	AT91_RTC_CR		0x00			/* Control Register */
+#define		AT91_RTC_UPDTIM		BIT(0)		/* Update Request Time Register */
+#define		AT91_RTC_UPDCAL		BIT(1)		/* Update Request Calendar Register */
+
+#define	AT91_RTC_MR		0x04			/* Mode Register */
+
+#define	AT91_RTC_TIMR		0x08			/* Time Register */
+#define		AT91_RTC_SEC		GENMASK(6, 0)	/* Current Second */
+#define		AT91_RTC_MIN		GENMASK(14, 8)	/* Current Minute */
+#define		AT91_RTC_HOUR		GENMASK(21, 16)	/* Current Hour */
+#define		AT91_RTC_AMPM		BIT(22)		/* Ante Meridiem Post Meridiem Indicator */
+
+#define	AT91_RTC_CALR		0x0c			/* Calendar Register */
+#define		AT91_RTC_CENT		GENMASK(6, 0)	/* Current Century */
+#define		AT91_RTC_YEAR		GENMASK(15, 8)	/* Current Year */
+#define		AT91_RTC_MONTH		GENMASK(20, 16)	/* Current Month */
+#define		AT91_RTC_DAY		GENMASK(23, 21)	/* Current Day */
+#define		AT91_RTC_DATE		GENMASK(29, 24)	/* Current Date */
+
+#define	AT91_RTC_TIMALR		0x10			/* Time Alarm Register */
+#define		AT91_RTC_SECEN		BIT(7)		/* Second Alarm Enable */
+#define		AT91_RTC_MINEN		BIT(15)		/* Minute Alarm Enable */
+#define		AT91_RTC_HOUREN		BIT(23)		/* Hour Alarm Enable */
+
+#define	AT91_RTC_CALALR		0x14			/* Calendar Alarm Register */
+#define		AT91_RTC_MTHEN		BIT(23)		/* Month Alarm Enable */
+#define		AT91_RTC_DATEEN		BIT(31)		/* Date Alarm Enable */
+
+#define	AT91_RTC_SR		0x18			/* Status Register */
+#define		AT91_RTC_ACKUPD		BIT(0)		/* Acknowledge for Update */
+#define		AT91_RTC_ALARM		BIT(1)		/* Alarm Flag */
+#define		AT91_RTC_SECEV		BIT(2)		/* Second Event */
+#define		AT91_RTC_TIMEV		BIT(3)		/* Time Event */
+#define		AT91_RTC_CALEV		BIT(4)		/* Calendar Event */
+
+#define	AT91_RTC_SCCR		0x1c			/* Status Clear Command Register */
+#define	AT91_RTC_IER		0x20			/* Interrupt Enable Register */
+#define	AT91_RTC_IDR		0x24			/* Interrupt Disable Register */
+#define	AT91_RTC_IMR		0x28			/* Interrupt Mask Register */
+
+#define	AT91_RTC_VER		0x2c			/* Valid Entry Register */
+#define		AT91_RTC_NVTIM		BIT(0)		/* Non valid Time */
+#define		AT91_RTC_NVCAL		BIT(1)		/* Non valid Calendar */
+#define		AT91_RTC_NVTIMALR	BIT(2)		/* Non valid Time Alarm */
+#define		AT91_RTC_NVCALALR	BIT(3)		/* Non valid Calendar Alarm */
 
 #define at91_rtc_read(field) \
 	readl_relaxed(at91_rtc_regs + field)
diff --git a/drivers/rtc/rtc-at91rm9200.h b/drivers/rtc/rtc-at91rm9200.h
deleted file mode 100644
index 8be5289da8e2..000000000000
--- a/drivers/rtc/rtc-at91rm9200.h
+++ /dev/null
@@ -1,71 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-at91/include/mach/at91_rtc.h
- *
- * Copyright (C) 2005 Ivan Kokshaysky
- * Copyright (C) SAN People
- *
- * Real Time Clock (RTC) - System peripheral registers.
- * Based on AT91RM9200 datasheet revision E.
- */
-
-#ifndef AT91_RTC_H
-#define AT91_RTC_H
-
-#define	AT91_RTC_CR		0x00			/* Control Register */
-#define		AT91_RTC_UPDTIM		(1 <<  0)		/* Update Request Time Register */
-#define		AT91_RTC_UPDCAL		(1 <<  1)		/* Update Request Calendar Register */
-#define		AT91_RTC_TIMEVSEL	(3 <<  8)		/* Time Event Selection */
-#define			AT91_RTC_TIMEVSEL_MINUTE	(0 << 8)
-#define			AT91_RTC_TIMEVSEL_HOUR		(1 << 8)
-#define			AT91_RTC_TIMEVSEL_DAY24		(2 << 8)
-#define			AT91_RTC_TIMEVSEL_DAY12		(3 << 8)
-#define		AT91_RTC_CALEVSEL	(3 << 16)		/* Calendar Event Selection */
-#define			AT91_RTC_CALEVSEL_WEEK		(0 << 16)
-#define			AT91_RTC_CALEVSEL_MONTH		(1 << 16)
-#define			AT91_RTC_CALEVSEL_YEAR		(2 << 16)
-
-#define	AT91_RTC_MR		0x04			/* Mode Register */
-#define			AT91_RTC_HRMOD		(1 <<  0)		/* 12/24 Hour Mode */
-
-#define	AT91_RTC_TIMR		0x08			/* Time Register */
-#define		AT91_RTC_SEC		(0x7f <<  0)		/* Current Second */
-#define		AT91_RTC_MIN		(0x7f <<  8)		/* Current Minute */
-#define		AT91_RTC_HOUR		(0x3f << 16)		/* Current Hour */
-#define		AT91_RTC_AMPM		(1    << 22)		/* Ante Meridiem Post Meridiem Indicator */
-
-#define	AT91_RTC_CALR		0x0c			/* Calendar Register */
-#define		AT91_RTC_CENT		(0x7f <<  0)		/* Current Century */
-#define		AT91_RTC_YEAR		(0xff <<  8)		/* Current Year */
-#define		AT91_RTC_MONTH		(0x1f << 16)		/* Current Month */
-#define		AT91_RTC_DAY		(7    << 21)		/* Current Day */
-#define		AT91_RTC_DATE		(0x3f << 24)		/* Current Date */
-
-#define	AT91_RTC_TIMALR		0x10			/* Time Alarm Register */
-#define		AT91_RTC_SECEN		(1 <<  7)		/* Second Alarm Enable */
-#define		AT91_RTC_MINEN		(1 << 15)		/* Minute Alarm Enable */
-#define		AT91_RTC_HOUREN		(1 << 23)		/* Hour Alarm Enable */
-
-#define	AT91_RTC_CALALR		0x14			/* Calendar Alarm Register */
-#define		AT91_RTC_MTHEN		(1 << 23)		/* Month Alarm Enable */
-#define		AT91_RTC_DATEEN		(1 << 31)		/* Date Alarm Enable */
-
-#define	AT91_RTC_SR		0x18			/* Status Register */
-#define		AT91_RTC_ACKUPD		(1 <<  0)		/* Acknowledge for Update */
-#define		AT91_RTC_ALARM		(1 <<  1)		/* Alarm Flag */
-#define		AT91_RTC_SECEV		(1 <<  2)		/* Second Event */
-#define		AT91_RTC_TIMEV		(1 <<  3)		/* Time Event */
-#define		AT91_RTC_CALEV		(1 <<  4)		/* Calendar Event */
-
-#define	AT91_RTC_SCCR		0x1c			/* Status Clear Command Register */
-#define	AT91_RTC_IER		0x20			/* Interrupt Enable Register */
-#define	AT91_RTC_IDR		0x24			/* Interrupt Disable Register */
-#define	AT91_RTC_IMR		0x28			/* Interrupt Mask Register */
-
-#define	AT91_RTC_VER		0x2c			/* Valid Entry Register */
-#define		AT91_RTC_NVTIM		(1 <<  0)		/* Non valid Time */
-#define		AT91_RTC_NVCAL		(1 <<  1)		/* Non valid Calendar */
-#define		AT91_RTC_NVTIMALR	(1 <<  2)		/* Non valid Time Alarm */
-#define		AT91_RTC_NVCALALR	(1 <<  3)		/* Non valid Calendar Alarm */
-
-#endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
