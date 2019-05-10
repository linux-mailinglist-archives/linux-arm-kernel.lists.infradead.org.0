Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A26419E35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLjfLC6U7NDMlc0AVuyAJPTAenIsfFuz2OOxAYDjEKM=; b=kZNJOetCdSLmeL
	YU2hgu5ZkpWwXmyGwQhSe9HL/oucpg/R2yDHK/dlIl4cM3mQSDemhx8T4JYcxhGvVG7LF2MtjNsnJ
	QrClVfDQ0Bx9ICSk/Zo3ymkblP/sRU0JaaU933RSq9iGOhikmTDODr0eKFofGDNKB0RQNoEkFn6sh
	/LaMBigLfOWihdIDLrHb8CW85penFgsl4Z7NbLrAaMdjNBRer76oG8NSHqHCdK2MSmuR6r5+Ke9Xa
	aJ28zqKuDm9EizHgKLkGKww6/Q4SlXArTjIy3cFXml5Uy8fPZ7RzEC+jj82IYXtTiAVYu75PdIPJ9
	PMB1/9AQ1INcPSf41+xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5ap-0004CI-GE; Fri, 10 May 2019 13:29:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5aR-0003tS-W6; Fri, 10 May 2019 13:29:21 +0000
X-UUID: 965e7d71d4ef4e2d9c223dbc56f912e2-20190510
X-UUID: 965e7d71d4ef4e2d9c223dbc56f912e2-20190510
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 373171395; Fri, 10 May 2019 05:27:26 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 06:27:26 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 21:27:11 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 21:27:11 +0800
From: michael.kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH v2 8/8] thermal: mediatek: use spinlock to protect PTPCORESEL
Date: Fri, 10 May 2019 21:27:06 +0800
Message-ID: <1557494826-6044-9-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 31D7B78B317839C87C3E2961C6190345EB6543F46075DED937CAA031FAC50A042000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062920_031948_939230D2 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, "michael.kao" <michael.kao@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver of thermal and svs will use the
same register for the project which should select
bank before reading sensor value.

Signed-off-by: Michael.Kao <michael.kao@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index d5c78b0..6d7e839 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -30,6 +30,7 @@
 #include <linux/thermal.h>
 #include <linux/reset.h>
 #include <linux/types.h>
+#include <linux/power/mtk_svs.h>
 
 /* AUXADC Registers */
 #define AUXADC_CON1_SET_V	0x008
@@ -267,7 +268,7 @@ struct mtk_thermal {
 	struct clk *clk_peri_therm;
 	struct clk *clk_auxadc;
 	/* lock: for getting and putting banks */
-	struct mutex lock;
+	unsigned long flags;
 
 	/* Calibration values */
 	s32 adc_ge;
@@ -566,7 +567,7 @@ static void mtk_thermal_get_bank(struct mtk_thermal_bank *bank)
 	u32 val;
 
 	if (mt->conf->need_switch_bank) {
-		mutex_lock(&mt->lock);
+		mt->flags = claim_mtk_svs_lock();
 
 		val = readl(mt->thermal_base + PTPCORESEL);
 		val &= ~0xf;
@@ -586,7 +587,7 @@ static void mtk_thermal_put_bank(struct mtk_thermal_bank *bank)
 	struct mtk_thermal *mt = bank->mt;
 
 	if (mt->conf->need_switch_bank)
-		mutex_unlock(&mt->lock);
+		release_mtk_svs_lock(mt->flags);
 }
 
 /**
@@ -941,8 +942,6 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	mutex_init(&mt->lock);
-
 	mt->dev = &pdev->dev;
 
 	auxadc = of_parse_phandle(np, "mediatek,auxadc", 0);
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
