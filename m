Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867E33C1F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ac4Zq4pCTbtSWS8b3Oi2ngcXO7+7gfwtK50R0pjweY4=; b=bsqhoSz5qxmC5s
	QB/ZEhmQPlGOFuaq8d943YT+KXBfeJTiUvhv9shGEDs/hnt+TqV3wb0/bU1lUJ6H/GnNwTXTvn8JD
	Nw1pYIoNaamWc2v+luPIYCxlDpmo4QlYKfx4EwlTeEC/aiHuQh7v1V/EHGp9kV/s3eZaQPtJ0JpNT
	lGQfgNw7Mh7oCgzEWc9eWIHyUgAAelg2kQQbf0dVoR3bh2W0wDLkd2gV9qNC2is3R+UT0xWUk2okK
	wrSBwi5squOhT5bKio/SSEd7L2cy9n2Eft9/OjiyqLOBY/2qAPDPV/7Cfon93gTxmjLTZOxe1qrPR
	692xFsO2YTUVjHrLNjhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haY2F-0006Y5-K7; Tue, 11 Jun 2019 04:05:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haY0t-0005iE-On
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 04:04:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so6165714pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7l9eJCs2PeowUasvujNxJ+tq7unRBQcTxAKWiz4JMIE=;
 b=LeWcjnR+t+om64koZ6/R7cE71bujGm69PJfYXHwBJFGIEBgWa3nQCcjJskR2SOqfDx
 8FfVoU3o/Q7/B8eVi0j0M5VdkxdYsRjGxHm1O2i+Ynte0IiaoGGgyiP7Srs/0VHfY8pZ
 GoyR+VQn83u0DFekQcp1z2sEX3Qkb7x/WEOsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7l9eJCs2PeowUasvujNxJ+tq7unRBQcTxAKWiz4JMIE=;
 b=bbHDrIT462S2M+/yY8VvB0XAh7icFHVmWtP7Qb54J5I7CgXYk+m/RFBvkmjmt3zI6d
 TSlJQoy4yq3+FS/4HNQEsJ0q6uesvWlpnBH6B/cNl7lbbT0SapwKNnTRxoQe91rjRIZ1
 9cy8iF3xItspfwForBxU+7SiZaSMfuD/pFZoESt7GYbSRRLooutQ9EXjsrtWztcnvipq
 4yEvfQnD9CwhLibeTDa0G4+o2KJL47GtgKj+gZWDuNnKJ65coRGQSZ470bMkrLFjA/vY
 jb+Kr/lBf5Q8eXOACLH+I4dyKJayGTGKyN4FnRYcIRMZSTQI8rD5l2Qbb4i5hQqFw98n
 21kw==
X-Gm-Message-State: APjAAAWU7VAwk7h8OVUB1OHHYCUi95OOHFTDLRftV/ZWprvko/2nmROt
 TOsVwhY4ZrRgM8AxkDLWtSECZQ==
X-Google-Smtp-Source: APXvYqy0yKQ/QJLsix4wmZz0w/0FdG7kg5sb5r7IYIEYAuT2TlsU8kQWgPqPuvCd1Bz2CLqyUw+bZA==
X-Received: by 2002:a62:5883:: with SMTP id
 m125mr15522265pfb.248.1560225838902; 
 Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com
 ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
 by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.03.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 21:03:58 -0700 (PDT)
From: Derek Basehore <dbasehore@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] drm/panel: Add attach/detach callbacks
Date: Mon, 10 Jun 2019 21:03:48 -0700
Message-Id: <20190611040350.90064-4-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_210359_953202_7872E479 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
