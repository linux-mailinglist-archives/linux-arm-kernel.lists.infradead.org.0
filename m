Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870DB84433
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 08:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0L5yGbBEtog4K8/5iGL07YPMUnk3B90joj0JAU6tws=; b=tO8iTndyRQMvt2
	HTTgpMs0kb2GSUW7xQ+JFd1hxj1yuuWtWPTlG5rKKNOMxlsKUcKvepnb3JlIzUs4PwKzUEQEoaXuX
	DKwIAZKzsy5bjXnYhwwUAepX2GQHsfZRoCLdq5FhP3KjVdPuhnHOkRtxY/bPIMupdviS9iuUETKN+
	AznRnx5qOLHq7a8C7fD6sE2DaTrKmTe4tTX24I6SJZ7KlR5+2ZJQcVLz76ZmMIqbINamVmCmo34XH
	sarfIvJ7gXQzEP839EEGmrZBEMz1y/VEGTxSTn2IRQqB3LOIsy8w5PWzhqF0XHO4Kfcyk9ZcdCvN7
	x3h4qpArQ696y7NYgyIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvF3I-0001Q1-To; Wed, 07 Aug 2019 06:04:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvF2b-0000k3-7m; Wed, 07 Aug 2019 06:03:18 +0000
X-UUID: 74d95cd15e5b4952b93844c7ecbfa6a7-20190806
X-UUID: 74d95cd15e5b4952b93844c7ecbfa6a7-20190806
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 380571522; Tue, 06 Aug 2019 22:03:11 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 23:03:10 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 7 Aug 2019 14:03:06 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 7 Aug 2019 14:03:04 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5 2/4] drm/mediatek: dpi dual edge support
Date: Wed, 7 Aug 2019 14:02:55 +0800
Message-ID: <20190807060257.57007-3-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190807060257.57007-1-jitao.shi@mediatek.com>
References: <20190807060257.57007-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24828.001
X-TM-AS-Result: No-6.958900-8.000000-10
X-TMASE-MatchedRID: 5H8irtK9vgTNOw9wsvBRo17Sq0XKoGHrCaRI8pL8VGBquuOqohJ0c3A2
 AbalJMe8Rjuuru99Q9KPQi9XuOWoOIR7sjTIC5s2FqifzwY4bVroeKAMszIu5ulYTdF1MvAp0iS
 XG6dWPluphyZbWwq9StRZtMgLgbN9cc6dPoLhQXAgCPGiZqtI8B4huWEfRKfpT9xG+Pmy0/pRGc
 lPBndJbfRd9sFi+YqCQJzrGNjGSjXjadsomdxplAlpVkdtt3WuMwMfB2KMdIdSMUnCl2ZytHuos
 InzuhSMMY05bCyXW0VP3yS7iZW45x8TzIzimOwPC24oEZ6SpSkj80Za3RRg8DUr7wipW/DRv9Tz
 V/M+e3cuNyZlk11DQB2FwpwsASPBwSxytdWZQvg=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.958900-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24828.001
X-TM-SNTS-SMTP: AAB794323F590ECD9BADC8D1C3914C072DB54699ABCF169B71BC1870C17B5E272000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_230317_336181_91A860DB 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DPI sample the data both rising and falling edge.
It can reduce half data io pins.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index bacd989cc9aa..743230864ba0 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -72,6 +72,7 @@ struct mtk_dpi {
 	enum mtk_dpi_out_bit_num bit_num;
 	enum mtk_dpi_out_channel_swap channel_swap;
 	int refcount;
+	bool dual_edge;
 };
 
 static inline struct mtk_dpi *mtk_dpi_from_encoder(struct drm_encoder *e)
@@ -345,6 +346,13 @@ static void mtk_dpi_config_disable_edge(struct mtk_dpi *dpi)
 		mtk_dpi_mask(dpi, dpi->conf->reg_h_fre_con, 0, EDGE_SEL_EN);
 }
 
+static void mtk_dpi_enable_dual_edge(struct mtk_dpi *dpi)
+{
+	mtk_dpi_mask(dpi, DPI_DDR_SETTING, DDR_EN | DDR_4PHASE,
+		     DDR_EN | DDR_4PHASE);
+	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, EDGE_SEL, EDGE_SEL);
+}
+
 static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 					enum mtk_dpi_out_color_format format)
 {
@@ -436,7 +444,8 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	pll_rate = clk_get_rate(dpi->tvd_clk);
 
 	vm.pixelclock = pll_rate / factor;
-	clk_set_rate(dpi->pixel_clk, vm.pixelclock);
+	clk_set_rate(dpi->pixel_clk,
+		     vm.pixelclock * (dpi->dual_edge ? 2 : 1));
 	vm.pixelclock = clk_get_rate(dpi->pixel_clk);
 
 	dev_dbg(dpi->dev, "Got  PLL %lu Hz, pixel clock %lu Hz\n",
@@ -501,6 +510,8 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	mtk_dpi_config_color_format(dpi, dpi->color_format);
 	mtk_dpi_config_2n_h_fre(dpi);
 	mtk_dpi_config_disable_edge(dpi);
+	if (dpi->dual_edge)
+		mtk_dpi_enable_dual_edge(dpi);
 	mtk_dpi_sw_reset(dpi, false);
 
 	return 0;
@@ -686,6 +697,7 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 
 	dpi->dev = dev;
 	dpi->conf = (struct mtk_dpi_conf *)of_device_get_match_data(dev);
+	dpi->dual_edge = of_property_read_bool(dev->of_node, "dpi_dual_edge");
 
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	dpi->regs = devm_ioremap_resource(dev, mem);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
