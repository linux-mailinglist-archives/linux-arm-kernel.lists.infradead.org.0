Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E9F3B0DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LRvyIN9xeflFmdtdtMQ9Ij4EnksSnvuEnkyDilpSdCs=; b=bsr
	6EbAvzfO6fUZ0ncXVJ93u2Fa1zdsYO5YXfdt32qiAJCI5XoJNJQSs226xBCmJU1rC8ug8qDTjAvtp
	m2L4kAxAQ4hF0fEnFHEiC0KBKhIkNGaop4RUS6YThAaI+CoNrgRuuA76ZdPtz9UABfJd2syF4jCo/
	koqMRvpPJ1RodjkKathbs8yMEizvcM3zzKPT5BibMSrCgaXE+SWu6M2hkXAsoZR0PLbWPS64V5IQC
	EmmLFU9eIbxGGTXKhM+yOLVaAWzcPITwhafpg0KFQw9qFUJFBtk61afOXrfECTYlxzCeEc5ZxB7Uf
	XOBFzKNDpnP5fxQRfqwHStz8yRbNEwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFsw-0002CS-BQ; Mon, 10 Jun 2019 08:42:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFsg-0002B2-BC
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:42:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so7607004wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Dg3oC3jeSqKLOMc1HRQAN+HlqdHVv5WaH1kaddbCmVU=;
 b=N579Ut3169MDjhrrsBHmt//MQCwAN9tpPt3Zo1dy964bOck+NE2epVrhRBU1VblB2u
 argmebVwjEfyM0/+EdEoAX0b5Fq5NxYGpIQuKYxcRm3f6DrXYUp9+3Phnsrs72hPDxLY
 9FeO0ZoZfziqPPQ5Sabb6aQTkrkkpKHrgStbDGRScUYfIpJ7xF3SyWOxHQOwYZqwhKcz
 EniNcgCcFjDzdPD/Gnpf3RA+qXhbvSAs16aNmMS2qJDjp6tBrLfK6Mgb0HZOpg+9qNwL
 oQ6VHz8UKkO2idUdzyEKI+GrwcIaOp0HZzEmgPvcIdAyT9BdrZ+vROzlL53L0fsTHRCe
 Amsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Dg3oC3jeSqKLOMc1HRQAN+HlqdHVv5WaH1kaddbCmVU=;
 b=JvVpbL7SvFQOgh4gI6/CtZEi0P1AwayrmY8gLrn2z4tH7g/fya0VLkIhBJlADxel2j
 lu54zO5YwTv9V26tezK3jsz3cywcPazp/1c+6vY6WhAVqPByJeRTK4oJcq1+lhheYX6k
 LJrfcbK6gzSDTeDzgpxXX7LNTzybaU2sXhOtb9kGe+eZ8y95DUbwUA2BHxF2Og4zzw8j
 cnZZw8lXcXEkb50CmThxy1TyKlT3KABx47o3fV3qwhzP/3YKws249U4dnR29QBKG18lp
 VB3cM5kB285vJ8IegWo3vVC48D0qzAW2N41T7GzdgDmU3KBMgT1+hpsXWVQdwrXHn7ar
 2miw==
X-Gm-Message-State: APjAAAV7lJ9C7zftJK2gSjS+39FQ95J5WqPD9tkIfDX7CJvGVuw8CXod
 H55OUId10ChkNUsxRev43vaWWA==
X-Google-Smtp-Source: APXvYqxdxCdZ2/sBtdJ+/F3Df3JCTp8kjj6xUmL6L4kDCCYLWsWmFp9Vfz2ZkU8np8UWYiu6QPITaA==
X-Received: by 2002:a1c:9c8a:: with SMTP id f132mr7642789wme.29.1560156136449; 
 Mon, 10 Jun 2019 01:42:16 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a125sm9929670wmf.42.2019.06.10.01.42.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 01:42:15 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Date: Mon, 10 Jun 2019 09:42:06 +0100
Message-Id: <20190610084213.1052-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014218_397942_9B7F064A 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
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
 drivers/i2c/busses/i2c-qcom-geni.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index db075bc0d952..9e3b8a98688d 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2017-2018, The Linux Foundation. All rights reserved.
 
+#include <linux/acpi.h>
 #include <linux/clk.h>
 #include <linux/dma-mapping.h>
 #include <linux/err.h>
@@ -483,6 +484,14 @@ static const struct i2c_algorithm geni_i2c_algo = {
 	.functionality	= geni_i2c_func,
 };
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id geni_i2c_acpi_match[] = {
+	{ "QCOM0220"},
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, geni_i2c_acpi_match);
+#endif
+
 static int geni_i2c_probe(struct platform_device *pdev)
 {
 	struct geni_i2c_dev *gi2c;
@@ -502,7 +511,7 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		return PTR_ERR(gi2c->se.base);
 
 	gi2c->se.clk = devm_clk_get(&pdev->dev, "se");
-	if (IS_ERR(gi2c->se.clk)) {
+	if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(&pdev->dev)) {
 		ret = PTR_ERR(gi2c->se.clk);
 		dev_err(&pdev->dev, "Err getting SE Core clk %d\n", ret);
 		return ret;
@@ -516,6 +525,9 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		gi2c->clk_freq_out = KHZ(100);
 	}
 
+	if (has_acpi_companion(&pdev->dev))
+		ACPI_COMPANION_SET(&gi2c->adap.dev, ACPI_COMPANION(&pdev->dev));
+
 	gi2c->irq = platform_get_irq(pdev, 0);
 	if (gi2c->irq < 0) {
 		dev_err(&pdev->dev, "IRQ error for i2c-geni\n");
@@ -660,6 +672,7 @@ static struct platform_driver geni_i2c_driver = {
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
