Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5531366AA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXHlbcguX9PoOnGZm12sb9FYXCkWezt+EofFLhHs/vA=; b=lsaOnwGq7G00Lv
	CV1H5un7LMl0mOTxhN0i3koVqHzafpToeVufgzjT7pSA3egEABxqjf3Nc+ZAiSOv2YhurMtaWuZEH
	OKZaeQSJZZ3KsznNsdDTXDX/dQGI3CkZp6wNnu/BsXYUHH0hbPVfX/QMwdqgwTHA0DTnNx6lFQRA2
	eiDaW750dc9+t4OM5/mAx9UiTISZyU3/jQB7qcQbffT2RQI27nv/oDqOBXAX8HTzyZ683NTfyqv5p
	RvtQSFKslsXXXmV/Ol3EAGTEA5udwtIK3gE0SJ9daHoDuX2voejnXruxNG91NfW4QFujBYfjfyhfU
	hNA7Q47FDRdXsFJVAhOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsQv-0000hw-Pm; Fri, 12 Jul 2019 10:05:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsQe-0000gi-Vf
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:05:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so4098492pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 03:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rS6zkcW47m8W9zfkh+VM7vIXvZMkibrUOXYUf4msEEM=;
 b=RDVx1KXccl3mvFHUy6r7nTol8Lf7wAQOsrR/0/uAxUrL7oNBlwm9mkTQQMbzZbVwHH
 KcW5fTbUZyvWJCY2CbIAdoPOk4gWZa6CxObxvRpHBj4SYAJOz2cnrVCVij9HqjhFtIjQ
 pz4bYOSc1ZWCTc4s8x3GObiD4Dr1AUwN4Qbt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rS6zkcW47m8W9zfkh+VM7vIXvZMkibrUOXYUf4msEEM=;
 b=dj0RIPvxBGJcYbRyN9dEfDuJf6jh2U86IQj9m8ENCAVim5SQS0+D9MvyIX1oZW/B7L
 WZuQ9+Qea/TBTNt+8VjDakSDedAjhbn9YQBph+T8Km4u0+LJglq7pRUyjCqOoMxCLzpD
 gvSJPDF8bvHHVTOhUjPqoNpikHP06U3YcXQFSceoVujY8K53dmsf4HwDoG8uxZ7+AVjs
 nKZq/gvLKubDid8HEy/uOAKmrDmHCVQ1q4TcTGqXU25LsFC9vys6xOhj0qeoSRHGEKWF
 8+9hyBRovfnRWV5WZpmDwcVQyuly76cCqtr32WSnaiGa54xc4IFNJEEMy4eoU4NIaZ5p
 TjJg==
X-Gm-Message-State: APjAAAVI5XIhxcAz2La1oe9c2+lkcdLjhhHi6ZSqDnyJdtBkPyvzWcLB
 gVNBXkPRlGDDBB9oB3bUzWC6NQG05gY=
X-Google-Smtp-Source: APXvYqz7SudcvvS5pF+UuX1xodz8OlwvmJ4ZVax0qTiAuJMFysNNw5skd8gJXRuISPAh/Pift1dikA==
X-Received: by 2002:a17:90a:898e:: with SMTP id
 v14mr10597150pjn.119.1562925924549; 
 Fri, 12 Jul 2019 03:05:24 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
 by smtp.gmail.com with ESMTPSA id s11sm7658859pgv.13.2019.07.12.03.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 03:05:23 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/5] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
Date: Fri, 12 Jul 2019 18:04:39 +0800
Message-Id: <20190712100443.221322-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
In-Reply-To: <20190712100443.221322-1-cychiang@chromium.org>
References: <20190712100443.221322-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030525_027518_C6727A97 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 include/sound/hdmi-codec.h    | 16 +++++++++++++
 sound/soc/codecs/hdmi-codec.c | 45 +++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
index 7fea496f1f34..9a8661680256 100644
--- a/include/sound/hdmi-codec.h
+++ b/include/sound/hdmi-codec.h
@@ -47,6 +47,9 @@ struct hdmi_codec_params {
 	int channels;
 };
 
+typedef void (*hdmi_codec_plugged_cb)(struct device *dev,
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
index 0bf1c8cad108..32bf7441be5c 100644
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
@@ -663,6 +666,48 @@ static int hdmi_dai_probe(struct snd_soc_dai *dai)
 	return 0;
 }
 
+static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
+				   unsigned int jack_status)
+{
+	if (hcp->jack && jack_status != hcp->jack_status) {
+		snd_soc_jack_report(hcp->jack, jack_status, SND_JACK_LINEOUT);
+		hcp->jack_status = jack_status;
+	}
+}
+
+static void plugged_cb(struct device *dev, bool plugged)
+{
+	struct hdmi_codec_priv *hcp = dev_get_drvdata(dev);
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
+	int ret = -EOPNOTSUPP;
+
+	if (hcp->hcd.ops->hook_plugged_cb) {
+		hcp->jack = jack;
+		ret = hcp->hcd.ops->hook_plugged_cb(component->dev->parent,
+						    hcp->hcd.data,
+						    plugged_cb);
+		if (ret)
+			hcp->jack = NULL;
+	}
+	return ret;
+}
+EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
+
 static int hdmi_dai_spdif_probe(struct snd_soc_dai *dai)
 {
 	struct hdmi_codec_daifmt *cf = dai->playback_dma_data;
-- 
2.22.0.510.g264f2c817a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
