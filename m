Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4581EF57A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=linE1U9MB2oGCBGgrMuBUrDCJsawPAw5lvF9Ek016oM=; b=Yho8NgXiV7RZJz
	stqyFebIMbjtKWFyV37xYY0Y2VU1eqh6FQQ296G+esPMB88eQZg6G6yuSvTZp6dXxmO/KU529Kwxj
	c743mlkhaOJFT6tE1WrneaHahoS2mq01jwzS979tOylI/W5YFW0E6hYpz1W72rMBW4eLtNeb49UYl
	zCjzRozhZ5hqXrURKkchC82AtbE2OTEYznthTW7vnyRHRLtF+uXnPjCzPIK1n+LhIKU13lMpiBAFv
	sZeHdO+hNcsz4db6zqBZ3uhYSx+otr4sY2SK+QyGcQ34s9j90Y5VlEvP4UzLE42ENz8DBSNY35WPj
	KcVAusDDWgybBCIOjsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9hl-0003Ne-M6; Fri, 05 Jun 2020 10:36:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9he-0003N8-Nn; Fri, 05 Jun 2020 10:36:00 +0000
X-UUID: 93b7bff37a9245f8ba87a9084fee1b7e-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=0zI7CVoALCkpFWkgGGj1AbfVE36QPtMcgdNgl75YRMo=; 
 b=oL95UhwY9Hh2sEDgNNsLfxedY8Phf7UiLXZEEZtyLzF4J8gDTzKc9p96UxzI3OyaU5JcP8cye4VYMnHlaW08keXysYOWDBgKsxSodEHQ/jbSDmeeC3PG3cDuifg8/5EFNJ1H9uimZrEj+wSFBQRLQj3o0IGq5bQ4UhmwXOzbIPU=;
X-UUID: 93b7bff37a9245f8ba87a9084fee1b7e-20200605
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2147356127; Fri, 05 Jun 2020 02:35:49 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 03:35:51 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 18:35:48 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 18:35:47 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <tiwai@suse.com>,
 <matthias.bgg@gmail.com>, <hariprasad.kelam@gmail.com>
Subject: [PATCH v2 1/2] ASoC: mediatek: mt6358: support DMIC one-wire mode
Date: Fri, 5 Jun 2020 18:33:41 +0800
Message-ID: <1591353222-18576-2-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
References: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: DE6C4EFA24DF123BAF1300A07CD074B02F334B8F3BE5CABDBC1CE7F459626F8E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_033558_779375_E74429AB 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, howie.huang@mediatek.com,
 linux-kernel@vger.kernel.org, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 tzungbi@google.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Supports DMIC one-wire mode. Uses a DT property "dmic-mode" to select.

Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
---
 sound/soc/codecs/mt6358.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/mt6358.c b/sound/soc/codecs/mt6358.c
index 1b830ea..1f39d59 100644
--- a/sound/soc/codecs/mt6358.c
+++ b/sound/soc/codecs/mt6358.c
@@ -95,6 +95,8 @@ struct mt6358_priv {
 	struct regulator *avdd_reg;
 
 	int wov_enabled;
+
+	unsigned int dmic_one_wire_mode;
 };
 
 int mt6358_set_mtkaif_protocol(struct snd_soc_component *cmpnt,
@@ -1831,7 +1833,10 @@ static int mt6358_dmic_enable(struct mt6358_priv *priv)
 	mt6358_mtkaif_tx_enable(priv);
 
 	/* UL dmic setting */
-	regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_H, 0x0080);
+	if (priv->dmic_one_wire_mode)
+		regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_H, 0x0400);
+	else
+		regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_H, 0x0080);
 
 	/* UL turn on */
 	regmap_write(priv->regmap, MT6358_AFE_UL_SRC_CON0_L, 0x0003);
@@ -2426,6 +2431,20 @@ static int mt6358_codec_probe(struct snd_soc_component *cmpnt)
 	.num_dapm_routes = ARRAY_SIZE(mt6358_dapm_routes),
 };
 
+static void mt6358_parse_dt(struct mt6358_priv *priv)
+{
+	int ret;
+	struct device *dev = priv->dev;
+
+	ret = of_property_read_u32(dev->of_node, "mediatek,dmic-mode",
+				   &priv->dmic_one_wire_mode);
+	if (ret) {
+		dev_warn(priv->dev, "%s() failed to read dmic-mode\n",
+			 __func__);
+		priv->dmic_one_wire_mode = 0;
+	}
+}
+
 static int mt6358_platform_driver_probe(struct platform_device *pdev)
 {
 	struct mt6358_priv *priv;
@@ -2445,6 +2464,8 @@ static int mt6358_platform_driver_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->regmap))
 		return PTR_ERR(priv->regmap);
 
+	mt6358_parse_dt(priv);
+
 	dev_info(priv->dev, "%s(), dev name %s\n",
 		 __func__, dev_name(&pdev->dev));
 
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
