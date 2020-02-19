Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F09164190
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8x1dj1/nuzFffkZzvVgSu+adO8XyhnKYJBNNGlUWA8=; b=rajx1uCs7VhK8g
	eJaq86iqRe6jDXWDuRaiZfrQ/+ZX1SeUhdoyTo83tptAs35bUbM7yUS0vBi9uto19UrYkTZwm33Nf
	3Vc97KiPp90YHvi8zJNjInT5UV5in6Myro40TuK55t85r48PE03UeydoBmemeXeaAv4SdSHDuhAaG
	Grlu+yUZlmbnGdXgxnsisrs+n9k2M+K5y9Fs3cgto/WEk6IHsGcE0zQ3orao9hmr+nOJS9d64S8l4
	AAblgGdVHOxfdu8If5j71Zk5ZjYgl72bkH1Mw+KMoD10X+Vzm70obc+tGde+P2qEUKSz0YsQZkGCy
	zzqW0J8A6rq1bN+xSAtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MUt-0004VU-Io; Wed, 19 Feb 2020 10:22:27 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MUh-0004UC-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:22:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so5871653wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 02:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9HvFBn5C1ybJ3Jl6cvECGju7iOD2DUuUpqtaZAjKhPo=;
 b=PJzH6ke5ACy+gnyH1H0O/EOH30mw1GGgrDUmk5BBrZ/PUN2lMzraTEUZ80YFeUJy4i
 BT0R8EBhS9ae4DJVQVeEUw4g7yETEV2yMkMheO3s0PZmlK2E8r1Rt8aaMMGH+iMrxZ2+
 6Km7jEfY3B17urqmHlHLEOm/FfWvNqws8o+K8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9HvFBn5C1ybJ3Jl6cvECGju7iOD2DUuUpqtaZAjKhPo=;
 b=Olah8qbERzyuiQBn79zO0oNxkNmoVLofP5aRHqUZe/ucZNBxlNMH6mT2E+qq8gwdDo
 dzdYEXd7XSy9U0j6IgTcY5Rd4HUFKzJOc3rJ9n4ucpmSC/4i7JULE+rru36gwPakg0UG
 1Nu03QBxxnE9vQZf3gW3EtfF3tKxUCM/BqNcLSWDsU0QMBorepXhgS7WR4uw5ioDt79L
 Ciwpwo/sZFtCjmmd/ZBUvE4bwIB2t+WVVyKrELuQ+5tS1zhzUFMfI66ep7vvxN1ew486
 bRPyO428CAPbQcUq5YacP+YltcZasVf9dknxJEd5TwlM5rg7k/ECwe2mwqsnUzDbDc3S
 RuyQ==
X-Gm-Message-State: APjAAAXcpwMKM6YvG7SeHO1vPbAs+2089eS5THUTriWnUlNKQ5owdYeY
 cQjKRWUtO81uDB9rlZeL6tBO3g==
X-Google-Smtp-Source: APXvYqwwkb8pYBRO6k0sbQ0TfL7rK6fN22BCq0dEtf+gNB0N9I1n8/PTpRHwumXVfIV0/n6efkAHzg==
X-Received: by 2002:a1c:4905:: with SMTP id w5mr4798090wma.129.1582107733246; 
 Wed, 19 Feb 2020 02:22:13 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:12 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 35/52] drm/meson: Drop explicit drm_mode_config_cleanup call
Date: Wed, 19 Feb 2020 11:21:05 +0100
Message-Id: <20200219102122.1607365-36-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022215_479595_29DA4B8F 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's right above the drm_dev_put().

Aside: This driver gets its devm_ stuff all wrong wrt drm_device and
anything hanging off that. Not the only one unfortunately.

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
