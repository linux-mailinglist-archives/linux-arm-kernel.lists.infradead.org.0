Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150BC17673A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 23:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtlTUNT4iNkyhuUaJ+2IKccPw7ALwgZeLfXGMs6vSsI=; b=lDhzWoA6HXKv8l
	mzVm+P/s8OS7G0ms6Br73ucRhXB6W+2dNUqnUTVUGyXdMUQ84uqm5tuFFtqL9IaiXZv9BAbOo+MlV
	i6li+zqCO8YCGm+H+BFCdWoSDLGJ2qMVa0jsjjdA+7IbNg3ylN8j5Q/YLYEGSy5AGzSmjhsmYriCV
	KXe4y34tRoG3HUaG7fbSHt4Cvdu7YhWnQPjehpKi9L2gS13GvaPseZelHdXJj99Z4IS/Pr32rDI22
	iwLhNdrgtY9espg7GNVZdZCc8uzOajc7Ss7oZUM08C5xC9iqImULQw3bu1ZVJxLfFbWkRpzQus7je
	He/HcKfCLswuxenRUoKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8tXi-0003ud-9W; Mon, 02 Mar 2020 22:28:06 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8tX7-0003R7-Ga
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 22:27:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id f15so839562wml.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 14:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yl3p3hBPFlOPkoSdkeZjXHmocqTG4wlFcxWCuis8faE=;
 b=BJjKTa1upJb+zW+g2KemiCGn2oj71gZr7WRaPkD8vJRBh6tVGNq8sk2paLvQUYSgq0
 XrvFC21US3WDHdXKJzUUru8SJGuMi5xJsyLE9Lvm+nHAgMwdClaU83nDCp94YBHmpSTS
 uX5xmOcnuhmuYur3VOpAdoedKgbc+pAeMQ6FE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yl3p3hBPFlOPkoSdkeZjXHmocqTG4wlFcxWCuis8faE=;
 b=IEtK869PB739+Yj0SBfMhK2taA6wEtDiHGmqeJkQZ9q2ijRau3n1Q1tXeUNinGIAaS
 xuyCwgmIkbGLmogRYIiiUJJFb/XDvmK3O8FsHypw6SgCya4KReSzcC156gLmhovtRkii
 CVSufkmvjqMgvaVnUS8ago2u4A4oHgCkz/zn3/Nbeo8VEw5dSALy3f4Lhn0MPLd+loIP
 VZMCij52Ye208RyZQ4LuYWVnBl7uTjbPcQT1vOnHQHfjdpXAPQhDEN2l0/MJsZ9PGCyq
 Bo3DflayvfZyi6w+3ADQvAxRpprK3hQ03Pb9LupjWJ22OcWDhxcbGKIbXRf35mPVKj1H
 BRMQ==
X-Gm-Message-State: ANhLgQ1T/YEUtfxgaHKJuq8jOpRCSCHjrIRa7Iv1pSv7tri55AlqKppz
 EgLnPJ2Qvvxt88kqnjQPtLczNQ==
X-Google-Smtp-Source: ADFU+vsV6snY+ze8Mw13KvoxQVCCldm+RRMJ8DbeXSTs1U1dY0PkObe2dTJFMO/9e6eMtrIGTWAiAQ==
X-Received: by 2002:a1c:25c6:: with SMTP id l189mr530634wml.104.1583188047595; 
 Mon, 02 Mar 2020 14:27:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:27 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 38/51] drm/stm: Drop explicit drm_mode_config_cleanup call
Date: Mon,  2 Mar 2020 23:26:18 +0100
Message-Id: <20200302222631.3861340-39-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_142729_604863_E622BEED 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Philippe Cornu <philippe.cornu@st.com>, Yannick Fertre <yannick.fertre@st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's right above the drm_dev_put().

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Philippe Cornu <philippe.cornu@st.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Yannick Fertre <yannick.fertre@st.com>
Cc: Philippe Cornu <philippe.cornu@st.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Vincent Abriou <vincent.abriou@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/stm/drv.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/stm/drv.c b/drivers/gpu/drm/stm/drv.c
index ea9fcbdc68b3..0f85dd86cafa 100644
--- a/drivers/gpu/drm/stm/drv.c
+++ b/drivers/gpu/drm/stm/drv.c
@@ -88,7 +88,9 @@ static int drv_load(struct drm_device *ddev)
 
 	ddev->dev_private = (void *)ldev;
 
-	drm_mode_config_init(ddev);
+	ret = drmm_mode_config_init(ddev);
+	if (ret)
+		return ret;
 
 	/*
 	 * set max width and height as default value.
@@ -103,7 +105,7 @@ static int drv_load(struct drm_device *ddev)
 
 	ret = ltdc_load(ddev);
 	if (ret)
-		goto err;
+		return ret;
 
 	drm_mode_config_reset(ddev);
 	drm_kms_helper_poll_init(ddev);
@@ -111,9 +113,6 @@ static int drv_load(struct drm_device *ddev)
 	platform_set_drvdata(pdev, ddev);
 
 	return 0;
-err:
-	drm_mode_config_cleanup(ddev);
-	return ret;
 }
 
 static void drv_unload(struct drm_device *ddev)
@@ -122,7 +121,6 @@ static void drv_unload(struct drm_device *ddev)
 
 	drm_kms_helper_poll_fini(ddev);
 	ltdc_unload(ddev);
-	drm_mode_config_cleanup(ddev);
 }
 
 static __maybe_unused int drv_suspend(struct device *dev)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
