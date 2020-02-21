Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6B61688C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 22:04:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC9KRRKISd820bwT0ZRPhvRH08j4+G3/OlFYLoe9CKI=; b=OD6F3+MzhG3B3y
	kYIPQDWRC+H+8dM/fjifF9PQ1lFAKDZsiYhaE5p1Dzb2Y6xCcyMrHr1d9ZealGh44JtOuzp8cHasW
	dRXvbWIhQflvva+FBO05Gg0b0eZcy17uwV4689An6AMAEkTtYWL6ZDWlAGpHeKg+0wLSP+OV6YGF/
	I50ApCYH8NPfRqcJltZKZ0gbg+OO77b7IlbeYBpXMMERTLhiSURyWy5DaVWNLfUX5fF51jFRHmaNs
	XfpYrKbZVq44F8plxKQZQ0KtolGt41pHh1l7DDo22rzumloBzWnnxlw9WSmF0QZ8klY2W2nz0E7AD
	F2OsDUs2qsty2NVPAYYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5FTK-00089M-97; Fri, 21 Feb 2020 21:04:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5FT6-00086e-Br
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 21:04:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id n3so3158166wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 13:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jT8UWtmCEe7v58pjwlPCLN4e+N26kni/TNK34oplFDI=;
 b=kVUB7YsXyQFdAalX8Zu/cVMVaG/L+cCDvwZ6URUB+WVQ5u2xM1ZQQTn6TdlDg7ARrm
 Vgs9NJuKKjiKCSnZKpUcxGvSNwSPngz8UUxPZCNqmsSsgjKwuVWEy48/cw+w4OsY1f2M
 GwuvdujNleYQ3vcEYDTCAo+29McLMgIe9Q0NA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jT8UWtmCEe7v58pjwlPCLN4e+N26kni/TNK34oplFDI=;
 b=hICApWHJS3v9W/mrlkiUe56Xq5UMxTwaS+4Z1hStu0WblRRkCdXPL2mt3O9T0PqG+U
 AAJ1Mm3Xq9yplK7k0V4mveecVsEp3wnRKF/bkATnrM1LmCN8hrG+QkCfoMVN+mFVO9Th
 eXfMs/KUaG9HsdKLY3GNbYg7H6o8kCqefCAnKSi1Um79qUUKmfUjIOaphj1WtF4TwIhq
 0KtGMI3cwlsMbjb1GjLMkktB5X+WZ/aUWb9iU2FqDesgqAd8mPCWXOexAbFrOmXMNzd3
 2JJKF+/pjdyYnWBeSyBD0aE4kodZ8yOaleF7sOeh9cAsIpVcTSnixWMEmWvhr1bukGfM
 AtAQ==
X-Gm-Message-State: APjAAAWxlVu2mgE93K9FHtKf6tAmfFBurxa03KaCRNaq97J2z4spWKBA
 w0ov64rX4s+0YdarV0qAgUiBvQ==
X-Google-Smtp-Source: APXvYqzTcLQxzJVLV0ul5onT0Wf22eotmH+CNCufnIy14x7rz8AwYEOSIX3ywkWjz6YNVTIxU50hXQ==
X-Received: by 2002:a1c:a594:: with SMTP id o142mr5340108wme.146.1582319053293; 
 Fri, 21 Feb 2020 13:04:13 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:11 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 34/51] drm/meson: Drop explicit drm_mode_config_cleanup call
Date: Fri, 21 Feb 2020 22:03:02 +0100
Message-Id: <20200221210319.2245170-35-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_130416_467552_139F0902 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kevin Hilman <khilman@baylibre.com>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
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
index b5f5eb7b4bb9..ae94d14ab7bc 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -284,7 +284,9 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	/* Remove early framebuffers (ie. simplefb) */
 	meson_remove_framebuffers();
 
-	drm_mode_config_init(drm);
+	ret = drm_mode_config_init(drm);
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
