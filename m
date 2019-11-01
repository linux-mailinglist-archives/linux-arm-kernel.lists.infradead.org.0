Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE30EC3A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m+JuA2Z50GXby/xgyf4ZGsf2cb6eaI5vEP4TsYDYDTk=; b=Czv+RhElTeyjn5
	sXo8HjOoefYMd8/G++X6aqDO66BF9jW0agaj2nBwKZP+8pM8SmqexHjHR8YzwA/XIcxWHTc8FQXLr
	LUzbjqvCb+ID1Hk0M7jfhnKDxTIJk3vvij/9aQxFLyANpnVWyq/KCk/BRT9tvE1p4AorSirVylu/8
	PBfo0jPGZcr6D7mrAH7wX96FWGksIvdBseHvwZWZ3wKdrfHkTegKWbXRDDUPJONdaD7BkidUnR7Tx
	HEEvk0YjKzTa/MAmiV3l3kofcR2WnMhx/EkjWeXAdA4uXaNmFUcbTKVyTrfms6LTrELMZ7zFzT1j7
	8GKIOtR6gzd7rYpA2MIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWxB-0007Y8-HW; Fri, 01 Nov 2019 13:27:01 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWx2-0007WM-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:26:54 +0000
Received: by mail-yb1-xb44.google.com with SMTP id i6so3865553ybe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 06:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pf3z+fTUfCzIhZxwbneFU2qIAuBfeghLzQqeWwR7Mdo=;
 b=cf5tf1htcGlHmLUuKzIJTmdSvwEX9XtrpsmIPqy2xdhBFmjAoe1AiUDsh9ErowFZ8v
 LYcO/DAz/eb3g77DA+An3tXKp89YrwJTC67hblFNY8wXX3svPRfnafNw2ZdETnNSsb8N
 6OfdbIq9MOxNHVn7QtZ+mhZ1KMvI+lbBe4QVWazTJwuPeaCrF0iC0kk1pA6ZixIK6emu
 wYZtw6GPN4BJJajmoEun++N9s9zcwwCS59cNBQOBQA3Bf0+azHOJT+IvMc5zdacNGpmV
 wTCzML3yyfgsNc6f+U4CAZGQluxLGb/X/LFglqzY++aBstYWhAMLen/nq7xg5vEnggTl
 am8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pf3z+fTUfCzIhZxwbneFU2qIAuBfeghLzQqeWwR7Mdo=;
 b=OEAEpviiTYTuzmwNArDS+10KJ4quSCpKZisqH6jSy0OzDlCPqxNIgUzudBbPzInFAX
 1i2fER4scsKtNO9mUgBpHnCNVk4NBxF/5V6HSnpfLe+hoLC7Qh3vW+AvHb4/FttU+PZw
 VAqRWEu5C9KQAlZfOrDb/8byf9w06Z3k/4QYNGVyZzg6b8LHDHhJIgIyrChCQ8OCcfWl
 PmK+XuhsRqpjweBFhH3BQbpTZo7eYWcNkrSkpNquYwbnse0w1jXHI6aWpdCp3PHHncH8
 MBlFRhUK0b7FIjpsuRmkKZc2dUTVBV+QmeCvaZw5ti5p2QiFwGuNJF7Bdx/bT7hYIH/o
 39qQ==
X-Gm-Message-State: APjAAAXEAkESe2OKbR0I0okyiKbfkOTiPVjfAYfxbjhm5a9s0ljqBydD
 oyz0gmD6SZqOVWIM++irlSqJ+g==
X-Google-Smtp-Source: APXvYqwU7TG9lJg4Stw0XkT+nrjLOMIOqhBu/6HmWsSRUJzEUsWNRI5WKeQUWz3zBMxOdxPjl3/Jqw==
X-Received: by 2002:a25:14d6:: with SMTP id 205mr8748606ybu.230.1572614808919; 
 Fri, 01 Nov 2019 06:26:48 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y77sm920928ywg.75.2019.11.01.06.26.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 06:26:48 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/mediatek: Support reflect-y plane rotation
Date: Fri,  1 Nov 2019 09:26:21 -0400
Message-Id: <20191101132647.189033-1-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_062653_013432_67DC1CF2 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniele Castagna <dcastagna@chromium.org>, CK Hu <ck.hu@mediatek.com>,
 Miguel Casas <mcasas@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Fritz Koenig <frkoenig@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Expose the rotation property and handle REFLECT_Y rotations.

Cc: Fritz Koenig <frkoenig@chromium.org>
Cc: Daniele Castagna <dcastagna@chromium.org>
Cc: Miguel Casas <mcasas@chromium.org>
Cc: Mark Yacoub <markyacoub@google.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---

The hardware also supports REFLECT_X, but I just could not figure out
how to get it working. If someone is interested in getting this going,
I'm happy to share notes and my WIP patch. For now, though, I actually
only need y-flip so I'm giving up on x-flip.


 drivers/gpu/drm/mediatek/mtk_disp_ovl.c  |  6 ++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 11 ++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_plane.h |  1 +
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 14878ebf59d7..6505479ee506 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -50,6 +50,7 @@
 					OVL_CON_CLRFMT_RGB : 0)
 #define	OVL_CON_AEN		BIT(8)
 #define	OVL_CON_ALPHA		0xff
+#define	OVL_CON_VIRT_FLIP	BIT(9)
 
 struct mtk_disp_ovl_data {
 	unsigned int addr;
@@ -229,6 +230,11 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	if (idx != 0)
 		con |= OVL_CON_AEN | OVL_CON_ALPHA;
 
+	if (pending->rotation & DRM_MODE_REFLECT_Y) {
+		con |= OVL_CON_VIRT_FLIP;
+		addr += (pending->height - 1) * pending->pitch;
+	}
+
 	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
 	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
 	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 584a9ecadce6..4d8f2b55334b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -88,6 +88,9 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
 	if (!fb)
 		return 0;
 
+	if (fb->format->is_yuv && (state->rotation & ~DRM_MODE_ROTATE_0) != 0)
+		return -EINVAL;
+
 	if (!state->crtc)
 		return 0;
 
@@ -132,6 +135,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 	state->pending.y = plane->state->dst.y1;
 	state->pending.width = drm_rect_width(&plane->state->dst);
 	state->pending.height = drm_rect_height(&plane->state->dst);
+	state->pending.rotation = plane->state->rotation;
 	wmb(); /* Make sure the above parameters are set before update */
 	state->pending.dirty = true;
 }
@@ -166,7 +170,12 @@ int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
 		return err;
 	}
 
-	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
+	err = drm_plane_create_rotation_property(plane, 0,
+						 DRM_MODE_ROTATE_0 |
+						 DRM_MODE_REFLECT_Y);
+	if (err)
+		DRM_INFO("Create rotation property failed, continuing...\n");
 
+	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
 	return 0;
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
index 6f842df722c7..83b634a997cc 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
@@ -20,6 +20,7 @@ struct mtk_plane_pending_state {
 	unsigned int			y;
 	unsigned int			width;
 	unsigned int			height;
+	unsigned int			rotation;
 	bool				dirty;
 };
 
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
