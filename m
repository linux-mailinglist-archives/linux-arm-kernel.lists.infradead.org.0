Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526426A7E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 14:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGAoKIZJaz9AaM+D61fKGgHZIcGnI06Pmz3U1gAOLdM=; b=SIFbjrVPEmLId6
	6Fb6QZXjwVzAjHyK1Hy6Y8BgkfaL5QRrSc2sqXkeNa8SaJ68YHRGwk0XJ1owleXbvk162D2I1/OS4
	zB7mf7iCeUnS4mRvbRUMYnuPQlvXoIhXz24UI12pGGD/vSMBx79h6Q03rAiT729u28xM+uaevJuYB
	miM29d9KMzz+ID6PaobdxIptjmobd65kxZDCSiLQbzZpLMY5wko5+EeA6ydzqn5vD2l/iqFkOCjfN
	wELVtvmmTRFpv1251VjRP7yx+fB6R0OyfXg0RGp2a45/m5MSZa0HD+jzncQVvXNfHP1Gj0k3nBrPV
	byA2VtdNC0jsaRT9gkuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8E-0006Qw-K5; Tue, 16 Jul 2019 12:00:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM63-0003iV-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:58:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id i8so9317884pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 04:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nJ9T4k4yWMJOAaiUcAIMxLuNgP/0Z4a1nwB48vdQUdo=;
 b=DJg5FQ/b8ibX3/qRon/C0WjumXrFGskJlX4dLrfgPFdEW871DWyj4qj81OU4bpUBTm
 n6Gw9h9eyPBpd2Iu2dKRFO3vm5fnJHIoW8Tz1d/6SEhLhchpjqPCzv4eA90ZnjFIr975
 Y+qDKR3V68B0mGwbagz+uiNdKChKPFwbYRhk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nJ9T4k4yWMJOAaiUcAIMxLuNgP/0Z4a1nwB48vdQUdo=;
 b=LgFCVIsbCCnZcrXw9jx9w+RqL3qtbzqqeyaCBSxLXhWXpyNKKloLxZe6FRdwPpnMvw
 Mp4A9ePRa3XvpqyDdvqkm1znZ+1SKtEJXPslp4tz6YYizw/bxe2wFDYZFOk0ywJbkMyi
 3BLc0pFkAyGDmlAPw2d2BOZ87+ax4wd1B9zLOB8Y0fayU13np17VGs0JVNqlLSbT0k5s
 tjLwO+kp0nyXGyNgHoa9qRp5+qd+OY1xBSVDTr+VaMNYlQ52uLZbKPHQe75DwZXbOuaZ
 bS578UOGkSRQcphLE3pasei9m+sAV4+Wkx5r96WD1WwzqycjdD36Z7qFHR8RSBny2kT4
 k8Ag==
X-Gm-Message-State: APjAAAUeZuBPV/1eWc2913JvS2JA798ByySMJLTcMCogBSSoL5s1rXxH
 90V8mjUbshJ3iJ8250do9FvWBQ==
X-Google-Smtp-Source: APXvYqwdkiH5M0kTSkdfPzOar3C5PkahE8wVlfIIMiPgkUOHHGZc6jLK93Gia2KxwC6qXmvd1g14cQ==
X-Received: by 2002:a65:6415:: with SMTP id a21mr23688039pgv.98.1563278294634; 
 Tue, 16 Jul 2019 04:58:14 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id b136sm14339900pfb.73.2019.07.16.04.58.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:14 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/5] ASoC: rockchip_max98090: Add HDMI jack support
Date: Tue, 16 Jul 2019 19:57:25 +0800
Message-Id: <20190716115725.66558-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190716115725.66558-1-cychiang@chromium.org>
References: <20190716115725.66558-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045815_428287_E651DA4D 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 sound/soc/rockchip/rockchip_max98090.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index c82948e383da..c81c4acda917 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -134,6 +134,25 @@ enum {
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
@@ -151,6 +170,7 @@ static struct snd_soc_dai_link rk_dailinks[] = {
 		.ops = &rk_aif1_ops,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
+		.init = rk_hdmi_init,
 		SND_SOC_DAILINK_REG(hdmi),
 	}
 };
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
