Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0236641B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 09:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhejPhwhdH6/BGqSWb6GcY3egqlGeoAruEMXqyVOS1U=; b=tUccy48XnPdkSo
	QJRFMBXIxFI1FcT7H+LHahBvbwtLKx4uRrxWCesaVjdj6SwgXCPdcNQGV21DS8so+plPp1y3ROVuU
	8Gd3PbJuxawViolXc10a6MO5hRT02+9ggNy3aJyPDhAwkDg2pzPWiU1pK3+9AGBFL5DT7rkXVj+ux
	xlDlAXNZlbspB7B8p6si+vbvYUiOsjvLbAhZi/CGNkk1JyrolxIzSPBoP57vq2IpMi667d39CIwVA
	f9sEC6olj4yXVhQQGCgw2ALBBMg11dpuauQUvvfQr9tGyylnWXRNwhpXLw3rfo4ws1IrlYHVPwYyK
	GwidW185cjUhlQJ4QCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6jo-0006Bc-Fg; Wed, 10 Jul 2019 07:10:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6ij-0005Wt-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 07:08:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id i8so747058pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 00:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=opTBgfSTSFi3V1ce9YlYEnYQO/1kKdgFofPaGYJTBOY=;
 b=RjICyuOquidt6LyqOASElFqobDNn4mo6EWt1hQsD6iwRx26+bMSTRwY0lCmMrVaHSG
 6a47JWfUcXiJfqoCtNQ7lq7rjKXQcz2UUkE2pHMU2JgLeyFB7HyoZ+a4e8q03awEvrPl
 4wQTV2TDpVxnBFrbqJ7OGM83LJNpTu4ZxCalU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=opTBgfSTSFi3V1ce9YlYEnYQO/1kKdgFofPaGYJTBOY=;
 b=g5tc5Jq0XLtXaX1FzY114Z5BGw5m+jHPg3KkuAWIJOnO2rmMPmAdBhNoQ2ILB++nE/
 Le4tyo6wpXmdRuPW9xa0OxWYzeHSvrh9V8UBIh8ODAQed1jCzPO19Dp6ALwCVfmuPcTz
 ggDdHVdyHFeBw8rrtK3hDP4juliGVTqkuC9frZ2+0v/XUSd70pVqcPi8QoonvBnHMx2X
 xKzYWULH9SVMluAIEh3gXnqwSJ2EMc20IHSh1pSXtghj2TX0U/bWqobbj/ziNbyeDHAu
 GFo0OlJIl6PBP2lpqxVOna1WYxVfaWF92ywI3QNYvjPwd99J+8onIlW1W8tiij5hJkIZ
 bgKg==
X-Gm-Message-State: APjAAAUcjNzsSnP31ChG+6m+3IV2MqYuYae9rpnIdJ7lBi0Dk5uiKgO6
 vGJXNNYmUXSOcaJufzwNzbPyTQ==
X-Google-Smtp-Source: APXvYqyla6Le8Sl5C5IFq+BMbhDM8PgxLabMwmqWmWurGv0zA2QcXauHAgdORrx2hOafDqZMEhT1zA==
X-Received: by 2002:a65:4045:: with SMTP id h5mr36503650pgp.247.1562742532604; 
 Wed, 10 Jul 2019 00:08:52 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id b36sm3319370pjc.16.2019.07.10.00.08.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 00:08:52 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] ASoC: rockchip_max98090: Add HDMI jack support
Date: Wed, 10 Jul 2019 15:07:51 +0800
Message-Id: <20190710070751.260061-5-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190710070751.260061-1-cychiang@chromium.org>
References: <20190710070751.260061-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_000853_199815_95DA8DEB 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
index 3617012692ea..177c8a7ec8de 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -15,6 +15,7 @@
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
+#include <sound/hdmi-codec.h>
 
 #include "rockchip_i2s.h"
 #include "../codecs/ts3a227e.h"
@@ -133,6 +134,25 @@ enum {
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
@@ -150,6 +170,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
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
