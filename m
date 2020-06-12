Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E50A1F7B55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 18:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B96Pkl3JuiFYVqzSWptLubKULrMDtJBbe4NtLbGQ1Co=; b=OxMUw7XB4BVKOU
	6LP+ig4843S25/d2YInOMeLtsM7NgjQITyXMj/1JvUsP+AEaJaTjkd6j0fEW/JlkrOmwbCBAvVyQo
	sUaRnkOVMNk0wEdoeqzX0DGO7X/9kjpjs/ekqesw32TOatjib3f6i6MwP3bF5SfUVyxotA7ihvRJH
	naX3GzvepoKrQTzLIKYEa5DP1oTVb+VmLW5IJyd3UspRvxuMGMmPZmHQoxX+1anehOBRFmGTf3w45
	QJAMNnY8zP8ajHHyhoUXFIhvai4HeWGABSQHpOOvyqjPpaH7d7Hh3nx/NLJL+JJ0fvQA3U0EQmfaC
	RhgCfNH/a73cAGwbIRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjm7o-0001me-Ro; Fri, 12 Jun 2020 16:01:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjm7A-0001MS-Ke
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 16:01:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id u26so9465466wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9edpO/0nDjw8MbHtkOLQlTMXtNF/bFvFcs1wCzvqaNE=;
 b=RmdKYYVAB0MwG5SuaGWDL0n378xqj0UKR2ugbyV34AEb89kM51e9b9HRJZ0ikKdBuc
 B9C0JTVT88c3OToaO0mWw/TXYqK9UBckZWDC7aOkCwPdotyoZMBd4oZwoZrBkUuGnZOS
 JYbrXB49RsrMh7/PlWYkJBxYIQzV0K9XbCg+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9edpO/0nDjw8MbHtkOLQlTMXtNF/bFvFcs1wCzvqaNE=;
 b=mj/U5jT7sMJX0dsZm6Eijf7KizG9XVQT7hSCVFTkLMSXgkjZ4A3UckGEm2mfqMW5OG
 PNxGW7VA+VsF+GrLIgBD5b9asB+Tz8GoLfZkM3oHvb5vlCC8Env2pAWV9Lw/mL5VTFqn
 446+sEjvi/91Xg/9DVKrynlpAV/MIz9KUdOGjsjjXMLI6Lh9oLcoevvDGyGqDrGMJcg2
 L0lz6VBDHlhJf4Ug3/idadpdB2I68kKSWfFnZ3T8JjEtTdZlMQO/WWBiRG6UpDz2u0em
 nVQ5EXShxmX5ePAzJQD3z2D02eq5WNvtxQhGiXQ2fmB2mHIvZaBmT0BASem69EB+zovJ
 h6Qg==
X-Gm-Message-State: AOAM532aUw1Gue8D2kh1wZH1Hvn8jeo2gRBAlzb/2GTqEf0++6qN489O
 jeY5viO6emTqH4mkGmYCM3wU6w==
X-Google-Smtp-Source: ABdhPJyRA5JCt10uM462WYchlysJDh14QJpSPAUPgz+E7dH/E3C15TB4JYTTvqcYM2l4Duif233pBw==
X-Received: by 2002:a1c:1f85:: with SMTP id
 f127mr13454795wmf.163.1591977667256; 
 Fri, 12 Jun 2020 09:01:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 4/8] drm/mtk: Use __drm_atomic_helper_crtc_reset
Date: Fri, 12 Jun 2020 18:00:52 +0200
Message-Id: <20200612160056.2082681-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_090108_682807_83E3E376 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index a7dba4ced902..d654c7d514bd 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -112,19 +112,15 @@ static void mtk_drm_crtc_reset(struct drm_crtc *crtc)
 {
 	struct mtk_crtc_state *state;
 
-	if (crtc->state) {
+	if (crtc->state)
 		__drm_atomic_helper_crtc_destroy_state(crtc->state);
 
-		state = to_mtk_crtc_state(crtc->state);
-		memset(state, 0, sizeof(*state));
-	} else {
-		state = kzalloc(sizeof(*state), GFP_KERNEL);
-		if (!state)
-			return;
-		crtc->state = &state->base;
-	}
+	kfree(to_mtk_crtc_state(crtc->state));
+	crtc->state = NULL;
 
-	state->base.crtc = crtc;
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
+	if (state)
+		__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 static struct drm_crtc_state *mtk_drm_crtc_duplicate_state(struct drm_crtc *crtc)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
