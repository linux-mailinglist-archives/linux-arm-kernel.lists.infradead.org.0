Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBFC6D1C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Lrbcik3ddr0KaEoYNm9DK6aqPHz0xpYVxJMIKeceKc=; b=JeIsLH97F3vDfj
	UUbYAGIf0R+oj7Q+F949U4YhFqYnxOI53EocK49G5X6GPmXPYxQ9u9WLo0MsHVBgSDF9/CHRNLpbz
	bSta/6D9S8ggZTCofTWe+3ORKmvSuY3pfx+QyWEQJahKYs76dszW1pHQD1WXznUPY39dljlIpfvuc
	TWpgKkNM3OmUz3BK6p3JkaXiEaIYCfMVQMg9H7al0qXxSoKKs34hGxy+eH7pGECk9iqGetlHdhRn4
	D1szIYQ3XoD7ybasRUj48H066gtd0hx47l/zfp1DjzbS0u4N51u0lq/3p1kbLo9L69+x870RHieG/
	wgbZ6fe5ntYxDfK/KvFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho95F-0000dy-PT; Thu, 18 Jul 2019 16:16:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho945-0007lK-AJ; Thu, 18 Jul 2019 16:15:30 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so15343069lfh.13;
 Thu, 18 Jul 2019 09:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZMM3AoTDxthXTgGf4L3oHv9Xw8A43N9eoN7QWgZY2HA=;
 b=aM3juu6pRx62RK8ZsZjl3w2sEqjDvq1T9hwgF2fi2kslQZ9EVXRy1TrnvCoAA6wRjy
 0Hpa2xhbcQlNmWLfKyJ7d7t3Pe7t1boHg1EoiH8q2Yx6V6SuQml6DDhpfRmZhzTX+Z5V
 7ttwmNtHmnE89Xb9pXYXsvarcZWZTALLRTmPEeR6B3Kw/Dyycfa2IlODdlQg0SiwGqz0
 /gVPZFpXU6MohWNT2XzAkCuqQd5fFixQrnuDs22LDOt4CTm2M0C+o2awH9UGs9ajFJLw
 oqw+1J5RU3riDwdphpwIcpkaQzsHX6YgVfn+tXrnTmAWg7zoNE2VEG9zF19ChGelU3Oc
 5+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=ZMM3AoTDxthXTgGf4L3oHv9Xw8A43N9eoN7QWgZY2HA=;
 b=XfHhz2oTBVxPjV9m9Zwb4Hog6AEBZohQUIv9JF/7OBUoZZhJ3MkzGI+tIAI+6Ty4oR
 bUz1Xax8alv0/as2iE85Vrlx3NyYaSU2SCKdPpGMSl2QqhI/9k7hZgSuP1sCPpuX/tAC
 WK7jwNbbwq65efTipd8SCeRtlaWTOdzLXTFwR06WzcsoFwVu8Ir2BeSpogmKa8MgdSJ8
 d88lZGnxetI9fWs1EH+Nkbz3pwg9C7vkTLcMuMom2O5WRMiraSjHfD1DpPl4o8DTz7t2
 lNMZNs2O6DFz3PCxOlYpENQJ3j7YhqBDtlqtyabmC1tlcHqgHIRpwmE7D3bSbgQDS3Ns
 OcEA==
X-Gm-Message-State: APjAAAUD6bzU3Ti1uNGBqiXT7WNLsBs2rMTJEB+qZMx14c4KXDglgLEN
 jA960AoMVI0vgaaUGLUyvjY=
X-Google-Smtp-Source: APXvYqxjOhgC8N6n7ZnOJ74I1kbAhFiifIbk15ykKdzDjD5ivSxzoVTvrE+Xh/kq9CdAYpSgPT/Trw==
X-Received: by 2002:ac2:5981:: with SMTP id w1mr21168038lfn.85.1563466527477; 
 Thu, 18 Jul 2019 09:15:27 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:27 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 02/11] drm: drop uapi dependency from drm_print.h
Date: Thu, 18 Jul 2019 18:14:58 +0200
Message-Id: <20190718161507.2047-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091529_372810_2A4DECA2 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org, Stefan Agner <stefan@agner.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drm_print.h used DRM_NAME - thus adding a dependency from
include/drm/drm_print.h => uapi/drm/drm.h

Hardcode the name "drm" to break this dependency.
The idea is that there shall be a minimal dependency
between include/drm/* and uapi/*

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 include/drm/drm_print.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index a5d6f2f3e430..760d1bd0eaf1 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -32,8 +32,6 @@
 #include <linux/device.h>
 #include <linux/debugfs.h>
 
-#include <drm/drm.h>
-
 /**
  * DOC: print
  *
@@ -287,7 +285,7 @@ void drm_err(const char *format, ...);
 /* Macros to make printk easier */
 
 #define _DRM_PRINTK(once, level, fmt, ...)				\
-	printk##once(KERN_##level "[" DRM_NAME "] " fmt, ##__VA_ARGS__)
+	printk##once(KERN_##level "[drm] " fmt, ##__VA_ARGS__)
 
 #define DRM_INFO(fmt, ...)						\
 	_DRM_PRINTK(, INFO, fmt, ##__VA_ARGS__)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
