Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336612C36D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 17:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w/5lDGqWqhJFAOGQhSV4VWBBX9YN6P5mOsDwWTRi4Gg=; b=Wra7eL7SR+FHIuATIMhtL/XjGy
	VzVewtrS6SedWU3NTpwnSdBWLb3n21xDfgbwQ1b9huRt356sKFCrUk11CSum5Fkd7PAgDSe5Bc65c
	6CCW5eq6lfkMQj42R7EfyXUiHLdFoaA6LBJHgQhS9/OY3PS6xAUrBUHqX4Z47CNoUjnGhlRF236uK
	ByJD8lxAlibBDjO7Klv5JtbOXzDv9UwX58aTXW2+iesxF6I6x4iuECPXGI5LfMlaTGJkq21Er9PoG
	RcsabSO+81AQZF2SpRm1Gr1oTgoJejp5pJ2G+V84S4+GeQ1/SXWX7oUFy1acYVIvt4/zbflKhAr97
	3pSiJBQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilbS2-0006rF-OQ; Sun, 29 Dec 2019 16:29:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilbQq-00060h-Bz
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 16:28:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id j1so23846044lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 08:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n90E4FPbMEYNKi4XaN29BLl296r+dCfTfT/Y1plIRok=;
 b=WW0qXOjPWCCJFurZE+x1rZ4Omj+HQ93co+Hqeg7TS5QvnDaDmimiWR7WWaHTd475hq
 cj3uAGa8nL/uWp+f1KjSTbieIZSLGWYvYX0/WmVeCRoGoZWQyo4scDBAaV8w5c5IuV1c
 qQbZqQBE6pDQtPM74btaJmaWhJGo/N2jBY1Gw+qYuPL+xMSe9a2vJLszaVcbn9Tb+Vfl
 6nwG5Y6JbfZPQJFYcrdkZq9Pn3CwMq2E8LDeBMH0i+0IYZmn/OycZcxkuhyp+ioFWiIL
 cj0Tt0O1JAGbrnHYH+vqG5fEkDl+TpKoBjOKVipHxuRwBmO7mQZM3RCDFHfPAW4QNU1p
 fYNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n90E4FPbMEYNKi4XaN29BLl296r+dCfTfT/Y1plIRok=;
 b=stpWoTqwpHS8xPUZVPLqR22DkKXYeD1cgDfiGztkWO3+vfaBtAYkGQXbTkpiLGfN6s
 UIIW3jsBlaoAG10qZOUVgolbtDYaqcFbTyRerrDu/e1GSFlnH7jP3ojLkmCea7asQv5a
 jdVtXb3D1+zEG4tr2vJ6e8nXARNKz34hAV+UFJ+XgUGvZdifndnMybtp4dmTO4xhxwyS
 j4xUAJmWd8dzHYJDwNh7REZ1C+voDNN2bp2qwAp+SkTq4bTX8hoHXQ2T6pfizdDn2WFF
 EOhhKW0rtCHvTfBDopEsZVqTmlJCtvPHtlrIUEBarEiz65HHJ2mDylNIRaNMo9oHgAgc
 z9nw==
X-Gm-Message-State: APjAAAXrumCubtlaNno00efwblss2ZEhpy4J7/NRaI2cpIVTJy+s3ISf
 VUiZvs9yXphwP7Yk1hP99kSopw==
X-Google-Smtp-Source: APXvYqxbn4rVVr9RPZY6bZ86mkyDYpAjqj5/2yMqaK0Sq0geQzws1uE/LI+k0Yoh1YydtyDzAJDWew==
X-Received: by 2002:a2e:94d5:: with SMTP id r21mr36217156ljh.33.1577636919083; 
 Sun, 29 Dec 2019 08:28:39 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id u13sm17284858lfq.19.2019.12.29.08.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 08:28:38 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v2 2/4] drm/sun4i: Add mode_set callback to the engine
Date: Sun, 29 Dec 2019 18:28:26 +0200
Message-Id: <20191229162828.3326-2-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
References: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_082844_407916_C35EB4DA 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

Create callback to update engine's registers on mode change.

Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
v2:
- Split commit in 2 parts.
- Add description to mode_set callback
- Dropped 1 line from sun4i_crtc_mode_set_nofb()
- Add struct drm_display_mode declaration (fix build warning)
---
 drivers/gpu/drm/sun4i/sun4i_crtc.c   |  3 +++
 drivers/gpu/drm/sun4i/sunxi_engine.h | 12 ++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_crtc.c b/drivers/gpu/drm/sun4i/sun4i_crtc.c
index 3a153648b369..f9c627d601c3 100644
--- a/drivers/gpu/drm/sun4i/sun4i_crtc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_crtc.c
@@ -141,6 +141,9 @@ static void sun4i_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);
 
 	sun4i_tcon_mode_set(scrtc->tcon, encoder, mode);
+
+	if (scrtc->engine->ops->mode_set)
+		scrtc->engine->ops->mode_set(scrtc->engine, mode);
 }
 
 static const struct drm_crtc_helper_funcs sun4i_crtc_helper_funcs = {
diff --git a/drivers/gpu/drm/sun4i/sunxi_engine.h b/drivers/gpu/drm/sun4i/sunxi_engine.h
index 548710a936d5..44102783ee3c 100644
--- a/drivers/gpu/drm/sun4i/sunxi_engine.h
+++ b/drivers/gpu/drm/sun4i/sunxi_engine.h
@@ -9,6 +9,7 @@
 struct drm_plane;
 struct drm_device;
 struct drm_crtc_state;
+struct drm_display_mode;
 
 struct sunxi_engine;
 
@@ -108,6 +109,17 @@ struct sunxi_engine_ops {
 	 * This function is optional.
 	 */
 	void (*vblank_quirk)(struct sunxi_engine *engine);
+
+	/**
+	 * @mode_set:
+	 *
+	 * This callback is used to update engine registers that
+	 * responsible for display frame size other mode attributes.
+	 *
+	 * This function is optional.
+	 */
+	void (*mode_set)(struct sunxi_engine *engine,
+			 struct drm_display_mode *mode);
 };
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
