Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F5614C2E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c0d98z89C7s0q7TPrS3uL0JxpwuoLr4sUDpZCTvvvZU=; b=cHesg7wkgHSl4xnZ3HiNKi5aPh
	4TdS7NCVyz0a9o7204OxL1OugiOZNloYEjo1rulrWAm7UXFS5cI5cBRXisTC7nbOv4rJUVNbyMs4T
	XMGYpDS/nk5MEQ4kybVq6TuLUCQ2ySl1qvUT+eKtDSpp1GLaJ/lUOIU2X5D9wL38YGYzBOaQB7fMc
	Z4o6t9AMoY8JNA8urnyYGS2seFbT64uo8xN2UMWB+Lk65HTkH3gnm6EJp0UVOm++MfpcfGDbMs+cJ
	F0jBhDzyOhDIM/TjCM8YwMXWQm3VxQfHlPjKAeaiPYZPmlXLy2H6DxMS01BVjye+zwPqZmgL8JDXX
	ern4gdmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZAq-0003cp-8h; Tue, 28 Jan 2020 22:17:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZ9o-0002t9-3l
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:16:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580249788; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=O/8M1MNl/g2Ft85CmdGvaBeu5AxW8ZxPF5UoiWwDXBc=;
 b=ja+bIeUmuo0zJ1wRzZ7FGnbek4jyGnGEDAREQU/a3uucbDmYyK7JLCfK9m2owrT4X50dMOqE
 l1QNEVgp/7iU3wuN2Vq0N2ja/YV3N+HGfcnOQ1EK8x5QOUhqwQ0QFfnqirAUpuEKWliVVou/
 udMA6hYrZiJvClVLW9+2FNLY8G4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e30b2b7.7fa489fb0810-smtp-out-n03;
 Tue, 28 Jan 2020 22:16:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 10570C447A2; Tue, 28 Jan 2020 22:16:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5A33CC43383;
 Tue, 28 Jan 2020 22:16:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5A33CC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v1 4/6] drm/msm: Add support to create target specific address
 spaces
Date: Tue, 28 Jan 2020 15:16:08 -0700
Message-Id: <1580249770-1088-5-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_141628_821776_AF5FA569 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: freedreno@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 will@kernel.org, robin.murphy@arm.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to create a GPU target specific address space for
a context. For those targets that support per-instance
pagetables they will return a new address space set up for
the instance if possible otherwise just use the global
device pagetable.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/gpu/drm/msm/msm_drv.c | 22 +++++++++++++++++++---
 drivers/gpu/drm/msm/msm_gpu.h |  2 ++
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index e4b750b..e485dc1 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -585,6 +585,18 @@ static void load_gpu(struct drm_device *dev)
 	mutex_unlock(&init_lock);
 }
 
+static struct msm_gem_address_space *context_address_space(struct msm_gpu *gpu)
+{
+	if (!gpu)
+		return NULL;
+
+	if (gpu->funcs->create_instance_space)
+		return gpu->funcs->create_instance_space(gpu);
+
+	/* If all else fails use the default global space */
+	return gpu->aspace;
+}
+
 static int context_init(struct drm_device *dev, struct drm_file *file)
 {
 	struct msm_drm_private *priv = dev->dev_private;
@@ -596,7 +608,7 @@ static int context_init(struct drm_device *dev, struct drm_file *file)
 
 	msm_submitqueue_init(dev, ctx);
 
-	ctx->aspace = priv->gpu ? priv->gpu->aspace : NULL;
+	ctx->aspace = context_address_space(priv->gpu);
 	file->driver_priv = ctx;
 
 	return 0;
@@ -612,8 +624,12 @@ static int msm_open(struct drm_device *dev, struct drm_file *file)
 	return context_init(dev, file);
 }
 
-static void context_close(struct msm_file_private *ctx)
+static void context_close(struct msm_drm_private *priv,
+		struct msm_file_private *ctx)
 {
+	if (priv->gpu && ctx->aspace != priv->gpu->aspace)
+		msm_gem_address_space_put(ctx->aspace);
+
 	msm_submitqueue_close(ctx);
 	kfree(ctx);
 }
@@ -628,7 +644,7 @@ static void msm_postclose(struct drm_device *dev, struct drm_file *file)
 		priv->lastctx = NULL;
 	mutex_unlock(&dev->struct_mutex);
 
-	context_close(ctx);
+	context_close(priv, ctx);
 }
 
 static irqreturn_t msm_irq(int irq, void *arg)
diff --git a/drivers/gpu/drm/msm/msm_gpu.h b/drivers/gpu/drm/msm/msm_gpu.h
index d496b68..76636da 100644
--- a/drivers/gpu/drm/msm/msm_gpu.h
+++ b/drivers/gpu/drm/msm/msm_gpu.h
@@ -64,6 +64,8 @@ struct msm_gpu_funcs {
 	void (*gpu_set_freq)(struct msm_gpu *gpu, unsigned long freq);
 	struct msm_gem_address_space *(*create_address_space)
 		(struct msm_gpu *gpu, struct platform_device *pdev);
+	struct msm_gem_address_space *(*create_instance_space)
+		(struct msm_gpu *gpu);
 };
 
 struct msm_gpu {
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
