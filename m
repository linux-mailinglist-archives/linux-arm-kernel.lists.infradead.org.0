Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011331F8D64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 07:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KVNuhO0kbAqXAnupDTjKS1chzTjkydJ9mqgx5NX6CQA=; b=MzDlJ83fRM0PMgt6s0IGsHqw9t
	BmirUmfJ15+qvi2J7Eio6njSoFy3+m8JZVc250pZLO8iX4YO9l5chOHML/orggFL5f6bg8IZMlmTg
	ISVyo9zv+teD4gocxRsrSes3NndWUta6w52Nc+xJNyTHfqs6AM+ShhrALB2UDFHGGBSgMAO2p0Q7Y
	wFsSEdczAVbbfNjSREvIQMc6Lt0A0SRGn36v8o2omyEQLgi5gJJW2TKTKg/cFMsafHuPvlPs4KmCG
	9VtZpTX0rmdOWf0IiSHJL9NcajP6onTCsd68mAekB6PLUbUj79uIbxTrFVWK9OXcXFbL0FpUUb2LF
	eYN8YIyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jki0J-0007HQ-L3; Mon, 15 Jun 2020 05:49:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jki0C-0007Gt-Nx
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 05:49:50 +0000
Received: by mail-io1-xd44.google.com with SMTP id q8so16512929iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 22:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7ruDvGofOhhRFxjxzvARwe0MCxEQwIr7VVI2CrJkuL4=;
 b=B9gX5dcbUS3bQsdiuc+bkQzsjfJd6Fx+AEvjavyFA2RhdMhufaEBmncOBD3hmq8PDJ
 iH5AEtTVMXidRaD8hAN2naz3vlWsBM12gwEyDWb4O56ctGvLDkWK88IWOGxcv+YqdrV1
 W417gOw8P7mKooMH3F5Q3YEZZdhyPszJPQp1il0m1BBN2sPz0i5VP0hvfDzreYKlZg7U
 InnfEKE6Rv/eW59qNfL1orn/KdSa39JC+pSkSpwqAJ4DnBOXtU82Q6PS+08jBQLiJA5q
 fN3he/jZsj12Df9LLUuLcb/lZRYVEscizts7xMOkjb6qfml4m0qVgxpHW3Bdlr+nAycN
 spfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7ruDvGofOhhRFxjxzvARwe0MCxEQwIr7VVI2CrJkuL4=;
 b=p0EP4Kqz28EcdhbOZJ7iRgLUdD1lHw8Uu0Qy1M9OZwu4UwbpHPt/abMLGvcpC4AEJb
 dr+yYptbUG1Nz8apI113G/sFYGPUcvnQfUksOws0OdYE3jbkTuAGw8bI8C0fLWNjURlD
 mCfUjw1UluagppgK3UZwjP9kP7Kj/lyMcwwyBaNpeWf4enTHsbz+IJ9j5+Ia6KvUBAx0
 nSEa//nNLtM+5OQzogO4QiGhV+8jcWsK4o9h7eBTPcbingLaulalM0CFO8KIQl9FoGi0
 gvAqIZo/lSungPy/uDlFLRSWtgztG1Mkj574//kwh75ETSWtfCmgX15xL6g43G2V1mB8
 xFOA==
X-Gm-Message-State: AOAM531phxBs0EE+zW3MNpVPj71V+tlRigJLHL11S0OK8q6FsAbJ737m
 K4yrUM7em6aMG61gDbdGl8E=
X-Google-Smtp-Source: ABdhPJxruih3vxQf+sbzwLJl+cYEVjlMuvcKUBOAnwdFXsNBfhW7Wku97FRJRruNTcJqrexR7qAQAg==
X-Received: by 2002:a6b:39c3:: with SMTP id g186mr24984270ioa.91.1592200187582; 
 Sun, 14 Jun 2020 22:49:47 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id k5sm7395066ili.80.2020.06.14.22.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 22:49:47 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm/exynos: fix ref count leak in mic_pre_enable
Date: Mon, 15 Jun 2020 00:49:28 -0500
Message-Id: <20200615054928.55188-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <027d9eb5-a1c1-c329-72c3-a555b71f8677@samsung.com>
References: <027d9eb5-a1c1-c329-72c3-a555b71f8677@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_224948_832261_1A0E280C 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mccamant@cs.umn.edu, emamd001@umn.edu, kjlu@umn.edu, wu000273@umn.edu,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

in mic_pre_enable, pm_runtime_get_sync is called which
increments the counter even in case of failure, leading to incorrect
ref count. In case of failure, decrement the ref count before returning.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
Changes in v2:
	- reuse the unlock label and call pm_runtime_put_noidle
---
---
 drivers/gpu/drm/exynos/exynos_drm_mic.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_mic.c b/drivers/gpu/drm/exynos/exynos_drm_mic.c
index a86abc173605..3821ea76a703 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_mic.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_mic.c
@@ -269,8 +269,10 @@ static void mic_pre_enable(struct drm_bridge *bridge)
 		goto unlock;
 
 	ret = pm_runtime_get_sync(mic->dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(mic->dev);
 		goto unlock;
+	}
 
 	mic_set_path(mic, 1);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
