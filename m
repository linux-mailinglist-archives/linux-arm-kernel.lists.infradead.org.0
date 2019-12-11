Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CF211A7D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8e1/vzka1oqZQ5Jb/b1+dudfgVd9ExgRYRhXi7+K4E=; b=GF1iDE/d0DDISq
	/h7wxWVDizUBSIYZGW0mTph3pyN8kd+UFtb3ZTk1Advq0VCZc2Y6pdqiXTz6phql9hMwbK0n7ME17
	VIJ7C9Hh+iPNCqNGUR9rK9pGPJ1cJM7vhjcwAUsMYNXv1HsHnCtGwDct2qtwJ5NSnuDbgefMzwF9f
	YfVeb+urAowxcIubAXcx0QGEShSBY2vSz+aVcYnNzFmCZ6bwuqA+oHqHy9gZPDBehX0dGgyWBRIYd
	Wo16BAxNFJN7kG2o6QevY+kSgsEQ6BX41P3agtloKwUaMgTrAmdaTRfTUe7h9AZ0rLi56di5gdAky
	e4cYnDuUu9oJc7rAJ6kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyXc-0001tG-1V; Wed, 11 Dec 2019 09:44:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyXL-0001rg-RJ; Wed, 11 Dec 2019 09:44:05 +0000
X-UUID: 48915b614b6f4327af8386a22dbdecf4-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=KCa4WuZtBEy7drSeISibY0DG6RoZ8edaCDVMIrX/w0s=; 
 b=YRU+KoTojA6dwZPY1WmbnLsT1xf8TESKyGTUWEbOH1gbF8XEMhtvuAcal3+0znDj1M/qBG6lBq7TngA5wmMQ8Lf0ufkf8FXfu7QWoOfvTf+PDeYSdh/7K3r7kGeNsom99IuMbjvSXcKHT1J0W4UluTkh4WGjISv22T4r8K3yv6Y=;
X-UUID: 48915b614b6f4327af8386a22dbdecf4-20191211
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1150381415; Wed, 11 Dec 2019 01:44:00 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 01:45:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:43:34 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Dec 2019 17:43:33 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@free-electrons.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v7 5/6] rtc: mt6397: fix alarm register overwrite
Date: Wed, 11 Dec 2019 17:43:54 +0800
Message-ID: <1576057435-3561-6-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3ECBA1CF6336FB346A8A28D880DBC03AE986D52D6E5457734021BC0E34E47F992000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_014403_902687_C1C6940C 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alessandro
 Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Ran Bi <ran.bi@mediatek.com>, Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ran Bi <ran.bi@mediatek.com>

Alarm registers high byte was reserved for other functions.
This add mask in alarm registers operation functions.
This also fix error condition in interrupt handler.

Fixes: fc2979118f3f ("rtc: mediatek: Add MT6397 RTC driver")

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c       | 39 +++++++++++++++++++++++++--------------
 include/linux/mfd/mt6397/rtc.h |  8 ++++++++
 2 files changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 5249fc9..9135e21 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -47,7 +47,7 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
 		irqen = irqsta & ~RTC_IRQ_EN_AL;
 		mutex_lock(&rtc->lock);
 		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
-				 irqen) < 0)
+				 irqen) == 0)
 			mtk_rtc_write_trigger(rtc);
 		mutex_unlock(&rtc->lock);
 
@@ -169,12 +169,12 @@ static int mtk_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
 	alm->pending = !!(pdn2 & RTC_PDN2_PWRON_ALARM);
 	mutex_unlock(&rtc->lock);
 
-	tm->tm_sec = data[RTC_OFFSET_SEC];
-	tm->tm_min = data[RTC_OFFSET_MIN];
-	tm->tm_hour = data[RTC_OFFSET_HOUR];
-	tm->tm_mday = data[RTC_OFFSET_DOM];
-	tm->tm_mon = data[RTC_OFFSET_MTH];
-	tm->tm_year = data[RTC_OFFSET_YEAR];
+	tm->tm_sec = data[RTC_OFFSET_SEC] & RTC_AL_SEC_MASK;
+	tm->tm_min = data[RTC_OFFSET_MIN] & RTC_AL_MIN_MASK;
+	tm->tm_hour = data[RTC_OFFSET_HOUR] & RTC_AL_HOU_MASK;
+	tm->tm_mday = data[RTC_OFFSET_DOM] & RTC_AL_DOM_MASK;
+	tm->tm_mon = data[RTC_OFFSET_MTH] & RTC_AL_MTH_MASK;
+	tm->tm_year = data[RTC_OFFSET_YEAR] & RTC_AL_YEA_MASK;
 
 	tm->tm_year += RTC_MIN_YEAR_OFFSET;
 	tm->tm_mon--;
@@ -195,14 +195,25 @@ static int mtk_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
 	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
 	tm->tm_mon++;
 
-	data[RTC_OFFSET_SEC] = tm->tm_sec;
-	data[RTC_OFFSET_MIN] = tm->tm_min;
-	data[RTC_OFFSET_HOUR] = tm->tm_hour;
-	data[RTC_OFFSET_DOM] = tm->tm_mday;
-	data[RTC_OFFSET_MTH] = tm->tm_mon;
-	data[RTC_OFFSET_YEAR] = tm->tm_year;
-
 	mutex_lock(&rtc->lock);
+	ret = regmap_bulk_read(rtc->regmap, rtc->addr_base + RTC_AL_SEC,
+			       data, RTC_OFFSET_COUNT);
+	if (ret < 0)
+		goto exit;
+
+	data[RTC_OFFSET_SEC] = ((data[RTC_OFFSET_SEC] & ~(RTC_AL_SEC_MASK)) |
+				(tm->tm_sec & RTC_AL_SEC_MASK));
+	data[RTC_OFFSET_MIN] = ((data[RTC_OFFSET_MIN] & ~(RTC_AL_MIN_MASK)) |
+				(tm->tm_min & RTC_AL_MIN_MASK));
+	data[RTC_OFFSET_HOUR] = ((data[RTC_OFFSET_HOUR] & ~(RTC_AL_HOU_MASK)) |
+				(tm->tm_hour & RTC_AL_HOU_MASK));
+	data[RTC_OFFSET_DOM] = ((data[RTC_OFFSET_DOM] & ~(RTC_AL_DOM_MASK)) |
+				(tm->tm_mday & RTC_AL_DOM_MASK));
+	data[RTC_OFFSET_MTH] = ((data[RTC_OFFSET_MTH] & ~(RTC_AL_MTH_MASK)) |
+				(tm->tm_mon & RTC_AL_MTH_MASK));
+	data[RTC_OFFSET_YEAR] = ((data[RTC_OFFSET_YEAR] & ~(RTC_AL_YEA_MASK)) |
+				(tm->tm_year & RTC_AL_YEA_MASK));
+
 	if (alm->enabled) {
 		ret = regmap_bulk_write(rtc->regmap,
 					rtc->addr_base + RTC_AL_SEC,
diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
index f84b916..7dfb63b 100644
--- a/include/linux/mfd/mt6397/rtc.h
+++ b/include/linux/mfd/mt6397/rtc.h
@@ -46,6 +46,14 @@
 
 #define RTC_AL_SEC             0x0018
 
+#define RTC_AL_SEC_MASK        0x003f
+#define RTC_AL_MIN_MASK        0x003f
+#define RTC_AL_HOU_MASK        0x001f
+#define RTC_AL_DOM_MASK        0x001f
+#define RTC_AL_DOW_MASK        0x0007
+#define RTC_AL_MTH_MASK        0x000f
+#define RTC_AL_YEA_MASK        0x007f
+
 #define RTC_PDN2               0x002e
 #define RTC_PDN2_PWRON_ALARM   BIT(4)
 
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
