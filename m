Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468D31313B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vULbRImuDoUz7e7nUgYmTiBlojo+sPWihRxW7r1y6Zw=; b=kZRWF602Y6wBh1
	uQ/fSq60OANGu/Y75bAMbZTROpwhjBLEja6KJYXZeooKTRY4p5szCzTYc8/dKgyt8VCJtuq0srwgj
	TqXKAzbgv5VLoNuogf9hEm3Jnx34v1d/psvy96ExnqOwHzyl6Bmab7zxt0qAGVcJhVu+XiWbAQSW3
	GryPHSJUXZ4WVsWfF+t8M1lClN8wu6mxyvVdlhrtyhQgcJ67HjdB2kNdEOyfXHV89JoqedfVbdh1P
	DmDXgXwqSlmUnFYl2Z4lQKht7vtRsc/PsSOKnuR97YwOfI/rNAtYMaFb5vw4rRvX/rHPVt+mCVl4E
	HVhUJhcQQL+wsYvvfiqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaB9-0003Lj-Mv; Fri, 03 May 2019 15:32:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaAO-0002UP-Fo
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:32:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 080B2165C;
 Fri,  3 May 2019 08:32:04 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BBB323F557;
 Fri,  3 May 2019 08:32:02 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com
Subject: [PATCH 4/4] drm/panfrost: Show stored feature registers
Date: Fri,  3 May 2019 16:31:45 +0100
Message-Id: <ce5e414adb008baeed9e2ceb9c88f28d5c74ea42.1556195258.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1556195258.git.robin.murphy@arm.com>
References: <cover.1556195258.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_083204_532626_B3BABACA 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Re-reading the feature registers for the sake of displaying the raw
values seems pointless, and in fact showing the copies that we've
already read and stored is arguably more useful in terms of giving
exposure to any potential bugs in that part of the process.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/gpu/drm/panfrost/panfrost_gpu.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gpu.c b/drivers/gpu/drm/panfrost/panfrost_gpu.c
index 42511fc1fea0..58ef25573cda 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gpu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gpu.c
@@ -278,13 +278,13 @@ static void panfrost_gpu_init_features(struct panfrost_device *pfdev)
 		 pfdev->features.hw_issues);
 
 	dev_info(pfdev->dev, "Features: L2:0x%08x Shader:0x%08x Tiler:0x%08x Mem:0x%0x MMU:0x%08x AS:0x%x JS:0x%x",
-		 gpu_read(pfdev, GPU_L2_FEATURES),
-		 gpu_read(pfdev, GPU_CORE_FEATURES),
-		 gpu_read(pfdev, GPU_TILER_FEATURES),
-		 gpu_read(pfdev, GPU_MEM_FEATURES),
-		 gpu_read(pfdev, GPU_MMU_FEATURES),
-		 gpu_read(pfdev, GPU_AS_PRESENT),
-		 gpu_read(pfdev, GPU_JS_PRESENT));
+		 pfdev->features.l2_features,
+		 pfdev->features.core_features,
+		 pfdev->features.tiler_features,
+		 pfdev->features.mem_features,
+		 pfdev->features.mmu_features,
+		 pfdev->features.as_present,
+		 pfdev->features.js_present);
 
 	dev_info(pfdev->dev, "shader_present=0x%0llx l2_present=0x%0llx",
 		 pfdev->features.shader_present, pfdev->features.l2_present);
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
