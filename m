Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0C9F0809
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rjc2wE4j/IQ6jTJBouZyHsMxDVUztbbe6IeZ+XVv8TA=; b=JAKmyTRA+Hx/s8
	bU7u/SF2cku+/kPO+0Tm7xxwrE65qCPkNg4VRxJTsx5x5wqXb58TKpUTQVSv6BY2kQk011WBUXfIo
	CblT0ZDv/c78VI+wiu8D/UKz0+AcovI6IBeKaAnUUDZQWV0DW8Ma9YZLf7LVnLD8E8RaaLRgOeOCw
	KVfLjyJGt507o8F+4S/ozs7zoT+vv5P/FFDHq5ZVlG/eaNL8DsvTXQt2GMlqWYI4XHeITJqZIYRBb
	var/Nc0evzboc1nD5tvdB/kpn3wocqp10xAehhQIWroerqUBPDgiQJ9KcGsVWk405nqgdAY2oNEWo
	jDPJ3hhB/3aaWpMIJ56w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6Ba-0001SQ-7E; Tue, 05 Nov 2019 21:16:22 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66O-00033B-Be
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:11:06 +0000
Received: by mail-yw1-xc41.google.com with SMTP id j137so2621376ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wkKPVb6pP5aq3OLgQzfYcwJ5aNwtIA26btnxZ0mORbM=;
 b=Mq6TglzNM33XbXY7U0CDyP267OuSAHrU9t/Sm6DqR/tMUQ61hFziZ0yRWSJeugur5+
 rDiepGUZBx3TNu3ZVfa/ay14OgmV9ay+S0QbY+AeRHda6+7AaqpR3TlAtZloi5bE6HTT
 PAtXrU8G/YWwxUEcsW7XJ71obGHphVljhfNcT3Um/caOXlpaBQFOrfPvNYE9MbHWmGJS
 XhqSNf+g8ZLpnScwCo4xMTQN5Cfe3w5agoGjyvbkaPo0IPh7kGmc/q3TA8isg6KZyICV
 cECCGKePRvI6jpsOiDJKHdlsEHT40fovY2XPOeWib4+FkwXFr5Wqh3bpHtJ9E/VtUC8K
 vr+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wkKPVb6pP5aq3OLgQzfYcwJ5aNwtIA26btnxZ0mORbM=;
 b=KIP7voeDO3/oOFwFCMGkjHzp1aqJfVsLw40OGqK916uf+kLLIbaNap9cHkt5IHU0yN
 X1K4C9JZl2r6xqq+s5FNIycfgMK8myj4CoIqdMVdTZuLKgZgDEWaZkyFZJN0LxK0P7FD
 HsbM0KqkEJ6ot5J4MdGZ9PiORTqhzoIpqzxtx/PBqqIaFlPTvR7JDjyExMInoSkkbqkw
 Wgy0+jEmbVhUi2AC1hKOQB8LsbJ1A83+KuAb6AeyKWZQLMkzwAHfMLj9ev19h2DuuFZZ
 sCeycG8wXzrh8EHCPzWJN0v6QRlNEMcpi+PJlWKk8KFftyAgVgj6NjZ5dBBQTJiH1usD
 yjAA==
X-Gm-Message-State: APjAAAWlpY19LwGjXOOsaURzALffS1fITOXy2xSr2ii2t5oa9X2yFjpe
 FgbmGIlYCY3+jKG963o10udpIw==
X-Google-Smtp-Source: APXvYqyUCARybzwRjLGPnWuXk2JznQo9jeaLOMjuFbMyCaJBgQqqFWRHOQEwoBTwK7kELxzPui6Q+w==
X-Received: by 2002:a0d:ca12:: with SMTP id m18mr25386699ywd.97.1572988259096; 
 Tue, 05 Nov 2019 13:10:59 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:58 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 6/7] drm/mediatek: Support reflect-x plane rotation
Date: Tue,  5 Nov 2019 16:10:23 -0500
Message-Id: <20191105211034.123937-7-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131100_457241_C5B43FE2 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dcastagna@chromium.org, matthias.bgg@gmail.com, mcasas@chromium.org,
 Sean Paul <seanpaul@chromium.org>, p.zabel@pengutronix.de,
 frkoenig@chromium.org, ck.hu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, markyacoub@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Add support for REFLECT_X rotations.

Cc: Fritz Koenig <frkoenig@chromium.org>
Cc: Daniele Castagna <dcastagna@chromium.org>
Cc: Miguel Casas <mcasas@chromium.org>
Cc: Mark Yacoub <markyacoub@google.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index fae10aead3d5..f4c4d3fedc5f 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -53,6 +53,7 @@
 #define	OVL_CON_AEN		BIT(8)
 #define	OVL_CON_ALPHA		0xff
 #define	OVL_CON_VIRT_FLIP	BIT(9)
+#define	OVL_CON_HORZ_FLIP	BIT(10)
 
 struct mtk_disp_ovl_data {
 	unsigned int addr;
@@ -142,7 +143,8 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
 
 static unsigned int mtk_ovl_supported_rotations(struct mtk_ddp_comp *comp)
 {
-	return DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y;
+	return DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y |
+	       DRM_MODE_REFLECT_X;
 }
 
 static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
@@ -153,6 +155,7 @@ static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
 
 	rotation = drm_rotation_simplify(state->rotation,
 					 DRM_MODE_ROTATE_0 |
+					 DRM_MODE_REFLECT_X |
 					 DRM_MODE_REFLECT_Y);
 	rotation &= ~DRM_MODE_ROTATE_0;
 
@@ -269,6 +272,11 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 		addr += (pending->height - 1) * pending->pitch;
 	}
 
+	if (pending->rotation & DRM_MODE_REFLECT_X) {
+		con |= OVL_CON_HORZ_FLIP;
+		addr += pending->pitch - 1;
+	}
+
 	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
 	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
 	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
