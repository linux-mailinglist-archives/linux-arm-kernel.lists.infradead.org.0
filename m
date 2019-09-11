Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B66BAFBBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37Oc7tctpIHiJY8Wbng/OLIRs53iHF3VMfjhYYqvK6s=; b=ZGv2YZZFbJwPCt
	hPPldDFq3WjrBM0sSPoJvT4bHC9/a4P/r8/L9xsKRJD7KP/wVY9Ck31GbGQHOshXWBNvDTSwd1TMf
	WlFrZz5cf0bRHgRX8o2gD+YrZHKDXOmxQV5hNwQxaUZpblq+HJM10LKmExeGpMx2nrNjZbDmxG7cz
	WQF1fcmRqnUbMjckb84BrMf8FQNY51nGgeb7BOy1ijCiSt+UaoUjKdoltbQnWATHGAoeusI3xW9v+
	C3lw3bDc3vTHsWfVUozfhqRbWVMPX/e1YiMnVWgTaWwpkazKb+gVnIlSe1dtXhZfNN5RnQrgb/ow9
	c0kDHdD58nkyoJ2jmQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i816j-0002y6-Uq; Wed, 11 Sep 2019 11:48:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i815M-0002S9-Jb
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:46:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id q18so3081534wmq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 04:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JgPahXjzwJ1FlZOqme8sddUdHnTiNo6i0GnstFUSooI=;
 b=P4lbFX7igZ66ZuRooFnd4doxXIvDnTHfGnMDq6qWqE+hWs/lu7TnLfr+reaot9BhJU
 VBGMoQacwjjlo5pU6kByJ82mXJZyZBl8p26EG9NKA7lDmk0ez9s1s1FPHDxicBoE/Kv6
 GMhbuumfZUxwA1GI6DlKYeJjBfvLRmd3+rkT0Y8L1TmIVsq2TqhHj1HtLQMnVGCaaLNX
 ImY4UkOJECA2GWNfdfUcjW9A+ET5T5LK4196gAZzSFlN/9HMJZXCo0mWRMtl+r7cxhrg
 4zwlkvGBDCh3fcesptlSBusICqOaXCe0uf4pSBmxT1n9Wla8rSa6wG8QE1jcr0a2neNc
 1eFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JgPahXjzwJ1FlZOqme8sddUdHnTiNo6i0GnstFUSooI=;
 b=lvwX1+tY4d67aIbSDKPi56iVrthU12lWB74xcVCDrsptE34Tl4rythqegdDdYG76Je
 u8MYPAZumOIDeHWo1zTi4bOAExKiH7VesV2jjT5hiPaQHJE2cHC6zyxDRIK/X0uIh2Eb
 erzfR4PGu5X5hhswrwMOTlHjPfpBtQBsDUomrGMXZQ+lFd65FD1p/IwgxIEK+VNinWhK
 l6iX0Pb/Pf5S7DN1XedQjNSi78qFKTwcXembmAQ4qiVtvrMoLR96UpldIUfQBRu8qWih
 QxWzeqvpcFJppnK/r6SvlHRPASRRX25hymNyBQJBukC8mDpNiAgywc4NYPp1yzc8u0Ex
 hpbQ==
X-Gm-Message-State: APjAAAWyZTZSg2ScX3HEpW4ldEaA7QBSIxU80B2fFz2XnJlVD8xc0Pzd
 bVeyHEq4E98r5DfI4PQ641o=
X-Google-Smtp-Source: APXvYqyRRmmBfhyhIZqCKiLtoNymxUAz/1znvD3aUph9HKxmo1InEcfcN5xqR9cw52jqGqSoTHbiKw==
X-Received: by 2002:a1c:1d84:: with SMTP id d126mr3569473wmd.58.1568202415208; 
 Wed, 11 Sep 2019 04:46:55 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm4864705wme.6.2019.09.11.04.46.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 04:46:54 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 1/2] crypto: sun4i-ss: simplify enable/disable of the device
Date: Wed, 11 Sep 2019 13:46:49 +0200
Message-Id: <20190911114650.20567-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
References: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044657_386189_BF2E07D6 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

This patch regroups resource enabling/disabling in dedicated function.
This simplify error handling and will permit to support power
management.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/sunxi-ss/sun4i-ss-core.c | 73 ++++++++++++++-----------
 1 file changed, 42 insertions(+), 31 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
index 9aa6fe081a27..2c9ff01dddfc 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
@@ -223,6 +223,41 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 #endif
 };
 
+static void sun4i_ss_disable(struct sun4i_ss_ctx *ss)
+{
+	if (ss->reset)
+		reset_control_assert(ss->reset);
+	clk_disable_unprepare(ss->ssclk);
+	clk_disable_unprepare(ss->busclk);
+}
+
+static int sun4i_ss_enable(struct sun4i_ss_ctx *ss)
+{
+	int err;
+
+	err = clk_prepare_enable(ss->busclk);
+	if (err) {
+		dev_err(ss->dev, "Cannot prepare_enable busclk\n");
+		goto err_enable;
+	}
+	err = clk_prepare_enable(ss->ssclk);
+	if (err) {
+		dev_err(ss->dev, "Cannot prepare_enable ssclk\n");
+		goto err_enable;
+	}
+	if (ss->reset) {
+		err = reset_control_deassert(ss->reset);
+		if (err) {
+			dev_err(ss->dev, "Cannot deassert reset control\n");
+			goto err_enable;
+		}
+	}
+	return err;
+err_enable:
+	sun4i_ss_disable(ss);
+	return err;
+}
+
 static int sun4i_ss_probe(struct platform_device *pdev)
 {
 	u32 v;
@@ -269,17 +304,9 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 		ss->reset = NULL;
 	}
 
-	/* Enable both clocks */
-	err = clk_prepare_enable(ss->busclk);
-	if (err) {
-		dev_err(&pdev->dev, "Cannot prepare_enable busclk\n");
-		return err;
-	}
-	err = clk_prepare_enable(ss->ssclk);
-	if (err) {
-		dev_err(&pdev->dev, "Cannot prepare_enable ssclk\n");
-		goto error_ssclk;
-	}
+	err = sun4i_ss_enable(ss);
+	if (err)
+		goto error_enable;
 
 	/*
 	 * Check that clock have the correct rates given in the datasheet
@@ -288,16 +315,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 	err = clk_set_rate(ss->ssclk, cr_mod);
 	if (err) {
 		dev_err(&pdev->dev, "Cannot set clock rate to ssclk\n");
-		goto error_clk;
-	}
-
-	/* Deassert reset if we have a reset control */
-	if (ss->reset) {
-		err = reset_control_deassert(ss->reset);
-		if (err) {
-			dev_err(&pdev->dev, "Cannot deassert reset control\n");
-			goto error_clk;
-		}
+		goto error_enable;
 	}
 
 	/*
@@ -387,12 +405,8 @@ static int sun4i_ss_probe(struct platform_device *pdev)
 			break;
 		}
 	}
-	if (ss->reset)
-		reset_control_assert(ss->reset);
-error_clk:
-	clk_disable_unprepare(ss->ssclk);
-error_ssclk:
-	clk_disable_unprepare(ss->busclk);
+error_enable:
+	sun4i_ss_disable(ss);
 	return err;
 }
 
@@ -416,10 +430,7 @@ static int sun4i_ss_remove(struct platform_device *pdev)
 	}
 
 	writel(0, ss->base + SS_CTL);
-	if (ss->reset)
-		reset_control_assert(ss->reset);
-	clk_disable_unprepare(ss->busclk);
-	clk_disable_unprepare(ss->ssclk);
+	sun4i_ss_disable(ss);
 	return 0;
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
