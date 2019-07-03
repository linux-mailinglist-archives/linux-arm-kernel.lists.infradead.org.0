Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4D25E9B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hit1hRKoFJcV5/vSQHBAsBV078MS5zvrvuy0FZQHUfY=; b=RTudF2a4jNnCTGTHQUmZtBoFCz
	T5W/19q/MPo/8uTNm06WOfSTTImq3J4vJ0nw7bDbn6ioJ/CNlb492oAx0mP6sDLQWaGuwNqKlz2+/
	rAgBiMTVpEbMX7wSXlchURccm4QUCLcr0B+s+gOMsSJJnNMSaB83/kFBFm3oJU8Oz4j5GteKcMOPi
	mfgb8lAoKlsKDwJRX8TVpUXnAI2GAlQKNHbGA2zDVHwf8+2mVjonU7b3AYlR9WusGUikxS0sbr0SY
	KMqVKsvWaGu3NhWzOzaF3YalPV43fbWxLiyy+W1zyLGo6aHL6LrJMAc6AXAZEcLVYShju6lHX2L18
	gGBfdEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiTc-0003ci-Nk; Wed, 03 Jul 2019 16:51:24 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiRo-0001CH-PW; Wed, 03 Jul 2019 16:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562172514;
 bh=/9xBDfa8MmyCEGy9lts4eV0fUCDWP2vWjFBrUMAHZIw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=NJL6u9vCVUAcj0aiV9JL+ahQq/Z3X+rRu6afSaN6dMYm+Evbul46DCtz365/Naq2f
 RSTEGdTVeueXpiveIakMux/69G0mtdqLpPiDN3f+KIueDJAgt0jB0lZ8ej6mdwiwDD
 9bB2mbSEgwKIQ4a0M/fu/pfntvqwrENfhrz9JTj4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.158.204]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M42jK-1hiiQr3zXc-0001fV; Wed, 03 Jul 2019 18:48:34 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Richard Fontana <rfontana@redhat.com>,
 Allison Randal <allison@lohutok.net>,
 "David S . Miller" <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>
Subject: [PATCH v2 2/7] rtc: mt6397: move some common definitions into rtc.h
Date: Wed,  3 Jul 2019 18:48:17 +0200
Message-Id: <20190703164822.17924-3-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703164822.17924-1-frank-w@public-files.de>
References: <20190703164822.17924-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:eNTAGak/khtebF18hP1o00uJHTFlKw0xrt738upulxWk1z31acU
 PoB2U9jBsL3a67ozQdB+gG5Tq5CJQPDRj0dNh3mKEH1ReCjxe96SLWjYx9mEeCzDeIYs1eE
 BYo7WMGYd5CUSfhSLvOqR02xzohVYND0/oRHlhR7xCxaVLxuHJxze47sRzK2taMUN5K6QHZ
 IPFfX9BTpN8nR4lpP3t7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hrXaNRx2yJU=:n8xY8hWfUEOQNncyM2MDfb
 hgyC4lTVSopY06MROwkDrLATI7KOf4BREy8UbjkvevcUbP4bo5sS3X0ccBpwv+LSxbLvv2bT6
 ttpL9s26RLDTYq8XPNI+DfEz7fk1JIYwyXVfjrahDo9t1gymXebc8+AL1yiURT7SSPQkPa6Om
 8jweZxjKExbRyKfcakJOQvSXiI2DzhVePFsHbb0NpOEaLjVHCHnUvoghqrbAhc5TBDMYk507J
 3aT6AJSgAJYTEbLRUCmEWBoyZ7bG5BCi1UBDegmje2IxGOOLPndIrZ2M1qioBdm2K5RU1v1Ta
 II8QrtGmItpLyoOIciLHCgn+6gZ0r7zBAM94DjgmIFZRPvOq2uxzUNJ0+JPlN65XF0wkSRbKm
 wStGGr9H6EF7GdUlejbBJ28BX0apwmU/ZlH0kR2nGczm4sp08ZQgEV7dv8d9N4kDu9J2+r6xv
 PZaqWYe32TkeI+lAoQqVhDKzr8i5lKPWTgFcn94Rnr3FaoiNE6VPHupq7vpXHGhef5CwwHVK9
 j+uBjgyExZ1pBjLO6X9rx3KW5j1FiCE6GHSKtZt7wz5feqYEV8pd5ohXSqiBanx+hbVH7byQG
 ua39EHS9jirtv1JtXBFl1QW8JO5Ui4KxuMElsaYCeHwdV00Mt/D1wj0aXg6zocC+zwerw5uJ5
 djRwYqlIyr91G7i1qRFAP2KDvPX42lK1LWpXXICoyT3onns0k302e1vFS+PxlDzC9VMn2kLci
 aASSswHtFmYPuFBbGQE417bNLH8vXTPQR+nlCzqING608uUxya3ZCRlZKY53FI2jjC6tI/oiD
 0UGtZyTCaK5x5ftWGdUWavLNF8rB8RnJDxVTm3jyne4C7mNDJ+AyDIb1orvJw0Bbb8aZUopFo
 2MTz+ca155ddzmrY6Tt9lOqy3xNc23yrzbBEt4ERl1lodvnfJgNTmhhi3dgD6XspcD9fZEpNA
 RHRxfcrtVMGMXiuVkzDwhND9BsB2vtj5EoX3YcG0k3vlg0iL66fApiWnXBIkKFyKWUr/pciph
 ayZcEgOAUcqfyrLmvtHT2OotSl4rfNSzdwjgu0Zs7bk+R6tPNt3kCSrSF2z9UmgHLM/l9r6p2
 vYvFnzLNIXh0Nc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094933_124812_44ACFAEE 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/rtc/rtc-mt6397.c       | 55 +-------------------------
 include/linux/mfd/mt6397/rtc.h | 71 ++++++++++++++++++++++++++++++++++
 2 files changed, 72 insertions(+), 54 deletions(-)
 create mode 100644 include/linux/mfd/mt6397/rtc.h

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index b46ed4dc7015..c08ee5edf865 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -9,60 +9,7 @@
 #include <linux/module.h>
 #include <linux/regmap.h>
 #include <linux/rtc.h>
-#include <linux/irqdomain.h>
-#include <linux/platform_device.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
-#include <linux/io.h>
-#include <linux/mfd/mt6397/core.h>
-
-#define RTC_BBPU		0x0000
-#define RTC_BBPU_CBUSY		BIT(6)
-
-#define RTC_WRTGR		0x003c
-
-#define RTC_IRQ_STA		0x0002
-#define RTC_IRQ_STA_AL		BIT(0)
-#define RTC_IRQ_STA_LP		BIT(3)
-
-#define RTC_IRQ_EN		0x0004
-#define RTC_IRQ_EN_AL		BIT(0)
-#define RTC_IRQ_EN_ONESHOT	BIT(2)
-#define RTC_IRQ_EN_LP		BIT(3)
-#define RTC_IRQ_EN_ONESHOT_AL	(RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
-
-#define RTC_AL_MASK		0x0008
-#define RTC_AL_MASK_DOW		BIT(4)
-
-#define RTC_TC_SEC		0x000a
-/* Min, Hour, Dom... register offset to RTC_TC_SEC */
-#define RTC_OFFSET_SEC		0
-#define RTC_OFFSET_MIN		1
-#define RTC_OFFSET_HOUR		2
-#define RTC_OFFSET_DOM		3
-#define RTC_OFFSET_DOW		4
-#define RTC_OFFSET_MTH		5
-#define RTC_OFFSET_YEAR		6
-#define RTC_OFFSET_COUNT	7
-
-#define RTC_AL_SEC		0x0018
-
-#define RTC_PDN2		0x002e
-#define RTC_PDN2_PWRON_ALARM	BIT(4)
-
-#define RTC_MIN_YEAR		1968
-#define RTC_BASE_YEAR		1900
-#define RTC_NUM_YEARS		128
-#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
-
-struct mt6397_rtc {
-	struct device		*dev;
-	struct rtc_device	*rtc_dev;
-	struct mutex		lock;
-	struct regmap		*regmap;
-	int			irq;
-	u32			addr_base;
-};
+#include <linux/mfd/mt6397/rtc.h>

 static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 {
diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
new file mode 100644
index 000000000000..b702c29e8c74
--- /dev/null
+++ b/include/linux/mfd/mt6397/rtc.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2014-2018 MediaTek Inc.
+ *
+ * Author: Tianping.Fang <tianping.fang@mediatek.com>
+ *        Sean Wang <sean.wang@mediatek.com>
+ */
+
+#ifndef _LINUX_MFD_MT6397_RTC_H_
+#define _LINUX_MFD_MT6397_RTC_H_
+
+#include <linux/jiffies.h>
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+#include <linux/rtc.h>
+
+#define RTC_BBPU               0x0000
+#define RTC_BBPU_CBUSY         BIT(6)
+#define RTC_BBPU_KEY            (0x43 << 8)
+
+#define RTC_WRTGR              0x003c
+
+#define RTC_IRQ_STA            0x0002
+#define RTC_IRQ_STA_AL         BIT(0)
+#define RTC_IRQ_STA_LP         BIT(3)
+
+#define RTC_IRQ_EN             0x0004
+#define RTC_IRQ_EN_AL          BIT(0)
+#define RTC_IRQ_EN_ONESHOT     BIT(2)
+#define RTC_IRQ_EN_LP          BIT(3)
+#define RTC_IRQ_EN_ONESHOT_AL  (RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
+
+#define RTC_AL_MASK            0x0008
+#define RTC_AL_MASK_DOW                BIT(4)
+
+#define RTC_TC_SEC             0x000a
+/* Min, Hour, Dom... register offset to RTC_TC_SEC */
+#define RTC_OFFSET_SEC         0
+#define RTC_OFFSET_MIN         1
+#define RTC_OFFSET_HOUR                2
+#define RTC_OFFSET_DOM         3
+#define RTC_OFFSET_DOW         4
+#define RTC_OFFSET_MTH         5
+#define RTC_OFFSET_YEAR                6
+#define RTC_OFFSET_COUNT       7
+
+#define RTC_AL_SEC             0x0018
+
+#define RTC_PDN2               0x002e
+#define RTC_PDN2_PWRON_ALARM   BIT(4)
+
+#define RTC_MIN_YEAR           1968
+#define RTC_BASE_YEAR          1900
+#define RTC_NUM_YEARS          128
+#define RTC_MIN_YEAR_OFFSET    (RTC_MIN_YEAR - RTC_BASE_YEAR)
+
+#define MTK_RTC_POLL_DELAY_US  10
+#define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
+
+struct mt6397_rtc {
+	struct device           *dev;
+	struct rtc_device       *rtc_dev;
+
+	/* Protect register access from multiple tasks */
+	struct mutex            lock;
+	struct regmap           *regmap;
+	int                     irq;
+	u32                     addr_base;
+};
+
+#endif /* _LINUX_MFD_MT6397_RTC_H_ */
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
