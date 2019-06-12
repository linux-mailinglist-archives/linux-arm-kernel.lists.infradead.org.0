Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1EC428F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z0Hvnb8BIAV142duY2mlTU46/8+3Vjg7CFivNmOm4yY=; b=sMiHpQnDZoGvY7TGNeSA31Aeaj
	ba04cfnW7HErKnIJaxqVOdkF82jDsyJ6wXF9gwYpQRkdDrwCkH26IRlPOA2MiNGz0bZWo1wdXG1pf
	ecqp9BrfW6nKze53Q9UXqvkU7PdMtzz16vlyFDlTDlbfH4VHb73XU5OD7NgMQgnlg+z4forRIVyBp
	AZqyd1QZBZldJnBXbz30slJMUaZPkqKNXizDfssVEJK1cnNiInHV8GDp8wi24kBGaIsk7x64orrJ3
	Ig6WJxauav/0OABUPvBDa8uOu9/cHewS1N9oiFFdVZWPJxqL8FXokUnINmiIRwzwzVFLsVws6thZY
	iPCvNf9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4E7-0005RG-Jf; Wed, 12 Jun 2019 14:27:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4DN-0005EE-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:27:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so6774933wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/Aaq1IVmTDwb5aMIJ54pXjvtw4nnZoMXSsSE3y/KzPo=;
 b=spIr1HI0F3AbtAb8DiEu9/whqpOq+KBs10UFyXRd2fSUB1k5RBU6LCcCvVt+QuW/vS
 oYdIGMzDfdkTfT6jYYjOpkFonvS+vzQwx9/Fxl6TXi+O2dNyxmmXE9Df9WzDen3//b5y
 ljMssjx4qZ3ak18yl9aXl4FmlH/NWEAUxLlxVICaMzyU0EUL30iFeE0e9VXlrGA7UcOX
 AXrZQIlUpuFk5xKlo2l/vShTgeyK3RUyY5UNypj3AV4gPjqd0e5jHOoEU+O6mIKCWA9i
 0nAvG33btRAYHe81prn37js+mnL5VvdULXuL0SeXnGYxD2GuopufTTmtY1oh7HJIUUgY
 DNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/Aaq1IVmTDwb5aMIJ54pXjvtw4nnZoMXSsSE3y/KzPo=;
 b=GViiX2mYdqMcbuVPpjbfUygzs/9uAe7LzCGpM9LtWhZd+cvY49bV+eZL0yESUwVDPO
 Lm/Xp0+NMN+7BqbY6Fih2KGg+dsQL+7Fats3kxNE1B+wU1AULojLRbiQ3cJzKcZ80PB5
 jnZ6/qD+6qkjeXpqOLhgtJoLjLWKUYIdS71mmxRDojSB/8LeuJVxjG1QN8ZF9ci+E8fQ
 /XKIW6LpW1v/yr3DnJMEkF6SSkjhyXRWUtGhKg31y3zARlb+NaBvBObxse5qJbsHJFMX
 14lIIHwbMWLj0hx2FuQ+X3tL3tYEDlpxMhkDtsyZLI7ktHOsnhUbUsj2hdax867yLmIn
 IDPg==
X-Gm-Message-State: APjAAAVQ3gcCAP0x7KplD9Yuk012yeNOqlCEa4fRANGtP8JFIG60k/PH
 aZqb4zn+ic2kZUvrgRcRkiqooQ==
X-Google-Smtp-Source: APXvYqzhMtr87FUQtkIgk6gBz7+K8Bh4W4ijluuKFWE7BZ8jROvsdnXNClEI8US18UFuYTFEkTusGw==
X-Received: by 2002:a1c:6c14:: with SMTP id h20mr6555123wmc.168.1560349619579; 
 Wed, 12 Jun 2019 07:26:59 -0700 (PDT)
Received: from dell.watershed.co.uk ([185.80.132.160])
 by smtp.gmail.com with ESMTPSA id y18sm203959wmd.29.2019.06.12.07.26.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:26:58 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 balbi@kernel.org, gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 jlhugo@gmail.com
Subject: [PATCH v4 1/6] i2c: i2c-qcom-geni: Provide support for ACPI
Date: Wed, 12 Jun 2019 15:26:49 +0100
Message-Id: <20190612142654.9639-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612142654.9639-1-lee.jones@linaro.org>
References: <20190612142654.9639-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072701_692698_0211681E 
X-CRM114-Status: GOOD (  12.99  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.or
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a match table to allow automatic probing of ACPI device
QCOM0220.  Ignore clock attainment errors.  Set default clock
frequency value.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
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
