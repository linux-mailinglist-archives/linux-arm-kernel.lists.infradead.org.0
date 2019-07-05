Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E498B60845
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7K5lnlkcIbaWbE+XZ7y1tI6s6mjetCCE0Xeysx8yKk=; b=S9MGz4Xhr9NDkk
	6pFkdLXu0iCBGDTbuprAXsjwM9stWUzKZPl/uA71RVdEpizZ1V84Y+ZQXrZl36pGr+09/uEbwDfK/
	bMTbLot7f++jPcEgYldd6vgCM6J/wWfOLVyx0yxkNxxRdQ/iEycT5AKpF39aPa+N78SAKbHVntyl2
	0w2e69eLatkp8+xJ4Zqa81VWTjF2o0liYZEuGCxxhGE1JzETbrznRIF+QbUKemwe+JeoniX8JkpN3
	EWzmRF9b9VQNUTW5O29JPU47x+F1y5SydpHziwLQfCoEcKvRkk5jDdzu95IGjj0YXvbegGtIeret8
	/adoydBL9PD9pCoA0c8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPVp-0003k1-DV; Fri, 05 Jul 2019 14:48:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPRr-0006RV-0h
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mt+OhzkdZXuABUeOm3oIQQxV+A0uMRzmq60uCRJmAJE=; b=wU4xuQsempZJkcakmBPgEQR+XK
 zSqe+HmJdF4p3hU2JSXf4DVRvh06hdY3vPGfWiEv2lpn7BRv1F6XN8nFbPMJVMqXiMHaNS7q/Pn9q
 J1YLymGDuHS21lZkuVlN/UX1FugEt8s4ebGQWGMe/EdJx40Onb5OlZ+5uUZzABhSZtgd8V9pPQbVm
 TiHqDw/kArHLqRzc9KFaQVsLPXjMvdEx6y4TTR9/+mQ73sFooUKFG4FQV+mkYudH35U1v6Hq+qWpn
 BCK2NRatEv/X/7xHZLhNxe8oBQSwHHySnMpGpWRD4dG3d2CZt5aVpg/NYBNPGNiFs5oh9n6IubJ1g
 dlxbW+KQ==;
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFqP-0007Ly-7C
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 04:29:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id z75so3697498pgz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 21:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mt+OhzkdZXuABUeOm3oIQQxV+A0uMRzmq60uCRJmAJE=;
 b=Hbexc+aCBum/RZ12dI3r5/XyzyiK+MvJQgQ2XO3/HVioP3PM/nCddAlz1xrMohN7M1
 S0TUfchH1at/5Y1i17XhZAcSUqCKCip2aybO7YsuTVjIwJXSYImaa+d0n/+JHH0FYNkL
 NI0/aW8eXuQCvg6kpGPrNaIfIBqJ7QUDBMvFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mt+OhzkdZXuABUeOm3oIQQxV+A0uMRzmq60uCRJmAJE=;
 b=bTpZR27OMWnlYMGPnKaGyYzqH7m8B8R/n666az96pAyjEZ6VZ0EtuGnN3ZsUUQf4ld
 mkIXqj+lcjT6OV0uiyOAa2lnI3jsE95d2KtuUtKcFgnNdADT2sUdf4YzX2IGeSaiJE7I
 yjn80S68ZSp/pnv46tFlyL1XPRoOGDAg7RSY7P3PA1GWJb5QNXvD8nR/ryjbpkhnK4EG
 fgrXmycB7Jzpnp6t39SdmkF+BxUQrJd7HWKuiMPChdpN5pX0CBDhHyCRjH/GE+MzvpyY
 ZBU+LO4hwM4xDAyyLMGHz5BdAbwN3q9ZoB4GqqQXcf8+h6EYM6NtAMaSkpagvStquO8T
 LfIw==
X-Gm-Message-State: APjAAAUG90jX3h3ofq1bWHzJ/RCbq69zHEduoOTwNdD0g/eUzRhxoBBz
 INQUalqQ7lYU4cIQ9qVG/iEYhQ==
X-Google-Smtp-Source: APXvYqywd4tkamYO1Fai6BvXNjXkhsYojIRkBX4/rKYkl5GdlfV7TnbJIDpy2ZVfWAPldm8d1RwzHA==
X-Received: by 2002:a17:90a:8d86:: with SMTP id
 d6mr2081909pjo.94.1562300823498; 
 Thu, 04 Jul 2019 21:27:03 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id t10sm6811920pjr.13.2019.07.04.21.27.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:27:02 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ASoC: rockchip_max98090: Add HDMI jack support
Date: Fri,  5 Jul 2019 12:26:23 +0800
Message-Id: <20190705042623.129541-5-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190705042623.129541-1-cychiang@chromium.org>
References: <20190705042623.129541-1-cychiang@chromium.org>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 tzungbi@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In machine driver, create a jack and let hdmi-codec report jack status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 195309d1225a..c0e430ca4d12 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -15,6 +15,7 @@
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
+#include <sound/hdmi-codec.h>
 
 #include "rockchip_i2s.h"
 #include "../codecs/ts3a227e.h"
@@ -129,6 +130,25 @@ enum {
 	DAILINK_HDMI,
 };
 
+static struct snd_soc_jack rk_hdmi_jack;
+
+static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
+{
+	struct snd_soc_card *card = runtime->card;
+	struct snd_soc_component *component = runtime->codec_dai->component;
+	int ret;
+
+	/* enable jack detection */
+	ret = snd_soc_card_jack_new(card, "HDMI Jack", SND_JACK_LINEOUT,
+				    &rk_hdmi_jack, NULL, 0);
+	if (ret) {
+		dev_err(card->dev, "Can't new HDMI Jack %d\n", ret);
+		return ret;
+	}
+
+	return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack);
+}
+
 /* max98090 and HDMI codec dai_link */
 static struct snd_soc_dai_link rk_dailinks[] = {
 	[DAILINK_MAX98090] = {
@@ -146,6 +166,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
+		.init = rk_hdmi_init,
 		SND_SOC_DAILINK_REG(hdmi),
 	}
 };
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
