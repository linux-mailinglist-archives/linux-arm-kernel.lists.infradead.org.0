Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E8018F773
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcDdhVxNsPuvA7fxz/g8Na4lvZT9dMn3uCIvn9N665c=; b=HA2yobZQLPZd4G
	0dEj1WZQG6ryh4oGXGRdQzT918jcRH9jF0GXZiUiaM5W6/hheHlTpI7bCvLwNSO6yzIcSzqRrJZqU
	uwN8GDAtC2uR6Fg+stPFU3EOK7cCVZ3SudWf0pbx/SCWic87wfVwXQW47bKJ3EuDORxst8MaUFuWE
	W5Oicw5rz59L6S9QA3TyRsfEUV60JLWj6qSBA2rMS/m9UKaTPfpqnYWjqEDYDkboqzJpETSsyTINN
	Q7TB+pfmsrwVRUjs9fo5foaVq+1UJjfoVqM3qfV9fUMAis2lRD/A5F0r0rMVcevWXJH3AK1XWFJ+k
	JtbmTwg10E7DSuEh+WcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOPq-0002rg-1D; Mon, 23 Mar 2020 14:50:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOPf-0002gY-8S
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:50:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id c187so14950070wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 07:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i34UbOzUs3REVmAk537DyHJucnx+pUblYHjMYnRBadQ=;
 b=NqNc9XHoIQZ8V6qZY8+MeP1dG+j4Hvxyvf7S0NYS9BnpjAt4yansdlyvBEq9+ewTMe
 f33PqnD7Kr8gQe5qqf8ONzbgvxl8LDkaapE+XnTdergoGgYcJVxD0Ct0dm7jFYJrQzii
 bhOUKF6S5AhgZW6Oyr2xxHMsoXyrn4vseWNFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i34UbOzUs3REVmAk537DyHJucnx+pUblYHjMYnRBadQ=;
 b=DDbNxE0m/nz/A4MaHvaLo6y6KGr1euLdte6+oTFiICixpzAxwN19JrGVG6DFgXGWZT
 lDB1MRipzOCUfjiC7QsCbOuu5iU/8HQCdwlzMz7ZR3LQHOrXmtdtaCeHhdSyP0q/0dei
 KQAn+YE71i1hUPe2lLDgqE+dbugTBMUYHKoMQwQCNhi6wd1Iveqk+6XBlq7Br1dZNruD
 bXa9FzG7wgxawkqhL5GsiS/Qr7/P7FUiZyIr39kpAVVmb1EbXdQfie2ZHpUPWeLAdeRU
 wskDdDNRULvhu+ZzZLfdEoYkeXn3aWp8xxljJTHljCWrt/Q5V6R0R99oKTvaKGGAu5HQ
 Ib4w==
X-Gm-Message-State: ANhLgQ2r8KOZFcQ5O54Ng7qFkf9MeiGVaUvg4n0f+hcgnQVS0S8E5iA3
 8cGVb19kU/1RMiEHJmHCT40+YQ==
X-Google-Smtp-Source: ADFU+vvry3T0NfLoW2WN162JPNdEkpQ0wBkkc79L4miLaCxGPcNEj2L8c1iiwD3cwBqU4s7IAUyDAg==
X-Received: by 2002:a1c:a9cf:: with SMTP id
 s198mr26541733wme.115.1584975045317; 
 Mon, 23 Mar 2020 07:50:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 34/51] drm/meson: Drop explicit drm_mode_config_cleanup call
Date: Mon, 23 Mar 2020 15:49:33 +0100
Message-Id: <20200323144950.3018436-35-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075047_372467_321D195B 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
