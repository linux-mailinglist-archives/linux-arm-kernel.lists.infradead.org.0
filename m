Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF143C06C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ac4Zq4pCTbtSWS8b3Oi2ngcXO7+7gfwtK50R0pjweY4=; b=VtTwU86VaCHSB/
	io+O0NIFIbQ/AzPxyPJXRotY3RILBmitxOY4zU20jB5+pDEO2hSVk+qPcnqXq1OeslGXUzu8vHycS
	uXeeX8hTGd1pspMIHshTKY7oewmzigfKJAcUDkH7oFvg+gNhZlZnwkog3BqHjempzqnu/jrpZY9AL
	mtx8FaQuw/X3BvKuC7dDXGMEL/Wr7wCXkKp2p+tR3stNGCphtXlGv8ymVEdTBh7evYnSwjMTViZ1F
	lzPSZ9TjVmjqTm7NOXKUEZ16xC0IFxKQ9Nb7XcPRNY0BE18LumFkvgqpjtp1YUIh+xbApEKcxP6H7
	arnCa1Z6J50CvL60q1yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUaH-0005EO-1H; Tue, 11 Jun 2019 00:24:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUZB-0004N3-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:23:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so6219948pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7l9eJCs2PeowUasvujNxJ+tq7unRBQcTxAKWiz4JMIE=;
 b=evokIjR4FgyjQ4UFLo9iswsV8vW4ne5f+ymL6lDggG9PK5MCubFk6GC/cJ93jctYsM
 VaPiJo+Rs9owKBfAdgdm9x/Qx065hL6/VManLQv5fJsFUhQWa5CSgM5J7VV5u4PffOoj
 05Sca9TKhk3F9uLQLzI9BpVrtyH3VMUHP7vWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7l9eJCs2PeowUasvujNxJ+tq7unRBQcTxAKWiz4JMIE=;
 b=qCEi9v7lLiPR72KG+Cq7FhwVPeA7gaPM8CXWy95OAUiRcR6AL127gBDGcf+rORkw5F
 KMMNXGpjykvYg+PwUmSKBkvWOlWaMVm2nRRdoCj2vNyNmucUkCexEFM3lvJTc1RhwTxi
 BVzUuxuf22SBETUCLzltCnlilRVjh4eRW5uZz18nZSxJPeSpBMI2oBogZELQqW7GDmMo
 c9oq0NktQMQcP7cW/sUUipxZgQ/R+0gXmS1gYnSQA97P+lIVRO1WTYPypfU+DSIevJS7
 jJcoxWxFQBEwkz6nDAqMZ2McFcwhtAjqdP1kVVFcz5YHXQPclfS48QaTUkHSD8CSUyH1
 /Ceg==
X-Gm-Message-State: APjAAAWTPx9cSpAaAnL14mvM9/Iiv1jAJTK9zwgOLj1fm/2qZGfqh/0q
 YZZ5oq1XdvfmAwZnTjgap6G92w==
X-Google-Smtp-Source: APXvYqxXrwREiReNGSD5SzpOTe3czQMpgGRjtIlULxAPe0ldReXT1NS+YN+qsMaBOSYIsfxHYJn70A==
X-Received: by 2002:a62:2f87:: with SMTP id v129mr78643128pfv.9.1560212588496; 
 Mon, 10 Jun 2019 17:23:08 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id t4sm540317pjq.19.2019.06.10.17.23.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 17:23:07 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Date: Mon, 10 Jun 2019 17:22:54 -0700
Message-Id: <20190611002256.186969-4-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611002256.186969-1-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_172309_224108_C953F9F2 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: Derek Basehore <dbasehore@chromium.org>, p.zabel@pengutronix.de,
 maxime.ripard@bootlin.com, sam@ravnborg.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 rodrigo.vivi@intel.com, ck.hu@mediatek.com, linux-mediatek@lists.infradead.org,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the attach/detach callbacks. These are for setting up
internal state for the connector/panel pair that can't be done at
probe (since the connector doesn't exist) and which don't need to be
repeatedly done for every get/modes, prepare, or enable callback.
Values such as the panel orientation, and display size can be filled
in for the connector.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
 include/drm/drm_panel.h     |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 3b689ce4a51a..72f67678d9d5 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
  */
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
 {
+	int ret;
+
 	if (panel->connector)
 		return -EBUSY;
 
 	panel->connector = connector;
 	panel->drm = connector->dev;
 
+	if (panel->funcs->attach) {
+		ret = panel->funcs->attach(panel);
+		if (ret < 0) {
+			panel->connector = NULL;
+			panel->drm = NULL;
+			return ret;
+		}
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(drm_panel_attach);
@@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
  */
 int drm_panel_detach(struct drm_panel *panel)
 {
+	if (panel->funcs->detach)
+		panel->funcs->detach(panel);
+
 	panel->connector = NULL;
 	panel->drm = NULL;
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 13631b2efbaa..e136e3a3c996 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -37,6 +37,8 @@ struct display_timing;
  * struct drm_panel_funcs - perform operations on a given panel
  * @disable: disable panel (turn off back light, etc.)
  * @unprepare: turn off panel
+ * @detach: detach panel->connector (clear internal state, etc.)
+ * @attach: attach panel->connector (update internal state, etc.)
  * @prepare: turn on panel and perform set up
  * @enable: enable panel (turn on back light, etc.)
  * @get_modes: add modes to the connector that the panel is attached to and
@@ -70,6 +72,8 @@ struct display_timing;
 struct drm_panel_funcs {
 	int (*disable)(struct drm_panel *panel);
 	int (*unprepare)(struct drm_panel *panel);
+	void (*detach)(struct drm_panel *panel);
+	int (*attach)(struct drm_panel *panel);
 	int (*prepare)(struct drm_panel *panel);
 	int (*enable)(struct drm_panel *panel);
 	int (*get_modes)(struct drm_panel *panel);
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
