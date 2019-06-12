Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06D3428F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hzd/ICcUtJ+qnY0TkQdQ/iqHchKimp0FpVwcGtPGgc4=; b=Zz+CyGKzpgB9WP69mxE8KaRWFn
	HcOk67r1A0zOGq/ZSzkzjQgRqnfN8u8UenaRHCGw2KKmu8FJVeKYG0bphTutQp1WuyoYSLxh8OpG0
	7BK5y6M2ZndKN4M08jwvQfgzI+GJ9j/wFoj/AeL6Dz2ln7O8f2Jfx+0roFf0kA2zSAXXebyqu6wAF
	8eT9+Vb5GU1cdQ3iJdAHvkvZ9BpxnfyraPFcKuUR+WT2his2y/U98zQ8+bJaEoZjUaSGWjiznzlUW
	ohl6a/w9M8d9ljrRBzn/svD17wBme9jO1xHFURYPgEbZKFhCdvyow+GaKS+par0fvz/37LCWRnoHr
	TEe8u2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4Ek-00066h-Ez; Wed, 12 Jun 2019 14:28:26 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4DP-0005El-0j
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:27:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id p11so17160085wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2zuxNNJ4iuFL5CUgXXBK/C8GK/Wfm+gcHDg2NkvAFB8=;
 b=NKgmSte+DXgDnofeK6HXXyqoIgzl+2wllid5N2Mb+2YYY8FLB9znpc53v8JSMYbfRU
 8ylKMJtnAGExDye874/mBlDb0yf4dCHHygLIwOxF/s3zzGlcc3f25hqRAoN4yuTZavOp
 FD49dnc3Zkf0lfeHqyPqHzZp4qCU5yYFihh5W6f5tCa8MuAPL898N1keR/Rp+zk2FI8N
 h/EQ4QyWTmdBRgyYCy0ZVodzzLsL3iqqevCwj6abO4xy5PcesDw/V+47H/LKfufv7KST
 yEF8pFE3JAL7BVu0jGU+bMdvD4JLZD3ywF1UJibJLLCCWcdP3HkG0DH6FQMkKiKoaghu
 4TsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2zuxNNJ4iuFL5CUgXXBK/C8GK/Wfm+gcHDg2NkvAFB8=;
 b=TqAqPvEkQB4BNjihrOKOPLv3si9xxm/x2joS5y45JAl0rA43nhu0x14dZ2XtCWB1hW
 ALPer0wwxNkIUr+2NZybKrpDKCKk0Oamc1aFz+XxbTdgtPLExbUtLUO5Lo2G3wtd7i38
 VxAAdczQcZWLRZHXBznWHgbYjbCtdFm+sttqWL9kzAuj8VXbJREakowHtdEpkOBvraii
 vnq7zvh+4riccYCDJt/C7UPGhDBcdP4Yp5DBCo4ErAG2SfVrr3IY+091UD+2LaJOvNBx
 6HZRCKqegugKFI9sQB5RmFre+r+vOiPxSksP8Djt4RtIpOTK1lXIWCWHCE5jeH3fWym4
 IXFQ==
X-Gm-Message-State: APjAAAWPEkUVk2OlGtK4wOhHp/vSd2tWmTyVrZzctrk+3x6qUxmuAVlH
 WGtk4TM9o0P9TP5G9CXVF0hvHw==
X-Google-Smtp-Source: APXvYqxekgeziKYqupgg3uCEJpmlgdAtBIp9jZkrHyLt6P3LyNI2hY9QxWfrOLqlb8Sqyx9aJJo6dQ==
X-Received: by 2002:adf:da48:: with SMTP id r8mr1540836wrl.18.1560349621530;
 Wed, 12 Jun 2019 07:27:01 -0700 (PDT)
Received: from dell.watershed.co.uk ([185.80.132.160])
 by smtp.gmail.com with ESMTPSA id y18sm203959wmd.29.2019.06.12.07.27.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:27:01 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 balbi@kernel.org, gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 jlhugo@gmail.com
Subject: [PATCH v4 3/6] soc: qcom: geni: Add support for ACPI
Date: Wed, 12 Jun 2019 15:26:51 +0100
Message-Id: <20190612142654.9639-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612142654.9639-1-lee.jones@linaro.org>
References: <20190612142654.9639-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072703_083831_2D84D5FA 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

When booting with ACPI as the active set of configuration tables,
all; clocks, regulators, pin functions ect are expected to be at
their ideal values/levels/rates, thus the associated frameworks
are unavailable.  Ensure calls to these APIs are shielded when
ACPI is enabled.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/soc/qcom/qcom-geni-se.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
index 6b8ef01472e9..d5cf953b4337 100644
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
 
+	if (has_acpi_companion(se->dev))
+		return 0;
+
 	ret = pinctrl_pm_select_sleep_state(se->dev);
 	if (ret)
 		return ret;
@@ -487,6 +491,9 @@ int geni_se_resources_on(struct geni_se *se)
 {
 	int ret;
 
+	if (has_acpi_companion(se->dev))
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
+	if (!has_acpi_companion(&pdev->dev)) {
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
