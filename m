Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3F26B84C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3262/rnaxDxV2EyRVwKRa5NckpZ8WnJVVggHpekVtt8=; b=brDGX4SKI4Ux3u
	GFivREN+g2lkUwtQwAjbltIcPwV5MrbJh5lxivJYZpzY9CDwiMOwJ+735an9ccdyXRC3ZxeQF/aC1
	SqMeaI9DfMuEqCc4w24C1WgaxiCegF66TSS/Y5GGN9ZuhyJ0vCR7V0DKWt+RJzn6NPfIdzPCcm1Ad
	s4nhO7iQA59C91M4B/2kMO56SbOc6BIsWAuYHZ7YjJ95dkGGqkUJB0DiocVMU3vZ0wI1kPJHqlMn7
	IO3rwwwlwZxro/M/e/NokiIOw7bWsaM//PT8sPeP3PQ+KtdiSUgI7OtkKVpYRRLaYmGDAF0BkzcFJ
	5vtHYs5t5agVSIjhm6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfOx-0005c2-7H; Wed, 17 Jul 2019 08:35:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfNl-0004ml-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:33:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so10479784pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5TBZYfajN5HVRea84QAJKLSTPB155HmdASNn879m/EQ=;
 b=IZmFxnxuDP3SuQvqoNRO+M8bB3TSTsZBFrAjJvHPnM9kp7cArfgRl3fNvJnOhR6Nt/
 owbNXXyCv73kC3TUprNz5BR5MHcpZuh2mG8YWDAxqt28eldSBGCdTQdgybXQOvetlHuN
 oDKjd96uLQtPAXxkS81Zld3NvoTHxNAXtJZts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5TBZYfajN5HVRea84QAJKLSTPB155HmdASNn879m/EQ=;
 b=IHkS1yoXEuz4uML+5NUU4/BrGJxJDT+Pkh1qC4ohVKOt8DQ6FOb0V74ZqDJYGJr3CI
 xttFw4qUiNWJHeVXFBjN3seU4lUuKqBtc0mwXSdZLyTnNsKy4i+WMc115mRdxsXQ2Kfa
 ug3qO187sa2R08bewiyhT6mdFrryK3QmG+IfYudBlMqbHhguH6Zq+gX1KpYgF+E+gxOe
 2zCXPeFMU8j+DVK/D7CYrFxKlHxEd9xFqGLhLL2hXYdz2+xLLdN2SQwPne1NAXvCuH7N
 W14J6i6maN+4GFxseBuRFaa5czl5JbjD68AAF2c3b/DT6cNVBLehu/MlLcVabVzekY0l
 zWWw==
X-Gm-Message-State: APjAAAVBP7Xl2tbxRrNV4kBCf1Ai9TmjH9bCVJO6qokYY6LSU2asO0Nw
 2NNqYaCeS1zKMY2lA18+SXP/yw==
X-Google-Smtp-Source: APXvYqxPydhnliUzK2uNkEbcc7+2J2IwaFMzYdUrhNnVBedPggzZ6oqRnJJXOC3B5Xd5pYqgORkgkQ==
X-Received: by 2002:a65:41c6:: with SMTP id b6mr39402014pgq.269.1563352429076; 
 Wed, 17 Jul 2019 01:33:49 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id e6sm27560082pfn.71.2019.07.17.01.33.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 01:33:48 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/5] drm: bridge: dw-hdmi: Report connector status using
 callback
Date: Wed, 17 Jul 2019 16:33:24 +0800
Message-Id: <20190717083327.47646-3-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190717083327.47646-1-cychiang@chromium.org>
References: <20190717083327.47646-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013350_046969_32A921B4 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Allow codec driver register callback function for plug event.

The callback registration flow:
dw-hdmi <--- hw-hdmi-i2s-audio <--- hdmi-codec

dw-hdmi-i2s-audio implements hook_plugged_cb op
so codec driver can register the callback.

dw-hdmi exports a function dw_hdmi_set_plugged_cb so platform device
can register the callback.

When connector plug/unplug event happens, report this event using the
callback.

Make sure that audio and drm are using the single source of truth for
connector status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 11 +++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 41 ++++++++++++++++++-
 include/drm/bridge/dw_hdmi.h                  |  4 ++
 3 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
index 5cbb71a866d5..ca56783fae47 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
@@ -104,10 +104,21 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
 	return -EINVAL;
 }
 
+static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
+				       hdmi_codec_plugged_cb fn,
+				       struct device *codec_dev)
+{
+	struct dw_hdmi_i2s_audio_data *audio = data;
+	struct dw_hdmi *hdmi = audio->hdmi;
+
+	return dw_hdmi_set_plugged_cb(hdmi, fn, codec_dev);
+}
+
 static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
 	.hw_params	= dw_hdmi_i2s_hw_params,
 	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
 	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
+	.hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
 };
 
 static int snd_dw_hdmi_probe(struct platform_device *pdev)
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 045b1b13fd0e..f32c66a6873d 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -185,6 +185,10 @@ struct dw_hdmi {
 	void (*disable_audio)(struct dw_hdmi *hdmi);
 
 	struct cec_notifier *cec_notifier;
+
+	hdmi_codec_plugged_cb plugged_cb;
+	struct device *codec_dev;
+	enum drm_connector_status last_connector_result;
 };
 
 #define HDMI_IH_PHY_STAT0_RX_SENSE \
@@ -209,6 +213,28 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
 	return val;
 }
 
+static void handle_plugged_change(struct dw_hdmi *hdmi, bool plugged)
+{
+	if (hdmi->plugged_cb && hdmi->codec_dev)
+		hdmi->plugged_cb(hdmi->codec_dev, plugged);
+}
+
+int dw_hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn,
+			   struct device *codec_dev)
+{
+	bool plugged;
+
+	mutex_lock(&hdmi->mutex);
+	hdmi->plugged_cb = fn;
+	hdmi->codec_dev = codec_dev;
+	plugged = hdmi->last_connector_result == connector_status_connected;
+	handle_plugged_change(hdmi, plugged);
+	mutex_unlock(&hdmi->mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_set_plugged_cb);
+
 static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
 {
 	regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
@@ -2044,6 +2070,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
 					     connector);
+	enum drm_connector_status result;
 
 	mutex_lock(&hdmi->mutex);
 	hdmi->force = DRM_FORCE_UNSPECIFIED;
@@ -2051,7 +2078,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 	dw_hdmi_update_phy_mask(hdmi);
 	mutex_unlock(&hdmi->mutex);
 
-	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+
+	mutex_lock(&hdmi->mutex);
+	if (result != hdmi->last_connector_result) {
+		dev_dbg(hdmi->dev, "read_hpd result: %d", result);
+		handle_plugged_change(hdmi,
+				      result == connector_status_connected);
+		hdmi->last_connector_result = result;
+	}
+	mutex_unlock(&hdmi->mutex);
+
+	return result;
 }
 
 static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
@@ -2460,6 +2498,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	hdmi->rxsense = true;
 	hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
 	hdmi->mc_clkdis = 0x7f;
+	hdmi->last_connector_result = connector_status_disconnected;
 
 	mutex_init(&hdmi->mutex);
 	mutex_init(&hdmi->audio_mutex);
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index b4ca970a5b75..d6c925236c55 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -6,6 +6,8 @@
 #ifndef __DW_HDMI__
 #define __DW_HDMI__
 
+#include <sound/hdmi-codec.h>
+
 struct drm_connector;
 struct drm_display_mode;
 struct drm_encoder;
@@ -152,6 +154,8 @@ struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
 
 void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense);
 
+int dw_hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn,
+			   struct device *codec_dev);
 void dw_hdmi_set_sample_rate(struct dw_hdmi *hdmi, unsigned int rate);
 void dw_hdmi_audio_enable(struct dw_hdmi *hdmi);
 void dw_hdmi_audio_disable(struct dw_hdmi *hdmi);
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
