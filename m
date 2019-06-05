Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C5A35B8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OOdsJyckBQiJC1/m5sriwm9Lwlob6k0I0DqORIeLksI=; b=mA2w/vvzLI3F4oIzJlTqEwqNVv
	Noz4kUWlzNcialZ9K1BKRQvnaDeJDgkqGPB/DE32Dl1Fv00fyScTG67rYR7q5NVPlXg4/T1INZccU
	qBbN2hphx7bSdTCIk7kkJqWvm1TKz6+s9DfMPp4oAbQBl7i9sGCYw1qpt+DsosyVcrhOiW5PMwKny
	fINTCmz87vd737SzBBuzfwqloDoB3VWaNvtqy5I6xSIexV776SCfLLgQ2vBq4QsfWoCGjDQPa/opF
	1/YzCpnZzCikWY1lcs5sef8We8mIMjFUgM3lUQW3jW1jeZ0v5N6YVzmWn490YnphIxAqxwMvrsi4X
	xhRI4t6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUKf-00044X-F0; Wed, 05 Jun 2019 11:43:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUK0-0003PI-WE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id f204so1941731wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ixa6PZM7Qd3yNTQ1/2lb9UJukHzNBYD4+3OM8ec4OSs=;
 b=Jp/JdV2yn/wqzzWfOfRwb4FDVYCujOYkpzb+HCTUS8NJcsoL4RrGPGuKPM8+By8ldP
 jPZZn5cDvQZM4hPjpBYEHrh/IeOX0Z7r4dvWciU3vsimgp8YD0BNAI+Gw25gu1z4Gz8Y
 D3ui/SE5BXLU3wep3K6tbv585rzPvuk4KGIyNY5pTZ73EYHFKqL0ETq7VHveP0ik1XbP
 vRjdeVso0R3Qf3fg30cUV1JGbZ9rPnx5URfNBjQnyBqMB1vL7SrpnuPWfhxvEodve6a9
 nxKo++m195buCgkzC5hyYHqa6Y2fqKDvoQRgatziZq1/c9ycvazbtDPQschW4lFDaiTC
 3eXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ixa6PZM7Qd3yNTQ1/2lb9UJukHzNBYD4+3OM8ec4OSs=;
 b=pQH5h2BY4UWvYpoMhT3IAoe/e63CqyrcXsQR46Axx72aB8CSaru84Jqt3UBbjKZHB5
 Z2rJ8NndhnaQs1Sx/sZvw3o0b5pRA3zD0t7mKd9d9YP/GHRW2LmlXPCPknz5FzAAeB9q
 Jhk0SroMSs607geslT9T3wEGXbvDoarWmLap62V3lMmY2ozC2j6t+CCGctFlUbfVcTa6
 wrF9/UJuQBY+XpwDiQiQqB9v5QY2hN2GfoOQY5Mh2F/fR3Hqm5wHFBQCw4AtzX4Gkpy+
 +a5RiyLh6vD4/5AQRl51D3XRxq0fZ8CP0zqb3lSvpyXW9gagwir4JsHHMGJPsbkE8k/V
 DifQ==
X-Gm-Message-State: APjAAAUmAbejGggLQwxjD4C1SXZQFyJRirKQ2sgzu4C0sdypQGq1x0bw
 eLenMVNZ+JEvZWtfhpLu9GvF1Q==
X-Google-Smtp-Source: APXvYqyl2gwOWbUGVEnYEh9X8OzB/jrJfkYNgjV/h4onDE5kOB10EdAyUcgxHPRB9QKTfy4UfkQugg==
X-Received: by 2002:a1c:e3c1:: with SMTP id a184mr1175742wmh.24.1559734991651; 
 Wed, 05 Jun 2019 04:43:11 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:11 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 5/8] soc: qcom: geni: Add support for ACPI
Date: Wed,  5 Jun 2019 12:42:59 +0100
Message-Id: <20190605114302.22509-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605114302.22509-1-lee.jones@linaro.org>
References: <20190605114302.22509-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044313_218411_5ECD0515 
X-CRM114-Status: GOOD (  13.81  )
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

When booting with ACPI as the active set of configuration tables,
all; clocks, regulators, pin functions ect are expected to be at
their ideal values/levels/rates, thus the associated frameworks
are unavailable.  Ensure calls to these APIs are shielded when
ACPI is enabled.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/soc/qcom/qcom-geni-se.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 6b8ef01472e9..cff0a413e59a 100644
--- a/drivers/soc/qcom/qcom-geni-se.c
+++ b/drivers/soc/qcom/qcom-geni-se.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2017-2018, The Linux Foundation. All rights reserved.
 
+#include <linux/acpi.h>
 #include <linux/clk.h>
 #include <linux/slab.h>
 #include <linux/dma-mapping.h>
@@ -450,6 +451,9 @@ int geni_se_resources_off(struct geni_se *se)
 {
 	int ret;
 
+	if (ACPI_HANDLE(se->dev))
+		return 0;
+
 	ret = pinctrl_pm_select_sleep_state(se->dev);
 	if (ret)
 		return ret;
@@ -487,6 +491,9 @@ int geni_se_resources_on(struct geni_se *se)
 {
 	int ret;
 
+	if (ACPI_HANDLE(se->dev))
+		return 0;
+
 	ret = geni_se_clks_on(se);
 	if (ret)
 		return ret;
@@ -724,12 +731,14 @@ static int geni_se_probe(struct platform_device *pdev)
 	if (IS_ERR(wrapper->base))
 		return PTR_ERR(wrapper->base);
 
-	wrapper->ahb_clks[0].id = "m-ahb";
-	wrapper->ahb_clks[1].id = "s-ahb";
-	ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
-	if (ret) {
-		dev_err(dev, "Err getting AHB clks %d\n", ret);
-		return ret;
+	if (!ACPI_HANDLE(&pdev->dev)) {
+		wrapper->ahb_clks[0].id = "m-ahb";
+		wrapper->ahb_clks[1].id = "s-ahb";
+		ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
+		if (ret) {
+			dev_err(dev, "Err getting AHB clks %d\n", ret);
+			return ret;
+		}
 	}
 
 	dev_set_drvdata(dev, wrapper);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
