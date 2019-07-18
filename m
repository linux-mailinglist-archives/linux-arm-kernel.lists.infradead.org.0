Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2C76D1C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsuRmT2J91nb84feZ36zkytJ7ryof5bJop4bSkMuuOU=; b=WLu0YY7xgVGf4v
	l2sonvrcbqJtXab3ANNqVGe4VfJ4KeeEjGzOktiCKX8aYGDMwGBut82R9wz/ZG8+/v4/61Oaaiv8W
	D3aSI+P+MMkFcgkIOKN/xzeK2qkky9rfkc+0s2ikN95SDx0YTYQ70jfxDaX8NH8JAFj6nOpFHDR6Z
	b/R6UG4lV4rBslYVdGEwel1gXe72EZO0YuUJ7pisY2WwF8tBNG5nMWV+NO8bUXySGk/lUffKFkhtb
	619KRrZ6LXsujDPcNyl9Lu4/fuxZM/WmoDMTbZXfLONCZGPbylzgUegMf/KrFUyybi3RGH+Rtex62
	DlYgnKmwBT6L0BZ1sQYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho95Y-00017S-Qr; Thu, 18 Jul 2019 16:17:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho947-0007m9-07; Thu, 18 Jul 2019 16:15:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so27900740ljh.6;
 Thu, 18 Jul 2019 09:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6MYIEn1ZPyuv1rXYHIstqwkz6PcLGLc7Ica5A/O2ta8=;
 b=l/+A5TefNobm66FT7NA+1L1326lmg05N3R1te0STjlI/DicLKKwWdKIY2ffs2mhBOL
 kkjv9qFYw15vXqqFFAU9sEJM8CKG+KSw7PRGlqcLJa/9F7LsquNb3BHtsONIORKzC2qd
 N7+NAPnu749BDYCKNMo1fmjSOX1joYwHLHnffqp/TAgyjt/VDreMIqOFsazjOz5yvMRS
 qJhujeZDJuAY0Chs5hTRgGU3dzpNox/cPHJRbdEmZHk21I10l1L6lzfKzsmdsDEy0zN6
 yA3s3GZcX62oNEzKWMAHA3TfZUlL7L1P2nP6AYCTPrKLyMJ5Hj2RrA65pTnKp2PnEYRt
 Nf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=6MYIEn1ZPyuv1rXYHIstqwkz6PcLGLc7Ica5A/O2ta8=;
 b=N0UIZ9NmSOnNj1Ln72y64CowEbRBKG5UO/lRlu5+uvRE7CXHYGeoolObWPKg7Iv/wS
 XZr3gDk/crYXKrjs3+WW3QOP1+/vs6M/1zLEQMSJ+NSMuK55YKGg0GK8j5Vqf83hrEB/
 qWebC7BgvjvQ3pgULA795XXSrbHZmdMPQt7pB/3Bk5vpnP406DN2Whe1XoryHHNZ19S/
 PLDubXFuHxY3YTcnh4/r+0EKDbtW/yYe9SXW8LgOFtW2DfXW1V9ioJu9KKXOEhPBsyYF
 7+BkkfPjPGy1oa6VR09bP/Vomrz6JzBbqboXUFbJ0GtIo6VFVnJjFgbGVPEeFZvvIZHk
 sfAw==
X-Gm-Message-State: APjAAAWfLE2H/JrU2oOKykzIbZGM7mPqqb26s2Qu9OoDQNAF8XGPjKMm
 Zfu7L8IPE9GZu95bfzNpvQY=
X-Google-Smtp-Source: APXvYqx2GdlPCoRvteVmwbMwCMh5PJuLakxwccuByFw+yBBnrjbiYfadk2aOmQ7u2DxEu65vuBdQrA==
X-Received: by 2002:a2e:8ed2:: with SMTP id e18mr24703434ljl.235.1563466529166; 
 Thu, 18 Jul 2019 09:15:29 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 d21sm4057995lfc.73.2019.07.18.09.15.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 09:15:28 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH v1 03/11] drm: drop uapi dependency from drm_vblank.h
Date: Thu, 18 Jul 2019 18:14:59 +0200
Message-Id: <20190718161507.2047-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718161507.2047-1-sam@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091531_278242_F7555417 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drm_vblank.h included uapi/drm/drm.h.
It turns out this include was not required - delete it.

Note: uapi/drm/drm.h is included indirect via drm_file.h,
but there are no dependencies in drm_vblank.h so the removal
is legit.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Thierry Reding <treding@nvidia.com>
---
 include/drm/drm_vblank.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
index e528bb2f659d..9fe4ba8bc622 100644
--- a/include/drm/drm_vblank.h
+++ b/include/drm/drm_vblank.h
@@ -30,7 +30,6 @@
 
 #include <drm/drm_file.h>
 #include <drm/drm_modes.h>
-#include <uapi/drm/drm.h>
 
 struct drm_device;
 struct drm_crtc;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
