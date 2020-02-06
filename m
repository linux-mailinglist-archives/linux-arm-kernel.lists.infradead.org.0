Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55003153D84
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 04:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KP6AZADz1tDWn+gK4lfdoAAhHncS1E4LsUSIDqZPRxM=; b=Ce9IFEehWah0RM
	tx9W1aj3e6MrqNtKmGNXuVfa1dS6eqX5o3R9nU0ONoDmXoJnBMJ6Q+M+VwGkHATsnplIj6zoZ7mFu
	eV+AtswKCnD+je2oEqluLGvO6DYqR9/CfhWtYCTwZsrw2HXDLKSTzCtJDWN5D4hy+Eym+M2GE75Wt
	O42mAML0IkxBEYNEdClfquRkUYDueG1j+WJuPxlF8+aObM2vL509gFP5A4v7YCZ4YgTTGWm9A/ctf
	J3pe3Tt6o7XO1vxqy/Fmu9DOupS7ECNEsT61AmhOtkzgPKE7YtfkjLQE8GRu23+SPjZLCQXUGOauM
	5kbFdmztbAf8rw78EIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXhA-0004Xf-9y; Thu, 06 Feb 2020 03:19:12 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXgS-0003zN-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 03:18:31 +0000
Received: by mail-qk1-x74a.google.com with SMTP id r145so2689959qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 19:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3xSqtFmkuhmH7fZvAamf8hbYq+ufSxebJYVWVye4C7Y=;
 b=ueuYkYfzd1J7mUX84rods+zZPBEDPeQEpjWo1fKgNXmmkJRjFmQ57clQ25FbxVrB81
 0BoeuWRSAlLi4ikcBydPblOqMIIYdUZlWt96IlppvTopxt4MrWxe1NJNb00pEILdALIL
 mwP9m3shNI4otFS5JNL2mDva9EvmqHjaLpSPV+4fWAoYFTZp1nvG0CRMuMvaQQpiTocd
 RdQCWBIwo+BGVgpp3NbIEtfA/GO13BcJrwl9r2EoO9jqfv5ogBgO5W/6Q7nyLCxted8+
 Q/tls29mCNiLAHzFozF2uSg8V5VCuOfUUjtgXE6vmEdrV5rvwC9qaa9Tedzul30Dx9L2
 FkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3xSqtFmkuhmH7fZvAamf8hbYq+ufSxebJYVWVye4C7Y=;
 b=f9Uij5qwkrMN23vZFaCZTClhN4B62wg/JlnEROyW0+XRqDsWGDigzP0tQ7WS4EmNYQ
 T1GVoeEEtZNX4m4CGxEnfEzVUxXl10+UNSlwCqHya5sFMjn2bz+9OG7yy9ryPbq68Jba
 d7gyrk/PnHsj38h8czxXEOOCp6jTLZ0eggHElMukauC5xyOc9RDqNB5E3QxIs/JK0pui
 x6PAXQxZMmyPqVauQ6orMVLkO9myCB/lsSvq7HQnyUGAyAdbyQJObXyYdOCPS9LAlUOq
 p5jdIwMwdlD2o3z1vr2OBz+ksGDMjyHQ2K0hyFkn9q+srDd07zBigR9DKJ+k2G7KY6cm
 /zHg==
X-Gm-Message-State: APjAAAWpxy+LnuR20ePnx2QA+fvDVXQ0pqgpaMOLF1kAn2tPEXxumIBB
 Es2irCMFAQI8LvD1j5Tks/X+Qjx4UCfA
X-Google-Smtp-Source: APXvYqz/fAMuYGvIwuayOCKaf8jH3Jt4uA2sxWoRh0ciqFGB/O4svWNUa/d29O7qRqPWaudemfa9s6lehhZc
X-Received: by 2002:a0c:fe8e:: with SMTP id d14mr705336qvs.106.1580959106204; 
 Wed, 05 Feb 2020 19:18:26 -0800 (PST)
Date: Thu,  6 Feb 2020 11:17:52 +0800
In-Reply-To: <20200206031752.193298-1-tzungbi@google.com>
Message-Id: <20200206102509.3.I253f51edff62df1d88005de12ba601aa029b1e99@changeid>
Mime-Version: 1.0
References: <20200206031752.193298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 3/3] ASoC: mediatek: mt8173-rt5650: support HDMI jack
 reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_191828_611702_2CF00EB2 
X-CRM114-Status: GOOD (  12.00  )
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
