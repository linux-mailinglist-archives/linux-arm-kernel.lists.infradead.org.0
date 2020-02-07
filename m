Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579B4155183
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 05:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPSuWuQwldE7wkdN2DhEje+sMuoHionrNX5jtVPO/G4=; b=XVJOJTTZXDam6Q
	c4V+WbVa8OkUbO+OXM9cCmdgwBuMo87DR7fU/oIlBWRwy+EeXoGWGnz5zYehVpFTGSKNkf0Yd/G3C
	5g3EFZlZIKu0nWiAJxB0dQQ67xWMx7vyYxVzUKxlwIoUmUNyoEPY7CYZMGWbGAXD+iWh0v66m/LEy
	9+ZYWZa4QMubBDWSQ1ZzdzDFgiyNDMoThEZsKSIqkrctqC/bfdomDGi9hzThVijg311zRXNEdJ+fN
	ldii3TPMxVpkO3gpDvB76veKNUPAOYYtQUswRTTxY0o6MZ/UxaYCJSO6YvNLIC+kDsVOsJncTYZF1
	iWje+dKHcHumqHbnnDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izvBX-0003jI-Gm; Fri, 07 Feb 2020 04:24:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izvBP-0003hy-Cc
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 04:24:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id e8so458943plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 20:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t4CLMTIbjn78HyIw3MbTj9fsK/Q9HVmk1YRH08HvFW4=;
 b=eiiOqXCQpKTTs3qcK0ClTRSeD0ED+jYP1J9vmKsXeIxVqH7nb3dGN8TXf1xmZgDlwZ
 y2cRaE8wwKl+xqQwb9n1WEutzhlXPKh+ksiz8uU4xYzGVv9hHFpOq1Zh4lOqB+UysOVM
 nlPGDQkicWj7hfppZ1DzZB4KXiZedkDnLILEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t4CLMTIbjn78HyIw3MbTj9fsK/Q9HVmk1YRH08HvFW4=;
 b=E7OEpHdUc0PLyqIE/1zYjKrJaX/I3Ts+bOWG+IrmwqUXUHZnfQ5+hL11dWgRiWp9il
 hFUAssX58nFRlOvWmzYc7wOiSoM1mbYWYO/gPv16IQll6FrrlrrzVr16VVvyuwq6nZxo
 uW5yTO+no7Z+CmHNLuqicQL5kUziE60Qqeo8sPrtgft83bYNgHKzpPhICLU6bWEFedJM
 Uw/cw2Z1/a2/mLolLiVgRtI7FUSdxDGmpHPc0On7ahjJioHW4aKYjW/qWUWCnxUqKXm0
 9om4Eg/O5ZdY3kAV4BiqcyOrW4gdWbm8jzsnPs7vag83fvY43zWl8EcQfCFW5xCEFjzb
 /BQA==
X-Gm-Message-State: APjAAAUqSxND2L2rmKWr9zpDl/KPupUP4XzRgomZ1uqdbzuw6CtK/UUE
 f6mn+/A5q8MgVpGjqT5dpTZjcA==
X-Google-Smtp-Source: APXvYqxiM3mqXCuN//rbnMylmv3QEfgT2tAo0lrKJQKSE7Su2Tg5GR9a9AXOc66j0jtTmDYhbnQnRw==
X-Received: by 2002:a17:90a:3ae5:: with SMTP id
 b92mr1540962pjc.26.1581049438091; 
 Thu, 06 Feb 2020 20:23:58 -0800 (PST)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id v7sm950245pfn.61.2020.02.06.20.23.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 20:23:57 -0800 (PST)
From: Evan Benn <evanbenn@chromium.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/mediatek: Find the cursor plane instead of hard coding it
Date: Fri,  7 Feb 2020 15:23:51 +1100
Message-Id: <20200207152348.1.Ie0633018fc787dda6e869cae23df76ae30f2a686@changeid>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200206140140.GA18465@art_vandelay>
References: <20200206140140.GA18465@art_vandelay>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_202359_421957_7A141C42 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Evan Benn <evanbenn@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cursor and primary planes were hard coded.
Now search for them for passing to drm_crtc_init_with_planes

Signed-off-by: Evan Benn <evanbenn@chromium.org>
---

 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 7b392d6c71cc..935652990afa 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -658,10 +658,18 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
 
 static int mtk_drm_crtc_init(struct drm_device *drm,
 			     struct mtk_drm_crtc *mtk_crtc,
-			     struct drm_plane *primary,
-			     struct drm_plane *cursor, unsigned int pipe)
+			     unsigned int pipe)
 {
-	int ret;
+	struct drm_plane *primary = NULL;
+	struct drm_plane *cursor = NULL;
+	int i, ret;
+
+	for (i = 0; i < mtk_crtc->layer_nr; i++) {
+		if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_PRIMARY)
+			primary = &mtk_crtc->planes[i];
+		else if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_CURSOR)
+			cursor = &mtk_crtc->planes[i];
+	}
 
 	ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
 					&mtk_crtc_funcs, NULL);
@@ -830,9 +838,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			return ret;
 	}
 
-	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
-				mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
-				NULL, pipe);
+	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
 	if (ret < 0)
 		return ret;
 
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
