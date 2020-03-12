Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA2A183197
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qkchh6gyaD2ThQTEBqo0K5/MFc7Ip4HjCJMBpdpLdE=; b=a/5SEfBJLV7qFc
	azp+G8QXSPJ0ppR1M/Z/vglsdenJzRh7wvemTGIh5dXvWCVn7bKYqXX5A7F3au22FrVn1UQY8rHIz
	9GoW7+oSrhF0SmfZW4n6ah7d8rYSDUOgmAJoJIGupcpVV3eZD1mpsaxKcPYC1FZ63emXEU8QDmUFF
	2r0EaGeqENee1wis1YbAWnbbbfDdvn4fRSLbwddll5yS+jWaeSD0kwfiwqa640P1+HnLB1IJfshyE
	299YtnEb/Vy4T5ILBzyhdC2D0uraDDzFxEVlX7MlzXgLlqTBhSlufKC+sc6FfwvZ/yiehDaBO6IOc
	qJgJMp8GeMUnsGrwSscw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNxT-0004pt-8u; Thu, 12 Mar 2020 13:33:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNw4-0003TL-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:31:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id v11so7476386wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qPH/Dy/CjLCenRWLG2Luxl8lE2WdXQS9qh3kQnsN4TQ=;
 b=hUCDqIj0/ip1fGR0w8g9JiTgR3VggFXz6uXZBIuxQFF8RI6pPBFb0oKUQZqohHTRzJ
 EHaOdl7mpyqXAh2wOch+xrBgXcNlimpN9pUcYfJPjcxIWvdkyqbSg9NQI7L5ScEkAZB4
 rMQWh59snVY+t+sBELnc4M5c4DmKQy+T/hQ5cw5ip7/2BS8wARxIRgItz7sfFyakw9vk
 mlBrjYp4ALqFRuMLjLg7MJ0VyZcGPi4hjaD+7P3BdyiA5CPOMY/d5Ix0Gesh38EQ24E6
 X5/Ga0uTigrBvfoDF9cVkNYXejKr5vaVSAdDmf2Fc1HVBFXkq/IRQFrjALiYCP+VQjwE
 a/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qPH/Dy/CjLCenRWLG2Luxl8lE2WdXQS9qh3kQnsN4TQ=;
 b=BfTTBa3SHAUI+uU5pRYMIsv1zL3uPOaL40X0Vq6f5LTBgAWsS5SSuTIsW7/kyDS/aF
 /ErbWj+KHXLS/YOHLYR02l9K/l+LrDjUnXdFkyP01+VlBqRewjoMhFrforlEfPL5jCxP
 pabTPlCgoYrt1n0jjJMwhOzCGSddfTeMPI1tkdc+JnVxMXMdFBzoWJTWORDgb89JsdJK
 pBnrhToCKlt5uCzY6mDr6yOtuAbZzl9U1QF++UKjy1FVstlgWf1NG/nmxAKziHaza7aD
 h0f6Kl/FUguaNxO2s7cvRwYd/zI6eNftdXLFJukJmSGWCiYtCkF4Dh61yinGuLvM1zUy
 s/+w==
X-Gm-Message-State: ANhLgQ0o/jkHLzy9A1yFURx8uXYSBhGAj+fgXxvq8FWvqOE9mtWZixaB
 o/NmZ60NPF8hSTGRhHHTh7NZuA==
X-Google-Smtp-Source: ADFU+vvDGHCmjJAEW09IY2pn/rC0cuKnx5wPrdhmLydsBiF7dyxe06aMf+3l/75LbVxspehBFH2Fng==
X-Received: by 2002:adf:e911:: with SMTP id f17mr10602906wrm.87.1584019899241; 
 Thu, 12 Mar 2020 06:31:39 -0700 (PDT)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm12242885wmi.27.2020.03.12.06.31.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 06:31:38 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH 5/9] spi: meson-spicc: add min sclk for each compatible
Date: Thu, 12 Mar 2020 14:31:27 +0100
Message-Id: <20200312133131.26430-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200312133131.26430-1-narmstrong@baylibre.com>
References: <20200312133131.26430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063141_058612_81E41784 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The G12A SPICC controller variant takes the source clock from a specific
clock instead of the bus clock.
The minimal clock calculus won't work with the G12A support, thus add the
minimal supported clock for each variant and pass this to the SPI core.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/spi-meson-spicc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index 710b4e780daa..b5bd3a897e8f 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -132,6 +132,7 @@
 
 struct meson_spicc_data {
 	unsigned int			max_speed_hz;
+	unsigned int			min_speed_hz;
 	bool				has_oen;
 	bool				has_enhance_clk_div;
 };
@@ -685,7 +686,7 @@ static int meson_spicc_probe(struct platform_device *pdev)
 				     SPI_BPW_MASK(16) |
 				     SPI_BPW_MASK(8);
 	master->flags = (SPI_MASTER_MUST_RX | SPI_MASTER_MUST_TX);
-	master->min_speed_hz = rate >> 9;
+	master->min_speed_hz = spicc->data->min_speed_hz;
 	master->setup = meson_spicc_setup;
 	master->cleanup = meson_spicc_cleanup;
 	master->prepare_message = meson_spicc_prepare_message;
@@ -736,10 +737,12 @@ static int meson_spicc_remove(struct platform_device *pdev)
 
 static const struct meson_spicc_data meson_spicc_gx_data = {
 	.max_speed_hz		= 30000000,
+	.min_speed_hz		= 325000,
 };
 
 static const struct meson_spicc_data meson_spicc_axg_data = {
 	.max_speed_hz		= 80000000,
+	.min_speed_hz		= 325000,
 	.has_oen		= true,
 	.has_enhance_clk_div	= true,
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
