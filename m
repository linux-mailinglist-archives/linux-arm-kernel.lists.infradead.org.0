Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEFB176711
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 23:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMrCQIAgSK720atLmZisjz5b4UHPJtKvQYaNYPJ0Qmg=; b=JvoE+Fa7RCjIhc
	NzpyDAbPCc9BTZlZH7KeFpbh3hXwCL4xmM1qZ86ere+PFxz0bZDj3pZw4jUPAxXhJ8juQAytbQLXy
	cxEeWbiWIEjCgzayxQM5a8mZDNs+jVsI4dp2E25f35OvZ/8WAoiowxC3rfJscPiT66oOvYriubxu4
	HXuTYHInDSdxF3ETVZ2lBUU2cqYybRGl6cDEJsMLa6sSegvdAxKtRKAfdrbcXUSk+zawL38OHR9WH
	ze9jkQW1DgWlt8l4VBIrzckMBiO3wjtf8cAUFRgxj2zsFxfjIFwHHX5ATG1CNkHdqrSOcai1sUn/M
	LeNSDxQ+wM5Ep1j8iyJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8tX9-0003Pk-EV; Mon, 02 Mar 2020 22:27:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8tX2-0003P3-Ha
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 22:27:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so1902756wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 14:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pw5QqrfG2RgLwLYrDhVp80l9fnGnOfrvey/8drqHpHM=;
 b=MrPcnxfbao07IGiixrPJTSeiauRZ8LZ1xF4DnuO3LKoMbZSliTkgsyK1ISWn3+ATg/
 hqtxg9jIMaJJuUeKgr/cvqPHeEx91V9x8m5nswQCxmKrksE+uxavszHdfkZAIMDw9prJ
 jeVXdjMlCSK/9uaPsaRICjfdND3cREQg7v/Es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pw5QqrfG2RgLwLYrDhVp80l9fnGnOfrvey/8drqHpHM=;
 b=MeIt6pMFIK5xqg+4SnFdK74NhnxMc9bgLDRstIJjItYfvruD/Wcxirha5UM0LTv78H
 /rNKrq/ZI3o7p74Y7XKoesY1VfPAhstMvFFSpT4FlVnPYQBw0bENgLtxQmL2ht0Ah6QK
 g8/UxsUbj7SA8sBvj4CKMwvq2l8uc3yQ6Y+iWJ3TUs2h0A6AmdGG7AWOaLTPjT+tf5h+
 zmGEtJOBwwKZVw4vg9MST6R7R0hCKWFnBkJvkXW3f5yQuxsp4ZgxLGcPvZ31hXDrT3Ez
 VxUiv9PIiTwhj4RT3VJuA8W4NG97PFHUQIiDfP8AlYw4CdnBe1OtQUxzNQ3IvpHjyPTI
 qHSw==
X-Gm-Message-State: ANhLgQ3ibcRN6+m489VfBnF3fAvji9TkWrtWzJIw05sfy59JsxFMQ7AO
 yX7HxbVwkcNOy+Gz+hEMFm019w==
X-Google-Smtp-Source: ADFU+vsTFOKD20gzbzZfkTT8QuXbSOhK0ILlysvVCCIQ/Jhu4BysiOPZ5axKJP8OA5+1qd/7gZ3zxw==
X-Received: by 2002:adf:df8f:: with SMTP id z15mr1599343wrl.184.1583188042987; 
 Mon, 02 Mar 2020 14:27:22 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:22 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 34/51] drm/meson: Drop explicit drm_mode_config_cleanup call
Date: Mon,  2 Mar 2020 23:26:14 +0100
Message-Id: <20200302222631.3861340-35-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_142724_582218_D05DDC18 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Kevin Hilman <khilman@baylibre.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-amlogic@lists.infradead.org,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's right above the drm_dev_put().

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

Aside: This driver gets its devm_ stuff all wrong wrt drm_device and
anything hanging off that. Not the only one unfortunately.

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com> (v2)
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/meson/meson_drv.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index b5f5eb7b4bb9..6f29fab79952 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -284,7 +284,9 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	/* Remove early framebuffers (ie. simplefb) */
 	meson_remove_framebuffers();
 
-	drm_mode_config_init(drm);
+	ret = drmm_mode_config_init(drm);
+	if (ret)
+		goto free_drm;
 	drm->mode_config.max_width = 3840;
 	drm->mode_config.max_height = 2160;
 	drm->mode_config.funcs = &meson_mode_config_funcs;
@@ -379,7 +381,6 @@ static void meson_drv_unbind(struct device *dev)
 	drm_dev_unregister(drm);
 	drm_irq_uninstall(drm);
 	drm_kms_helper_poll_fini(drm);
-	drm_mode_config_cleanup(drm);
 	drm_dev_put(drm);
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
