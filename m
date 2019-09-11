Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E069DAF9BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0ROt0/7nVpQS9iiprS4sp3inNFH8fbYiqAHjmBStjU=; b=uFfcMmsKd8rlIl
	EkOwtz/GiTMfaFC9JAum5yjenekdTkz2iRrZF/N/9MvrkSHREbKq4F4d/Pq9hB3Sjw2T8YUUk3eZH
	/40MVwIXF9bkPv4yBoPUPoxH56ua+0GVOuw97+O5TLPN+rJC4w+ZlP6OL2RYlTRlIpspFRY4oIFwG
	BFCHC5ShPJwjJVBYoV29iLwiRCxhbAmcsLbq8id5O2SUbJ1chIlsIM+WQWCmtMDtDKaZFR8ClA1vT
	4XAn47nY8esFWjDkAgX80Kdld4ndCQjxFI7e0CZhV5LvhR/FSNoG/cKBKCjNssI0QZo7FUDRn2VOW
	2PezqdFbQfPRqEpuLdiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zPh-0007na-G0; Wed, 11 Sep 2019 09:59:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zOv-0007Hm-Bc; Wed, 11 Sep 2019 09:59:02 +0000
X-UUID: 02fb38d1afb94d6d8f28fca59282ba6e-20190911
X-UUID: 02fb38d1afb94d6d8f28fca59282ba6e-20190911
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1053855846; Wed, 11 Sep 2019 01:58:56 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 02:58:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 17:58:53 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Sep 2019 17:58:52 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 2/3] spi: mediatek: add spi support for mt6765 IC
Date: Wed, 11 Sep 2019 05:55:30 -0400
Message-ID: <1568195731-3239-3-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
References: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_025901_408513_5D6AA13F 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mediatek@lists.infradead.org, "luhua.xu" <luhua.xu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "luhua.xu" <luhua.xu@mediatek.com>

This patch add spi support for mt6765 IC.

Signed-off-by: luhua.xu <luhua.xu@mediatek.com>
---
 drivers/spi/spi-mt65xx.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 45d8a70..3c73b71 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -102,6 +102,12 @@ static const struct mtk_spi_compatible mt2712_compat = {
 	.must_tx = true,
 };
 
+static const struct mtk_spi_compatible mt6765_compat = {
+	.need_pad_sel = true,
+	.must_tx = true,
+	.enhance_timing = true,
+};
+
 static const struct mtk_spi_compatible mt7622_compat = {
 	.must_tx = true,
 	.enhance_timing = true,
@@ -137,6 +143,9 @@ static const struct of_device_id mtk_spi_of_match[] = {
 	{ .compatible = "mediatek,mt6589-spi",
 		.data = (void *)&mtk_common_compat,
 	},
+	{ .compatible = "mediatek,mt6765-spi",
+		.data = (void *)&mt6765_compat,
+	},
 	{ .compatible = "mediatek,mt7622-spi",
 		.data = (void *)&mt7622_compat,
 	},
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
