Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D0FDD29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NeovLkR+Bo2wwu2PvXTXuLkzhNWu+lY8b5aBGCr0vYU=; b=pP0/jKoYyFMWgV
	oWWp7E56xACpjNFTxNMAz08OB/B5djJkCkoRY5uTSqTUwfp6QqlHPJkO6SRQIt/pWJwRa3XNjnZFT
	tyohq9DLppNy601PQzloL2M/Utv78FmCl7ZLHdjqCxqyDMj6yk0wPvrDZn8/Z4ZeZDnI/i1Vezso6
	ukVba/L+EpiBYQFkVfuVHlMSZ07H+wQZSvqtzVLl2/bwnuwpxAzHVNOXG+0OMAJahhB8aCrHqUwXT
	EQZu6yX6r7VudSoHm6qcAEIziGrgfQf0YunkgyaZS3ULsIqqMIv+eci1CS8DgLEplkWVHl3A8jy82
	QPhwtbVOWNQ3YS4kvsAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL162-0006XX-PE; Mon, 29 Apr 2019 07:53:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL15n-0006Bx-6t
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:52:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id t17so14454516wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 00:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R/mDQvnk0IIQmAZwrlmB/+Qs1VqQjgXmR4mQ6Zr5vLM=;
 b=yQrh7BIMJoH3/0jqWWCbu4c5tIODo9kRVw4r/nYa/1whLzbcUc1wNYNh1Tp2htcv15
 N1OCNf+l5RfcKPlwwPFnMuFCNCFZEnBOZ/f49lmWKh+Q+SL4alibk2iIwd9mf1qnG8DH
 /FdnrIWiZMalpBQA95V51+ih2cs2YrnTuEQwcMQZjDQjTfqTfmrZ7iNPdu5s0l672Nlz
 r62AxhqskACBze3lX6TT5TsGeaO93NfHqDpLR7XSZvy6nyXr2TaWJROc5Y7+9Im6M4gU
 kE7azJ1NPScSgDQqUiv2w2KNaq3DAOS4hl4chBYZY5rtytIKxkP7I/YbJL4mV2Yi2l6z
 Nqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R/mDQvnk0IIQmAZwrlmB/+Qs1VqQjgXmR4mQ6Zr5vLM=;
 b=P8wQHo5YAf2e9y+IeuOtn/+9wX2TOHXUpLAmHKKJUCSMppXbXMnlxW7ItrZe/tvHlP
 GwtMyRDoLWFuabZVXu7N82Jrnldpl+O0vECjeBOusdOOD7X4sJIcziVjCLZFiLj3RTag
 cexxe8N+V79ax/KQ1RIn9NjpVSKE0jabL4h7FnZu+Gy4XGEQfwgiy7olpaq5kJRwqeYM
 MZyVm9PLkU3z923eq0YEv4gncYuwbJZj7UzRJD+L+PCwvzkZM+qh6jKYYKRge29F5iGS
 jow4oGivOlfg4XYnpCzq4S/kAqaPQwzBkxRkwyvhMxzXzui+5r6EYCHi59rzmSpri9J5
 6K5g==
X-Gm-Message-State: APjAAAU3x/5YhqR26GTMsb0jClTbvr9HFlXYWi4+kEyCj0miKMY/Et2N
 QnW1ZWld60Zyr5adoo5UCmZp5g==
X-Google-Smtp-Source: APXvYqxK8h9fP1diY34GCvdYZ01wJZXC1DSL1FPL3mMAddWYdgRZE3NVRKvJYj+rs35MKDeUPkEHfA==
X-Received: by 2002:adf:fd45:: with SMTP id h5mr7015881wrs.52.1556524369379;
 Mon, 29 Apr 2019 00:52:49 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x84sm40099073wmg.13.2019.04.29.00.52.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 29 Apr 2019 00:52:48 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/meson: Add zpos immutable property to planes
Date: Mon, 29 Apr 2019 09:52:47 +0200
Message-Id: <20190429075247.7946-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005251_800878_5917B1F8 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add immutable zpos property to primary and overlay planes to specify
the current fixed zpos position.

Fixes: f9a2348196d1 ("drm/meson: Support Overlay plane for video rendering")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_overlay.c | 3 +++
 drivers/gpu/drm/meson/meson_plane.c   | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index bdbf925ff3e8..dceb3df5e652 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -578,6 +578,9 @@ int meson_overlay_create(struct meson_drm *priv)
 
 	drm_plane_helper_add(plane, &meson_overlay_helper_funcs);
 
+	/* For now, VD Overlay plane is always on the back */
+	drm_plane_create_zpos_immutable_property(plane, 0);
+
 	priv->overlay_plane = plane;
 
 	DRM_DEBUG_DRIVER("\n");
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index b8f6b08a89a6..2f7f4dfce45b 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -399,6 +399,9 @@ int meson_plane_create(struct meson_drm *priv)
 
 	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
 
+	/* For now, OSD Primary plane is always on the front */
+	drm_plane_create_zpos_immutable_property(plane, 1);
+
 	priv->primary_plane = plane;
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
