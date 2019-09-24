Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F525BC3DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 10:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTNvPtcYn8eFE74+c7QG8Y7BDlnh4dTm1nuueyhogu0=; b=inVXTJ+JidnFEM
	uB4Ydz2jEdfffntkUo9P1J8pYLCxnhXXVTy3efohJs2Lntssv91r0VThMnLbJSLI4HZ9/PKSOUj9n
	bpjy9vzF+Vh9XIJeHGvi+LM0w2WfSZQarqoTe/whN3X1AgJsZgJPVaBaOHDTigN0E1YS3gLB0xJ//
	5EjNbxUMj/HHcyc2LuNlEgLhsFLqXyomFadcr8hH9LGUpmbPOOxJHUSkH5PMUYbGL6WcBd7nPeu2x
	cJFld7WPKXElFlHi0WHw++rXJ5ZILahKdudoKZxZH6Wt5Z6bXXdekrhh9PrsVajJ9OVX8H/ih+xNx
	k8SsZSd5u7E415swZhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfsh-0007P0-N5; Tue, 24 Sep 2019 08:09:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfsE-0007CO-Ac
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 08:08:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so821154wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 01:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hi1ifQQR9gpdPmRZ1GOZNnhiHESsDUToV+uCj5M5hAM=;
 b=NxoJWtHNY256XL25Cim07uB4YuUcEkGp4Xpw7ePOsYhsTGdon2Dr2B5zkiwa92pnlq
 Tu4yyXG51bdy0iytfp8LPPWkwsz5JJKsj/jEXFlNHO41LxVQoWvf3ytsFG49CkYIjhv3
 iEuX1kVXJB7JTZ95HaD+EWnsadj1J3qy0MGnMlfZUSiffmQe5BHG5OFQ9urMZeCC9Ypd
 pT3PVy/IyhIJ0vqRySbXDYGugnbQE6TEkpccoBGA1tZJfImNe6a+rnKI+qN7+tUT6aqK
 zm/ZvTwsU8w0qppOnQV9daojHP5xcoj0jl3Ih2+nOJxucLUcKRcR+7U/fIUB1zbaswm1
 glgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hi1ifQQR9gpdPmRZ1GOZNnhiHESsDUToV+uCj5M5hAM=;
 b=oP/n3eA/AlUAKFIRr2J1C7oso1XGFU8CaWMr2Gq9EaXKXgT44TyLyPyYnGETuUBoHt
 ugCE9eZrG4IPiIgsVqVEizh4ilky/KlwpMEAMcxT934z+wB4Lra06Jj0ZySvNA33dZ7N
 hnXQA0FUFNgL245MK+LvX1aife32qCyCI2pUubzN67f451miDHjO5D1rKiOChWFrqmZc
 GASli1SQgTQUgKQwy+S6ZCgCJl1rw9/PtrNodM84GsXViidz8CCKCPK53KXWolxAIQF4
 6r5ac/DZdFSt+AzTjqx1Mg7OFzTNba3Wu17JfHMaTUn/tpNVMnIIh+4wfLhuRm4EH7GK
 QqyA==
X-Gm-Message-State: APjAAAUDVLp1Ffl5VcQypQMZumpnNN3C38MLfrpnW51Xm55unc+fUgsA
 4JGx7oTLA2wFaxNPLL/StiQ=
X-Google-Smtp-Source: APXvYqyBp86G51lnDZqf2X6fA9zUA+/GeXP/EiBQc20uwIte8LmWVoe6X9w8UA4yJLMs9lTWyum5qw==
X-Received: by 2002:adf:efcb:: with SMTP id i11mr1255379wrp.69.1569312516938; 
 Tue, 24 Sep 2019 01:08:36 -0700 (PDT)
Received: from Red.local ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id u22sm1825256wru.72.2019.09.24.01.08.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 01:08:36 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v3 1/2] crypto: sun4i-ss: simplify enable/disable of the device
Date: Tue, 24 Sep 2019 10:08:31 +0200
Message-Id: <20190924080832.18694-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
References: <20190924080832.18694-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_010838_362624_5AC832AF 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Acked-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/crypto/sunxi-ss/sun4i-ss-core.c | 77 +++++++++++++++----------
 1 file changed, 46 insertions(+), 31 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-core.c b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
index 9aa6fe081a27..6c2db5d83b06 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-core.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-core.c
@@ -223,6 +223,45 @@ static struct sun4i_ss_alg_template ss_algs[] = {
 #endif
 };
 
+static void sun4i_ss_disable(struct sun4i_ss_ctx *ss)
+{
+	if (ss->reset)
+		reset_control_assert(ss->reset);
+
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
+
+	err = clk_prepare_enable(ss->ssclk);
+	if (err) {
+		dev_err(ss->dev, "Cannot prepare_enable ssclk\n");
+		goto err_enable;
+	}
+
+	if (ss->reset) {
+		err = reset_control_deassert(ss->reset);
+		if (err) {
+			dev_err(ss->dev, "Cannot deassert reset control\n");
+			goto err_enable;
+		}
+	}
+
+	return err;
+err_enable:
+	sun4i_ss_disable(ss);
+	return err;
+}
+
 static int sun4i_ss_probe(struct platform_device *pdev)
 {
 	u32 v;
@@ -269,17 +308,9 @@ static int sun4i_ss_probe(struct platform_device *pdev)
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
@@ -288,16 +319,7 @@ static int sun4i_ss_probe(struct platform_device *pdev)
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
@@ -387,12 +409,8 @@ static int sun4i_ss_probe(struct platform_device *pdev)
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
 
@@ -416,10 +434,7 @@ static int sun4i_ss_remove(struct platform_device *pdev)
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
