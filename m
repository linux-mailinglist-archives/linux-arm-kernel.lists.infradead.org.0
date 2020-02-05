Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F4515288A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 10:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KP6AZADz1tDWn+gK4lfdoAAhHncS1E4LsUSIDqZPRxM=; b=uwPmPd3DoMuXcH
	UnS0v2JkHjnp3Kzf9+QULCmESXQaVrZM1CPZwhk+kodm2Ub88D+gPSJl4QGT/jTr/vgThz/B+7kKv
	qdKdEUhMCVfw5qXeFwAtbA/7smXAyD7sLR7e5iX8Yy66TsbaE6XqWKV50Dlx1tatOLo8m2fCb2AiA
	NaYZUAnApDLy4pKt6mdwsj3UkZWrFMFleLw9y2e0q5lE+jxn1UUK1zT6SlugIh8g8I/kGSpSmIKzQ
	c5VL5I1jzo4iCmLz2K1G2RlgMZTf2Cqwv5/etySyokBD5/xEKmjY8I/GW7tTfGmIUK6IPobSIGSy0
	eubK0Wa5sCRXlAoRrltQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH9F-00061r-Ob; Wed, 05 Feb 2020 09:39:05 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH8T-0005Kf-Eo
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 09:38:19 +0000
Received: by mail-qk1-x74a.google.com with SMTP id c206so886252qkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 01:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3xSqtFmkuhmH7fZvAamf8hbYq+ufSxebJYVWVye4C7Y=;
 b=bbLPD11pJNP7z0qv5E33IZM/9P32aN1BiTDiclSD91ktgW9ymyd0g4owTP4KK+LwzR
 K+WhzY9i2aokt6o2xdpnl66xUsaFQ/cDWKeK+44fu2Pbcy4K9+6h5BaapO4wA5UWfHnl
 qbqglmyx1tjGdqR9cBn07Y7vtOUMKq+ekzWw0ihual64ADtttR8wm0JHH22mQjQLk9tZ
 EVwoS/Og+xRMjTYucYE69Vgyhtn/5WFTpOFLwW0YekDxIDgqEr9i0CBXDjAlmbK9emD5
 7EQH5+S2WcyAw6vWVOxga4H6jbS447UNf1GPb9C0PdxteybJaxwfpgzXs94lyNCrOIN2
 Hq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3xSqtFmkuhmH7fZvAamf8hbYq+ufSxebJYVWVye4C7Y=;
 b=s7fhls+Ng0hUdmtIhQXLsK1rYXdYXSMxLGQUoe2Iw6H707XqBXFk2qmYIR7BCpBVbf
 oYdulF3F8Hm81CDBFrcA7R3YU/CQ5jk8K4aGUO7IkeNRFuez1SqxxzKUPgOlxDh9dNlz
 MD77norJuIQPcBDZBDKLhkCumw0thPb2ce32zhqwzqmrutERwfNxd9EanmiKlT8WjKWw
 BAPs3W1fzIidR9rlt3BS2U+IJ/KoPbKM4AzmIiPDwODRR6VPDxLexV0EYKA0Dvf5PAS4
 L80eKzCf2JWkYrKt7jm1NEB+43Mk7TOp7/MIjhKcU/kEfNXraSstAzGHmL+Q+BTDgWgB
 nXKA==
X-Gm-Message-State: APjAAAXfdsiwcfS38b93bQUYGxvIowiLLeX5RzD4uO6kRm1sEly/IcfI
 d6mcfGwdAWaT2siUVAoBfqc2/ZJfg7OE
X-Google-Smtp-Source: APXvYqx2aVafJaBi4FAJbVRsUMEjozIunQWr9coCiHXvYR3Vgt99h+edhRyud9ckFrhlWW7s5OKnOxs8PRRW
X-Received: by 2002:a05:620a:2043:: with SMTP id
 d3mr32700550qka.279.1580895496183; 
 Wed, 05 Feb 2020 01:38:16 -0800 (PST)
Date: Wed,  5 Feb 2020 17:37:45 +0800
In-Reply-To: <20200205093745.79298-1-tzungbi@google.com>
Message-Id: <20200205170416.3.I253f51edff62df1d88005de12ba601aa029b1e99@changeid>
Mime-Version: 1.0
References: <20200205093745.79298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH 3/3] ASoC: mediatek: mt8173-rt5650: support HDMI jack reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_013817_533892_BB3311E1 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, tzungbi@google.com,
 dri-devel@lists.freedesktop.org, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Uses hdmi-codec to support HDMI jack reporting.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/mt8173/mt8173-rt5650.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/mt8173/mt8173-rt5650.c b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
index ef6f23675286..849b050a54d1 100644
--- a/sound/soc/mediatek/mt8173/mt8173-rt5650.c
+++ b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
@@ -11,6 +11,7 @@
 #include <linux/of_gpio.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
+#include <sound/hdmi-codec.h>
 #include "../../codecs/rt5645.h"
 
 #define MCLK_FOR_CODECS		12288000
@@ -98,7 +99,7 @@ static const struct snd_soc_ops mt8173_rt5650_ops = {
 	.hw_params = mt8173_rt5650_hw_params,
 };
 
-static struct snd_soc_jack mt8173_rt5650_jack;
+static struct snd_soc_jack mt8173_rt5650_jack, mt8173_rt5650_hdmi_jack;
 
 static int mt8173_rt5650_init(struct snd_soc_pcm_runtime *runtime)
 {
@@ -144,6 +145,19 @@ static int mt8173_rt5650_init(struct snd_soc_pcm_runtime *runtime)
 				      &mt8173_rt5650_jack);
 }
 
+static int mt8173_rt5650_hdmi_init(struct snd_soc_pcm_runtime *rtd)
+{
+	int ret;
+
+	ret = snd_soc_card_jack_new(rtd->card, "HDMI Jack", SND_JACK_LINEOUT,
+				    &mt8173_rt5650_hdmi_jack, NULL, 0);
+	if (ret)
+		return ret;
+
+	return hdmi_codec_set_jack_detect(rtd->codec_dai->component,
+					  &mt8173_rt5650_hdmi_jack);
+}
+
 enum {
 	DAI_LINK_PLAYBACK,
 	DAI_LINK_CAPTURE,
@@ -222,6 +236,7 @@ static struct snd_soc_dai_link mt8173_rt5650_dais[] = {
 		.name = "HDMI BE",
 		.no_pcm = 1,
 		.dpcm_playback = 1,
+		.init = mt8173_rt5650_hdmi_init,
 		SND_SOC_DAILINK_REG(hdmi_be),
 	},
 };
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
