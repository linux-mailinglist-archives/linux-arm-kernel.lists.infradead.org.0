Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA2263AE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oFkayWeJElcfA5akZxiRxLxvCNuOxUx8zYDeCL/G1+Y=; b=QXzR+NHe+9BSAF
	0RmykEGg4bp+Ss8Gt4dUtZ8xTzDT7JdmiBNpHV94r0Y4fbvKYy8nHrYQOscOtQczHlmolwYTTSSED
	5xGZmmqUuzsjoCYJHleyoze30JIKSZNL0JeGq2DOg60Q+FRkF0i9o80N2AkLVmC83MSgKrVrTzz9h
	G1lqhbRPVL4ZHoCcmFxemjy/psH1dDnwSZLk9q+7Ld77Wb/GxEpaYFx8omdsuw7uDCmDXBQe9nOjV
	a/q7UHl4kawBp4mL5zoQoRYQESbwHwEo5vo4VCSUNIAqzzLwKRI9DfCpQu7aW5eXUqHn3tdU13zgf
	hxONxUR7pvL16dhbf3Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuoS-0003E6-Sz; Tue, 09 Jul 2019 18:26:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuoJ-0003Df-SE; Tue, 09 Jul 2019 18:25:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so5037465pfb.13;
 Tue, 09 Jul 2019 11:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=F53dI+T31MQO7QsmvZEQqUD+Bsf7Au5f6Ym6GihKyBU=;
 b=dY0SKwLV9k80CMp0A2x+iTnnhV5A92BoDgH5N8dKXZsQJo/haO6q4csQICb21yuckh
 UoHQx1dad/dqKIH5no1Q0PzDgicSMi7Y5RCJHrokKzaFn1A0jUIaCZEyYPEx/1O50Qqj
 EaVisjg4hQjAn7fvBEoThlflmA8uYcC+eluRgi0rKci9zKgK9q9hW49KSneUgU1uZFTX
 qUfI+GJsUpt2ojpAt1tD1dNxRyHN3xUFdvEW9T1s38tIAtBJ2Leab/lwjLq9eZWs75TB
 yMg2KLtL3F4aaIrioY7PRjrarbnUbrJMOcIs4N1wN6MtlaB47ttLlWxH++h7D2shfR+O
 b55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=F53dI+T31MQO7QsmvZEQqUD+Bsf7Au5f6Ym6GihKyBU=;
 b=HID0PngPTC22SHIuI2q2QZ1h9t7aVSp5d8RfKxQl8rLjOFzGHiuALBu7fzhuyRnBBi
 xNHzSbGj+yi10pUaRk4OWJwlARnIB/dinP9PS3Xjf9ZSOmAgV74LmbOvo5IwbONyfYoN
 d5LXt65jJxa0zuDiHkF6ZNAhZfz/kG8OmPw5VwNotvA8pHdInNeqguAu0XcfVYYF90qz
 DnNT0wDtibEe/HxkHKRqf//4WWegmEmlhw67z1Ul65Rs/0JshuLsJo+j08SItXpV90vF
 SExcmUQpYp9qpK6I1hdG8AXgKv/Eg0sfX0CJwBhgbEnm865M7cq08sIYVXBXBQSbmS73
 KF1w==
X-Gm-Message-State: APjAAAXOv55SQnfksDr/QbabuNVzr4ElEevPLBNYbM1Tw2Q0FDx9q+hv
 k+AixIqR0Z25LQSiCww/iXc=
X-Google-Smtp-Source: APXvYqxPF2ZglfLFUEIjNK+xpEPSth8BelId/59gN0t4fpsSCcw0Ul22LI6xyEHQdp/Z7aYDfK8lIw==
X-Received: by 2002:a65:5888:: with SMTP id d8mr31623341pgu.124.1562696750983; 
 Tue, 09 Jul 2019 11:25:50 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id x13sm13084575pfn.6.2019.07.09.11.25.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 11:25:50 -0700 (PDT)
Date: Tue, 9 Jul 2019 23:55:43 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tzung-Bi Shih <tzungbi@google.com>, Shunli Wang <shunli.wang@mediatek.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] sound: soc: codecs: mt6358: change return type of
 mt6358_codec_init_reg
Message-ID: <20190709182543.GA6611@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112551_935200_15E141F4 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As mt6358_codec_init_reg function always returns 0 , change return type
from int to void.

fixes below issue reported by coccicheck
sound/soc/codecs/mt6358.c:2260:5-8: Unneeded variable: "ret". Return "0"
on line 2289

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 sound/soc/codecs/mt6358.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/sound/soc/codecs/mt6358.c b/sound/soc/codecs/mt6358.c
index 50b3fc5..c17250a 100644
--- a/sound/soc/codecs/mt6358.c
+++ b/sound/soc/codecs/mt6358.c
@@ -2255,10 +2255,8 @@ static struct snd_soc_dai_driver mt6358_dai_driver[] = {
 	},
 };
 
-static int mt6358_codec_init_reg(struct mt6358_priv *priv)
+static void mt6358_codec_init_reg(struct mt6358_priv *priv)
 {
-	int ret = 0;
-
 	/* Disable HeadphoneL/HeadphoneR short circuit protection */
 	regmap_update_bits(priv->regmap, MT6358_AUDDEC_ANA_CON0,
 			   RG_AUDHPLSCDISABLE_VAUDP15_MASK_SFT,
@@ -2285,8 +2283,6 @@ static int mt6358_codec_init_reg(struct mt6358_priv *priv)
 	/* set gpio */
 	playback_gpio_reset(priv);
 	capture_gpio_reset(priv);
-
-	return ret;
 }
 
 static int mt6358_codec_probe(struct snd_soc_component *cmpnt)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
