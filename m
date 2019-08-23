Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680F19A653
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dz9KhFIFlZjdoAbI6Dm7ovue6PEDzRPHaf++jE6C0D8=; b=r9SmgtJIQcElYK
	CGsUG9OkzshADdjspNpDTxgNlBz9Q886+IeT6SAejGDxYaLBRgqfviOG4CPlnQw75S7N/WQpSHs/j
	cXuZSx7E1U3n7iLheK9SrXj45xbgeF8Bdg2Q1rCd3PchFdUKROnaTaqcp+lIyKOmiUWa5fiHwsoSD
	JxWlzF1UpyktLrgynVO/k75JGyiN1spJoKhTGzHU/+ePgQ/GDjTuodZ2FV5x64OhWhQdR6CI9hEQK
	NxvoXdo0bN7x2ZsJN0i9zwN3gGacL5xXYpPDwWx51DboLS8pu8EAE7QPu+HTUBxUJkGUgoiGsoHd8
	LwojneNeqOFozqU22A0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i10Xh-00005s-Qb; Fri, 23 Aug 2019 03:47:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i10WL-0007UF-C5; Fri, 23 Aug 2019 03:45:51 +0000
X-UUID: 370ec84bc12844be9d66f212a723d308-20190822
X-UUID: 370ec84bc12844be9d66f212a723d308-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1111085275; Thu, 22 Aug 2019 19:45:37 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:45:39 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 11:45:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 23 Aug 2019 11:45:34 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v5 01/10] mfd: mt6397: clean up code
Date: Fri, 23 Aug 2019 11:45:22 +0800
Message-ID: <1566531931-9772-2-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_204549_412439_2FFF1697 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

refine some variable name for more readable

Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/mfd/mt6397-core.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 337bccc..c070862 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -10,17 +10,17 @@
 #include <linux/of_irq.h>
 #include <linux/regmap.h>
 #include <linux/mfd/core.h>
-#include <linux/mfd/mt6397/core.h>
 #include <linux/mfd/mt6323/core.h>
-#include <linux/mfd/mt6397/registers.h>
+#include <linux/mfd/mt6397/core.h>
 #include <linux/mfd/mt6323/registers.h>
+#include <linux/mfd/mt6397/registers.h>
 
 #define MT6397_RTC_BASE		0xe000
 #define MT6397_RTC_SIZE		0x3e
 
-#define MT6323_CID_CODE		0x23
-#define MT6391_CID_CODE		0x91
-#define MT6397_CID_CODE		0x97
+#define MT6323_CHIP_ID		0x23
+#define MT6391_CHIP_ID		0x91
+#define MT6397_CHIP_ID		0x97
 
 static const struct resource mt6397_rtc_resources[] = {
 	{
@@ -290,7 +290,7 @@ static int mt6397_probe(struct platform_device *pdev)
 		return pmic->irq;
 
 	switch (id & 0xff) {
-	case MT6323_CID_CODE:
+	case MT6323_CHIP_ID:
 		pmic->int_con[0] = MT6323_INT_CON0;
 		pmic->int_con[1] = MT6323_INT_CON1;
 		pmic->int_status[0] = MT6323_INT_STATUS0;
@@ -304,8 +304,8 @@ static int mt6397_probe(struct platform_device *pdev)
 					   0, pmic->irq_domain);
 		break;
 
-	case MT6397_CID_CODE:
-	case MT6391_CID_CODE:
+	case MT6391_CHIP_ID:
+	case MT6397_CHIP_ID:
 		pmic->int_con[0] = MT6397_INT_CON0;
 		pmic->int_con[1] = MT6397_INT_CON1;
 		pmic->int_status[0] = MT6397_INT_STATUS0;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
