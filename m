Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB427B15E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1dotHd88a7HcqrNxdHDU5ZHh54PUMkHdWaO27YBgW4=; b=jUPmi2BthI8ZKd
	MBEYK2XKAlO6XRD75QT4Rw6dVHAxFN/3HyBT2GMqp3YLvfYVLCHyo6MYYdXKYO3EWf4FmKQZ+HWcp
	Jvl83uemAb2VotwpxIklAriS/d2S1kiY1xbqV7kET9s8o65nBkWm+CGfwJWJUUa8/8Oukhse6xjBQ
	xBg8ODfiYMo+pyfylHwWE/szbrPA3xewlxjY9KfX1Nxp3AnoGmm7D65ltbsXvpyWJOvSuAdzyUZ+g
	6oVZ0W7t8EieWkNqybWarlTxr4A7vxO2uAcokAObpDqAp573dif1nLDmWCADIFpX7FwkNF1xgs+nL
	tDmYXHgB5vfzEN5BARuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWfa-0001Yx-KT; Tue, 30 Jul 2019 18:16:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWfO-0001Xy-5c
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 18:16:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id n9so24256004pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 11:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=50VWY4DOvJCsLbogXvcfIy87Phisvb7R/qkulHRQtQE=;
 b=b3mg+KDmpIO81yQrcZUSpzOusHXsPRu2YTZBtorn1AEo3N6GiptcooL6U8tMTo+gTG
 lIYB8l6l6OrtiBRTPCwwVeU7F0QlclDCDwnUbiuFLyyK+81JVEa7Lq5TKHvVQ610YkBF
 neATcqsL6f5giH+IoqxpKjFEtws9P29MaAOJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=50VWY4DOvJCsLbogXvcfIy87Phisvb7R/qkulHRQtQE=;
 b=LNQOY5MnEwfI9N0n5coAc4xBhgnuxxuOrdBDkKbWhmpp+3D70rwaPMknagR1AAJEI4
 bhq4Y8eskB8IilE/236b0cObLxzI2IS0tpChxcE7JASFs4Qah3KwdtOBNUBRQZsxnZyE
 cE8e8bNzIeM6LLOoURQoJQCwzk6ymhWJsowAGEVZE82ij+TqoP4GUBV9DmS6ZdIiQdEM
 g1kzkkNsrNa92uocx04bngAAO1kajyWuvRV7ifilLJ0+Fel/EdlTl89Do68KXLOH7rt0
 pRD66GMeAzVGo2mFv+AdQHHzGMoC97vtSBhjDVXjr6bj+cO7DjAK+q108AqLFsxs1ZTE
 a00A==
X-Gm-Message-State: APjAAAVLlG8phT3eSDSwpTP6n9VkkafKv1XjOo2cGwyS2g5T2ZPoww97
 SmwRINEQ1Ws5xT7dwIaT48l9XA==
X-Google-Smtp-Source: APXvYqwur07swqKyif5Dp1u0EIDJAkQU8t63hD8i7gGz9LNFXf5yqejN6CfyDWSarneFR2nt+qIVAA==
X-Received: by 2002:a65:64c6:: with SMTP id t6mr112287304pgv.323.1564510565436; 
 Tue, 30 Jul 2019 11:16:05 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g1sm106744083pgg.27.2019.07.30.11.16.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 11:16:05 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 07/57] ARM: Remove dev_err() usage after platform_get_irq()
Date: Tue, 30 Jul 2019 11:15:07 -0700
Message-Id: <20190730181557.90391-8-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190730181557.90391-1-swboyd@chromium.org>
References: <20190730181557.90391-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_111606_204449_9E817EB3 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Simon Horman <horms+renesas@verge.net.au>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't need dev_err() messages when platform_get_irq() fails now that
platform_get_irq() prints an error message itself when something goes
wrong. Let's remove these prints with a simple semantic patch.

// <smpl>
@@
expression ret;
struct platform_device *E;
@@

ret =
(
platform_get_irq(E, ...)
|
platform_get_irq_byname(E, ...)
);

if ( \( ret < 0 \| ret <= 0 \) )
{
(
-if (ret != -EPROBE_DEFER)
-{ ...
-dev_err(...);
-... }
|
...
-dev_err(...);
)
...
}
// </smpl>

While we're here, remove braces on if statements that only have one
statement (manually).

Cc: Russell King <linux@armlinux.org.uk>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Simon Horman <horms+renesas@verge.net.au>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Please apply directly to subsystem trees

 arch/arm/plat-omap/dma.c    | 1 -
 arch/arm/plat-pxa/ssp.c     | 5 ++---
 arch/arm/plat-samsung/adc.c | 4 +---
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/plat-omap/dma.c b/arch/arm/plat-omap/dma.c
index 79f43acf9acb..9386b2e9b332 100644
--- a/arch/arm/plat-omap/dma.c
+++ b/arch/arm/plat-omap/dma.c
@@ -1371,7 +1371,6 @@ static int omap_system_dma_probe(struct platform_device *pdev)
 		strcpy(irq_name, "0");
 		dma_irq = platform_get_irq_byname(pdev, irq_name);
 		if (dma_irq < 0) {
-			dev_err(&pdev->dev, "failed: request IRQ %d", dma_irq);
 			ret = dma_irq;
 			goto exit_dma_lch_fail;
 		}
diff --git a/arch/arm/plat-pxa/ssp.c b/arch/arm/plat-pxa/ssp.c
index 9a6e4923bd69..88b5dd99f6bc 100644
--- a/arch/arm/plat-pxa/ssp.c
+++ b/arch/arm/plat-pxa/ssp.c
@@ -146,10 +146,9 @@ static int pxa_ssp_probe(struct platform_device *pdev)
 	}
 
 	ssp->irq = platform_get_irq(pdev, 0);
-	if (ssp->irq < 0) {
-		dev_err(dev, "no IRQ resource defined\n");
+	if (ssp->irq < 0)
 		return -ENODEV;
-	}
+
 
 	if (dev->of_node) {
 		const struct of_device_id *id =
diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
index ee3d5c989a76..4bbeca3cbd9e 100644
--- a/arch/arm/plat-samsung/adc.c
+++ b/arch/arm/plat-samsung/adc.c
@@ -354,10 +354,8 @@ static int s3c_adc_probe(struct platform_device *pdev)
 	}
 
 	adc->irq = platform_get_irq(pdev, 1);
-	if (adc->irq <= 0) {
-		dev_err(dev, "failed to get adc irq\n");
+	if (adc->irq <= 0)
 		return -ENOENT;
-	}
 
 	ret = devm_request_irq(dev, adc->irq, s3c_adc_irq, 0, dev_name(dev),
 				adc);
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
