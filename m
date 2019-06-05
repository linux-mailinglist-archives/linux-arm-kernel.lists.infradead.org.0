Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F366535B72
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y7OiakOJTMF2t1p0giUt/ARk5S0lJwABZv11MpTXv6A=; b=TGL
	VuvJ7TmIUBsJjMJkJgn4F3QrjrL4TBjbuyvlN4PKDEYBTu/IcycX2kkpg0toWbHi3ScIQ5dpBckuD
	00c4U3920zcApyye7EYXWQhKDAQO8w3MVAxMFwXWBPZTuf2kLqVAa0maSKvxcg48D0RxZmIoz5AEM
	KLIixiSxq8XSNbJP/7XtHwMJSObI2iTjqv2xUuvNe0RvX9zYpAdBn+dhkv6ZnKsb9Kn8TvTcJnx8H
	J3+U1idrLmdLx4zvb94R6Cw2waClh7Km7BQKkVIBEHruuIm8gDNpZIG35sGDlp/4ZSzl6/1ezgmC6
	r7eL6LRMh0qnMOqOMxZjY5GUYZYGQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUKH-0003Zw-W9; Wed, 05 Jun 2019 11:43:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUJz-0003Ob-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id p11so14286540wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=nQjqkj1EN8NC8Ay0yEHmwn6X2HJX2TtkXyONunIjoOQ=;
 b=RH78oA+NxoAk2QUd4m2HOQ8dyN2sCxrVo+FvNDasZKbmuqv5dUteK2nYHr3AU8dZY2
 lL6O731jO9kBau+KvwCnnF2pv2zQNFqiUY9zOrc3A4LrxHgl9/zAkEPJlQwGcvHZMo/w
 T5Q+bajSnI9mx+6X4Pf9VCvK19Rxr/TWdt13E2G4DlLn2iW89yA4kT0OaSSfHFXfqVw2
 wsqz5uFfMcqQjg4rZ9X+5QJeBFThsy8V7siule0Y3MR04je8W6A0+CQYQsv0XPB0SH1t
 zd6JjCDEnS9YTtARJbgAB90xZpf4QrVjQTx3SGk0eBWm1D1i41b7bUq302Rnt1ZCH8ac
 ByZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nQjqkj1EN8NC8Ay0yEHmwn6X2HJX2TtkXyONunIjoOQ=;
 b=Su2q2gCncYA4/CyCgzrzh+ktjNQES+pBRB2PfEVHHjFwvOX3OURFoPMzMg5AC4Ebsb
 iuAIDPNIIw82YbYO4RrbjMdXHg8nMzb7X8F4fW6lQ3MNA9iJS6H1ndNshD10KkRc9kU0
 vjb9QdkBQ2iIsKoUF6IydiNvZ/hXJ1YRVIfwYh7udjTm+0GC+Q+2ubP14ExE8ENvIWPP
 5+4Jl3P8DI42VqgOq84raby1C0Q8Oh7PWZCRb1ss7KvFcvyx2e8d2fZidIAYrFAdRFmA
 IfPxiQtQkQ5TlyF+Xsx8mkrcYb13BQZ6B2LtOQv8GVGxIHCSF9MXZIjyCAocPCYDyyIi
 Oq3w==
X-Gm-Message-State: APjAAAW+JBvlimB0p6CRhGBFEnEN5cVfRTJoXsaZgnBJBsWW2NkvmdP1
 WvH3M6BPID9ocN/GvWoNsBgfcg==
X-Google-Smtp-Source: APXvYqzW/Zk1QYpnjxkfpZRt3FJnFpmA3XMOWzcM86U3SMvvL1uOdSy1dK3RIaWGRhxFidbFe5xSCw==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr9341914wrv.89.1559734987545;
 Wed, 05 Jun 2019 04:43:07 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:06 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Date: Wed,  5 Jun 2019 12:42:55 +0100
Message-Id: <20190605114302.22509-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044311_704652_1F80094B 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
