Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E7F12E06E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 21:48:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6eUYC62pMjrtkUoZx2CB1JTVBS61oa2xZCroLVKNc6M=; b=jWG
	Llg7ZD+lTK5yKg8OCu8dutiv4Pv8x3ALIjmlZYUpuzwYpiqRhdtJb6Mw+0YQDbQHOb+L9XDkK98eB
	uv1TAaYu+2P7aglb4Ytvr2gsgER4tWkRInPSAZt/g2eN8fH3X6mXOk66u/xWmI7sp8eAtR7EFjaZE
	z2acBQc6/dgOqI5C21k4ii+zKpKho8UzmyLFPx1qT8lVfxTasezdr+CW8yKhCeQHjRS9L8F4VknVI
	Ll/KgsjfZetfu9L5V4ChtaXWY/ywSxwi1GRfn7TFlbR32GbWvH0yoB7M2tl+4C7Ohlk72BCdxqn/o
	JQ4z+hLtzLY6bvweXCRowVi8gyCAWJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imkuj-0006cv-9A; Wed, 01 Jan 2020 20:48:21 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imkuZ-0006c4-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 20:48:12 +0000
Received: by mail-pj1-x1043.google.com with SMTP id j11so2440716pjs.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 12:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=XbMrezaMD0p4i3SGBGMVhsDuOIGR0bDHjQFGAvfTghk=;
 b=hsxj+yEFbN25j8L+Ydo66FZwz/eE6FmsuE4JZo+LvmE5pQ8fQosViIyOHOBi8CVVhO
 J6PmU80Y9MwsX7+e3BYqKc7PGfwmhiDToIO5DX35mP9M+TQDCubpt9qKAs/4MNeweXoZ
 Bv6xRTj2HxpouULBCdd+x1lMSF0JipscIeEeIFUdkUY6a1x9uZWOo9dPD3TuGEY5pze+
 J78pfzvMFsGfwns6f7LzQDsw86xyvDuWohvx9BS/cNuNurpOgd3Zt6UHO+tsQAoQnLto
 r4fFJ9duEn5NufTJ+YN/GWbC8WjCGZWwU54J/UkwlCIN4bgJ4qHr16atUn5+Ve0zUfy1
 Oziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XbMrezaMD0p4i3SGBGMVhsDuOIGR0bDHjQFGAvfTghk=;
 b=sB+vWAH5XMr2hBIkffWYdUT9thK0FjyNH5lmzEe8xmTGDdKIHlsMb+84B+aApHsu8E
 MLeeY7fzvdICkTAPB/w9j6CzrMA27+6KCk2/JXuomyxazP0Jocrc19FTSUtieUZH95Hl
 1vi0z+99l9vLZRXYJjGNaMMDCP1azf5maIxsqTDrZpxjRoaY7bAAPcJrxzSHyf7zBguC
 +J7NVEq4fVF/M0KWAo249AD2UPzgt2SqrglazHsSI+3i8tLPHNRpXtlM2uNQMgzZ/kVz
 tJoeRYStmWj/YCNlHPo9wBP0edgHNec7vgHj0EN5TSGOQ9MVSI4JdNqx5INlMVAgYGUd
 sHgw==
X-Gm-Message-State: APjAAAVteBCYERR8CRE5R5Au+ZTXp6knBG49F6UG1G/SX/KHE0U3B+SO
 FyF6vudkuKkqR4mgDkH4QCO3SQ==
X-Google-Smtp-Source: APXvYqyklN6NYwHRBsqIUREWmoa0yWoQfE/+harC1DHagj85KGzfIxcsQ2V6jYhzLlxNgQ/ergDlug==
X-Received: by 2002:a17:902:74c5:: with SMTP id
 f5mr78136579plt.229.1577911688023; 
 Wed, 01 Jan 2020 12:48:08 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id z22sm53774752pfr.83.2020.01.01.12.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 12:48:07 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v3 1/2] drm/sun4i: Add mode_set callback to the engine
Date: Wed,  1 Jan 2020 22:47:49 +0200
Message-Id: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_124811_399975_7827CD34 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
v2:
- Split commit in 2 parts.
- Add description to mode_set callback
- Dropped 1 line from sun4i_crtc_mode_set_nofb()
- Add struct drm_display_mode declaration (fix build warning)

v3:
- Pick reviewed-by line
- Add missing 'and' word to the mode_set callback description.
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
index 548710a936d5..7faa844646ff 100644
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
+	 * responsible for display frame size and other mode attributes.
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
