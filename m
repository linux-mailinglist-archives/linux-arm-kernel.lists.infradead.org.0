Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E69836CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CrXztliKoLVcGH53KQqUImHMcsjikofGMWD2tXILub0=; b=W8yqz1545PU6DXN0JBpUSknSL5
	/Kxtjsb0pSQy1/kViF01o3OByBaa44RXDPtic9wbCGxH0f1rd9fgAuEYGTtCBLHqpQ23KNnJHR0Ag
	dWUSXS4AWIhwwMW12DNHgMOFYfvL4AOx9sBxWuPCm6myDrv2DZshiBjVoJpgPcR+Vkx/umnjKXw1Q
	S5GEa1QGNGQZHTSUn7BIdGExqzXZe4vsOo93F/jAetcQtJyZ7xm6mMYD/NzIkRmy3bZ24sYpib0SC
	y5NgvUZq5Iw/WXQ+t4GJNj4aGwdJ4x2d5OllKuYajmkC9ntCe/o180NFI6pZ55h7KVYt7I5ErZLym
	+uu3FK2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Ky-0000qX-EI; Tue, 06 Aug 2019 16:29:24 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2KT-0000Ta-Ia; Tue, 06 Aug 2019 16:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108888;
 bh=HzEHIxIKYm6KPLL0JPFew9mFnKGyvVsgusVw6nRHTTw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=S+FiRh76N9kjTLJHbv400S0ijDXh2zkWxH5w5CLk030WIBkRI06GV8ukh3RO0ol64
 YBYy/K7BYNGLXIk4f6J802F9eai4Y6/ikli5H8+0yxkUxmQTSWK2buGWhmUSEpVIU3
 qb32jY7S6ebeUhWIXNfwOsWgIsO1m8GTapkJI3Ig=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MMkgl-1hycgK36Ct-008YWc; Tue, 06 Aug 2019 18:28:08 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v4 03/10] rtc: mt6397: move some common definitions into rtc.h
Date: Tue,  6 Aug 2019 18:27:38 +0200
Message-Id: <20190806162745.8414-4-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806162745.8414-1-frank-w@public-files.de>
References: <20190806162745.8414-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:u9hdvNiTHJABtB4jUq16WoTMdaMAfx9o4ccbdvchDpyvkEG5xf/
 RNkuAZBPOx/Ddf7gtrBUcv2FiFU+MmFN46QBEnpkNfei3idXzfMaDVp0L17g/wQdJuCx5ix
 hzU2kWnFpbiwgiDDa8F9HIgDKbxWWpB9nY0pDRoPPrfRo+EFiih5VPQ+LNxL96k8/AryIra
 BuE+fOnKU++LTNRtQfUtA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cMUz6x+Gsec=:eEPPRAYpOPjYGPdy4lEqJg
 YKfxGrOEh+0c/i4LKTG6X3aiqybpgwtA1h7e9rp2uP3Wd3mK3XNAVmlzF0oqL2IVGBGfVCs41
 /kEWgjmAyxaZbP+KCUP5NhsWhyMysyTdeTaRDRy3RrB/pCy4hUSeerb21H8wi2/8eLJCxD0Wd
 QKdi6P5YLA5E16EY3ReI3i3EJ7pffskC9iCnCUZCnHqqma20B/VgonSyLeEEEvBafKhw+U+OR
 +NPyg7YzrjXTN/5Xx8aL047QaUAlxwfbYsiXApyZEtqTuSRA6VJ8dA0a2OM97PJUdCEJ8mP1B
 NUdTJ7IdqAWHy/vdFpHE2Si0V885aHceu6R5edSHQ+FpqKuzR/Y4xbhTctTwOu1D6n5mnYpXx
 j+XoBqJGGLQfOzxns1nM8V+MYMtGjeq3yWn1rzXyACrqaMm3Eq0SYUvErsJbVfJfGmXzTifiz
 ueUB/HTsMzkOkfCYN5WJDuZhPl7WNg/bqQd2cxeR5w1bZSfBR1E4W6ZDfIKVsRvXWjH+8QtoN
 vaou6TupBywkEDMXGLg+46gOOniLxZBjCA+Y0g42D5sUcqb0XvOjvwkFKn4Z6o0T3mwmQhU6d
 1fv4/SMxvmiTvQ6tPBa/TdX0sNsQtLGWRcmxm0GaQnGY/pGim/AtFVirjObFXPz007oNe9sqW
 UOSDDjACW5EMiiwLYyW3CnORQ3BfEhrlLAZDkf7DY9mhhjYspr1k4XvX4YGtzJMk9s4/gW4ro
 Ws5hWSMKYo+Ofj6mu1hMLjQrO6eA5DTGleh1N1PnpyiXXCwFvJEJ0Gs3uuPMlT6t6TBH1rZzQ
 UdYysD7xZ2jCE05v3oITyhxoFVxIByYsLWzWspKiu7x55BD+PBps65he/4nuB/1KBH04VDMGM
 xGJ5CcEGogagIse3Agzw7Cubv2TqY0c2LY38vX/0/bZrpRgaVEaE/7uYodsX3TLWo29XQukKo
 BxAe3FDp7ZW5OGjLDZhH5ROWMA5LSingpR/45TylfuA/R88cfv8HVSvx7Uh7Zd6rYyEuN2FXT
 FAlyO2Qymn/B51JAM8+byz6qN9xW6Ee8+eGc625/E0Cd8DejuinuSHwlonGTa1q9e0f5t/0dQ
 slNfV5m+FZL9gere6jpwZDdeCDuhrjjsT2G3mXfTJ2mGNp+EXOps1wYjQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092853_926071_90F73ADB 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

move code to separate header-file to reuse definitions later
in poweroff-driver (drivers/power/reset/mt6323-poweroff.c)

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v3: none
changes since v2: add missing commit-message

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
