Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3F9C0127
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qkyqwmGKktV0DanKC8USzZwjOhKWGXrDzR+XMvvySts=; b=c/eKKGzfDySSELZSwpngYFstTr
	yOf2HPII/u+ONPlzItAC6xdBmS7jo2UfiSzi4Ezy4aUIwmn5QEogVFXT6WENhzXN0LPke/dIUZLKv
	PmkHiFaBxwJKGH2e+HIJahjU38TnZHVQonFK0hPas8rd5tV3U11Y21gQywzwq5GNyMZ5XSNI95CvN
	XaPXgm8bfjfVa4MO6+o1/cw5pJjzAwBaQSq4vgFLEIUk8rRdG0WYoFVmi9qJNgLW0bsmfl5lKwXfK
	I2y7mTO78+uT/Oi7sRkw570wLq1lkMwNWsJEqrG1iXZjr/eeEC5UuaLYCadiooyM8GXB0yRP8nGYe
	POIcyuuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlcm-00005n-Ks; Fri, 27 Sep 2019 08:29:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlbp-0007pl-4X
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:28:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id t10so783836plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 01:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=vfYzArXzFe1wH00PAKP88fvUR7yXk6kDogWfZQY7lTA=;
 b=S02hsAiiBDCmqzupGtJrjHkn9YV7Qk3fVrnsTFaEf6sC720aQY4Ev4M3phUHhoyUXI
 MhS3KIWNqIFoSEZ9lich9pbh8HtVr4OLUMuElnij8iezvsPEczpf/K0iQkU8Rp0xhYh5
 81WPorMjBDzY30Bgf2aP14iEX6X+yCxfFuQETJoCQMyMEbl4b3XtP3NLTTHhC03+22H4
 NXavZm7TMJ78BSG5rSUAA9EKWUY6hxC9cPrjWoPmOyhYiKrgNYMQlfMV5DdZ9LAXPJvi
 9uuwzaRwlXD7Hc6rxLtLbGrzvMXmk+xrHc2BnfMn4hsODscVzEOaYAN5Q8di/h0WpLop
 LHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=vfYzArXzFe1wH00PAKP88fvUR7yXk6kDogWfZQY7lTA=;
 b=NU8cTfwrKJ03OqhiYIzFCrKe3dYpNb6Gq8EA7GJOh0bJQp47Fozqo/EVW/WRUvSflI
 9BtUZKgk6bi04cbiQ+3W9ROstg4IPFSH45x5MBOER5mgARxiiCNz6kJqYBds89hTYmg+
 HJiHVt4SRokcOcIFk7WCWBom0ZI4AbeLEfK359829OOVsIh4qJF8wblGB9JUfSNQXpLT
 YW4qWLxn1I/PKzBIbgJdNZ4Ltomd1k9tBDdLfeitaUAY8NHXX2jiyBcIY/xyRkQ5A9pS
 PB5qXj9Dzah+i8NR5z1jQ7YpnT3QuulzMqUFgPpPj/4htRGqkAydwdv7w31N68SXR5Wp
 1ANA==
X-Gm-Message-State: APjAAAXnzO7aBrZlnzoxmmFVYDdmFCbirpyL3PLL6NwX76DKl0A+Tvp9
 tdgMstlDzqfcKNfWrHrO1W0r+g==
X-Google-Smtp-Source: APXvYqzTTbG4XtC1vheXlXVAQTNIpBRl5TtuDzwjqAF7pQc9jQXpsZT8WzIoHznXHiEs80l7njW88w==
X-Received: by 2002:a17:902:820f:: with SMTP id
 x15mr3101252pln.230.1569572892248; 
 Fri, 27 Sep 2019 01:28:12 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id 6sm2043521pfa.162.2019.09.27.01.28.09
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 01:28:11 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: linus.walleij@linaro.org,
	ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 2/3] hwspinlock: u8500_hsem: Use devm_kzalloc() to allocate
 memory
Date: Fri, 27 Sep 2019 16:27:42 +0800
Message-Id: <c3070351e137bffd2b4b639fb14b1baa19df5641.1569572448.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
References: <cover.1569572448.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
References: <cover.1569572448.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_012813_240160_86C59195 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, baolin.wang@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_kzalloc() to allocate memory.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/u8500_hsem.c |   15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/hwspinlock/u8500_hsem.c b/drivers/hwspinlock/u8500_hsem.c
index c247a87..0e8d4ff 100644
--- a/drivers/hwspinlock/u8500_hsem.c
+++ b/drivers/hwspinlock/u8500_hsem.c
@@ -106,7 +106,8 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	/* clear all interrupts */
 	writel(0xFFFF, io_base + HSEM_ICRALL);
 
-	bank = kzalloc(struct_size(bank, lock, num_locks), GFP_KERNEL);
+	bank = devm_kzalloc(&pdev->dev, struct_size(bank, lock, num_locks),
+			    GFP_KERNEL);
 	if (!bank)
 		return -ENOMEM;
 
@@ -120,15 +121,12 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 
 	ret = hwspin_lock_register(bank, &pdev->dev, &u8500_hwspinlock_ops,
 						pdata->base_id, num_locks);
-	if (ret)
-		goto reg_fail;
+	if (ret) {
+		pm_runtime_disable(&pdev->dev);
+		return ret;
+	}
 
 	return 0;
-
-reg_fail:
-	pm_runtime_disable(&pdev->dev);
-	kfree(bank);
-	return ret;
 }
 
 static int u8500_hsem_remove(struct platform_device *pdev)
@@ -147,7 +145,6 @@ static int u8500_hsem_remove(struct platform_device *pdev)
 	}
 
 	pm_runtime_disable(&pdev->dev);
-	kfree(bank);
 
 	return 0;
 }
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
