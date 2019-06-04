Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A8A34497
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y7OiakOJTMF2t1p0giUt/ARk5S0lJwABZv11MpTXv6A=; b=JY4
	/rBO1iadNig+3/qmdW4L9NQJNQDZSv+bMfZMABucklAF8sEnUMVTfFdn9kZkQ//eq6pZlpMk/BJwm
	Ta13Ma3hzHc+7rQXQJbALXOOr1900KZ/JAMXsKaXUaNNiecqPIx2GdZ01eXRXvv9EVey4Tnc7Cohu
	JF/DCpFMyoVNoJ+okL2iveI0cH156GfsKb6N9mr/EFSRIfiCETnfhdoCVvLSnDn4uS2w80IHi1RoN
	H7OQFRxM6SYOzsDjuFFfZyAssE45qfk56XPSBP23NzTzUWjeQeWWhvCyJt0MR8TlIiwSMFn22YQZ8
	zVU9HrDA65iKh8myj1cMBggeqq79zdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6wV-0000fo-Bs; Tue, 04 Jun 2019 10:45:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6wB-0007jo-3L
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:45:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id v22so14191054wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 03:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=nQjqkj1EN8NC8Ay0yEHmwn6X2HJX2TtkXyONunIjoOQ=;
 b=LgaFtLgo69Z61g+GbWOW59qkBgcDUOxjNGAQFne/2sNXo+5nvlREiDIDiZ5YaY5F9N
 Eyv3uRxa6TWCtsMCUJWb9Z8oapmFfry/+Ssw7nMD9REJirzVscIqSBPbu0EB+tXDsrFJ
 oz9y18iFepuQyqmb98O7GQYfNCXa6ElADnlthp5IzMl8S1xTIWDKver4ZF2aPfftF/WZ
 CeRdv9BwD+LaDbuC4g0tzV0AMVmDUGL4/e5N0YOscBVmeAlZUeRwdhH6/g9pHq7/a/rA
 fdQ8GAvTL8rb31m81z4MDhX0+POnf3oemi4gmNJYx+AMv8NuAF1EMYqp8A85NWygnW/u
 Tz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nQjqkj1EN8NC8Ay0yEHmwn6X2HJX2TtkXyONunIjoOQ=;
 b=s8zlx3zHSU0iVXDUDEprxKFrMiSBRNtZq/8LjGNOQjpFRCviDC8SYZbIbz3fcYu2Jt
 ya+MfiBl5nlJAN78qtWKrML9eC3+oqrLJ8ja8naXTI/O6AsoTq1MPmxIGuF2rWZWsrPS
 IX4xk2JeO1SoUS6nIt5sCuFubwbcOVO7qGJZg+JANn2QinZfcFSVQEYdDQ4sXmlVissF
 bLU/yabuJkYWUdKnXoAAfsywWPKuw/zcgn3ckfpGZ0o+YsdZZfHE46BjD3vAYOPd7HFz
 0AuPmH1NQJqg81+aFrWSvhfHgRhhSMWicaCSRK4FBoxGnOhtsUyujpvfnGXd3ZzvvJKC
 dAGA==
X-Gm-Message-State: APjAAAUOXcN9oBs9jJ59993XF0Mr+cjQPei/RtSsLhuK0VL72KHo/l+5
 pb5sp6ZmQPhRyH+lutZjv1T0MA==
X-Google-Smtp-Source: APXvYqwy7Wly0XpVwU2R8jBLlrTc45c8pBpyc8Qd+lEsf451U2b70fbSQiSGxtDiciO8fcfvfWZ8aw==
X-Received: by 2002:a1c:448b:: with SMTP id r133mr5943280wma.114.1559645099469; 
 Tue, 04 Jun 2019 03:44:59 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id t140sm2718623wmt.0.2019.06.04.03.44.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 03:44:58 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, kramasub@codeaurora.org, andy.gross@linaro.org,
 david.brown@linaro.org, wsa+renesas@sang-engineering.com,
 bjorn.andersson@linaro.org, linus.walleij@linaro.org, balbi@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Date: Tue,  4 Jun 2019 11:44:48 +0100
Message-Id: <20190604104455.8877-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_034503_279258_222C31AA 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a match table to allow automatic probing of ACPI device
QCOM0220.  Ignore clock attainment errors.  Set default clock
frequency value.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index db075bc0d952..0fa93b448e8d 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2017-2018, The Linux Foundation. All rights reserved.
 
+#include <linux/acpi.h>
 #include <linux/clk.h>
 #include <linux/dma-mapping.h>
 #include <linux/err.h>
@@ -483,6 +484,12 @@ static const struct i2c_algorithm geni_i2c_algo = {
 	.functionality	= geni_i2c_func,
 };
 
+static const struct acpi_device_id geni_i2c_acpi_match[] = {
+	{ "QCOM0220"},
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, geni_i2c_acpi_match);
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
@@ -502,7 +509,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(gi2c->se.base);
 
 	gi2c->se.clk = devm_clk_get(&pdev->dev, "se");
-	if (IS_ERR(gi2c->se.clk)) {
+	if (IS_ERR(gi2c->se.clk) && !ACPI_HANDLE(&pdev->dev)) {
 		ret = PTR_ERR(gi2c->se.clk);
 		dev_err(&pdev->dev, "Err getting SE Core clk %d\n", ret);
 		return ret;
@@ -510,12 +517,19 @@ static int geni_i2c_probe(struct platform_device *pdev)
 
 	ret = device_property_read_u32(&pdev->dev, "clock-frequency",
 							&gi2c->clk_freq_out);
-	if (ret) {
+	if (ret && !ACPI_HANDLE(&pdev->dev)) {
 		dev_info(&pdev->dev,
 			"Bus frequency not specified, default to 100kHz.\n");
 		gi2c->clk_freq_out = KHZ(100);
 	}
 
+	if (ACPI_HANDLE(&pdev->dev)) {
+		ACPI_COMPANION_SET(&gi2c->adap.dev, ACPI_COMPANION(&pdev->dev));
+
+		/* Using default, same as the !ACPI case above */
+		gi2c->clk_freq_out = KHZ(100);
+	}
+
 	gi2c->irq = platform_get_irq(pdev, 0);
 	if (gi2c->irq < 0) {
 		dev_err(&pdev->dev, "IRQ error for i2c-geni\n");
@@ -660,6 +674,7 @@ static struct platform_driver geni_i2c_driver = {
 		.name = "geni_i2c",
 		.pm = &geni_i2c_pm_ops,
 		.of_match_table = geni_i2c_dt_match,
+		.acpi_match_table = ACPI_PTR(geni_i2c_acpi_match),
 	},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
