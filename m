Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAD5118B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TpbtsTsgUMgpavvN+1jk/xftabQOoPd6D404ea0Yvc=; b=tF44neAVImjNWt
	gP/o+gdrhJi34dCNCvdtiydd21aPDJdint7jkV/1a89i2hDNQ7oD5ITN8XAnVJyzYR7/v61p1LfXG
	Bw17lQfr/z8lbn2EnrSt7+2zkA7sVZKtpQT/HFHJfLn69SXO+zptimcI2OBdtQ2v6erRKFa+RSDsb
	pv7PkDJEZZz9DXZ2LF8Hz9DPO31qbCfWK8okfMKdvZZ2G+ShCcBkSDDYQJPA2/riPgn1ip5cryTEV
	7anhUnlOUd21LAF3SAXWuK6bPcQgClMsqZLV9pljgqBlBuKXolfaOq2Bmaq+yCt2HIsThm4uDlSso
	q2tBahWUolWzH/YDpJXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAZC-0002ud-SC; Thu, 02 May 2019 12:11:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYH-0001pB-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:11:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so2963541wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oCtO7F4iCfswKyRGi7bOSLphK4gIn4iJZV2uNp5ivzs=;
 b=Gn8SvsLQMxKlYfYvb5wfkMqO5ckj8c3meyR1C3aEF7HNubkJ1NYdrJV78Fn4DIcTc2
 750uPQfLMl89SFZVsmnEJSvaPPNSwxsgI9dXKjMCp1D61Qha+89LL/J4SCUdIsk/J0dX
 sFXO4IQo2P0IQtqgww6Tm2hVB0yxjd55TI6Ed3Y9xvMGF5PWOSlwCZlFLC5IS7WPB+sO
 Y0fjL8vgivscCL6P0QoLWuwI5Wsl2E2ihgRT9AewjeuhAB3aMlikCoxqnbCC4x5upxwp
 DFnouu0WnTTIOg6TR60OvVdUtOQULErUwESdhxKc24p93FG6V2sFDU1c8uHzJNKS89oI
 ieBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oCtO7F4iCfswKyRGi7bOSLphK4gIn4iJZV2uNp5ivzs=;
 b=PhqHdMmBx7X7IVad1OhqooF9GuWcMM/oB9iLnUc0KeXDdYRW/F1X/qrJNTxqBLWSfI
 TTPp+YV+UCbauTs1PJlTzhrXAl5ySTQ3VL7LYjw9hpiEKwF4KXMKh56MzeH5VozqRpMy
 2+/a7qL0GtxB18l8AK6kiHM0OkzsP86n89+7Q7ybi7hlECG2tyS4YkxQPGKoDgpjwFYl
 vCfBJs7RQ+OSeQZImfQzfOf6brolGuo2slIMCN+zGjKU9hO8J5R3Qh3TfVB2bdUPP5U5
 QtZYKoayoGRKT5eiw8Caw4bOWIRXjBw8hB2aeULaYVoQ0LS/jzSKdq4xy2PtYh3uuTrc
 FHhw==
X-Gm-Message-State: APjAAAVcZiNxZecsuHOPsxG7ArVjgIlSVpR0tzBaHakeWZI5ierz1tDB
 jUcqduhANQWd+2KH6XKyfrqRxw==
X-Google-Smtp-Source: APXvYqwiOYJrXyeXMjSrke5vRgXR13G0kZTQzgHmDuQOjoYmPdNvfpQ6nGVxnTDki5cdAAvppT14Iw==
X-Received: by 2002:adf:e984:: with SMTP id h4mr2580423wrm.32.1556799059924;
 Thu, 02 May 2019 05:10:59 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:59 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 5/5] ASoC: mediatek: mt8516: register ADDA DAI
Date: Thu,  2 May 2019 14:10:41 +0200
Message-Id: <20190502121041.8045-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051101_456774_47B4DAD6 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Register the ADDA DAI driver into the MT8516 PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
index 84fbb5dbbd14..e1fd9290dd8f 100644
--- a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 
+#include "mt8516-afe-common.h"
 #include "mt8516-afe-regs.h"
 
 #include "../common/mtk-afe-platform-driver.h"
@@ -670,6 +671,7 @@ static int mt8516_dai_memif_register(struct mtk_base_afe *afe)
 typedef int (*dai_register_cb)(struct mtk_base_afe *);
 static const dai_register_cb dai_register_cbs[] = {
 	mt8516_dai_memif_register,
+	mt8516_dai_adda_register,
 };
 
 static int mt8516_afe_component_probe(struct snd_soc_component *component)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
