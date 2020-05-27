Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BC81E3DF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kvN6V7SDhCnE5vd0paxEpLDaQixxGH3PplK20W/wlkM=; b=NJfv/gFEBi+rra
	gaA9gqbBMZ82wWi+TE2H0Wc1ZCvhHXPj43IKuo6JPQgwk2qJLjMG4584hun/H/DMlc3S4oLlItfYD
	JmjX4VJF1vNess0hoTrK86FkhN3jxTrTV5gO04W4+XIMNhuAwtNg7jTrDtWBXPGkxLsdYvcCG5+P6
	+fkidDht7vncByLnLNbN2FLilD9m//ZvhSJu7ompWXaayYLk55jPmCy+NQBfAv5jzvj9k9ppXTtZi
	jg1GsminODUBalH44nRek37JU0HT0eN+scGw2nny9udVWXaCtjKgKxWF93qp1sDAHkwLx2D89DyS+
	VxXQVvyNXqJ6DvF97l9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsfV-0003hD-VR; Wed, 27 May 2020 09:48:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsfN-0003gr-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:48:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id u12so2393283wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 02:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UR+oqHX3Z65xg1wAwvf/sv5W1xHkc5UdSBKrFC8Pu8Q=;
 b=FUmWoJACWDcmkjRH6kDrBMqoAEZEPWOUlP0Kr/9+XZIGlPCkq2mPPQTe2NQEIySneg
 Pwdyk1qWGem4sRPBuWhn7uFRxocuMEjwBrV2DjYY3m0aTfxni92niiedQXHAw52gs1EW
 4zZjuH1K/SpMY5QCxQrT/kaCAeXh0X0BK3nec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UR+oqHX3Z65xg1wAwvf/sv5W1xHkc5UdSBKrFC8Pu8Q=;
 b=aBgsCJT6zkPYNQnh590QGct4YELWc8AnqLvP67o/6EovYhOtqLKRhIhvaItBD55mSM
 JxLWaBRIPLqM3FzJCqSwvK03ojybTFdc/nJeMay8LjN8dKRb7iEQNzMxnrcdslZjlU0z
 mZntuZAjnGZK0Y1ZvLGk181sQj/RLo3oDVMUn1PXO81YPdPXcCviNuqkf+cC2Esuy9t7
 tR/ERqqr9iUDw0J2EYGjRSR964oeKyzineKj7lrbQheJ2avB54FsXhjOKqEwb35mit7R
 9klVvprqvV2BMTytf4AgcdejJhyI3TDLLXqSJTDxrxOniq0gdTzeEllYiA2WW5qyrUNG
 2Y/w==
X-Gm-Message-State: AOAM531Xinyc0lyCTpK0IBxOM3D6xm8SDFa3oLP8WgAKAhHmkIh2DP42
 43FflwBhmWlkjLc15ciX4fC97w==
X-Google-Smtp-Source: ABdhPJwfeJUwsL273S3yIOX7avXf1zfG5f5WAhvIQCbl9w+jX3peXBFWAS4CNo0JUJ5JqqfJLklCbQ==
X-Received: by 2002:a05:600c:4410:: with SMTP id
 u16mr3424921wmn.88.1590572883411; 
 Wed, 27 May 2020 02:48:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s8sm2353489wrg.50.2020.05.27.02.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:48:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
Date: Wed, 27 May 2020 11:47:56 +0200
Message-Id: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_024805_084151_4AA89047 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mxsfb has vblank support, is atomic, but doesn't call
drm_crtc_vblank_on/off as it should. Not good.

With my next patch to add the drm_crtc_vblank_reset to helpers this
means not even the very first crtc enabling will vblanks work anymore,
since they'll just stay off forever.

Since mxsfb doesn't have any vblank waits of its own in the
enable/disable flow, nor an enable/disable_vblank callback we can do
the on/off as the first respectively last operation, and it should all
work.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 497cf443a9af..1891cd6deb2f 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
 	drm_panel_prepare(mxsfb->panel);
 	mxsfb_crtc_enable(mxsfb);
 	drm_panel_enable(mxsfb->panel);
+	drm_crtc_vblank_on(&pipe->crtc);
 }
 
 static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
@@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_pending_vblank_event *event;
 
+	drm_crtc_vblank_off(&pipe->crtc);
 	drm_panel_disable(mxsfb->panel);
 	mxsfb_crtc_disable(mxsfb);
 	drm_panel_unprepare(mxsfb->panel);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
