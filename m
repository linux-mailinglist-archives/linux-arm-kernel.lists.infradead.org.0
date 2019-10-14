Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF9CD5BF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kyO5jSJdDbqOSh2rbloFB4L5JWrLswdiFcSE/+Pg6ew=; b=o2+MxquZQTx1ztdSNPx8XYcZM5
	IKROKfOyk77P7R7y5U9JggS/2QiZlEz9YjrOZt2S1qvYviW03ei7B8Q24jXGDi34ZEcVDdBei7m15
	zBp3Wq//HJbZWRxFuw+REc1ssmvx7mWGtxB0MgT0fnfOkyh/+LyBq+D6kCcjG8unFO8OdinU+h4RZ
	YX/QHRNHQUsxn4vrhx1QKBR6y54ajge05X/PSXDg9C9Q64pxWwk0nRCHCvZrjuohqAZcjA8PnWwru
	JKFZasc51ePejkyrkBhYGlar8dqD1svfuJ87w3eS0uuOTZCrQY0unIfEjMec6Z39VpKH/t5uLgDng
	kHSt0Asw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuTt-0004FD-O1; Mon, 14 Oct 2019 07:09:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuSw-0003bE-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:08:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id e13so1333160pga.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Zl79/7idxE+IMncheCqMoc3DO2J1o16hyoOsq1ykglg=;
 b=TSBiloH8cU92qacgCVS0kzBRFN6TltVQzaXKFTSrUcjR0r3OBMXTFZc2mw+JMJB6H7
 zGn5wH2CJHsF14GFZ4h5rKwQEHdSNuVTIAfQ2I00iydhBl49QFLeaCX6+s6YF4oQO3pa
 thZMwkoutegGM0Y8gZ7SNCGo1QarTJz1I3suVEQQ2NmE4b/NVw+1qZJWeFxiywPbQZHs
 8I/YEBLZurx6neVEIxyakEmG5TlAP44NCHkslXPAVbJZu2dsVWiSkIU9/ed8E5bc1ufp
 /fgHpQ4Gpx6gjvnIU4AN5IvOC6pEriNm55V8tXEF+jKIZB9gowIGRmy+1F/ZSi4yiv6q
 ddfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Zl79/7idxE+IMncheCqMoc3DO2J1o16hyoOsq1ykglg=;
 b=fC2tI6EsaPijEefxTrPy7lxeP02k0+oQvzrVzPE0ibCeOmPHLC2gY52DdI3SfSuxNy
 NREFnVIq0OhJaG4PtsWQU/0MdCKdq5uONRPiUALckmCMNHbpL7EKtxF30pd9F8c/sX8C
 ya5rvkCRjOvyro0d4JtQG92Twff0KAqDuVKt7GDHbauGbru/nK2vsG4fEk1f1gIYwVnW
 FR41xzHQsic4OmRA3JaH13ZW7BwkoBSFcOPNZBN6DGDaYZVlyUkvNU2EWIGgUwzz30er
 5kwn21Apg8hCkq4mdXbNP95CazG/MsGJBqqV2UdA5CQZzrv93Ze7ZsDWw6RLrqb7b3Jy
 ZNKg==
X-Gm-Message-State: APjAAAXYXV81K/1pLdnR7RHPdKD9kMcOoBGEcNGQhFzM+z6ylc4X9PYh
 yCzjgHRuUkMmOZXz0f30ssTw/g==
X-Google-Smtp-Source: APXvYqxQb3C1sVvpu4CJn6/D9HYJ39s99IDUmrfJQOVPa+KmtT73tGHSz8Md3OBtes3vGRQXwrEABw==
X-Received: by 2002:a63:f44e:: with SMTP id p14mr30314447pgk.2.1571036906264; 
 Mon, 14 Oct 2019 00:08:26 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id p190sm20619948pfb.160.2019.10.14.00.08.22
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 14 Oct 2019 00:08:25 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 3/4] hwspinlock: sprd: Remove redundant PM runtime
 implementation
Date: Mon, 14 Oct 2019 15:07:45 +0800
Message-Id: <8fb54e417ee5833e09103fd1c286c4cf2f41ce69.1571036463.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000827_022943_28CF1431 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baolin.wang@linaro.org, zhang.lyra@gmail.com, linus.walleij@linaro.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the hwspinlock core has changed the PM runtime to be optional, thus
remove the redundant PM runtime implementation in the Spreadtrum hwlock
driver.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/sprd_hwspinlock.c |   21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/drivers/hwspinlock/sprd_hwspinlock.c b/drivers/hwspinlock/sprd_hwspinlock.c
index 44d69db..36dc803 100644
--- a/drivers/hwspinlock/sprd_hwspinlock.c
+++ b/drivers/hwspinlock/sprd_hwspinlock.c
@@ -15,7 +15,6 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
-#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include "hwspinlock_internal.h"
@@ -133,23 +132,10 @@ static int sprd_hwspinlock_probe(struct platform_device *pdev)
 	}
 
 	platform_set_drvdata(pdev, sprd_hwlock);
-	pm_runtime_enable(&pdev->dev);
 
-	ret = devm_hwspin_lock_register(&pdev->dev, &sprd_hwlock->bank,
-					&sprd_hwspinlock_ops, 0,
-					SPRD_HWLOCKS_NUM);
-	if (ret) {
-		pm_runtime_disable(&pdev->dev);
-		return ret;
-	}
-
-	return 0;
-}
-
-static int sprd_hwspinlock_remove(struct platform_device *pdev)
-{
-	pm_runtime_disable(&pdev->dev);
-	return 0;
+	return devm_hwspin_lock_register(&pdev->dev, &sprd_hwlock->bank,
+					 &sprd_hwspinlock_ops, 0,
+					 SPRD_HWLOCKS_NUM);
 }
 
 static const struct of_device_id sprd_hwspinlock_of_match[] = {
@@ -160,7 +146,6 @@ static int sprd_hwspinlock_remove(struct platform_device *pdev)
 
 static struct platform_driver sprd_hwspinlock_driver = {
 	.probe = sprd_hwspinlock_probe,
-	.remove = sprd_hwspinlock_remove,
 	.driver = {
 		.name = "sprd_hwspinlock",
 		.of_match_table = of_match_ptr(sprd_hwspinlock_of_match),
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
