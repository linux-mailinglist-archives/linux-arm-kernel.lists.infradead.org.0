Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86478159397
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=7EGiTH1Ijco7OET0H3n7a46+TiPiaNzsvNIpfPUHmlY=; b=NZ1
	7Ut0Qi6yRdnmNHAyyx5PLzMzgcZxm4zsdMs+LXEesPijJoxZ/fxGBIOwgGoNBD1tmOX7bxNBiEKlG
	hkhQicsLk4VAvgtpx+5c3pOesRT/LhixJvkrru9XPQQ7OYa91q2TDkjYpJjyzGPOnEz02Fd/YQZdt
	Q91IvkxynEHQEpIUeV7tVT2Go8NZEgUNNdZ3BrcxUuPmHildv8A3DcGASIyO0ClNrDlTiTnd17zze
	S+In3l907UtvCiaNPbA07Kye8Cta+K9EUZ0cvh9Kc2Wk39s5Pv6UEmzQUZicJl6o6sifCqiOzyBJ+
	kIOwzMhLWs5PgGVlZfm4rUy2MiuEXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xmj-0002vi-5L; Tue, 11 Feb 2020 15:49:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XmV-0002v3-Ss; Tue, 11 Feb 2020 15:49:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBCA130E;
 Tue, 11 Feb 2020 07:48:58 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50D623F68E;
 Tue, 11 Feb 2020 07:48:58 -0800 (PST)
Date: Tue, 11 Feb 2020 15:48:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Tzung-Bi Shih <tzungbi@google.com>
Subject: Applied "drm/mediatek: support HDMI jack status reporting" to the
 asoc tree
In-Reply-To: <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
Message-Id: <applied-20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_074900_025615_1A8DEEF2 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 airlied@linux.ie, dri-devel@lists.freedesktop.org, matthias.bgg@gmail.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 daniel@ffwll.ch, ck.hu@mediatek.com, p.zabel@pengutronix.de, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   drm/mediatek: support HDMI jack status reporting

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.7

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 5d3c644773925c3568617435e42a9404a114c428 Mon Sep 17 00:00:00 2001
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Thu, 6 Feb 2020 11:17:51 +0800
Subject: [PATCH] drm/mediatek: support HDMI jack status reporting

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
Link: https://lore.kernel.org/r/20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 34 ++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index fcec06e63e0c..03aeb73005ef 100644
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
@@ -1651,20 +1663,36 @@ static int mtk_hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
