Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B515D5BF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qEWQGLYlJBhop51iOC4b39FbJhq44ZjLv825Yed7UZ0=; b=SuiQMXJt8X2eBxrLJJu9qWxxU5
	unNJDBExY0hvzhCnpx3QI5pJ1zEC5wbsvO5fAiAhcy5eObQ4frks641XWLCMGSgAGconutBcNchzV
	eULVp0tjl7XUuhMH7jfoo5zz4urHrXMUfJm/rbouk1cYNQskZJiNzabb5j0Ux6pPzWDle+D/G/MvC
	MPbmwMsT5wEpZAhP8fTDX04WB8rRlz+Gam70nETE+gy2Q8NXKK0LfwzIjHi8kEavCyd+JATwvFRij
	qGXjX+XMU+NOIIz+wEpv/gI7C/Y2qd8BqO7WZ/+f1Hj5CAw944FL+QDjJhlbc8D3Gdr1YS0khhjQJ
	Fqpc5qfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuU9-0004Ss-4f; Mon, 14 Oct 2019 07:09:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuT0-0003eC-St
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:08:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so9869720pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=QVF1cJTCILzDHlkGsXg4UxA1J9tfvByKemIbWK8sDEY=;
 b=oqpNrl0mbjGUAPBsMnHKssFCENhw6p9XyyTe1THcu7aRYEX6fDTxHdYq3L+6KzbVZM
 /l0l00OgT0xQasYWB0AHs1LyF2Oc62e8+Ubv0kgPiVn6Ty76LDL/DB35TG574+9bwgjX
 fOPQpweoxiY0NM05qhIdLrQwKqhjsXqy2cfKNuSB31PP/ocBFno3b6eyv4XvIRidk5Cr
 i/qgTlGz88oN1obZAV28TQLJnineJ5nmAyu6ZHITA8d6lnvc4zfhsnefK3ST+AVlzcKz
 eOR+a03El82sa0Ts7kEdaOU0oTP74f4DOoQAhgMsk0IEcW+RppsOZPIwE+PLrJOwCyv8
 Qchw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=QVF1cJTCILzDHlkGsXg4UxA1J9tfvByKemIbWK8sDEY=;
 b=EjQtzlNVpxAKHDwOh0s3ptGeKFK26z3/quKuqBtwQvzFxQXcWkZA4LzU7SuVWHnfk0
 4lBtVnPAmfGxLzob61gHpG9wzmt2r2ieoMGFFoRIDHqp7wP+JXX5PzWaZpfy1YH5uzrp
 keeUBESsbaTo4lW0y9o6IaLraC+eTx2a7JdlwO5ZrR7/Rzy6vBQc1NGPaW5oa9qV9BEN
 R+0AGilNXkoJK/d+bc18vqDuF5EnOqQJjATQIn2+kL7rsvvze+DDnVPVSPMMwoU8x269
 uMa0Xa5UzyH9n5nDaFoowgQ9Vqv3wWvy3zHYTtNEyWeimeFPRpSpaC1G4zSRokjRHf0c
 UXMw==
X-Gm-Message-State: APjAAAVm+LloowesTDCGdTDM9FcVLI+kNOejEl5bN1Fx1KwBERTvCqU9
 McYPJG/hEQXVmFUFw4M7gX83AQ==
X-Google-Smtp-Source: APXvYqxcuOTybNC+LB4pwT8Vl/JKVRoXEjg7hdTh0uwB1jVIOIm1Ty8Cmrl2mLTyWsYXiMu/HdTXkQ==
X-Received: by 2002:a17:90a:ab0e:: with SMTP id
 m14mr33282231pjq.78.1571036909732; 
 Mon, 14 Oct 2019 00:08:29 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id p190sm20619948pfb.160.2019.10.14.00.08.26
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 14 Oct 2019 00:08:29 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 4/4] hwspinlock: u8500_hsem: Remove redundant PM runtime
 implementation
Date: Mon, 14 Oct 2019 15:07:46 +0800
Message-Id: <45600b3601cbfe3685f4c9e088be9a30ae3eb8f2.1571036463.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1571036463.git.baolin.wang@linaro.org>
References: <cover.1571036463.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000831_068515_DF683209 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
remove the redundant PM runtime implementation in the u8500 HWSEM driver.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/u8500_hsem.c |   19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/hwspinlock/u8500_hsem.c b/drivers/hwspinlock/u8500_hsem.c
index b31141a..67845c0 100644
--- a/drivers/hwspinlock/u8500_hsem.c
+++ b/drivers/hwspinlock/u8500_hsem.c
@@ -16,7 +16,6 @@
 #include <linux/module.h>
 #include <linux/delay.h>
 #include <linux/io.h>
-#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/hwspinlock.h>
@@ -89,7 +88,7 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	struct hwspinlock_device *bank;
 	struct hwspinlock *hwlock;
 	void __iomem *io_base;
-	int i, ret, num_locks = U8500_MAX_SEMAPHORE;
+	int i, num_locks = U8500_MAX_SEMAPHORE;
 	ulong val;
 
 	if (!pdata)
@@ -116,17 +115,9 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	for (i = 0, hwlock = &bank->lock[0]; i < num_locks; i++, hwlock++)
 		hwlock->priv = io_base + HSEM_REGISTER_OFFSET + sizeof(u32) * i;
 
-	/* no pm needed for HSem but required to comply with hwspilock core */
-	pm_runtime_enable(&pdev->dev);
-
-	ret = devm_hwspin_lock_register(&pdev->dev, bank, &u8500_hwspinlock_ops,
-					pdata->base_id, num_locks);
-	if (ret) {
-		pm_runtime_disable(&pdev->dev);
-		return ret;
-	}
-
-	return 0;
+	return devm_hwspin_lock_register(&pdev->dev, bank,
+					 &u8500_hwspinlock_ops,
+					 pdata->base_id, num_locks);
 }
 
 static int u8500_hsem_remove(struct platform_device *pdev)
@@ -137,8 +128,6 @@ static int u8500_hsem_remove(struct platform_device *pdev)
 	/* clear all interrupts */
 	writel(0xFFFF, io_base + HSEM_ICRALL);
 
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
