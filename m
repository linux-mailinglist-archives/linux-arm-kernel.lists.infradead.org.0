Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00559115CD1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGBJrTaoK3vSBJuJ2IMfzTOfX0a1VbLkqxAspIDfODQ=; b=KVPx4V8aj9wmva
	W0DroIZhCuMXpr8wnzfvOQOHkWqnHxpQo5Ymsd9SV2PCGRulbLIhF170TCZhcI04+tCj1NYTzR2N2
	hryM4xU/CU0V1RfGDyfdL9eg1yK8ZScOBPy6uoBHDeGZ2gDKt0j83+stSeQ1IYeauzQMx4YEiFq1M
	VxY8ZRAVCn4ogocdn/hpeBYk96peIRqcnpEeaMeCjZWOnoQoJ3yumdlF+R0qd2jGjk6T1GsGIiafh
	MZeKDpw4d5+pQDozwDgiVAUMvbE2c0vxs2KrAuW61Jb44J9wcSmTZ3je9+VQCVzjhs9HBJNOW0Eny
	wcUGiFedvHaTiFltrOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idai8-0006FS-3n; Sat, 07 Dec 2019 14:05:28 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idagu-0005VD-VR; Sat, 07 Dec 2019 14:04:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id j6so10736658lja.2;
 Sat, 07 Dec 2019 06:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zyDIaHIEoOsgYEFRA3EghxouF1YrEXIv4HHsD97xPLY=;
 b=C9PRof0NX84HlyZnuMy1HkuR+urn77PykHwGwtYCsEyr6rTcJeRmCjQ5g2ixx/0RM9
 Se7vv0thWblq7zsasyBMcwA7XfTlbG738iwERThU8FvhOx6oedkZDjZTlZAQRFqRgodC
 6iYN4EYy2+8GUYYyjlAWKyn4JK8/JgHU9I/lvHsUxZAa4drMFxfQpzeRy8jMSqkpycA7
 XDrdyMwSWvwdrwp2ooadc+5+MYpufwz4goxK5Rf/Ti4jh/QjjEL63pOxHU6BQBCiZf0v
 95QHvqdd5J8P3iGhpXL6lDsvlVS/c5lE7Evs7ZJrLk8YB7No3rhmfYkrZrskHhjOqLPR
 xT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=zyDIaHIEoOsgYEFRA3EghxouF1YrEXIv4HHsD97xPLY=;
 b=pmtpUb+FiIy2N9/+7kVLr+r6a6FgK5rzgyghbxEKGjhStJXHiiKk9TWhfkEEJ2zVWk
 u0dRv9WGATLYcERbEb1/+PfFUhrodLd3CnxvTjP7oNql+0mRzuf+STQQmC4bwhyRttrs
 LNTFrM5mihWvfiy6IBD3gRlXUc3g6cvqJXpQuOJWavH+wGF9AcQAoeGh7Rkxc47JjOVr
 wdSkaAlilV/2lTLcZKTzI5ll3mAKR0gFMrJLs+dM+7ynMdXpVm+CkNoMmebJObQO2XU9
 nmgpHfc93foDrqJo5PAEZSXF+qVFbzlWFxL4u7YvAWRETFjuGHOoTwWdUp/YchrUhUqc
 9NqQ==
X-Gm-Message-State: APjAAAWj4IBNH6bkOyCTMc94WbyJyC/WeRJ7x9X4hqQcLhGsQa0C1s3z
 pdpsKnxwSESlqwudZoSkuQ0=
X-Google-Smtp-Source: APXvYqzpRBwpO/dF5C8JBYFQuw6pI7aoTL/fA2BOACkUfXUITFiwu46JMYMO1GTATj6PIk+cZ8htEw==
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr4086043ljk.220.1575727450296; 
 Sat, 07 Dec 2019 06:04:10 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:09 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 01/25] drm/drm_panel: no error when no callback
Date: Sat,  7 Dec 2019 15:03:29 +0100
Message-Id: <20191207140353.23967-2-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060413_009483_48FED702 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Stefan Agner <stefan@agner.ch>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The callbacks in drm_panel_funcs are optional, so do not
return an error just because no callback is assigned.

v2:
- Document what functions in drm_panel_funcs are optional (Laurent)
- Return -EOPNOTSUPP if get_modes() is not assigned (Laurent)
  (Sam: -EOPNOTSUPP seems to best error code in this situation)

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_panel.c | 35 +++++++++++++++++++++++++----------
 include/drm/drm_panel.h     | 18 ++++++++++++++++--
 2 files changed, 41 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index ed7985c0535a..4ab7229fb22b 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -151,10 +151,13 @@ EXPORT_SYMBOL(drm_panel_detach);
  */
 int drm_panel_prepare(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->prepare)
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->funcs && panel->funcs->prepare)
 		return panel->funcs->prepare(panel);
 
-	return panel ? -ENOSYS : -EINVAL;
+	return 0;
 }
 EXPORT_SYMBOL(drm_panel_prepare);
 
@@ -171,10 +174,13 @@ EXPORT_SYMBOL(drm_panel_prepare);
  */
 int drm_panel_unprepare(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->unprepare)
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->funcs && panel->funcs->unprepare)
 		return panel->funcs->unprepare(panel);
 
-	return panel ? -ENOSYS : -EINVAL;
+	return 0;
 }
 EXPORT_SYMBOL(drm_panel_unprepare);
 
@@ -190,10 +196,13 @@ EXPORT_SYMBOL(drm_panel_unprepare);
  */
 int drm_panel_enable(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->enable)
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->funcs && panel->funcs->enable)
 		return panel->funcs->enable(panel);
 
-	return panel ? -ENOSYS : -EINVAL;
+	return 0;
 }
 EXPORT_SYMBOL(drm_panel_enable);
 
@@ -209,10 +218,13 @@ EXPORT_SYMBOL(drm_panel_enable);
  */
 int drm_panel_disable(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->disable)
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->funcs && panel->funcs->disable)
 		return panel->funcs->disable(panel);
 
-	return panel ? -ENOSYS : -EINVAL;
+	return 0;
 }
 EXPORT_SYMBOL(drm_panel_disable);
 
@@ -228,10 +240,13 @@ EXPORT_SYMBOL(drm_panel_disable);
  */
 int drm_panel_get_modes(struct drm_panel *panel)
 {
-	if (panel && panel->funcs && panel->funcs->get_modes)
+	if (!panel)
+		return -EINVAL;
+
+	if (panel->funcs && panel->funcs->get_modes)
 		return panel->funcs->get_modes(panel);
 
-	return panel ? -ENOSYS : -EINVAL;
+	return -EOPNOTSUPP;
 }
 EXPORT_SYMBOL(drm_panel_get_modes);
 
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index ce8da64022b4..d71655b2634c 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -65,6 +65,8 @@ struct drm_panel_funcs {
 	 * @prepare:
 	 *
 	 * Turn on panel and perform set up.
+	 *
+	 * This function is optional.
 	 */
 	int (*prepare)(struct drm_panel *panel);
 
@@ -72,6 +74,8 @@ struct drm_panel_funcs {
 	 * @enable:
 	 *
 	 * Enable panel (turn on back light, etc.).
+	 *
+	 * This function is optional.
 	 */
 	int (*enable)(struct drm_panel *panel);
 
@@ -79,6 +83,8 @@ struct drm_panel_funcs {
 	 * @disable:
 	 *
 	 * Disable panel (turn off back light, etc.).
+	 *
+	 * This function is optional.
 	 */
 	int (*disable)(struct drm_panel *panel);
 
@@ -86,14 +92,20 @@ struct drm_panel_funcs {
 	 * @unprepare:
 	 *
 	 * Turn off panel.
+	 *
+	 * This function is optional.
 	 */
 	int (*unprepare)(struct drm_panel *panel);
 
 	/**
 	 * @get_modes:
 	 *
-	 * Add modes to the connector that the panel is attached to and
-	 * return the number of modes added.
+	 * Add modes to the connector that the panel is attached to.
+	 *
+	 * This function is mandatory.
+	 *
+	 * Returns the number of modes added, -EOPNOTSUPP if callback
+	 * is missing, -EINVAL if panel is NULL.
 	 */
 	int (*get_modes)(struct drm_panel *panel);
 
@@ -102,6 +114,8 @@ struct drm_panel_funcs {
 	 *
 	 * Copy display timings into the provided array and return
 	 * the number of display timings available.
+	 *
+	 * This function is optional.
 	 */
 	int (*get_timings)(struct drm_panel *panel, unsigned int num_timings,
 			   struct display_timing *timings);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
