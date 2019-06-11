Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8FC3C1EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkq7dbOUF4ugKvZhjmX7Yt/j+SI9h20AGxutB3Hkdhc=; b=g/8qt5tg/wQKr+
	BeGVQdC6zBXfCAVC4GnIc8gdWT5u9LzVZCXOETOjAGCjvBI/ZrGMTJbUtOYCKDbctCSS4MiIqg7SA
	YiGW7W/C1BnUNZZrDrTjPzr99Za/Q/qvVP0+spSmpL2VPdAjJws+ie4xYQZQVWI9DGctxjn5qDHu4
	NvuBgrlvWSKwJmY7eaLOHJ+i8EU50hY+LCemo82ekrPZcxV5ReFwyVbRTQz3VjE+A6DEuquFc/h46
	d/C8k9hhE3prjdIV5daaD3j7eUOajnITvGkR6/AczVtuv8fysWaiQ4C4pZrNTg2pTeKfDfpz9dKHp
	MdzslgKUcFc1scl52Emw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY1P-0005zT-N8; Tue, 11 Jun 2019 04:04:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0q-0005gT-Vs
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 04:03:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so6152740pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dK5nepKO/Lu9qcWjch0d2Z8IhG0b83DDW/+1Tc5GcLg=;
 b=KXrCMiQg7a3OfPUXlEJ0jxFjUzyZmNjg7jLQ3vlyHvu+/ZoYFywdDn0CYhVxJ6210H
 Be7ENhzB8haIWSJaAFOqD/im/zV70ZC09Z+ulYwJ0v3pb2/30T9ccgBbFuxxbqyb4Sb3
 F8SC9XyvrE2wKX+6pwO4Kc/M8q4p4YESBKAMI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dK5nepKO/Lu9qcWjch0d2Z8IhG0b83DDW/+1Tc5GcLg=;
 b=iSOk2FvukenZIhqhGfIrnX/VSDBamlbyyWGKHtpIQC1setKc5+uuI+uetuhXwyqA4N
 x5TJn08HTFjWjq08ORg2Kr/9XvgQbDW3vizln4OfhQvIhjWjfvdcZjDqhnkTyeDmYqgU
 zvi3c/RrxnIRYxibj8UgxUyml75Q/aryZaQWD7OHWPTboeY+I6wCqAx7kPBsAyJQl19B
 fRTQ70ZLsB1vOdwneb8kxdL95GqvOzLAxAhiaYwan3/FaJ/kJomGnfEJH+vRoEUxjvsI
 hTQEPQTum2N3fCmLsTA5iOO4c+jst86qer86wdOGRwloo5RrkPTJR/vX+rqrl4h8JMmb
 8noQ==
X-Gm-Message-State: APjAAAUbfnZZ3Y+CyMQe0xAoYc/bnDBmyXwD2vTzpl+zwmvyOra9ri4Y
 RPbgxIoF38557mSDhX39DEhVhA==
X-Google-Smtp-Source: APXvYqwobTrT91p21YyGnsEse1+RxzZxvnHAKh/XjPiTdvWC3iFSRE8s82N6n3Ie7F+FBFdVUvCVAQ==
X-Received: by 2002:a62:ce07:: with SMTP id y7mr49658309pfg.12.1560225836465; 
 Mon, 10 Jun 2019 21:03:56 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:55 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] drm/panel: Add helper for reading DT rotation
Date: Mon, 10 Jun 2019 21:03:46 -0700
Message-Id: <20190611040350.90064-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210357_025769_585DDF48 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a helper function for reading the rotation (panel
orientation) from the device tree.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     |  7 +++++++
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index dbd5b873e8f2..3b689ce4a51a 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -172,6 +172,47 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
 	return ERR_PTR(-EPROBE_DEFER);
 }
 EXPORT_SYMBOL(of_drm_find_panel);
+
+/**
+ * of_drm_get_panel_orientation - look up the rotation of the panel using a
+ * device tree node
+ * @np: device tree node of the panel
+ * @orientation: orientation enum to be filled in
+ *
+ * Looks up the rotation of a panel in the device tree. The rotation in the
+ * device tree is counter clockwise.
+ *
+ * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
+ * rotation property doesn't exist. -EERROR otherwise.
+ */
+int of_drm_get_panel_orientation(const struct device_node *np, int *orientation)
+{
+	int rotation, ret;
+
+	ret = of_property_read_u32(np, "rotation", &rotation);
+	if (ret == -EINVAL) {
+		/* Don't return an error if there's no rotation property. */
+		*orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+		return 0;
+	}
+
+	if (ret < 0)
+		return ret;
+
+	if (rotation == 0)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;
+	else if (rotation == 90)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
+	else if (rotation == 180)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
+	else if (rotation == 270)
+		*orientation = DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
+	else
+		return -EINVAL;
+
+	return 0;
+}
+EXPORT_SYMBOL(of_drm_get_panel_orientation);
 #endif
 
 MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 8c738c0e6e9f..13631b2efbaa 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -197,11 +197,18 @@ int drm_panel_detach(struct drm_panel *panel);
 
 #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
 struct drm_panel *of_drm_find_panel(const struct device_node *np);
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 int *orientation);
 #else
 static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
 {
 	return ERR_PTR(-ENODEV);
 }
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 int *orientation)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
