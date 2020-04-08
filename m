Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A221A1D55
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 10:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Uop1B7FC15Cub09MsutrsnlwBpVLMiUAurRmLXrfMk=; b=gvG1GuHCzmyIDl
	obXlwsecAHYkA+lSnkwmPiEkfCVkkHEvbt+nZLBWHAa6fOW5pQG1iYntilKANTndOTVxdNvcsQgi4
	3FklzCmuO8OtmqzGQUD9fTG9dwxuibNiKGLCtaTfvtlKfBmF+pTKPYCrNMMu33Qw7rAkN19G9Iw70
	gK0s55D11i1RC6DTgUhcvItkeHMcni6++eD4lnNELY0DO6OJdI0avBGef2jWsTenEyBBQOgHA5mjT
	lB9PlLXBHuoGUDYxn7u8s/JZIy7MTIn5JXGjMqcSNi/qFNYLMbOsMGOK8dGRuCOp93fm4H4wIo0f9
	FD/MbfWkHN/BAzQee8MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM60B-0007Nc-C2; Wed, 08 Apr 2020 08:24:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5zB-0006IA-Bz; Wed, 08 Apr 2020 08:23:02 +0000
X-UUID: 07ab98e962474f8d89f7baf20dde0712-20200408
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=fGKVeJMpPPedNFBW5Z89bG65lS398KakOP6xziYFSsc=; 
 b=MKFbUuABkrrKU63iLFx4+0f2juuHFD9SORXdLpZ7/aoedEn8qEYckg5arBaqfRk4Fz1/Y3oo/payEiCmcOLwEyACj584YZHgX2kfRQGFSsAbrgqK6iaEm1Zp5F7bh5vyW/GgVB3G/ceSQbvtX5ehs0rqo66bizgZUYQSJyTjy1U=;
X-UUID: 07ab98e962474f8d89f7baf20dde0712-20200408
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 317860744; Wed, 08 Apr 2020 00:22:45 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Apr 2020 01:12:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Apr 2020 16:12:49 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 8 Apr 2020 16:12:49 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v12 2/6] mfd: mt6397: Trim probe function to support different
 chips more cleanly
Date: Wed, 8 Apr 2020 16:12:07 +0800
Message-ID: <1586333531-21641-3-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: FEDB43AB2ACB42064A2DB5C5D7CC07444166C3514C64B30D112F886F1894AF732000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_012301_420552_2C89DAFE 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-rtc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org, Richard
 Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-pm@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new struct members for mfd-cells and irq initial function, so we can
call devm_mfd_add_devices() only once.

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/mfd/mt6397-core.c | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index d2e70d8..a313a72 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -103,22 +103,31 @@ static const struct mfd_cell mt6397_devs[] = {
 struct chip_data {
 	u32 cid_addr;
 	u32 cid_shift;
+	const struct mfd_cell *cells;
+	int cell_size;
+	int (*irq_init)(struct mt6397_chip *chip);
 };
 
 static const struct chip_data mt6323_core = {
 	.cid_addr = MT6323_CID,
 	.cid_shift = 0,
+	.cells = mt6323_devs,
+	.cell_size = ARRAY_SIZE(mt6323_devs),
+	.irq_init = mt6397_irq_init,
 };
 
 static const struct chip_data mt6397_core = {
 	.cid_addr = MT6397_CID,
 	.cid_shift = 0,
+	.cells = mt6397_devs,
+	.cell_size = ARRAY_SIZE(mt6397_devs),
+	.irq_init = mt6397_irq_init,
 };
 
 static int mt6397_probe(struct platform_device *pdev)
 {
 	int ret;
-	unsigned int id;
+	unsigned int id = 0;
 	struct mt6397_chip *pmic;
 	const struct chip_data *pmic_core;
 
@@ -154,29 +163,13 @@ static int mt6397_probe(struct platform_device *pdev)
 	if (pmic->irq <= 0)
 		return pmic->irq;
 
-	ret = mt6397_irq_init(pmic);
+	ret = pmic_core->irq_init(pmic);
 	if (ret)
 		return ret;
 
-	switch (pmic->chip_id) {
-	case MT6323_CHIP_ID:
-		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
-					   mt6323_devs, ARRAY_SIZE(mt6323_devs),
-					   NULL, 0, pmic->irq_domain);
-		break;
-
-	case MT6391_CHIP_ID:
-	case MT6397_CHIP_ID:
-		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
-					   mt6397_devs, ARRAY_SIZE(mt6397_devs),
-					   NULL, 0, pmic->irq_domain);
-		break;
-
-	default:
-		dev_err(&pdev->dev, "unsupported chip: %d\n", pmic->chip_id);
-		return -ENODEV;
-	}
-
+	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				   pmic_core->cells, pmic_core->cell_size,
+				   NULL, 0, pmic->irq_domain);
 	if (ret) {
 		irq_domain_remove(pmic->irq_domain);
 		dev_err(&pdev->dev, "failed to add child devices: %d\n", ret);
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
