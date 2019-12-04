Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217921128A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MMxyLjxGApyF7ZUk4tDcrSYRSx1BGKciJTDnFO3g8R4=; b=dhi2R5itv8bcDRDudc29HVLpt2
	rdNx5xivperoh3peFWmTH+0wYalcsvDU2TnC+6EVVwb35+PnO/pSpvr2AyhekNfgRmBTG7N+NlW3Q
	NdJE3G3ikBiGlC8KVZYqRBLRkaWR81KDuW4U0omhEwAMlHHPpAlZv5oPPRxklUXE15+snlTdAUQsC
	2BXZer10qlxrUFq1jIidPLFoVd344X+3lKdl9L0a6UwtPalPFeostcyoSEra/J8pd3vDpaQPgsB/k
	Eh0YBYWpk5QXioCMAE28gjmQRP8LQCvsoq63matrndz3l+IyMpy2T+F5rQ4UI1yWRpkUHvjpUJJoW
	yej/+4VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRN9-0004Km-JN; Wed, 04 Dec 2019 09:55:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRMU-0003yH-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:54:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id t3so3130324pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=aTQ2WmgfLL0RKpED5qehF/7+sveySkG+bgQJgoV8etc=;
 b=gEVEszU2rEO5LtTSee+SJLa3xwahRpVX4g6r+WflHC3GAFzlRrmEM9Q1ZDYtBB00Fp
 YFoDyVLMsRLp1zs30FyWG+R7Spwx9P8aLkS22Bxn8YgE2vmWnrzBRX6ONYFXdiXtQrNW
 kq6AcXEpC1cejcu75sVx5iMahZ4S7ofWBJ5sYLFES59HA4ieJetY3argbcBJbiaVTGK8
 kwpOQlj0e9y9/wwmANAEHPjVm3vXD1vhOxZpo321ZCkVRObxd3NK/G1aoOH7TN/ow8lp
 FkJvGs0SWJlRPMEmM9iV4fpg58wv96RGZr1XYi1Rb32RWPxDa0oVQ7g6fyKKajVq2x7H
 tTOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=aTQ2WmgfLL0RKpED5qehF/7+sveySkG+bgQJgoV8etc=;
 b=EI2uRg1eIGQib5UF80A5fRm39In5FWRCFmolAP6A7A4y6TeG3U6SrzfIFoTfOjBFqS
 5Aw/xVITBs2d5FM4hmiXqG9U1x+xZ22dSSM+NOqn5cYX2eXY5U956Jn4aZdg8TFyudbx
 6PLXflZ+chgKce8YTq6IusoAhjh+BVjYS0/TlIRyZLGjYrxX9w2cvowHn1ZV/vQFjZjF
 waBREBgO+rXP/XCyh1PdBxqM3+w4XllDhBYOt0clqPO1yiNFpHFKyuOnHucSbLsJCrz0
 C9IGabqH+5uaUVn3JJ2WMmGQO/EksOy0osrcZt3B5EIKXuBGHz/kCHhyPBa/in7opZIx
 fblg==
X-Gm-Message-State: APjAAAWOV9CZZ3UopFTB9nTK8wXjgrcrWinArfINejFgk1nfXHdV36qR
 7sw8zydcrVsdkgZBuNmytPHWTbYt
X-Google-Smtp-Source: APXvYqxl5TYVfNvBXy/dz9DmCKkQnMlInal4tLsT88gN5/HW47YmGT1ZDLDexAyox8Jsc6xH/LByBw==
X-Received: by 2002:a63:f04e:: with SMTP id s14mr2667068pgj.30.1575453261840; 
 Wed, 04 Dec 2019 01:54:21 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id k101sm5941687pjb.5.2019.12.04.01.54.19
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Dec 2019 01:54:21 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH 2/3] hwspinlock: sirf: Remove redundant PM runtime functions
Date: Wed,  4 Dec 2019 17:53:32 +0800
Message-Id: <222255194cd40b48a0ec2b7e351eda0983b38acc.1575452516.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1575452516.git.baolin.wang7@gmail.com>
References: <cover.1575452516.git.baolin.wang7@gmail.com>
In-Reply-To: <cover.1575452516.git.baolin.wang7@gmail.com>
References: <cover.1575452516.git.baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015422_776910_28959DB6 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baolin.wang7@gmail.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the hwspinlock core has changed the PM runtime to be optional, and
the SIRF hardware spinlock has no pm runtime requirement, thus remove
these redundant PM runtime functions.

Signed-off-by: Baolin Wang <baolin.wang7@gmail.com>
---
 drivers/hwspinlock/sirf_hwspinlock.c |   22 ++++------------------
 1 file changed, 4 insertions(+), 18 deletions(-)

diff --git a/drivers/hwspinlock/sirf_hwspinlock.c b/drivers/hwspinlock/sirf_hwspinlock.c
index 8cb5fd4..d62462e 100644
--- a/drivers/hwspinlock/sirf_hwspinlock.c
+++ b/drivers/hwspinlock/sirf_hwspinlock.c
@@ -9,7 +9,6 @@
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/io.h>
-#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/hwspinlock.h>
@@ -56,7 +55,7 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 {
 	struct sirf_hwspinlock *hwspin;
 	struct hwspinlock *hwlock;
-	int idx, ret;
+	int idx;
 
 	if (!pdev->dev.of_node)
 		return -ENODEV;
@@ -80,20 +79,9 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, hwspin);
 
-	pm_runtime_enable(&pdev->dev);
-
-	ret = hwspin_lock_register(&hwspin->bank, &pdev->dev,
-				   &sirf_hwspinlock_ops, 0,
-				   HW_SPINLOCK_NUMBER);
-	if (ret)
-		goto reg_failed;
-
-	return 0;
-
-reg_failed:
-	pm_runtime_disable(&pdev->dev);
-
-	return ret;
+	return hwspin_lock_register(&hwspin->bank, &pdev->dev,
+				    &sirf_hwspinlock_ops, 0,
+				    HW_SPINLOCK_NUMBER);
 }
 
 static int sirf_hwspinlock_remove(struct platform_device *pdev)
@@ -107,8 +95,6 @@ static int sirf_hwspinlock_remove(struct platform_device *pdev)
 		return ret;
 	}
 
-	pm_runtime_disable(&pdev->dev);
-
 	return 0;
 }
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
