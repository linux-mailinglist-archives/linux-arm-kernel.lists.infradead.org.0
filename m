Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A4E1726B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLZm7gG18cZeMZc+VoACiJg717A3jeBF4erQmAg1Y+8=; b=Stc7lpzj9i4Kap
	DKSMryEEQI8agOCZHbSXzGQr8JPOwGU0j5rmHM8tIa50E7UCNtOelCfmNpDVdEotryNLWhUjMzd6L
	egfu5OWdzz9TYzphF0Oi/t1dN43KpziujlVdx6vEEp4a+rb63jFes9jPyDM7wFybCTNMf1dsHcMNW
	Jqow6T7K+RK+e/QMHuKFw8mzhuO4pXewcYWGTZbJMoUzeAOYRRhxb/BNre3VjUqBKehb3538s4GNK
	nG1DfAqzzSoqZnXSfMMTo73yUCx7ZEVxHN/IcIHXgXA0EfwW/9fAR8uIKu1ORkcRhNEzJ3+jT2XJb
	jfhy7WZG499r94clXM1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Nib-0003sr-TU; Thu, 27 Feb 2020 18:17:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nhr-0003II-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:16:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id a141so435972wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HAoa+ReMwHomgBUwnpPQde3KSJuaKiY678ziXw+Di+w=;
 b=cakfD6r55fCvzGarKFBqYglf8FTssyC3z94iBfMxX+RPvDStBq4cJ6PQluE3NXoaOe
 Jto68nza+PDrdJJgHDwMNDtBeDYMu5ZydgCkKAqOm/u7XZcdUZbInE47pFHWWth83QYN
 USDSLZ1mGj4L2n8QFTT+064FlhOP91dlGGxyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HAoa+ReMwHomgBUwnpPQde3KSJuaKiY678ziXw+Di+w=;
 b=DQN5WsuMdnRP/ZA6ygB/tGQkVPuoSRDmwXYzVAin+fDc7HzGO7DKUYPVXqAogRhUCb
 sejOydpGFTlQAK1b8S1K4ofbGDf2vJoKLzYNMgu139bAnv3eWPzTrqiqMQWZkKNYmK0U
 36F8Z3D8t1dupuuymSJwpmOd8yUMciFRFS7p1TDqgjcIfFWZEjVcxsa6BsbcAbbm++sk
 VxumWgzHYTbkVzRH0Ypoa3jGZlwuMqsnN284LrzjWeYVb4NHxX7ik0H1/d6tgnRXZgOv
 fUZ0JewMP0Siw9nU/4p1GIGdYkaM3nGsULR4pCqi9msNtbxQQ+aPBPluWNqbsu4kAsnI
 uwEg==
X-Gm-Message-State: APjAAAU4PHJdR1sub+SCApnrckbWOtY5pTPjCWQGAHyDQ6rOmDl8eVkQ
 g9LOhm5ZZSFHevKZAf0VE01ERg==
X-Google-Smtp-Source: APXvYqzESsriBDxrVIZJy4KqipgF40cfCthLA8Ed/cuXHvWibnJy7wBKDwRSLha8t+4ho2lGul0IBg==
X-Received: by 2002:a1c:1f56:: with SMTP id f83mr15585wmf.101.1582827377964;
 Thu, 27 Feb 2020 10:16:17 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:16 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 38/51] drm/stm: Drop explicit drm_mode_config_cleanup call
Date: Thu, 27 Feb 2020 19:15:09 +0100
Message-Id: <20200227181522.2711142-39-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_101619_759974_4740CE0A 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Philippe Cornu <philippe.cornu@st.com>, m.felsch@pengutronix.de,
 Yannick Fertre <yannick.fertre@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
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

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

v2: Explain why this cleanup is possible (Laurent).

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
index ea9fcbdc68b3..5b374531dd8c 100644
--- a/drivers/gpu/drm/stm/drv.c
+++ b/drivers/gpu/drm/stm/drv.c
@@ -88,7 +88,9 @@ static int drv_load(struct drm_device *ddev)
 
 	ddev->dev_private = (void *)ldev;
 
-	drm_mode_config_init(ddev);
+	ret = drm_mode_config_init(ddev);
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
