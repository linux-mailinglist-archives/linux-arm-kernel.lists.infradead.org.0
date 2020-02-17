Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D7F16088D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+z7Q5gyenm2f3LEZ2tdl63XTmQBccNdHJue6H7ClkT0=; b=rgUDGITCNiH+E2
	G3FbKiOcvgDdJQOygROcBl2jKoZYVV3mvh9PVupb1k6uv7ZI6UNfQFY13C/Rg6kto4MeIUrT20GRE
	wDPQWjOkX821CyEWdKm50bgoLFuaWYwzJIZMxd0P880it07yszO8U3WE8ZJ9e3DU4zZ/SWOrLzqYe
	vUzmS1oIfrxmLy5rxudbeORJ7SAohyTubsvDMjIjpLS40NH69HP4BCWD/xwLF7xWdxW806yuKL/1M
	hDcvu5nS+7+1TGyXzDu7KcFPN2Bbx6nG+1TnbsLjq8kY1ztfgWte9S6A0/U+khpdm1fEQYTe5iDia
	1xSeywODX3Wybgd1XxWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Wun-0003EL-A6; Mon, 17 Feb 2020 03:17:45 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3WuH-0002nM-3C
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:17:14 +0000
Received: by mail-pl1-x649.google.com with SMTP id t17so7481611plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 19:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=E5BCGldRe7eFAGLQVFmcBimFYUghF+IzwiWzbxZYe7o=;
 b=NS+hvD7VZRtKE2R/Xq1U75r1q6HgBSXd3k2OLQjZfHV8YaUAHr1smXbLENNirFdHsj
 PtSomq4XOq1mVdmGlECgRU5iTiJHjiRBYDjMPhCsUSgwRhxV1WnmYjht+97oXpYXp5a3
 kZHl4MHCDRntHydqUWIj6KHo0KmUBhC5b1yTRVfM5/0q/UXBC//Xx9Gtpc6ekyaG1Hk0
 eZpoybGZzoHdV2kgPX9L3vVhZ3WvtqnE0cvx+IktBq2MYvS0Yx6UgWqflya9nUMrr63U
 98DLX1iN+RwZH0ZxFfNuSUFkcM55pIzjwkxZsvbbBH25fTgYKgHTKKIUHPcW9YIXIKlb
 /MUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=E5BCGldRe7eFAGLQVFmcBimFYUghF+IzwiWzbxZYe7o=;
 b=BhKyVE1lbD7tUG8afyyMTRXC56C4LSTTe9OO81WGtmt42GnKuctsP1Muv3SRMFuAoR
 7S9usLW19i+mdoulivA7nOfnjGAWfDVk6YHiOmyDRqJK76CejRSywZrOVUSzg6ZPlUYx
 vapvowOXYuaY1H1hv5fxg8peTsQFWpq8sXuU5CoOoTwu3MQU17FkDu3IxDQ/l0r1P/45
 /BGb6pQAQYFR4r7n9UMe+LuAKLPBbiKekfEEsZJcmq6XII1LJO9u/h9UAEmcpUe5j45R
 LRnHgdon/DCQAQ5MK4pGiADzlg0IMZDy3v2U1bBZA7Hzvx9Tud+ZEFYSdbwwnJWvcO8g
 RxgQ==
X-Gm-Message-State: APjAAAV2e6LmD9MZHRGJEQJTyaHDisQGQLzeJErANYVNS6KtuD+velgk
 jVdD2lcsp3YD9TMdcjVLz3mMZ1AlC6Ow
X-Google-Smtp-Source: APXvYqwFBo1TW5OKjVbnTeWNYS7iTLxNwp5AqpuvTgk8sGrNAAP3BgmmBO1Yc/QvcgfKirYdziuDCiuk48HH
X-Received: by 2002:a63:de54:: with SMTP id y20mr15796824pgi.79.1581909431033; 
 Sun, 16 Feb 2020 19:17:11 -0800 (PST)
Date: Mon, 17 Feb 2020 11:16:53 +0800
In-Reply-To: <20200217031653.52345-1-tzungbi@google.com>
Message-Id: <20200217105513.2.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
Mime-Version: 1.0
References: <20200217031653.52345-1-tzungbi@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2 2/2] drm/mediatek: fix race condition for HDMI jack status
 reporting
From: Tzung-Bi Shih <tzungbi@google.com>
To: broonie@kernel.org, airlied@linux.ie, daniel@ffwll.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_191713_163833_D0CBF4F9 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Also uses the same lock to protect read/write of plugged_cb and codec_dev.

Fixes: 5d3c64477392 ("drm/mediatek: support HDMI jack status reporting")
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 03aeb73005ef..d80017e3d84a 100644
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
 
+	mutex_lock(&hdmi->update_plugged_status_lock);
+	connected = mtk_cec_hpd_high(hdmi->cec_dev);
 	if (hdmi->plugged_cb && hdmi->codec_dev)
 		hdmi->plugged_cb(hdmi->codec_dev, connected);
+	mutex_unlock(&hdmi->update_plugged_status_lock);
 
 	return connected ?
 	       connector_status_connected : connector_status_disconnected;
@@ -1669,8 +1674,11 @@ static int mtk_hdmi_audio_hook_plugged_cb(struct device *dev, void *data,
 {
 	struct mtk_hdmi *hdmi = data;
 
+	mutex_lock(&hdmi->update_plugged_status_lock);
 	hdmi->plugged_cb = fn;
 	hdmi->codec_dev = codec_dev;
+	mutex_unlock(&hdmi->update_plugged_status_lock);
+
 	mtk_hdmi_update_plugged_status(hdmi);
 
 	return 0;
@@ -1729,6 +1737,7 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	mutex_init(&hdmi->update_plugged_status_lock);
 	platform_set_drvdata(pdev, hdmi);
 
 	ret = mtk_hdmi_output_init(hdmi);
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
