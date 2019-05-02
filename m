Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827CE118B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WquBdSoq6Wnj4LTEsgubsWVbzVgL7IoOgGKky5unidM=; b=kihuR12AKDGYnn
	9ArNHuLGg0xIzmkDoFsqCe0RwWgYGeV2ZiXRW0dwDi7XCxqwrZXoeJqxsngmiqbxXS6iRxzVIdPEw
	r9JERRGBH1+pQwTGeIz5lAc81idY5MZHDXF6CXTy+80j8/x/84GJw5thxXBC5zh11VtnyDWuRbEom
	5OC8rQ/1aXEFXasj7soOVx63T2dpWA0Lx/owC97wGooGbuNp/8StJNhbenccKipguhDvIkg76i+Hd
	+gN8I/oJnI3kdF6AXWbH0wIrDqUzIOCP2Q3l5RGpVBW9LxAWKvSj9N50eMvUqwrBpi4bnwvSH29ip
	FGco4mVdZxjR8Pz+uFkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAYO-0001qO-It; Thu, 02 May 2019 12:11:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYD-0001m2-BN
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:10:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id b10so2465679wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QoGRmL9hNOPY+eFMV8Hy2PltfqYDajcTCyiSgjQt9SQ=;
 b=xHqWaiJWsWUcZhoNbhOVBcJzfg9qdsYw5E2q3LjZu9iNGHbzEyPhLzBGVHZA6jT6KV
 6Rtgs1XdKNUB6RCaHd11VIf1KnAUz5OPdkXzXacvy50eQe18yccKyj01+YzaridlzwTR
 j7yeJj/hnwUDO0jx0ea4gdQcYrJ/KAoQO2Pjnva1wD9MOKFXhuutHa5Uu3hzUkodrTdz
 a9HxFjfRBg7jiXHRRJbabYEkCNeAHDm5+AsVkCyLloIF6V/QRsR00pUUqrvbtFiYGAmS
 i4i+68mRlvdS3nrxG4lfLl72/v6dL1ev8BRaeVLfeeNqIkXwtORNEzNtNF0Gh2UQobnY
 +lGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QoGRmL9hNOPY+eFMV8Hy2PltfqYDajcTCyiSgjQt9SQ=;
 b=IzKcSymERymfbSnjgwqHeOXW82EwF5tba+aiPdXX8Eg9m3LTwH8QktWQPuBTntyhDb
 mb8ifEVV+SdbvJfzHO8GB6Lm0OJFVS3mdpF8TRqG/zirxX8dRKHjM9tqpe0xp3BGdryN
 bd5R8HcEwaMHKngv2wwJYa7cn5Rt7gHm0FAFCvkYYiXaOjzkRvvbRGkd6sKgoDF1KLcx
 ltNPyktninXhBu0uOnhhZF/eJ4H7LsMPtB424ShKJ2nPffY8+ziJOO/ohjtI9ERzRLoo
 Ubsg+2vDhZcYt7Dm63WDl7Zyykrn+KbCEYWnaJG8m+OM5lijJgwcUHnTbpWbDLGbTr6T
 0LIQ==
X-Gm-Message-State: APjAAAXMYNXjRtkbgq1t8PyZ/mg6bQvoWefQY3w8X/dMwZbzX5jiwnXB
 Y1q/sERUamvgr7AJddYRfC//MQ==
X-Google-Smtp-Source: APXvYqzfD7lY9qYA6s3UXeqowSYnQbSJRYuX0+C/KKMF9ab6t31N4mkff3S6Ouo/4i4XI4ETpGxpDA==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr2137167wmb.82.1556799054205; 
 Thu, 02 May 2019 05:10:54 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:53 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 1/5] ASoC: mediatek: make agent_disable,
 msb & hd fields optional
Date: Thu,  2 May 2019 14:10:37 +0200
Message-Id: <20190502121041.8045-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051057_478799_4BDADEAE 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Not every SoC have the following registers: agent_disable_reg,
msg_reg, and hd_reg. Make them optional in order to allow more
SoC to use the common DAI FE code.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/common/mtk-afe-fe-dai.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-afe-fe-dai.c b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
index cf4978be062f..f39f5d8c4244 100644
--- a/sound/soc/mediatek/common/mtk-afe-fe-dai.c
+++ b/sound/soc/mediatek/common/mtk-afe-fe-dai.c
@@ -47,10 +47,13 @@ int mtk_afe_fe_startup(struct snd_pcm_substream *substream,
 
 	snd_pcm_hw_constraint_step(substream->runtime, 0,
 				   SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 16);
+
 	/* enable agent */
-	mtk_regmap_update_bits(afe->regmap, memif->data->agent_disable_reg,
-			       1 << memif->data->agent_disable_shift,
-			       0 << memif->data->agent_disable_shift);
+	if (memif->data->agent_disable_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap,
+				       memif->data->agent_disable_reg,
+				       1 << memif->data->agent_disable_shift,
+				       0 << memif->data->agent_disable_shift);
 
 	snd_soc_set_runtime_hwparams(substream, mtk_afe_hardware);
 
@@ -143,9 +146,10 @@ int mtk_afe_fe_hw_params(struct snd_pcm_substream *substream,
 			 memif->phys_buf_addr + memif->buffer_size - 1);
 
 	/* set MSB to 33-bit */
-	mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
-			       1 << memif->data->msb_shift,
-			       msb_at_bit33 << memif->data->msb_shift);
+	if (memif->data->msb_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->msb_reg,
+				       1 << memif->data->msb_shift,
+				       msb_at_bit33 << memif->data->msb_shift);
 
 	/* set channel */
 	if (memif->data->mono_shift >= 0) {
@@ -269,9 +273,10 @@ int mtk_afe_fe_prepare(struct snd_pcm_substream *substream,
 		break;
 	}
 
-	mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
-			       1 << memif->data->hd_shift,
-			       hd_audio << memif->data->hd_shift);
+	if (memif->data->hd_shift >= 0)
+		mtk_regmap_update_bits(afe->regmap, memif->data->hd_reg,
+				       1 << memif->data->hd_shift,
+				       hd_audio << memif->data->hd_shift);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
