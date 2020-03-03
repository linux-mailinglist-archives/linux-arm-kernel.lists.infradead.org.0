Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524D8176ED9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 06:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vz82/GOodNhPojHhQPXFsqNKb6TgZgzwLqYhstrYtrY=; b=oaVmzTrR93vg8n
	vWOLiKfN51fqL0euWTXe4H4cFQ1+Lj2xqcALG5/AGuaUyQc59smCbvlidEb4KazCNSmXXBc0UgHhp
	o+LCC/GIqnOyHFV9ZEPiQpBDUVqV2UyhRcybFfTRYLNGWsz8YBH/nG9rfACxUmsPWZH9K5gN5/jRB
	pGYvNz0fQTh/UTmY5X1xLB8zoq13rrqxXAFUgOYoEDFvC/AGfyUakDsTY7ejgFgwnzE/nipC3wpbR
	uaOjwSQgSDKJV3Z2pYQ0bfKWGZq2xbS6d2MX2uCIlzr79kJHo/bUe0qXojSvhHoERsW87fDyl1vVM
	WPDcTfrDyOHemrZduL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90GU-0001h6-DB; Tue, 03 Mar 2020 05:38:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90Fr-00012u-EY; Tue, 03 Mar 2020 05:38:08 +0000
X-UUID: 7eb3f18483bb45ec8e189127c7bf1d8a-20200302
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=sB31c1utjXoEI0bkxHgvZA0r/O+d8TC2fbnDDVG92d8=; 
 b=RLCN62+1nXVlFbVoOONZPrKcEpjwpH18fb0tQ1Uzx7AEIjjwyZrDne8Ed7wbL3UA850GmC4/DQUoysxzV9t6GW1kxyFlqmgvQZIiOCDiqYazlYf20omM7u4q2IF2bPS5Bx4J3bHznYpFpAfDxcfmHJ4T3PQ7Y2trnMk1b1L11Kg=;
X-UUID: 7eb3f18483bb45ec8e189127c7bf1d8a-20200302
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1408934268; Mon, 02 Mar 2020 21:38:03 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Mar 2020 21:28:18 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 3 Mar 2020 13:23:39 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 3 Mar 2020 13:28:31 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v12 6/6] drm/mediatek: set dpi pin mode to gpio low to avoid
 leakage current
Date: Tue, 3 Mar 2020 13:27:22 +0800
Message-ID: <20200303052722.94795-7-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200303052722.94795-1-jitao.shi@mediatek.com>
References: <20200303052722.94795-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: A7DA1D6B70A54B88BB92C62DF5B57B82FE7C188A7E6E462BA9E92C17D90207F02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_213807_496358_30CCD9EF 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Config dpi pins mode to output and pull low when dpi is disabled.
Aovid leakage current from some dpi pins (Hsync Vsync DE ... ).

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 44 ++++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index db3272f7a4c4..b6359e979588 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -10,7 +10,9 @@
 #include <linux/kernel.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/of_gpio.h>
 #include <linux/of_graph.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/types.h>
 
@@ -74,6 +76,9 @@ struct mtk_dpi {
 	enum mtk_dpi_out_yc_map yc_map;
 	enum mtk_dpi_out_bit_num bit_num;
 	enum mtk_dpi_out_channel_swap channel_swap;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pins_gpio;
+	struct pinctrl_state *pins_dpi;
 	int refcount;
 	u32 pclk_sample;
 };
@@ -387,6 +392,9 @@ static void mtk_dpi_power_off(struct mtk_dpi *dpi)
 	if (--dpi->refcount != 0)
 		return;
 
+	if (dpi->pinctrl && dpi->pins_gpio)
+		pinctrl_select_state(dpi->pinctrl, dpi->pins_gpio);
+
 	mtk_dpi_disable(dpi);
 	clk_disable_unprepare(dpi->pixel_clk);
 	clk_disable_unprepare(dpi->engine_clk);
@@ -411,6 +419,9 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 		goto err_pixel;
 	}
 
+	if (dpi->pinctrl && dpi->pins_dpi)
+		pinctrl_select_state(dpi->pinctrl, dpi->pins_dpi);
+
 	mtk_dpi_enable(dpi);
 	return 0;
 
@@ -705,6 +716,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 static int mtk_dpi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct device_node *ep;
 	struct mtk_dpi *dpi;
 	struct resource *mem;
 	int comp_id;
@@ -716,9 +728,37 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 
 	dpi->dev = dev;
 	dpi->conf = (struct mtk_dpi_conf *)of_device_get_match_data(dev);
-	of_property_read_u32_index(dev->of_node, "pclk-sample", 1,
-				   &dpi->pclk_sample);
 
+	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, 0);
+	if (!ep) {
+		dev_err(dev, "Failed get the endpoint port\n");
+		return -EINVAL;
+	}
+
+	/* Get the sampling edge from the endpoint. */
+	of_property_read_u32(ep, "pclk-sample", &dpi->pclk_sample);
+	of_node_put(ep);
+
+	dpi->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (IS_ERR(dpi->pinctrl)) {
+		dpi->pinctrl = NULL;
+		dev_dbg(&pdev->dev, "Cannot find pinctrl!\n");
+	}
+	if (dpi->pinctrl) {
+		dpi->pins_gpio = pinctrl_lookup_state(dpi->pinctrl, "sleep");
+		if (IS_ERR(dpi->pins_gpio)) {
+			dpi->pins_gpio = NULL;
+			dev_dbg(&pdev->dev, "Cannot find pinctrl idle!\n");
+		}
+		if (dpi->pins_gpio)
+			pinctrl_select_state(dpi->pinctrl, dpi->pins_gpio);
+
+		dpi->pins_dpi = pinctrl_lookup_state(dpi->pinctrl, "default");
+		if (IS_ERR(dpi->pins_dpi)) {
+			dpi->pins_dpi = NULL;
+			dev_dbg(&pdev->dev, "Cannot find pinctrl active!\n");
+		}
+	}
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	dpi->regs = devm_ioremap_resource(dev, mem);
 	if (IS_ERR(dpi->regs)) {
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
