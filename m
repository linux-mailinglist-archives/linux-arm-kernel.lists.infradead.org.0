Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FFB1F7B53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 18:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7Pl4lETyqjioSn46Jrah5UwLK7mU5upQHvG7MknOm8=; b=QmRc7EfgMOyHyY
	XP8iB1PjUOdSuCoJIs2UvKTvtPOLYSrTQGgXQZTtpe5YmnkeNqbrcy5+NU+srMB3xvNIP+jaV99DU
	/e5dc0Lr7LLnLsA4depY46B/NGmsjXfPnm17eoMpyusXJP0D2Tkg+uHhL4mPnOem2CaLBoHekX/Vk
	er9uxOVUHzI8YAAWvD00eXT2BWXVBChPMUHAP468bW6xn6QQL0r3Fn9InGzA7Pn6l+fd93SmrqbrA
	c79qLlLdMTlATIYRBx2iWCb1SfnWOCWsxCCw/EPJYwxe4Pat3T5/2QqpfPUqJ7+0NI0KxNi+tCTti
	4jFkWV5etKK/q6L/nqqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjm7U-0001Te-St; Fri, 12 Jun 2020 16:01:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjm7A-0001MQ-CD
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 16:01:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id r15so8775339wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ai/GewSrfjWw8RFQeCPuHksZB4nG2hUc1PyTsYsu8vY=;
 b=ZeUzy+BDFmi0hzuy2YABme60Odgjw9N5h0GbzfR0dKZEjHjk54gaM0zy63vTtb1U6j
 d6HxTg0jSBIvWnFVutKX2aZmDhoXbk8wD0WWmYn7sXx+fmKK8o3x1KAwxgScuA7hwUvD
 PVTN9wYaIC64+Req3Fk7QaiJVSfljRv00DUMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ai/GewSrfjWw8RFQeCPuHksZB4nG2hUc1PyTsYsu8vY=;
 b=XImdfYmDwPX8QhPVZCTzUVa2VAgGfYV/IgdKyDun2NJrv5IpKER9lD6VEUfCf5reWu
 WRG5f/7OnoBH3XqkS6bMz9CLoyVg5L8N0w0TPgEj7+m58igw4gHsC0sJY9o+S6im+A3K
 yLBb1EV9qkZ+6F+ER6sSJi0DYzwfEprxXe1izLcxMs8rwpkzotpuHY7NunY1+gUKjFyG
 08h+NaZbTw0FzrATUcTSY8pU7euSvaEYeMSmYnDJEqJnhTgdyHjiQL68A8LXC0+2jVh3
 3vXHkZNOm1NsQM/2waFP+omN01StJtBavhWzTLGpG1bA0kBe18sxPt53pEy42DCzt2TI
 mMOw==
X-Gm-Message-State: AOAM533Wm97WiTeClldOfZz7xvvnj8Jf68Fy2D+00zmY6xfpk5/5FmRv
 5BUMmD0FqNteHlwJCmMk4rkN9w==
X-Google-Smtp-Source: ABdhPJzcZl754TDwXqT0GXMbZmzYQ+dc98ngsLiZ6R1rZX/1YyH+Z06m9kcZTJtclj0BBq9f/zmCrw==
X-Received: by 2002:a1c:b386:: with SMTP id
 c128mr14847821wmf.133.1591977666086; 
 Fri, 12 Jun 2020 09:01:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 3/8] drm/imx: Use __drm_atomic_helper_crtc_reset
Date: Fri, 12 Jun 2020 18:00:51 +0200
Message-Id: <20200612160056.2082681-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_090108_410323_B816A141 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/imx/ipuv3-crtc.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
index 63c0284f8b3c..02c2f848f2d1 100644
--- a/drivers/gpu/drm/imx/ipuv3-crtc.c
+++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
@@ -109,20 +109,15 @@ static void imx_drm_crtc_reset(struct drm_crtc *crtc)
 {
 	struct imx_crtc_state *state;
 
-	if (crtc->state) {
-		if (crtc->state->mode_blob)
-			drm_property_blob_put(crtc->state->mode_blob);
-
-		state = to_imx_crtc_state(crtc->state);
-		memset(state, 0, sizeof(*state));
-	} else {
-		state = kzalloc(sizeof(*state), GFP_KERNEL);
-		if (!state)
-			return;
-		crtc->state = &state->base;
-	}
+	if (crtc->state)
+		__drm_atomic_helper_crtc_destroy_state(crtc->state);
 
-	state->base.crtc = crtc;
+	kfree(to_imx_crtc_state(crtc->state));
+	crtc->state = NULL;
+
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
+	if (state)
+		__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 static struct drm_crtc_state *imx_drm_crtc_duplicate_state(struct drm_crtc *crtc)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
