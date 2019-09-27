Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC390C0377
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNn8KRl3z06hEgIsv40jCNQjo3QXnCjHHTxAJ4UJCLk=; b=LMU+0EleYesNiN
	rEfQIOqS2PX1ftTcW93ueQQQRBjbqJB7sXxPi9Yd6xlaczJTO9YafonqiaaovklhCEAj5pxICyfrf
	/0txnqnHqIgC1l+dOmFeM5w7hhvTSwN4MtdTpQiPcAwIOwS5c3lYsNY3t6ulXo5FFwMHOFSEoGnEx
	6ER901LO0bUMxDOn38kjv34XP51x8ZjZRSZL7H6Q5Wj4AZu7ZF2mYEYlMlAOIvfSZmOsYdgKc+6GB
	GytzzVF3F1d1jv2KJQvOo7o6p3VvDzIynpYs0utJnwcdcZnbsuzzU51Yc+733/CLvJHFBCvUGAXY1
	U8JhjA9H0RJinJBOWmxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnZC-0003QK-24; Fri, 27 Sep 2019 10:33:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnXm-0002L5-Oq; Fri, 27 Sep 2019 10:32:12 +0000
X-UUID: b68696a468004c3a9402bc1b485f57a1-20190927
X-UUID: b68696a468004c3a9402bc1b485f57a1-20190927
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1453500949; Fri, 27 Sep 2019 02:32:04 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 03:32:03 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 18:32:01 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 18:32:01 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <broonie@kernel.org>, <mark.rutland@arm.com>, <robh+dt@kernel.org>,
 <linux@roeck-us.net>, <wim@linux-watchdog.org>
Subject: [PATCH v2 4/4] ASoC: mt8183: fix audio playback slowly after playback
 during bootup
Date: Fri, 27 Sep 2019 18:31:57 +0800
Message-ID: <1569580317-21181-5-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_033210_825828_D6E4DE96 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, yong.liang@mediatek.com, lgirdwood@gmail.com,
 jiaxin.yu@mediatek.com, perex@perex.cz, tzungbi@google.com,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before regmap_reinit_cache we must reset audio regs as default values.
So we use reset controller unit(toprgu) to reset audio hw.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
index 4a31106d3471..721632386a50 100644
--- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
+++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
@@ -11,6 +11,7 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/pm_runtime.h>
+#include <linux/reset.h>
 
 #include "mt8183-afe-common.h"
 #include "mt8183-afe-clk.h"
@@ -1089,6 +1090,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 	struct mtk_base_afe *afe;
 	struct mt8183_afe_private *afe_priv;
 	struct device *dev;
+	struct reset_control *rstc;
 	int i, irq_id, ret;
 
 	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
@@ -1126,6 +1128,19 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	rstc = devm_reset_control_get(dev, "audiosys");
+	if (IS_ERR(rstc)) {
+		ret = PTR_ERR(rstc);
+		dev_err(dev, "could not get audiosys reset:%d\n", ret);
+		return ret;
+	}
+
+	ret = reset_control_reset(rstc);
+	if (ret) {
+		dev_err(dev, "failed to trigger audio reset:%d\n", ret);
+		return ret;
+	}
+
 	/* enable clock for regcache get default value from hw */
 	afe_priv->pm_runtime_bypass_reg_ctl = true;
 	pm_runtime_get_sync(&pdev->dev);
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
