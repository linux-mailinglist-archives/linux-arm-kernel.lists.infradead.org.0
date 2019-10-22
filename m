Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B24CE013E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 11:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Yu6eCTriTrbopFe6LKnf8EMyqfqvbgAo/IX69t61o0=; b=sD7TlBYfvLd4xQ
	UfMetY/FDC+r0htT9Qm6nGWFvfxqEMHFZFiJ/4v7wi3FwtPRzsJiqaiGvGjUjt/JNLnTr4aL1bOLG
	gLyKZz3yyctcjZYTAx8MKV+7IsJ053ToYtK7f6I0WrqneEpmXYzy2PRUhVwDV7h+L2MogrjtRpgIt
	Al+djbf79vf16Bbmy5+MElccXF1LBBOVeC+Cq3lC5nEF32XREWZ+UF8GF+qkXUmTHJiX33cKv+PCI
	3IvZIftrpZv41uR+MG/S2VxV053L0JERi5PTu3RuesXsE+hPJd/Gs8T8A7E0sRnKNZEGR7uC++2KQ
	vsR/QsRSiANxlJ1qMMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqtM-0003RY-IU; Tue, 22 Oct 2019 09:55:52 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqtA-0003QW-VC; Tue, 22 Oct 2019 09:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571738131;
 bh=OE/0MVT0jwdzZZXVDP3ALcBpFIqz2P+d6POGuGMFRDY=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=aRtC60mY0lF/daRGYPMDz9SS8yBVagkcU/cXgiUMJWEdLyyR0Q5mDvrch+SMJWz1j
 CyZt4YZPZiTYNq6rpHrdnD4bUH8m4NWiQOLoGUHzLF4b1xDwyCt8Fgzw6gxt+kDMqF
 7MAcVJ8i+/Gfx4mGjEtXf+GhRrKt78/e4H+x4cUs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-bq ([185.75.73.113]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N2mFi-1hszdC0mD6-01335A; Tue, 22
 Oct 2019 11:49:50 +0200
Date: Tue, 22 Oct 2019 11:49:47 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190910070446.639-3-frank-w@public-files.de>
References: <20190910070446.639-1-frank-w@public-files.de>
 <20190910070446.639-3-frank-w@public-files.de>
MIME-Version: 1.0
Subject: Re: [PATCH v7 2/7] rtc: mt6397: move some common definitions into
 rtc.h
To: linux-mediatek@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <D5C0F601-D71C-40DC-BF89-5C167DB004A1@public-files.de>
X-Provags-ID: V03:K1:IDQ6Jwwc7LHNhDz0snpL9KvZ48Wwi3GQfUWLY3C+qRfc+xCLK16
 VIpVqXjm0vosezYP0lKD6q1a3Ykm8DY1U1sI7Bzgslu6NVi/00Gc8ftSzoSI3DohyGHzk6K
 YLisBIsWGAhnS+1mr95nVB3M2m7Z/RaHwT6BEaaQjhKAM67qKcylpx6isItv2H5Nnw93gLf
 TwUjRIpjNUSgdx9+zniTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tsgyInglKb8=:C6GXrQHnDy/ofu7FQw8kKN
 8Swr4q6PLtHCSXsu3h+YpHIT7x7blL5ToVDCSMkmq7jtForyrVls5+FmUFPArkubkCGXgxvxR
 LihjGyn1SRvI2r75YhIFpEvNAAV6zV43WDwUqJ9Kta/PQZ/TE4Na8NT/nSoZduQP6A9s6D4SM
 +FKS2yeMGhZVm5ykEPDL+zz7HYg2O4OGxFP1A4mxgjz5GYmxjQ3t2YfmEmOtur45bK+ttHErZ
 vByXz+NGhVc6qtJFU+NZqr1I9kH1vWg2gonPHdZiBRHylLKfvclAhx0R3W29tZJlWtlh/BEOn
 rp91OERrT0m1sR9pjWMDMp/naGq3sr3uxZwunuWe6NUVWZ0/hn532NaSSwwaii0cq7jpPA4Kf
 DZfdOIO+KT/hroj/BMDYFLs9TyJHCNpv7nM0Zo66JsvyLGVkIde95TDmnau0Iu+8vrLoBMy1L
 9/qF8VqhvBU7LWYnZMm7RJ6pVLKfjBE7w5ycgzP/sKwRuce5ucOVTQCimwrqYUsHyMdl60f6C
 331sE6qy3jStc+C4Q/zWiPTS/KqX4uNqA7JULV80IJe4MAy7D4LF43H0rW24SfYofdjT0CML4
 v9lMyN1bDWvsfyRWBfT9+wG1mgc5+DT06EhVUAIuI/ox4ImEf+8ykGe81eavFtfd0LYPPiklG
 r3fJejl/fzEZ6fPAH3pT3Kib7K6MOM25454sROoDLd/uWjhYDCeJFjRysfDsZeC7nKFRcz/9g
 TufnTbtyB0OE30N9+mtliuV61boyWZjlCoD1REy4RL5oaiEqkCwS5EHtpuGmHZQIMSKPoDr0n
 m7Fjih0gPZ+sQpjUsjyM2vbN2WZ0c3pLuaq0CHY8YbX7JVH1mECAI2MFfxWSOxLLVveCTMFu8
 rAODhbjwwk9X4rhqjm/CfyRgjl6VUT/oGQ9xMR97iTPGL4k4XBkGkRkhYE3akvh6LqCPfOWaH
 BLhxqcFGlYO3bj7aKX5gNuegAmP2ZRivcZc6/jZ6GT+8CACg1dtYEjAOA5O8ZFnCmig4RNIo2
 um0nUFQwO5cb/DArn3kUqD2oCqIWM4zuOtBEpuoZESvvIcSy7nlHueM75LJCTdsqI+XF3UqiG
 as5VV1T+Iar1dEgoltLyP9ondDUga4PPeAQQpCo42kzVHOfKfOhrzwxElfsyexU+3p/Wcn7kh
 vI1ssCsLOVEDisFHBUfV6uhgfDT6bLcSzYoxKzrwkzZPXp1lDSSFRq6yJt4U2vyoHwWxBirKe
 L/nxqc44PWnM+1zlEnSpMLraiYs0lqkfOBZYkTZviI5uQV/tUOQehJ6f7Lw4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_025541_299477_D9A8101E 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: frank-w@public-files.de
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Josef Friedl <josef.friedl@speed.at>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eddie Huang <eddie.huang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Tianping Fang <tianping.fang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Is it ok now? It seems not yet merged to next. Other code is based on this.

Am 10. September 2019 09:04:41 MESZ schrieb Frank Wunderlich <frank-w@public-files.de>:
>From: Josef Friedl <josef.friedl@speed.at>
>
>move code to separate header-file to reuse definitions later
>in poweroff-driver (drivers/power/reset/mt6323-poweroff.c)
>
>Suggested-by: Frank Wunderlich <frank-w@public-files.de>
>Signed-off-by: Josef Friedl <josef.friedl@speed.at>
>Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
>---
>changes since v6: updated copyright
>changes since v5: none
>changes since v4: none
>changes since v3: none
>changes since v2: add missing commit-message
>---
> drivers/rtc/rtc-mt6397.c       | 55 +-------------------------
> include/linux/mfd/mt6397/rtc.h | 71 ++++++++++++++++++++++++++++++++++
> 2 files changed, 72 insertions(+), 54 deletions(-)
> create mode 100644 include/linux/mfd/mt6397/rtc.h
>
>diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
>index b46ed4dc7015..c08ee5edf865 100644
>--- a/drivers/rtc/rtc-mt6397.c
>+++ b/drivers/rtc/rtc-mt6397.c
>@@ -9,60 +9,7 @@
> #include <linux/module.h>
> #include <linux/regmap.h>
> #include <linux/rtc.h>
>-#include <linux/irqdomain.h>
>-#include <linux/platform_device.h>
>-#include <linux/of_address.h>
>-#include <linux/of_irq.h>
>-#include <linux/io.h>
>-#include <linux/mfd/mt6397/core.h>
>-
>-#define RTC_BBPU		0x0000
>-#define RTC_BBPU_CBUSY		BIT(6)
>-
>-#define RTC_WRTGR		0x003c
>-
>-#define RTC_IRQ_STA		0x0002
>-#define RTC_IRQ_STA_AL		BIT(0)
>-#define RTC_IRQ_STA_LP		BIT(3)
>-
>-#define RTC_IRQ_EN		0x0004
>-#define RTC_IRQ_EN_AL		BIT(0)
>-#define RTC_IRQ_EN_ONESHOT	BIT(2)
>-#define RTC_IRQ_EN_LP		BIT(3)
>-#define RTC_IRQ_EN_ONESHOT_AL	(RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
>-
>-#define RTC_AL_MASK		0x0008
>-#define RTC_AL_MASK_DOW		BIT(4)
>-
>-#define RTC_TC_SEC		0x000a
>-/* Min, Hour, Dom... register offset to RTC_TC_SEC */
>-#define RTC_OFFSET_SEC		0
>-#define RTC_OFFSET_MIN		1
>-#define RTC_OFFSET_HOUR		2
>-#define RTC_OFFSET_DOM		3
>-#define RTC_OFFSET_DOW		4
>-#define RTC_OFFSET_MTH		5
>-#define RTC_OFFSET_YEAR		6
>-#define RTC_OFFSET_COUNT	7
>-
>-#define RTC_AL_SEC		0x0018
>-
>-#define RTC_PDN2		0x002e
>-#define RTC_PDN2_PWRON_ALARM	BIT(4)
>-
>-#define RTC_MIN_YEAR		1968
>-#define RTC_BASE_YEAR		1900
>-#define RTC_NUM_YEARS		128
>-#define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
>-
>-struct mt6397_rtc {
>-	struct device		*dev;
>-	struct rtc_device	*rtc_dev;
>-	struct mutex		lock;
>-	struct regmap		*regmap;
>-	int			irq;
>-	u32			addr_base;
>-};
>+#include <linux/mfd/mt6397/rtc.h>
> 
> static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
> {
>diff --git a/include/linux/mfd/mt6397/rtc.h
>b/include/linux/mfd/mt6397/rtc.h
>new file mode 100644
>index 000000000000..f84b9163c0ee
>--- /dev/null
>+++ b/include/linux/mfd/mt6397/rtc.h
>@@ -0,0 +1,71 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+/*
>+ * Copyright (C) 2014-2019 MediaTek Inc.
>+ *
>+ * Author: Tianping.Fang <tianping.fang@mediatek.com>
>+ *        Sean Wang <sean.wang@mediatek.com>
>+ */
>+
>+#ifndef _LINUX_MFD_MT6397_RTC_H_
>+#define _LINUX_MFD_MT6397_RTC_H_
>+
>+#include <linux/jiffies.h>
>+#include <linux/mutex.h>
>+#include <linux/regmap.h>
>+#include <linux/rtc.h>
>+
>+#define RTC_BBPU               0x0000
>+#define RTC_BBPU_CBUSY         BIT(6)
>+#define RTC_BBPU_KEY            (0x43 << 8)
>+
>+#define RTC_WRTGR              0x003c
>+
>+#define RTC_IRQ_STA            0x0002
>+#define RTC_IRQ_STA_AL         BIT(0)
>+#define RTC_IRQ_STA_LP         BIT(3)
>+
>+#define RTC_IRQ_EN             0x0004
>+#define RTC_IRQ_EN_AL          BIT(0)
>+#define RTC_IRQ_EN_ONESHOT     BIT(2)
>+#define RTC_IRQ_EN_LP          BIT(3)
>+#define RTC_IRQ_EN_ONESHOT_AL  (RTC_IRQ_EN_ONESHOT | RTC_IRQ_EN_AL)
>+
>+#define RTC_AL_MASK            0x0008
>+#define RTC_AL_MASK_DOW                BIT(4)
>+
>+#define RTC_TC_SEC             0x000a
>+/* Min, Hour, Dom... register offset to RTC_TC_SEC */
>+#define RTC_OFFSET_SEC         0
>+#define RTC_OFFSET_MIN         1
>+#define RTC_OFFSET_HOUR                2
>+#define RTC_OFFSET_DOM         3
>+#define RTC_OFFSET_DOW         4
>+#define RTC_OFFSET_MTH         5
>+#define RTC_OFFSET_YEAR                6
>+#define RTC_OFFSET_COUNT       7
>+
>+#define RTC_AL_SEC             0x0018
>+
>+#define RTC_PDN2               0x002e
>+#define RTC_PDN2_PWRON_ALARM   BIT(4)
>+
>+#define RTC_MIN_YEAR           1968
>+#define RTC_BASE_YEAR          1900
>+#define RTC_NUM_YEARS          128
>+#define RTC_MIN_YEAR_OFFSET    (RTC_MIN_YEAR - RTC_BASE_YEAR)
>+
>+#define MTK_RTC_POLL_DELAY_US  10
>+#define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
>+
>+struct mt6397_rtc {
>+	struct device           *dev;
>+	struct rtc_device       *rtc_dev;
>+
>+	/* Protect register access from multiple tasks */
>+	struct mutex            lock;
>+	struct regmap           *regmap;
>+	int                     irq;
>+	u32                     addr_base;
>+};
>+
>+#endif /* _LINUX_MFD_MT6397_RTC_H_ */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
