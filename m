Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F167E6D1CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/M+FC8+U4KxCBiFTUl5FBV3qZaTm0qSmNPI5xYF3Wwc=; b=bgzi4wRHbqCcNp
	UBrOctdOzBFAJJVAVZraSNMT6iJ4LHFGamqQPZF1Dboz4IN6iIDF2JLvbmxBS6KOcpM/5UnSFAo9/
	MbmyvvDFL45Khi1YB+csj/fUI63fpEnLuZqj8TSXnyIsicqNh7h6vPt3PmL3ICYxLNZstADElScHL
	oD7FHVpNKmzbjeyaInGfwUzzBxTdd885qFp/dOjbNBXZXdkCwCRF3YXYluph46tqW3s0wja/YjgIs
	zxaR+EN9qpAATnwbfH6BSQKYci1FgPwVQccGNjxpP2rrBnv+fD4CZoQS/CQSTJ5ldnR7V8HC1G8v7
	0SoWsST/w4A5nnTRZ+Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho968-0001d1-IW; Thu, 18 Jul 2019 16:17:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho949-0007sY-Ut; Thu, 18 Jul 2019 16:15:35 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so27900877ljh.6;
 Thu, 18 Jul 2019 09:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vfJth78zrsCE8EvAkb2q7xxIdGu3poPk3dyoAqmz7bA=;
 b=BbtCb9g2DsNiEp4NQaoJ4QYlf9TOBMn5FNfXAILkgRxVvjMv4oYQ2QWQur2QpY1oDs
 tY+hq6tQpdn6sv4GaAaRN3zqoKMtOJxKTS+CE/FeurecYR2py7DmD+wOYqDqFPliavRD
 kUvnCwNnxdpmg77SNaygFlJnpzjhLEFeu3r3pjJqPBA1qYv13+DJUC4oqyBIegVvlLUf
 yV55m8LLBBHpOjCBjccG83p4/fiVAPoDBnjNwfJNh1ay525CqTZIoid4MD9BRXItWgVc
 N7jdcGxdFSDusx5NEMh0a+wZcDux71kNRXlqKP3VfMBmJJZlGukoBFODa+OKNFpsR1xe
 1F0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=vfJth78zrsCE8EvAkb2q7xxIdGu3poPk3dyoAqmz7bA=;
 b=LqbK/+jZVxnm50TMxZKpqmoBc06FIUJekbIkibPN24RYwGYGQSRp36XhEvV7CFkHXo
 yBvkoU+PG1eH2NzcQ1wTZPFuqDvfDM+qgDjHoF6LJYIl4s2d6yqcSgEUvrZwH2uOkNOL
 b32MPYEpzrp+YZLfc/Mt2W0sXrzK/5SJrT9RWAahQGRsTP8lDj5jOf5prgHNRsIWwIRl
 +d7mR2OeHc+Czs3Sg/y4qHEBdIHZB2vyFkhWdZok/LIA+6ffNvOUVC6k7piiJw3YWkqn
 B6CL0H22Whf2wmbJlw/K1eaXMVakqTBw8zV7UqcRDJ9WThZ0RQA0uJ1QlQEheItwzBJj
 0DCw==
X-Gm-Message-State: APjAAAUe+p/ZN9d/MQiSFFKowg4XgTfSIW6hF6CSHeJZ5zdrRV9SIXeL
 MzRwTjEc4Dpccdu+1pH1fYA=
X-Google-Smtp-Source: APXvYqz+lvIEFfsf44rKsdxmLLQVJPn5lk9Rv8gUung+m8ggZXDMg+iNeOqEP6Hx4DqN5fgQu97mtQ==
X-Received: by 2002:a2e:3013:: with SMTP id w19mr24846595ljw.73.1563466532065; 
 Thu, 18 Jul 2019 09:15:32 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:31 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 05/11] drm/vblank: drop use of DRM_WAIT_ON()
Date: Thu, 18 Jul 2019 18:15:01 +0200
Message-Id: <20190718161507.2047-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091534_009385_AF96F885 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DRM_WAIT_ON() is from the deprecated drm_os_linux header and
the modern replacement is the wait_event_*.

The return values differ, so a conversion is needed to
keep the original interface towards userspace.
Introduced a switch/case to make code obvious and to allow
different debug prints depending on the result.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_vblank.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 603ab105125d..8e9ac187500e 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -31,7 +31,6 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_print.h>
-#include <drm/drm_os_linux.h>
 #include <drm/drm_vblank.h>
 
 #include "drm_internal.h"
@@ -1672,19 +1671,31 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 	if (req_seq != seq) {
 		DRM_DEBUG("waiting on vblank count %llu, crtc %u\n",
 			  req_seq, pipe);
-		DRM_WAIT_ON(ret, vblank->queue, 3 * HZ,
-			    vblank_passed(drm_vblank_count(dev, pipe),
-					  req_seq) ||
-			    !READ_ONCE(vblank->enabled));
+		ret = wait_event_interruptible_timeout(vblank->queue,
+			vblank_passed(drm_vblank_count(dev, pipe), req_seq) ||
+				      !READ_ONCE(vblank->enabled),
+			msecs_to_jiffies(3000));
 	}
 
-	if (ret != -EINTR) {
+	switch (ret) {
+	case 0:
+		/* timeout */
+		ret = -EBUSY;
 		drm_wait_vblank_reply(dev, pipe, &vblwait->reply);
-
-		DRM_DEBUG("crtc %d returning %u to client\n",
+		DRM_DEBUG("timeout waiting for vblank. crtc %d returning %u to client\n",
 			  pipe, vblwait->reply.sequence);
-	} else {
+		break;
+	case -ERESTARTSYS:
+		/* interrupted by signal */
+		ret = -EINTR;
 		DRM_DEBUG("crtc %d vblank wait interrupted by signal\n", pipe);
+		break;
+	default:
+		ret = 0;
+		drm_wait_vblank_reply(dev, pipe, &vblwait->reply);
+		DRM_DEBUG("crtc %d returning %u to client\n",
+			  pipe, vblwait->reply.sequence);
+		break;
 	}
 
 done:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
