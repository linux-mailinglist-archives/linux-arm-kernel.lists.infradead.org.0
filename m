Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C8A112142
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pGu/+Kl2RdhHBzznxKoeqTz781jF4RL1umQaArLDQMs=; b=VvAR6ukLjmwJoW
	CpywMsY3+2L7n1arwJuoA0QzLp1DeFM+FXZTFjQOsWspWh828CdXrHdQDWBpmsBboR10k7ZLl3Vfw
	J83ANfZM1xoobDZD3rXcyzzYjAGCzo1uGcUC0TP1mCyhWgDcWQQTp34cnIcgHopAK++cMUXgrBOWj
	VIHGNCC3drdND0S7LgQ5W85qDLqnNQxPccLXdyNTbdmTZvC/hnW6YcaBxDv6hHYPr8uVyM+oHFpcp
	0CECK04OZdUfmFixGxUQnGDOQkf8AWf00iks0v87wDnEYoYzMvS4GCTuVV4q75zLvY74RS5hugLUu
	P04MlFxKh+CzzhvcZ9uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icK2A-00083v-Dc; Wed, 04 Dec 2019 02:04:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icK22-000836-3K; Wed, 04 Dec 2019 02:04:48 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 00030B68322770FDCDDD;
 Wed,  4 Dec 2019 10:04:37 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Wed, 4 Dec 2019 10:04:27 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <eddie.huang@mediatek.com>, <sean.wang@mediatek.com>,
 <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <matthias.bgg@gmail.com>
Subject: [PATCH -next] rtc: mt6397: drop free_irq of devm_xx allocated irq
Date: Wed, 4 Dec 2019 10:02:09 +0800
Message-ID: <20191204020209.10363-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_180446_328167_99B83BD0 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>,
 Hulk Robot <hulkci@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

rtc->irq is requested by devm_request_threaded_irq,
and request_threaded_irq. IRQs requested with this
function will be automatically freed on driver detach.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Mao Wenan <maowenan@huawei.com>
---
 drivers/rtc/rtc-mt6397.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 5249fc99fd5f..d6a10111137a 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -293,7 +293,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	return 0;
 
 out_free_irq:
-	free_irq(rtc->irq, rtc);
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
