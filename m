Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEC0150586
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:41:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0Dxs3JHMbnpHC49XgvJxyxp2XTn9/fqwoJtXKB77Zs=; b=UCjYE6dBkbnHWT
	oGgQZywPyNolUc4Sfqc9ElH+H9EsY0tXFxgKjNxsCSIQjO7A7eAAvoByoOgNxqS07vt47RmFBWdjb
	4gXE4ZNheB4FEN18qgXMFqVEPDIjCDwIuJoLovQcPLyCh62MPCJ4lmUn52LjX6YAyo2s3ChZqu4Lm
	RtJuHJRh7UCnYIoVDLoOMkAUGTU3IUrU8+0B8lXfg7lu7IGE5y8fuP3UrYa8VbV4LaawvpCyvRZ33
	Nf12bBngLUjt5pR/Z8mhTtAr/i68dpBHOfJxDJQ2xj4dMJK3jJQ7A4L+1fMHQvPB0Fb952Zkeeg6B
	DXD+0i47QYsVozOvp+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iya6p-0006vF-Qt; Mon, 03 Feb 2020 11:41:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iya64-0006HT-DO; Mon, 03 Feb 2020 11:40:57 +0000
X-UUID: 2c9fdd0777084e67b1bc62209db77e42-20200203
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=c4U+R76pck3CjZ+Vh6/dtofCsHfcB5LI8mXWeo6/RFk=; 
 b=lqWQc4E3XCQ8YLcjfCkRe2n7uOAAJaZytaW10NYRTSlghx5bHj/jLyXvaaYn/Y5EF8im7r9BeqIZu6Y/5+n8hdZL/triLJARLJ9bwcKyJKxEeUdQePL/p/a3Z/OFjAf8xdZfzon3xRpBwrw0b2oJnjmWFuYfNpejCDLgx8O+Mvk=;
X-UUID: 2c9fdd0777084e67b1bc62209db77e42-20200203
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 269289720; Mon, 03 Feb 2020 03:40:49 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Feb 2020 03:41:10 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Feb 2020 19:40:00 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 3 Feb 2020 19:40:30 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v8 1/5] mfd: mt6397: modify suspend/resume behavior
Date: Mon, 3 Feb 2020 19:40:40 +0800
Message-ID: <1580730044-30501-2-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_034056_457880_3A1C0074 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some pmics don't need backup interrupt settings, so we change to use
pm notifier for the pmics which are necessary to store settings.

Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/mfd/mt6397-core.c       | 30 ------------------------------
 drivers/mfd/mt6397-irq.c        | 33 +++++++++++++++++++++++++++++++++
 include/linux/mfd/mt6397/core.h |  2 ++
 3 files changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 0437c85..d2e70d8 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -100,35 +100,6 @@ static const struct mfd_cell mt6397_devs[] = {
 	}
 };
 
-#ifdef CONFIG_PM_SLEEP
-static int mt6397_irq_suspend(struct device *dev)
-{
-	struct mt6397_chip *chip = dev_get_drvdata(dev);
-
-	regmap_write(chip->regmap, chip->int_con[0], chip->wake_mask[0]);
-	regmap_write(chip->regmap, chip->int_con[1], chip->wake_mask[1]);
-
-	enable_irq_wake(chip->irq);
-
-	return 0;
-}
-
-static int mt6397_irq_resume(struct device *dev)
-{
-	struct mt6397_chip *chip = dev_get_drvdata(dev);
-
-	regmap_write(chip->regmap, chip->int_con[0], chip->irq_masks_cur[0]);
-	regmap_write(chip->regmap, chip->int_con[1], chip->irq_masks_cur[1]);
-
-	disable_irq_wake(chip->irq);
-
-	return 0;
-}
-#endif
-
-static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_irq_suspend,
-			mt6397_irq_resume);
-
 struct chip_data {
 	u32 cid_addr;
 	u32 cid_shift;
@@ -238,7 +209,6 @@ static struct platform_driver mt6397_driver = {
 	.driver = {
 		.name = "mt6397",
 		.of_match_table = of_match_ptr(mt6397_of_match),
-		.pm = &mt6397_pm_ops,
 	},
 	.id_table = mt6397_id,
 };
diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
index b2d3ce1..669e93d 100644
--- a/drivers/mfd/mt6397-irq.c
+++ b/drivers/mfd/mt6397-irq.c
@@ -9,6 +9,7 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/suspend.h>
 #include <linux/mfd/mt6323/core.h>
 #include <linux/mfd/mt6323/registers.h>
 #include <linux/mfd/mt6397/core.h>
@@ -128,6 +129,36 @@ static const struct irq_domain_ops mt6397_irq_domain_ops = {
 	.map = mt6397_irq_domain_map,
 };
 
+static int mt6397_irq_pm_notifier(struct notifier_block *notifier,
+				  unsigned long pm_event, void *unused)
+{
+	struct mt6397_chip *chip =
+		container_of(notifier, struct mt6397_chip, pm_nb);
+
+	switch (pm_event) {
+	case PM_SUSPEND_PREPARE:
+		regmap_write(chip->regmap,
+			     chip->int_con[0], chip->wake_mask[0]);
+		regmap_write(chip->regmap,
+			     chip->int_con[1], chip->wake_mask[1]);
+		enable_irq_wake(chip->irq);
+		break;
+
+	case PM_POST_SUSPEND:
+		regmap_write(chip->regmap,
+			     chip->int_con[0], chip->irq_masks_cur[0]);
+		regmap_write(chip->regmap,
+			     chip->int_con[1], chip->irq_masks_cur[1]);
+		disable_irq_wake(chip->irq);
+		break;
+
+	default:
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
 int mt6397_irq_init(struct mt6397_chip *chip)
 {
 	int ret;
@@ -159,6 +190,7 @@ int mt6397_irq_init(struct mt6397_chip *chip)
 	regmap_write(chip->regmap, chip->int_con[0], 0x0);
 	regmap_write(chip->regmap, chip->int_con[1], 0x0);
 
+	chip->pm_nb.notifier_call = mt6397_irq_pm_notifier;
 	chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
 						 MT6397_IRQ_NR,
 						 &mt6397_irq_domain_ops,
@@ -177,5 +209,6 @@ int mt6397_irq_init(struct mt6397_chip *chip)
 		return ret;
 	}
 
+	register_pm_notifier(&chip->pm_nb);
 	return 0;
 }
diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
index fc88d31..b81d333 100644
--- a/include/linux/mfd/mt6397/core.h
+++ b/include/linux/mfd/mt6397/core.h
@@ -8,6 +8,7 @@
 #define __MFD_MT6397_CORE_H__
 
 #include <linux/mutex.h>
+#include <linux/notifier.h>
 
 enum chip_id {
 	MT6323_CHIP_ID = 0x23,
@@ -54,6 +55,7 @@ enum mt6397_irq_numbers {
 struct mt6397_chip {
 	struct device *dev;
 	struct regmap *regmap;
+	struct notifier_block pm_nb;
 	int irq;
 	struct irq_domain *irq_domain;
 	struct mutex irqlock;
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
