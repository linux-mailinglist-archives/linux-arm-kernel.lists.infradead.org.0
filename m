Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9332F4F370
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 05:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAuKSfvPxWCxeNIy0qGfaeYoujRndm2MPFxs1lxsoXM=; b=aIXfWDLWzlh8Ak
	dAddlwBzr4xDcZ7DvZG0iWnoLvDtPhxTgURWi2HMzm5AlxDL4RyoeuNZwnyhgwKI3FDmTO9/YdtS4
	rLbnNHyBFyrWuMiDgH8tf7lXyUsH2Ay3kJO4mnMGHkkrJW6P4siUPAHE/55EllzM7jwZaYbEHzAtU
	O3wpBUp4HlNTwC365GOrPMr69cNq8qBcYKsYkXLjk+gZC66V1nE6VpS8TcV/HXkbX1zb7C3QnFxeP
	IYcFPjetmUuz4kcyUSNaZpSlU2iKR4iWXNaHfoDsh4bNZsjCGvDl83VQXoMpnj/1cLJNpOugKjkcW
	pePH7avzxXJ1sPVu7Jqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heWv4-0002eQ-Ld; Sat, 22 Jun 2019 03:42:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heWtv-0001lK-1p
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 03:41:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so4523564pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 20:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fFX9zU9cvHHYWyBJrumOSQOw8f8w9KPwvR2c+phKtRQ=;
 b=nGznlI0F66L8RL06I6cenPynTwrwFqOG2ddbEAXYoV9pMLE/pKzGj4kkCDvFyLCxFZ
 hlYhUadnJqRHVyTTIWYjzsxmoYVDQamNaw4IpvOA+lTOnxlDisXodVaAVfNNvGzcoz8C
 u0XZFnPhkSXHGvNgx60MUMWaQjFqC2lutIHEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fFX9zU9cvHHYWyBJrumOSQOw8f8w9KPwvR2c+phKtRQ=;
 b=fbOFc4b16szMbf+N0LKkVPCzevmo91tPPrR/UxyoCnJ1FpgHwyobxUk2KjLApV0YTM
 yBS89uQnf5cD2Fgz52G0GZqw7sbnIIFE9Ozp1pKVQ4uqmBjVoYwalAGwSoHMdKaEA6FI
 mmDnAIrkvO+UP9LpxwejlMiMmb6NWeoTtlBc94gBmJLCbohjK+sbBX2OsHU4n+jbfiHH
 sYZdGJvyZV+wbB/J0aNhi87VmyabVvohZuUc2Nf5iK7qdK27gG3r2LUg5W28J11Hzefk
 zncnchDUhmJb3Pzer/wZ4/O6cYhxjjLYKpmeloy4yULuoO4TOO5yvb8ctuA7yJFJUnHg
 tAHQ==
X-Gm-Message-State: APjAAAU1OZtTC1WVJiad11PYpbnLOvb32ae8Ec3O+qxpYWNwzGKooGvQ
 xVtzobEONV7qRB713BgQiCa53A==
X-Google-Smtp-Source: APXvYqwSDNQzNs53Gsghnfp1ASH53KKgDd72JJ5prFnEOErODUIjlPIU2WbLczECLr/v+Jj8FXjE0g==
X-Received: by 2002:a65:620a:: with SMTP id d10mr21751149pgv.42.1561174873308; 
 Fri, 21 Jun 2019 20:41:13 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id u128sm4756688pfu.26.2019.06.21.20.41.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 20:41:12 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] drm/panel: set display info in panel attach
Date: Fri, 21 Jun 2019 20:41:03 -0700
Message-Id: <20190622034105.188454-3-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190622034105.188454-1-dbasehore@chromium.org>
References: <20190622034105.188454-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_204115_692954_A790F4B6 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Devicetree systems can set panel orientation via a panel binding, but
there's no way, as is, to propagate this setting to the connector,
where the property need to be added.
To address this, this patch sets orientation, as well as other fixed
values for the panel, in the drm_panel_attach function. These values
are stored from probe in the drm_panel struct.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/drm_panel.c | 28 ++++++++++++++++++++++++++++
 include/drm/drm_panel.h     | 14 ++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 507099af4b57..5690fca30236 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -104,11 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
  */
 int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
 {
+	struct drm_display_info *info;
+
 	if (panel->connector)
 		return -EBUSY;
 
 	panel->connector = connector;
 	panel->drm = connector->dev;
+	info = &connector->display_info;
+	info->width_mm = panel->width_mm;
+	info->height_mm = panel->height_mm;
+	info->bpc = panel->bpc;
+	info->panel_orientation = panel->orientation;
+	info->bus_flags = panel->bus_flags;
+	if (panel->bus_formats)
+		drm_display_info_set_bus_formats(&connector->display_info,
+						 panel->bus_formats,
+						 panel->num_bus_formats);
 
 	return 0;
 }
@@ -128,6 +140,22 @@ EXPORT_SYMBOL(drm_panel_attach);
  */
 int drm_panel_detach(struct drm_panel *panel)
 {
+	struct drm_display_info *info;
+
+	if (!panel->connector)
+		goto out;
+
+	info = &panel->connector->display_info;
+	info->width_mm = 0;
+	info->height_mm = 0;
+	info->bpc = 0;
+	info->panel_orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
+	info->bus_flags = 0;
+	kfree(info->bus_formats);
+	info->bus_formats = NULL;
+	info->num_bus_formats = 0;
+
+out:
 	panel->connector = NULL;
 	panel->drm = NULL;
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 3564952f1a4f..760ca5865962 100644
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
@@ -93,6 +95,18 @@ struct drm_panel {
 
 	const struct drm_panel_funcs *funcs;
 
+	/*
+	 * panel information to be set in the connector when the panel is
+	 * attached.
+	 */
+	unsigned int width_mm;
+	unsigned int height_mm;
+	unsigned int bpc;
+	int orientation;
+	const u32 *bus_formats;
+	unsigned int num_bus_formats;
+	u32 bus_flags;
+
 	struct list_head list;
 };
 
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
