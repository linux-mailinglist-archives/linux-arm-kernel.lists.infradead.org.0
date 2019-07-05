Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342EF607BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loc+i+YFrXltS+pwh0OcFRWSgzYVL1EB1lUecLOsxlM=; b=YVzadP2+GbfTLn
	d55rQq57NP40Fz8FHSm6Yvp+WDPQ9cojTz1uio7A3l94m0RxLWaeyHVxQxbYJNbAP+vAiRUEian/Y
	MLcHSYbiT7SfyVRmuf2jcmAp5uBUuZsopWMRCK9P8wz6tsfDYWfD6lFJCT18zCrkvEIQEwO8mRy1E
	LLqqD5t6QWh8YDvWfFxYTn2YL4HNr5VfqOqNa6hMg2tTfZ4X9rIAVsUkmi04tpsaOKAhmJ5w5LEAw
	xnt4tZ5f/vsKezFeew/cZrQlYGDTLFbusgnbG8rfpcOauVAtRwDi0f0FGsoN2mfxS63MKVkQqX1MF
	qYPK+XdIKxlNEZms54OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP55-0006By-M8; Fri, 05 Jul 2019 14:20:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP4b-0005s6-0Y
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+3G7gaXEJuSaVZO7JAbYh3wKp+iQz6Nh9jSGcVM+k6U=; b=P7maXdYA/cSEVY4O9ponIxSCGt
 2Af89EUeErCZxsW0GVgK7DEU7roTDfvf0EhfHysO4qG5jNuNH3PIzh8pksmax7nDZqfUDaDtRisRM
 0ze14KeZ9EsuVjM4ytXCqPm33F75/M473wN3CpwXm3GcFScub88V+Uf1vz7WgyCv4gBnT0ItkubGi
 pYyDGZFt/R7P3FcPtz8J2JusYVydmoVp9VCzyVurmX7VdXjXPFKsGsWgODafgY3k1E2T4WSLu8hvY
 ipHzNKrXQS7Z+z9OOA/8iISxyf10gZ0MHXDzJR1eTF6K5bmJy4gCc1+W+IHdTfy5nEmrR6yinDrA6
 ctDbH1Ng==;
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjFq8-0006aP-2O
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 04:28:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id 81so3708070pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 21:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+3G7gaXEJuSaVZO7JAbYh3wKp+iQz6Nh9jSGcVM+k6U=;
 b=nMtfntFDTuoSfK9/VFf/q1vvFv3BHdF9zSOETr3vqyb6NzVWs4/fbfev94T09R+aUd
 3vNBcFB033ya7IZyhwEjfeccLxwKb4rNzeYxICCdJ6mDfnK8h5MLTINtR+qH1dqoaGr8
 WFkvrCy91KPXVRYCKm4om3V826Sg44F5rrCGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+3G7gaXEJuSaVZO7JAbYh3wKp+iQz6Nh9jSGcVM+k6U=;
 b=uhVJps0EjzFOroIzC2MEensFJiO4vYOqehWA18XvYt0B2ZMNKwD8hbGPDVI5OXlc8X
 wnMVPzd2l2mIYMP2MY7CjEe4acw/2VXQvrtkgLOTlkGepQRPX1AiYMCerues9I3J47Bl
 7hA+on9mYMSKc6nzo5dauPk+8cwvMAjM5xbLK61eLygLhkp5PiKuKW6X8my7hBhLqbEi
 9CwDsVcm9YeWvODc6k1cA1TcPFhfgbOBkihRuZG3m+jgFr/x7QLCdb87sk5EVZKjFN7H
 2azjIyIw9H9oUw6vW44a9tSzcuW9e4fIRu3nrphWrEObvGRPG5VC6d+Dm3k733Kl3Bfy
 sJnA==
X-Gm-Message-State: APjAAAXn5AznPhhhrhmYmy/zFphzBETSKLo7Ur5hHeXF4aP4cLN3W++s
 4LI9d3jilCvxDUj6VJ1qlUrbUg==
X-Google-Smtp-Source: APXvYqxo3SdDzWV2z9ih0ZiNNE3HnS7c3zDkLrVJE1fvL3y0/NYA0aJNny09tyDNEaQonEEmk3XdTw==
X-Received: by 2002:a65:430a:: with SMTP id j10mr2429110pgq.374.1562300804603; 
 Thu, 04 Jul 2019 21:26:44 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id b29sm17718645pfr.159.2019.07.04.21.26.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 21:26:44 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function for
 plug event
Date: Fri,  5 Jul 2019 12:26:20 +0800
Message-Id: <20190705042623.129541-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190705042623.129541-1-cychiang@chromium.org>
References: <20190705042623.129541-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_052852_126890_0BEABD6E 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add an op in hdmi_codec_ops so codec driver can register callback
function to handle plug event.

Driver in DRM can use this callback function to report connector status.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 include/sound/hdmi-codec.h    | 16 +++++++++++
 sound/soc/codecs/hdmi-codec.c | 52 +++++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+)

diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
index 7fea496f1f34..26c02abb8eba 100644
--- a/include/sound/hdmi-codec.h
+++ b/include/sound/hdmi-codec.h
@@ -47,6 +47,9 @@ struct hdmi_codec_params {
 	int channels;
 };
 
+typedef void (*hdmi_codec_plugged_cb)(struct platform_device *dev,
+				      bool plugged);
+
 struct hdmi_codec_pdata;
 struct hdmi_codec_ops {
 	/*
@@ -88,6 +91,13 @@ struct hdmi_codec_ops {
 	 */
 	int (*get_dai_id)(struct snd_soc_component *comment,
 			  struct device_node *endpoint);
+
+	/*
+	 * Hook callback function to handle connector plug event.
+	 * Optional
+	 */
+	int (*hook_plugged_cb)(struct device *dev, void *data,
+			       hdmi_codec_plugged_cb fn);
 };
 
 /* HDMI codec initalization data */
@@ -99,6 +109,12 @@ struct hdmi_codec_pdata {
 	void *data;
 };
 
+struct snd_soc_component;
+struct snd_soc_jack;
+
+int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
+			       struct snd_soc_jack *jack);
+
 #define HDMI_CODEC_DRV_NAME "hdmi-audio-codec"
 
 #endif /* __HDMI_CODEC_H__ */
diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
index 0bf1c8cad108..5e7075f78c38 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -7,6 +7,7 @@
 #include <linux/module.h>
 #include <linux/string.h>
 #include <sound/core.h>
+#include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
@@ -274,6 +275,8 @@ struct hdmi_codec_priv {
 	struct snd_pcm_chmap *chmap_info;
 	unsigned int chmap_idx;
 	struct mutex lock;
+	struct snd_soc_jack *jack;
+	unsigned int jack_status;
 };
 
 static const struct snd_soc_dapm_widget hdmi_widgets[] = {
@@ -663,6 +666,55 @@ static int hdmi_dai_probe(struct snd_soc_dai *dai)
 	return 0;
 }
 
+static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
+				   unsigned int jack_status)
+{
+	if (!hcp->jack)
+		return;
+
+	if (jack_status != hcp->jack_status) {
+		snd_soc_jack_report(hcp->jack, jack_status, SND_JACK_LINEOUT);
+		hcp->jack_status = jack_status;
+	}
+}
+
+static void plugged_cb(struct platform_device *pdev, bool plugged)
+{
+	struct platform_device *codec_pdev = platform_get_drvdata(pdev);
+	struct hdmi_codec_priv *hcp = platform_get_drvdata(codec_pdev);
+
+	if (plugged)
+		hdmi_codec_jack_report(hcp, SND_JACK_LINEOUT);
+	else
+		hdmi_codec_jack_report(hcp, 0);
+}
+
+/**
+ * hdmi_codec_set_jack_detect - register HDMI plugged callback
+ * @component: the hdmi-codec instance
+ * @jack: ASoC jack to report (dis)connection events on
+ */
+int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
+			       struct snd_soc_jack *jack)
+{
+	struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
+	int ret;
+
+	if (hcp->hcd.ops->hook_plugged_cb) {
+		hcp->jack = jack;
+		ret = hcp->hcd.ops->hook_plugged_cb(component->dev->parent,
+						    hcp->hcd.data,
+						    plugged_cb);
+		if (ret) {
+			hcp->jack = NULL;
+			return ret;
+		}
+		return 0;
+	}
+	return -EOPNOTSUPP;
+}
+EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
+
 static int hdmi_dai_spdif_probe(struct snd_soc_dai *dai)
 {
 	struct hdmi_codec_daifmt *cf = dai->playback_dma_data;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
