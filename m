Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2115918F47D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:26:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5LtF6/Y0cC3bCT4doMX7v+Abqwkbs6U5QqYdFcDDTI=; b=thHZUVVAa3a/Wp
	ms/KFLXbi9RuClnOLs80d0QqgeSCYaxCTviKUZX7X0l7lRNfa/f5ZjuKjvuW4ehnUPWX5pSF1nndj
	KFgXqsuRBiVDgMo0fTUUjjAUHuaAByiuUNQkeqy25QPo/cm1Cop1xacCyVix4qQH3DPndsDtEw5OW
	+TjB20QBeVnOYaxM+XTSumV6llQVLJypcCFbNDALLSMRxqkII2W8VHJnNIAF3iKSXVLpRsB8FveKE
	LJrT+Ax4zBBIdnKtxaRfikhkFFsovW4LOgG9/JbqUgalL77nCbd0Dd+jpFTM4xBggdek1OYiWElsr
	0zCrUbcBDUedUncMMVsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGM9Y-00048J-5i; Mon, 23 Mar 2020 12:26:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGM9O-000416-3U; Mon, 23 Mar 2020 12:25:51 +0000
X-UUID: 2ae090e2eaa04f7f819671a2c38b36f7-20200323
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=OpxxJeIDsgbTPxV5pYutQeAaj6ZyRkN0vPxx1mGgvNU=; 
 b=cmVwT66zko3CtmkTKdLpFb/l4CokMb79IrH35ezxrKz0zoajl8jQYAaBn5BSsjRtKPr0OcAeK9QhPsFPeFo/WmeWiwi7cmZJQXvyAzYGBYa5HWHvnVPEUKyUdUXkdoFOJS8PYnA9yk8i3MxqxZmEAxew/89SNnZ8RwHqSfZu2tw=;
X-UUID: 2ae090e2eaa04f7f819671a2c38b36f7-20200323
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1744028295; Mon, 23 Mar 2020 04:25:43 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Mar 2020 05:15:41 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Mar 2020 20:15:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 23 Mar 2020 20:15:38 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>, <michael.kao@mediatek.com>
Subject: [v4,7/7] thermal: mediatek: use spinlock to protect PTPCORESEL
Date: Mon, 23 Mar 2020 20:15:37 +0800
Message-ID: <20200323121537.22697-8-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200323121537.22697-1-michael.kao@mediatek.com>
References: <20200323121537.22697-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_052550_160166_B511C505 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "michael.kao" <michael.kao@mediatek.com>

The driver of thermal and svs will use the
same register for the project which should select
bank before reading sensor value.

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 9eaca432920e..594ad4f0f8cd 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -22,6 +22,7 @@
 #include <linux/thermal.h>
 #include <linux/reset.h>
 #include <linux/types.h>
+#include <linux/power/mtk_svs.h>
 
 /* AUXADC Registers */
 #define AUXADC_CON1_SET_V	0x008
@@ -262,7 +263,7 @@ struct mtk_thermal {
 	struct clk *clk_peri_therm;
 	struct clk *clk_auxadc;
 	/* lock: for getting and putting banks */
-	struct mutex lock;
+	unsigned long flags;
 
 	/* Calibration values */
 	s32 adc_ge;
@@ -561,7 +562,7 @@ static void mtk_thermal_get_bank(struct mtk_thermal_bank *bank)
 	u32 val;
 
 	if (mt->conf->need_switch_bank) {
-		mutex_lock(&mt->lock);
+		mt->flags = claim_mtk_svs_lock();
 
 		val = readl(mt->thermal_base + PTPCORESEL);
 		val &= ~0xf;
@@ -581,7 +582,7 @@ static void mtk_thermal_put_bank(struct mtk_thermal_bank *bank)
 	struct mtk_thermal *mt = bank->mt;
 
 	if (mt->conf->need_switch_bank)
-		mutex_unlock(&mt->lock);
+		release_mtk_svs_lock(mt->flags);
 }
 
 /**
@@ -938,8 +939,6 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	mutex_init(&mt->lock);
-
 	mt->dev = &pdev->dev;
 
 	auxadc = of_parse_phandle(np, "mediatek,auxadc", 0);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
