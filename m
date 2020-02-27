Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5B2172689
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC9KRRKISd820bwT0ZRPhvRH08j4+G3/OlFYLoe9CKI=; b=kS0cSAAthCiw8e
	Jsr11mcVJqvDk6Vn7YdrW6WUTXFDZPdNcEZ6ekmpGLgFVrIOKc1YkzYxlODvVm0LPWbn1pNLQD1aR
	eavpsNDnJnoAnmrOOUdOG/NrhnzqJMQdLSjRflPF3x6i9SqTYhTOH819prSuLWpmVex4tWImkLQd0
	M+66S8IWYKtIxbQ30N4zK9QSsFSxG73ZhzUYX1lKcJ6Miv0FcuRLsTiRIl7ZbGIMGKppOJiL6v0jb
	Lol4EOGgu+si7OEi3B0yUgu68/AuTJ26ZZC5Ak4oM9xUlSWHkgWeTidSMoNvoCUdxuKB3F/nF6jZp
	T2YrVbOFOSuhF96rIGQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Nhw-0003Fo-LN; Thu, 27 Feb 2020 18:16:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nhm-0003Ek-2B
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:16:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id z15so4673869wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jT8UWtmCEe7v58pjwlPCLN4e+N26kni/TNK34oplFDI=;
 b=j1urywz28vACwh8HeXCI0pWn82lWe/B/YSJs06vF1xxUNVwLwrWhvEcZUCt+X61S5B
 B4EFdH6XlxywuP9aOi6Byn4Bmz1vczC+Gp9d7e5XmInWuFB2es3F+OYp1ZA68V5cLlLG
 1rgm/RSRSw/Vw7nRvs2pGGUg/ufCKGhRrtrz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jT8UWtmCEe7v58pjwlPCLN4e+N26kni/TNK34oplFDI=;
 b=Xm8ZY4fDlnbLelNRzo8rwq5WYio60PHuenSlxceeVFWLZh1t+ERDZMRM6ChLHKqWho
 eFywkSNNH/jvjQF8XE+KPEUi5IaKGHE9whfLkUGotSVWGrG3kD7TEjBzqyWlLOvNa2G6
 IkYDWnJSLuri0G021teCtkdLT+GNub/17VwTDHciwckzkhtu+NRYPYKY/UP0XYSuIqf8
 +hH60iLxvqD03EUvk5BrYInhXBtZUWBWCLptM3QmNLYn1iF41MIC6r+lVtc/tGgyRr35
 fPl+y8iyoeSHvcUYx27wf+BCStdRmnqI+MoyniByjawhX2PGYIFUj6ciicOLlD+d5es0
 ELjA==
X-Gm-Message-State: APjAAAVX+qCHEj/dikVWP/cO6EzKeJVQRRmsarOJ40OB7UgQDMlW2A7K
 nPreUEH4KKS/P30sCcv8GTes2w==
X-Google-Smtp-Source: APXvYqwp8W10k7C5K+ykKuRFLORaJou4Cd5K/QJEEhZlzQs0FVvABfEDei7QmchEa6j8YPIsywTXaQ==
X-Received: by 2002:adf:fc08:: with SMTP id i8mr153646wrr.104.1582827372723;
 Thu, 27 Feb 2020 10:16:12 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:12 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 34/51] drm/meson: Drop explicit drm_mode_config_cleanup call
Date: Thu, 27 Feb 2020 19:15:05 +0100
Message-Id: <20200227181522.2711142-35-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_101614_105699_36538D5A 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 m.felsch@pengutronix.de, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kevin Hilman <khilman@baylibre.com>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
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
