Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E154F15BA63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=20q3fdAFCEsAzdkmK3zZ8fg06LpuJAw+AaAANPWfWz4=; b=EhblZ0nN+a5cjo
	9zCIYbswXh/zCeOXw5m8/QKqTTuXaeAe9luCX96iyC0dgqodBwaRmWQPIzjNjs4zHhSog+PfnBIc5
	bM6vlf7sg+9UoSv/FmvNEmAZAZNy3XaYurl7CZJzI6RbZHIOSLWe/jK7rixzLuPWbw2Xn5bA3B7Fh
	0tIHMfJaMJV78VFnuyLCZelpxs6fbS46f1zmNf/UPX6zD0ZyVbWU10cATIdmBbTbbO+0GTPo1WOyj
	M/ZfQYUYLsOmP004JWDp4fTdtK81lwofjL3C8mhvvLNTajQYfSdpXfftttafxUyEwo+Pr4+T8sVyC
	DC/D2ygIkv0j5cQObtww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29Q7-0002ET-F4; Thu, 13 Feb 2020 08:00:23 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29Px-0002Cw-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:00:15 +0000
Received: by mail-pf1-x44a.google.com with SMTP id v14so3242528pfm.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 00:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=tSlvrP4m66P1XACDCZDaP68t1HESopkE2ZYSJ/oW5Fc=;
 b=O0GgSTgCFWMe+CSNK993pV/PwzdGIXWDBR5X0/FBv+KHqZ7K9sI8OSrRkyU2JF0+bK
 a0oFchkMZ4tO5BLEk4bqnVywm6K4MRwLuT6lzun7Hb0FO7W5GmcvMELg9+zjOEAdeVkm
 bSVmoX3bkve//nZfusUDzKoQkpuWEWx2ND7zPEikUeU5mF44vV+/iie9fotkaJAoilcd
 SmTm7Pm+KaDA+TUmnOd/MFzybL1naAUfM8Ow8c9XSDEUk43pq3NJSkxA23l228OFxcqy
 yfEXmL17ZGL6KyDE/6ENhvek7IcRNXzWn+5PVtqvvkRRXWIdpkeQr63Cn+yXUn3o56i2
 joAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=tSlvrP4m66P1XACDCZDaP68t1HESopkE2ZYSJ/oW5Fc=;
 b=nNHU2VdLqZhdzAMTYvmTQwg9o4xsQsDLZWK3mcC8Wl5B0O7kG3DpQNF04IQa3nzH4Z
 Cu2gjY99JpjeczGLDMkTArZWPtOW9raSmYW0799DtrFWQA3/I136tBViMA4qIOp4nwXm
 TmJAIctvceh+eiGoM3TPVNQu6alPPiAubvq2MizLTEceIAasA1fp8DNMF0/RHaR7Zx+r
 QsLP0L8lr85SCEKkr0M+Ic1piNv/5XqWz4xVugPQ/y8Ec20VJNoXOv6cdkLA46zldztq
 9mxx9y9YGeQF+uYocA7VGfZpUG3/4rcab43Qz+IZe56fVRIbn0EXzGqJsKdtSBpEQdI2
 wXVw==
X-Gm-Message-State: APjAAAWexcBO8RYHC5QkFTjPPCAnEImNvd3nT+Hg7HRL8wSBdHAAwgfB
 gSzHgqa72Zw9WqH4IgVEX3QUAW6/o4gn
X-Google-Smtp-Source: APXvYqzDfbbpNkunl4GqakNBCLdfvlQrA9qA9iLtF3TS+2Mot3yuBl6sVFlx4f7nIe24WVH3YWORwiVOgN12
X-Received: by 2002:a63:4305:: with SMTP id q5mr17607821pga.64.1581580811962; 
 Thu, 13 Feb 2020 00:00:11 -0800 (PST)
Date: Thu, 13 Feb 2020 15:59:57 +0800
Message-Id: <20200213153226.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] drm/mediatek: fix race condition for HDMI jack status
 reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_000013_608102_9B9FCB1D 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

hdmi_conn_detect and mtk_hdmi_audio_hook_plugged_cb would be called
by different threads.

Imaging the following calling sequence:
           Thread A                            Thread B
--------------------------------------------------------------------
mtk_hdmi_audio_hook_plugged_cb()
mtk_cec_hpd_high() -> disconnected
                                     hdmi_conn_detect()
                                     mtk_cec_hpd_high() -> connected
                                     plugged_cb(connected)
plugged_cb(disconnected)

The latest disconnected is false reported.  Makes mtk_cec_hpd_high
and plugged_cb atomic to fix.

plugged_cb and codec_dev are also in danger of race condition.  Instead
of using mutex to protect them:
- Checks NULLs first.
- Uses WRITE_ONCE() to prevent store tearing (i.e. write to plugged_cb
  after codec_dev).
- Uses codec_dev as a signal to report HDMI jack status.

Fixes: 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting")

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
Previous discussion: https://patchwork.kernel.org/patch/11367625/
Previous attempt: https://patchwork.kernel.org/patch/11378413/

 drivers/gpu/drm/mediatek/mtk_hdmi.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 03aeb73005ef..b1e5d0c538fa 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -12,6 +12,7 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
+#include <linux/mutex.h>
 #include <linux/of_platform.h>
 #include <linux/of.h>
 #include <linux/of_gpio.h>
@@ -171,6 +172,7 @@ struct mtk_hdmi {
 	bool enabled;
 	hdmi_codec_plugged_cb plugged_cb;
 	struct device *codec_dev;
+	struct mutex update_plugged_status_lock;
 };
 
 static inline struct mtk_hdmi *hdmi_ctx_from_bridge(struct drm_bridge *b)
@@ -1199,10 +1201,13 @@ static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
 static enum drm_connector_status
 mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi)
 {
-	bool connected = mtk_cec_hpd_high(hdmi->cec_dev);
+	bool connected;
 
-	if (hdmi->plugged_cb && hdmi->codec_dev)
+	mutex_lock(&hdmi->update_plugged_status_lock);
+	connected = mtk_cec_hpd_high(hdmi->cec_dev);
+	if (hdmi->codec_dev)
 		hdmi->plugged_cb(hdmi->codec_dev, connected);
+	mutex_unlock(&hdmi->update_plugged_status_lock);
 
 	return connected ?
 	       connector_status_connected : connector_status_disconnected;
@@ -1669,8 +1674,12 @@ static int mtk_hdmi_audio_hook_plugged_cb(struct device *dev, void *data,
 {
 	struct mtk_hdmi *hdmi = data;
 
-	hdmi->plugged_cb = fn;
-	hdmi->codec_dev = codec_dev;
+	if (!fn || !codec_dev)
+		return -EINVAL;
+
+	/* Use WRITE_ONCE() to prevent store tearing. */
+	WRITE_ONCE(hdmi->plugged_cb, fn);
+	WRITE_ONCE(hdmi->codec_dev, codec_dev);
 	mtk_hdmi_update_plugged_status(hdmi);
 
 	return 0;
@@ -1729,6 +1738,7 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	mutex_init(&hdmi->update_plugged_status_lock);
 	platform_set_drvdata(pdev, hdmi);
 
 	ret = mtk_hdmi_output_init(hdmi);
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
