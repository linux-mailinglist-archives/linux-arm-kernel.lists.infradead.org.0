Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FC8AFBB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SB1aEUKFaQgWNW7D3TyRkT0eFMHK5Ty5nB/t+7MamDM=; b=Kx+iCohqWaq+YL
	QlkyxOEf5ob499AzXahwib6/+KmhIO3X7FnpEvJKkNg9x3Zt03uFoff7WhGIGpAlCkAyCxRvTt3g5
	x/LXGpF8p/s8b26UFyTUmVeIFsT9/e/gE9YHj/1V+vOfrG2PHuvkKHN4J5lXqnyRvhuBZInVuNBoY
	CtDavVX90Vwuc/oyZJoa7Fqd6OBVT6k5XLGiQZ1B86m+/GVhYmyWqu3yM0HI192SH5Ztegzb+oeBj
	iAmS5G0mihNUaGdcXsZvX6iMp4RCgjosEQPf7WgTr70DPnYSv/POn+w8YBrbTOpJO3AKmCPWzU4bZ
	A1p9v2g/Z2I3eddS9lhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i816E-0002hu-8Z; Wed, 11 Sep 2019 11:47:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i815N-0002SW-C9
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:46:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id p13so3150587wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 04:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XLyQ3Vlb+rG+95957y6BztxIW1tdl5LgP7WaxmxVaO0=;
 b=Q1jZcqmWsHMzgEghiccCanRSPHWlytaT/p73rkABDBpEVrVIdPyhVBsQRa83y7yMwk
 8vVGvx30GcYDujSlS3VxDH5ZmkqUbcKICCbkOmPADFguytXS59u9yHhwAmSl5fDbd5YY
 X2li4ZcxeJjFi6+DJyrRPSgpSsMU6SySDL60WMIS2gWFtEQie2Vnug5trHsGrDV8qLF0
 ihFNv9p5QnRps0Xm7D//Dig9Y6f1hok8zIrdddu9wOkudYYpIYdHUh3+fyEJ465lg6Dw
 wB7tnkq37MYs03eZ/B6bTZslAceoKcWexuBT6RYVxRTcq3GAL2lZ4E8CWlwiiMHhwBp2
 Iruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XLyQ3Vlb+rG+95957y6BztxIW1tdl5LgP7WaxmxVaO0=;
 b=AofrQGvOUvTeI3Q2RCuoTAQtVBOUHb8VSZqDuJqNqJKXvomzmfJ70vJS6bagRTc28Z
 1IXSFbMLelPk9n3CJKCnG5H8U0FX8uhDMamwWj1dAFsb0+etCql6Pt/8XB5GMcaVxEUA
 xhKnZ3NFrbOyxqWbizJEf/OVX26La+9IP/4Ii/s/lwO7m3T1a2Apvvcf5AYdSNAA+obn
 g0QtUk1WH9rBLv296/QFDWpRvN4tV92kmz0ba2DnFq3fqPXoRU8oNCi+AkgJZuB9jGQF
 mb1DDSGZSmNDDHbROXbqmuABoR3ALDtGJD2btOEuzjR2higZguPbYwIDPZ6CBd2gIl7u
 h4EQ==
X-Gm-Message-State: APjAAAVKjf0jrydjWDyTOfI91nwt6qroGEzDooMguvJr53tjjP/x3WzX
 C0hZyCKDNVej6OS+YZF6pys=
X-Google-Smtp-Source: APXvYqw/b7RlrRsnWT6dq2slgxmNWcb7VI6HItkHhXi+DVQQc12hADdcTu7V5ysU+9FcYNW/Ovxx5g==
X-Received: by 2002:a1c:f518:: with SMTP id t24mr3443917wmh.98.1568202416288; 
 Wed, 11 Sep 2019 04:46:56 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm4864705wme.6.2019.09.11.04.46.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 04:46:55 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 2/2] crypto: sun4i-ss: enable pm_runtime
Date: Wed, 11 Sep 2019 13:46:50 +0200
Message-Id: <20190911114650.20567-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
References: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044657_518719_64E2294C 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables power management on the Security System.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c |  5 +++
 drivers/crypto/sunxi-ss/sun4i-ss-core.c   | 42 ++++++++++++++++++++++-
 2 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
index fa4b1b47822e..1fedec9e83b0 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
@@ -10,6 +10,8 @@
  *
  * You could find the datasheet in Documentation/arm/sunxi.rst
  */
+
+#include <linux/pm_runtime.h>
 #include "sun4i-ss.h"
 
 static int noinline_for_stack sun4i_ss_opti_poll(struct skcipher_request *areq)
@@ -497,13 +499,16 @@ int sun4i_ss_cipher_init(struct crypto_tfm *tfm)
 		return PTR_ERR(op->fallback_tfm);
 	}
 
+	pm_runtime_get_sync(op->ss->dev);
 	return 0;
 }
 
 void sun4i_ss_cipher_exit(struct crypto_tfm *tfm)
 {
 	struct sun4i_tfm_ctx *op = crypto_tfm_ctx(tfm);
+
 	crypto_free_sync_skcipher(op->fallback_tfm);
+	pm_runtime_put_sync(op->ss->dev);
 }
 
 /* check and set the AES key, prepare the mode to be used */
diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
index 2c9ff01dddfc..5e6e1a308f60 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <crypto/scatterwalk.h>
 #include <linux/scatterlist.h>
 #include <linux/interrupt.h>
@@ -258,6 +259,37 @@ static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
 	return err;
 }
 
+#ifdef CONFIG_PM
+static int sun4i_ss_pm_suspend(struct device *dev)
+{
+	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
+
+	sun4i_ss_disable(ss);
+	return 0;
+}
+
+static int sun4i_ss_pm_resume(struct device *dev)
+{
+	struct sun4i_ss_ctx *ss = dev_get_drvdata(dev);
+
+	return sun4i_ss_enable(ss);
+}
+#endif
+
+const struct dev_pm_ops sun4i_ss_pm_ops = {
+	SET_RUNTIME_PM_OPS(sun4i_ss_pm_suspend, sun4i_ss_pm_resume, NULL)
+};
+
+static void sun4i_ss_pm_init(struct sun4i_ss_ctx *ss)
+{
+	pm_runtime_use_autosuspend(ss->dev);
+	pm_runtime_set_autosuspend_delay(ss->dev, 1000);
+
+	pm_runtime_get_noresume(ss->dev);
+	pm_runtime_set_active(ss->dev);
+	pm_runtime_enable(ss->dev);
+}
+
 static int sun4i_ss_probe(struct platform_device *pdev)
 {
 	u32 v;
@@ -357,9 +389,12 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	writel(0, ss->base + SS_CTL);
 
 	ss->dev = &pdev->dev;
+	platform_set_drvdata(pdev, ss);
 
 	spin_lock_init(&ss->slock);
 
+	sun4i_ss_pm_init(ss);
+
 	for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
 		ss_algs[i].ss = ss;
 		switch (ss_algs[i].type) {
@@ -388,7 +423,8 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
-	platform_set_drvdata(pdev, ss);
+
+	pm_runtime_put_sync(ss->dev);
 	return 0;
 error_alg:
 	i--;
@@ -405,6 +441,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
+	pm_runtime_disable(ss->dev);
 error_enable:
 	sun4i_ss_disable(ss);
 	return err;
@@ -429,6 +466,8 @@ static int sun4i_ss_remove(struct platform_device *pdev)
 		}
 	}
 
+	pm_runtime_disable(ss->dev);
+
 	writel(0, ss->base + SS_CTL);
 	sun4i_ss_disable(ss);
 	return 0;
@@ -445,6 +484,7 @@ static struct platform_driver sun4i_ss_driver = {
 	.remove         = sun4i_ss_remove,
 	.driver         = {
 		.name           = "sun4i-ss",
+		.pm		= &sun4i_ss_pm_ops,
 		.of_match_table	= a20ss_crypto_of_match_table,
 	},
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
