Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E51153D81
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 04:18:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zT7o2mP3/BcrGICF8pYZUrPp8uKS7f787rnJDmONdv8=; b=SYx76MYSoFgt0V
	TBktdvK3HIGk/oah/tY92MjZnB8o+RlpniFVgnTDx90GZBvHhfIRqgUbrUyeEdja08SBb3ap/0dTR
	70CRC1TBPiv+IU7Qha0dvb64abVmdDR9D5PcANC4WcDi+GSq8AtHLhrmgDScWfFoMLAaSFBI/lgEr
	JPcJIbWMmLdTJ5pvD+H02FwmpPhTfK/ATKjLmmYLZvtAWRe7tFW4he/dPGxct3QPMh2BDfDfQx2aB
	M4HvnPa0OlflfgtS4EkkCkTCzv59bzHNYTeZsgVUU0jD3Nkndr4S8El2eJ8Rqtgb3JRz4yPHdz3XG
	lJdMepKfWwhg8VYa9imA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izXgt-0004E9-IP; Thu, 06 Feb 2020 03:18:55 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izXgN-0003tx-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 03:18:24 +0000
Received: by mail-qt1-x849.google.com with SMTP id z11so2936757qts.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 19:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=GKdSBpWKS5JubKvYHooQ1tsJLs+L1G4clF+7s5FbyHw=;
 b=naFzHNYgTkl6FjZpBOkCA2X/QrskO3Nyj3+Up6Q4sv70fhZlsQ9OfLbIfk1r0c13f4
 eZ7iIngf+0/feqrVf4l2k8moJ1SVAXQLPEgJmjMmLuiAAM62o0X1gRX7fFP7t6Mr4H36
 0+tUG3s5KDIURJ7Z1Rk1MINTJQ76nBZiKGmkjah2srKyBHJuv9h4O7MfxPvMBZK1fY6M
 wiMDH4EIJkavj55219XnSvbSenUmn+5oNJblgUzaI2YDjn6mPonp1jk3SsKy5ukJVDVO
 t+iWto0HpgeelkmDD2dNdvWDV9C80RAhjpVNvaLx92zuCH5OS92Vsn3t90c9w2TAruRG
 +bSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=GKdSBpWKS5JubKvYHooQ1tsJLs+L1G4clF+7s5FbyHw=;
 b=fyUREN91/Yttq3ysM67oKjTil2lRSucPe2NZJYI3jNmDOaETO1jXshWdhSl7OaYHMZ
 VeUo3IFl0iRpo7la3ycVhfGGkmI2BvPWqiVClT51E+2NoICf4ztqeg3fLJvCRBfUXKrX
 XBjqOUm8FAZLgZrcbBBzCyMttX7meRpPupm5zauECLdvoCun8kedkuTSRrfGLTaGGCCK
 fvcgol0hwFW18uclHUvAJVP/Cb4uxyL4MD0Ds5NV/SG2I7X7xs+A+7N/i7/ZNm1CdpM9
 REbXpucIFNHB6wlZcv6NTcp65ni+HkUgVsVnR3OHrgFyiUk7OnyPU+g90qwtOSt1j1JU
 2IEQ==
X-Gm-Message-State: APjAAAUjiObKjWkFVXrCNCOjdKMkhzHqZXR8bLJ4AGW4nmloCqGV3Rlw
 8eQykRhOcQsttbDe5gbJnLNioMhkUocD
X-Google-Smtp-Source: APXvYqyJ0n0UFWdJRGiNBcfGeJ9XTuOgIvFLDSVvgEpiQSthosjpQX4dk4r4oRet+K8HdyV3vkafiTKoFhUX
X-Received: by 2002:a0c:ffc4:: with SMTP id h4mr662384qvv.233.1580959101083;
 Wed, 05 Feb 2020 19:18:21 -0800 (PST)
Date: Thu,  6 Feb 2020 11:17:51 +0800
In-Reply-To: <20200206031752.193298-1-tzungbi@google.com>
Message-Id: <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
Mime-Version: 1.0
References: <20200206031752.193298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 2/3] drm/mediatek: support HDMI jack status reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_191823_057144_D4E0D357 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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

1.
Provides a callback (i.e. mtk_hdmi_audio_hook_plugged_cb) to hdmi-codec.
When ASoC machine driver calls hdmi_codec_set_jack_detect(), the
callback will be invoked to save plugged_cb and codec_dev parameters.

+---------+  set_jack_  +------------+ plugged_cb  +----------+
| machine | ----------> | hdmi-codec | ----------> | mtk-hdmi |
+---------+  detect()   +------------+ codec_dev   +----------+

2.
When there is any jack status changes, mtk-hdmi will call the
plugged_cb() to notify hdmi-codec.  And then hdmi-codec will call
snd_soc_jack_report().

+----------+ plugged_cb  +------------+
| mtk-hdmi | ----------> | hdmi-codec | -> snd_soc_jack_report()
+----------+ codec_dev   +------------+
             connector_status

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 34 ++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 23c2b0e8693d..fccdd975947d 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -169,6 +169,8 @@ struct mtk_hdmi {
 	bool audio_enable;
 	bool powered;
 	bool enabled;
+	hdmi_codec_plugged_cb plugged_cb;
+	struct device *codec_dev;
 };
 
 static inline struct mtk_hdmi *hdmi_ctx_from_bridge(struct drm_bridge *b)
@@ -1194,13 +1196,23 @@ static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
 	clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_SPDIF]);
 }
 
+static enum drm_connector_status
+mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi)
+{
+	bool connected = mtk_cec_hpd_high(hdmi->cec_dev);
+
+	if (hdmi->plugged_cb && hdmi->codec_dev)
+		hdmi->plugged_cb(hdmi->codec_dev, connected);
+
+	return connected ?
+	       connector_status_connected : connector_status_disconnected;
+}
+
 static enum drm_connector_status hdmi_conn_detect(struct drm_connector *conn,
 						  bool force)
 {
 	struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);
-
-	return mtk_cec_hpd_high(hdmi->cec_dev) ?
-	       connector_status_connected : connector_status_disconnected;
+	return mtk_hdmi_update_plugged_status(hdmi);
 }
 
 static void hdmi_conn_destroy(struct drm_connector *conn)
@@ -1648,20 +1660,36 @@ static int mtk_hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
 	return 0;
 }
 
+static int mtk_hdmi_audio_hook_plugged_cb(struct device *dev, void *data,
+					  hdmi_codec_plugged_cb fn,
+					  struct device *codec_dev)
+{
+	struct mtk_hdmi *hdmi = data;
+
+	hdmi->plugged_cb = fn;
+	hdmi->codec_dev = codec_dev;
+	mtk_hdmi_update_plugged_status(hdmi);
+
+	return 0;
+}
+
 static const struct hdmi_codec_ops mtk_hdmi_audio_codec_ops = {
 	.hw_params = mtk_hdmi_audio_hw_params,
 	.audio_startup = mtk_hdmi_audio_startup,
 	.audio_shutdown = mtk_hdmi_audio_shutdown,
 	.digital_mute = mtk_hdmi_audio_digital_mute,
 	.get_eld = mtk_hdmi_audio_get_eld,
+	.hook_plugged_cb = mtk_hdmi_audio_hook_plugged_cb,
 };
 
 static int mtk_hdmi_register_audio_driver(struct device *dev)
 {
+	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 	struct hdmi_codec_pdata codec_data = {
 		.ops = &mtk_hdmi_audio_codec_ops,
 		.max_i2s_channels = 2,
 		.i2s = 1,
+		.data = hdmi,
 	};
 	struct platform_device *pdev;
 
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
