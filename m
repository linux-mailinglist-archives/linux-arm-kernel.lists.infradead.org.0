Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B561339A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 04:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MMxyLjxGApyF7ZUk4tDcrSYRSx1BGKciJTDnFO3g8R4=; b=A83hTI6bd9TDitgzlA59iQteWX
	yCZMdrqn5oJPTBehfugHn8ASuZPa27I3/t3ZAop+ui4o3qfA7FNa4DdldCPEaD/qt8XCqLgts/ENU
	ORcqs641luYRihYKTI/SoeG6A4XgVetIQhNKA0Ivl7ijsRXRI1ZEMB5n+V8ZiBvHF8ES51cSAALJb
	VJE+cF4GGBermKjfonjUSi34XJyqmbm66SBLGNnYOki7Nzaf/nmd0qUUfj5laV3at0YOR5mInKruF
	sgFBnluI9dGa02raPIuq0OAX7CYlbrbg0ScHQ/BvdroFUsKIxS7o238p2TeAzzct4kmpyOTFqj5+2
	6dnEZlxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1xi-000564-Pw; Wed, 08 Jan 2020 03:24:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1x5-0004hY-CC
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 03:24:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so884122pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 19:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=aTQ2WmgfLL0RKpED5qehF/7+sveySkG+bgQJgoV8etc=;
 b=cEz7w8dKWriMWqxMsuQxVa5e46S97vL2jdidPeIzqkB7Xvto9kfcvWQwx+jE8VhJsU
 HhFz558l1P9wgZM2XF42O3c7SvlQkl3h6YWiCC+OA5HSxtrm3lyut6xjDHama/5ahHls
 ybQ2CLhoTKeuxcZ/WDTCJZDcUBihGkNJnUe5af+piJ5vlnu1U4n3i0S2QX/8DbTSzG5i
 OIvhHydKLAMskIeuZgYxKmQVNj26UcUHZ56pi66sn1NmW7DoYfyKRx+xNc8yQ0pQuLwt
 ivXhmv7WsroUIdNNpMvAcPh7EY90iXVnrKBxTg3aqxL6QvzGOaRVCSLQQcNVw73ScGnn
 ugWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=aTQ2WmgfLL0RKpED5qehF/7+sveySkG+bgQJgoV8etc=;
 b=WXuQpIKaFwWlqsezQ4jMdl1bMrSaakytL88m8tL3MHC+/C8GADt+gIlk7MWa3BUBaa
 NXpv7xK87y6SPUHr6gwYL/OjI7VY5w6WLt9LsLbswWjDdy0SPp18uz9ms6WbdJiswb3L
 8qAXmvQwbRy1rs0Uh03mGfixQj0OQrsEa44iJcx8WMWfV4gp9DEO4DX+CGuIwapmP/cF
 tvWuo4XU2kobjh459ipRp2fLS1uSeIhMc4L0gHFR7WxZ7qOw5xKAMXyLd0DYR4fzlvNL
 hf76yOVLsya+HAiZ/Q8iTkeFgyl9Wh4qGP694a3yMTIBPd/ZmndKfUXxoy0IR+qTfGcQ
 vJ5A==
X-Gm-Message-State: APjAAAXtVYW5eeSv9bA7q/QAfTKVHZPwE7yaXBiG8EOmOKn4iwB7yDmF
 ZBXxPUwbOS3t2TtEkBaEaJw=
X-Google-Smtp-Source: APXvYqwubCOQlf14pJ6s9xsa+Oo7lRpvIz1zNTzkr9RdY04nKFQeQkQ8sLpDUhNDQqJZFqBsw240/w==
X-Received: by 2002:a65:4587:: with SMTP id o7mr2951256pgq.303.1578453850648; 
 Tue, 07 Jan 2020 19:24:10 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id g7sm1077875pfq.33.2020.01.07.19.24.08
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 Jan 2020 19:24:10 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH RESEND 2/3] hwspinlock: sirf: Remove redundant PM runtime
 functions
Date: Wed,  8 Jan 2020 11:23:45 +0800
Message-Id: <c921e391aa2a652d8d6ae0e4041202cec9d917e7.1578453662.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_192411_445476_B1A95C25 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
