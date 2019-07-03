Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D55E5EF69
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 01:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeSBo+80qaslU9VlO5aUK24V0gPS7L/U9OnkecNScqU=; b=qEHR2GFxUNJ2Fx
	mMnc8+MmoZLYr3vMAHmdAEnZsQzfBxV+NWX6vb4BCZFDESVey3oxgcwt3LO2iZpqE79OKVG+f1QcK
	UqlLz9KrzCdYBhTBfGF0fBsfecjGVaxIPZy1lPtU17TzOkNvas8+A2g/R9IYFSXJ6hMkJLpWluSuk
	47BjJDzn3GaGk8mYG1mBAfYuHQGbxUAWOjXJOS7/9yycQw/cl3QxKH7V1E2yKLzpSkU+JxYMD1v8g
	o4C5df+vYO957mAQDJK7WHMGUaL1ZAOjrcbeIvdnOIAEMbIdyIURUReGpcRzm8552UrkPgeUr8SZi
	NeSdDfBGTLmdWyl7lKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioHF-0007Oq-LE; Wed, 03 Jul 2019 23:03:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hioGW-00070u-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 23:02:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so788147pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 16:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aN1fc/2k+rfSW/EC4oQs93BniUXT0kzrcpLPTc60YrA=;
 b=AvAPogXeMhAMyX6Qn73Z4Mb7gUtQ6GdM3hW2lA0fqx3qKFbiNPs0oqDDEcOvWLEgX4
 aStyjhVWEcNNkVbiS4n/Ij8W4hS+WWcIhDQKoq/CfAIywTOhiYopNzj8Mcfy6hwnvEd0
 tbxJjj4OUCR1uSSEZ8ews+4V3aSvZvUuGIHOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aN1fc/2k+rfSW/EC4oQs93BniUXT0kzrcpLPTc60YrA=;
 b=Bjk9G3B0ccUs+7ghk4jjoL1Ml8srg+Fu1gK5waXpNI3/VSQwzrSAhiqDL3XmiLy4KC
 ZIdBFe7H2xTxtWW9hbUO8DwkJV4LbIYnfHiTZ9RraronZveEkSugIpPdlEXy4rJqHFS1
 q2GxbYkCsQYZAcSSp6g7PfGSRZKy9SJuQ3SFWq9Uw6z0n59mWuojVEukfjeiBkS3NrFd
 C48knUkgYn30Sf6iiEtPGZBFNhDR/irZ4b9bzzZw8h3VqrKw+mksZSXNpOlxpWKgVuJk
 6LmqCiR2w+3lagkgGvfKKvMbuw0Pqjxn5cNS3BNY/CI3RSF2K2pqJZ5Q28/bJ8KlVReJ
 CfxQ==
X-Gm-Message-State: APjAAAWx6K8h9xyVrMXpzaeXfWhlDKGAYWapjiz0W+zVYOhIhALmzO/u
 Eozvl8Q+moxJx+arFdPUaV3U7A==
X-Google-Smtp-Source: APXvYqwGEvAR6zi5SrOPI4u7LIZvp0MZxpg+7T/OEbRruM5ijz441RyoI54cDcWadbGHrUXH5auLEw==
X-Received: by 2002:a63:34c3:: with SMTP id
 b186mr39455164pga.294.1562194936143; 
 Wed, 03 Jul 2019 16:02:16 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t8sm4245171pfq.31.2019.07.03.16.02.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 16:02:15 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] drm/panel: Add helper for reading DT rotation
Date: Wed,  3 Jul 2019 16:02:07 -0700
Message-Id: <20190703230210.85342-2-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190703230210.85342-1-dbasehore@chromium.org>
References: <20190703230210.85342-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_160216_797402_C41AA512 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Derek Basehore <dbasehore@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, David Airlie <airlied@linux.ie>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a helper function for reading the rotation (panel
orientation) from the device tree.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 43 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     |  7 ++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index dbd5b873e8f2..169bab54d52d 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -172,6 +172,49 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
 	return ERR_PTR(-EPROBE_DEFER);
 }
 EXPORT_SYMBOL(of_drm_find_panel);
+
+/**
+ * of_drm_get_panel_orientation - look up the orientation of the panel through
+ * the "rotation" binding from a device tree node
+ * @np: device tree node of the panel
+ * @orientation: orientation enum to be filled in
+ *
+ * Looks up the rotation of a panel in the device tree. The orientation of the
+ * panel is expressed as a property name "rotation" in the device tree. The
+ * rotation in the device tree is counter clockwise.
+ *
+ * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
+ * rotation property doesn't exist. -EERROR otherwise.
+ */
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 enum drm_panel_orientation *orientation)
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
index 8c738c0e6e9f..3564952f1a4f 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -197,11 +197,18 @@ int drm_panel_detach(struct drm_panel *panel);
 
 #if defined(CONFIG_OF) && defined(CONFIG_DRM_PANEL)
 struct drm_panel *of_drm_find_panel(const struct device_node *np);
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 enum drm_panel_orientation *orientation);
 #else
 static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
 {
 	return ERR_PTR(-ENODEV);
 }
+int of_drm_get_panel_orientation(const struct device_node *np,
+				 enum drm_panel_orientation *orientation)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
