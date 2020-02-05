Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFD3152889
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 10:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeBMD38D5izsCcYnXe3LvLxQzMpHNSOq6KPkYzCvtKs=; b=UW/Uyz5lQf2aWO
	IFjj80hWUYMXEdoWNwxs23pFp/NHNh6DcjWD6N7y3G2lyfRL5/uO88En/caN5wWRyQ0lpI6G6oeO5
	+21esiEQwIOSOLwp2uObhZTFpkr4k0B6Zh8Tp5HdOATmP96aZruYKEuZjBL24c8p6YpDrxQxSzCeE
	piWWfy2Ru7Tlyu2utRpaQDfSvjisou2Bazj6L5HLj9mVFKZUBFJC/71fLbTWZ9hFIpSxmjhDkATx4
	4lMHFQT0VAt6CXRrdgYRcTTnkepwZGJhE3uFjffza6sbBy/tximoq6NiOBAzORm9uWklZkMHl8pIs
	F10oX/nJs8ZOuzU6+AWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izH8z-0005iw-RB; Wed, 05 Feb 2020 09:38:49 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izH8O-0005F9-MY
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 09:38:14 +0000
Received: by mail-qk1-x74a.google.com with SMTP id z21so871312qki.18
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 01:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=cX29gQ3Pe2nYNSmOPNFjk0KmvqrTptDWTP83/iCAsdA=;
 b=ixbOIq8maNz1diHMn2lwgN76Wks4PKPS2JD5s1qhsxg+f4Lw0HcqZx/CFcJ9zvGF4J
 LdRZO6zI4PrghmZbrzhz9Pbwie595/SdQzw5i15qqaE+duNoGAAqdtlsNeC6JHyhuEIZ
 wY/1FPuOwOsaQX0vF2Mfr2OBuD+Bo41BB4mt/scYJFiZO46DLSj63t3xkl6x4wvV0mlR
 eALP5NYK254rYDixapJgUG0dE8WxxHbbwmH81ICXVqOr03qEWAbgmbb0Vima2BWBTg3c
 tknLYkEmLkGeT7M35AhA0k5pSX9LfGwnO3rPNRi2+iDmLmtm7GOpv+gWKnrTdCr6XaVk
 1Ogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=cX29gQ3Pe2nYNSmOPNFjk0KmvqrTptDWTP83/iCAsdA=;
 b=pdXSdUx70vR2bESmWqa6Wtiug+ojKSyRJdu+eju0mmirxjSLIUt46pGJFdPK3nXGLF
 zg3HJdf//4uoYBVlaRPY2bRPyXMZAhGRIyMbX/hgExgdEtaQvkF+mwfAv57/g0V2Hnfd
 Txo2/gDYL/0S76pIxIjTth22atOLy/HHrTzJAqm9G1PzAdER3CSlpakdK+8S3QIUemTE
 qIDiN18f2OAykiStk3La9MlEFOfRCvWNRDynBIgHZXJ1Vkt3w8QxfdV3u9rmN3lK5GTw
 iZUqJnuvlo8XvyNd9TTROD25T946VD2oHVaX6XNaqhjdHQw9ohMSMkj7Y8yf7OwM0A3c
 xZ5A==
X-Gm-Message-State: APjAAAXRdeZOfHLKlDuc9Sewt6eyGEwb7YYRkiQJVPdxtFBdk5Pf51NA
 2s81UdMNCUr2NfYC6itg2TC25Qv9805d
X-Google-Smtp-Source: APXvYqzvqZ+I6q7rsrnsbANQ2Td41uSXPBSKwBl8ZrPWLMClutzjKDkU8rsrWO96kwNDsFR8NBUJJAomYVqM
X-Received: by 2002:a0c:fe0d:: with SMTP id x13mr31660627qvr.88.1580895491114; 
 Wed, 05 Feb 2020 01:38:11 -0800 (PST)
Date: Wed,  5 Feb 2020 17:37:44 +0800
In-Reply-To: <20200205093745.79298-1-tzungbi@google.com>
Message-Id: <20200205170416.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
Mime-Version: 1.0
References: <20200205093745.79298-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH 2/3] drm/mediatek: support HDMI jack status reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_013812_802163_B9DEE656 
X-CRM114-Status: GOOD (  13.00  )
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
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 41 +++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 23c2b0e8693d..15736ed0a96a 100644
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
@@ -1194,13 +1196,27 @@ static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
 	clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_SPDIF]);
 }
 
+static void mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi,
+					   enum drm_connector_status status)
+{
+	if (hdmi->plugged_cb && hdmi->codec_dev)
+		hdmi->plugged_cb(hdmi->codec_dev,
+				 status == connector_status_connected);
+}
+
 static enum drm_connector_status hdmi_conn_detect(struct drm_connector *conn,
 						  bool force)
 {
 	struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);
+	enum drm_connector_status status;
 
-	return mtk_cec_hpd_high(hdmi->cec_dev) ?
-	       connector_status_connected : connector_status_disconnected;
+	if (mtk_cec_hpd_high(hdmi->cec_dev))
+		status = connector_status_connected;
+	else
+		status = connector_status_disconnected;
+
+	mtk_hdmi_update_plugged_status(hdmi, status);
+	return status;
 }
 
 static void hdmi_conn_destroy(struct drm_connector *conn)
@@ -1648,20 +1664,41 @@ static int mtk_hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
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
+
+	if (mtk_cec_hpd_high(hdmi->cec_dev))
+		mtk_hdmi_update_plugged_status(
+				hdmi, connector_status_connected);
+	else
+		mtk_hdmi_update_plugged_status(
+				hdmi, connector_status_disconnected);
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
