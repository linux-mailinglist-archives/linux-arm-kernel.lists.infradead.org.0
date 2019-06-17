Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7B6482FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hzd/ICcUtJ+qnY0TkQdQ/iqHchKimp0FpVwcGtPGgc4=; b=gs1Cboo2h8ZzR/erqYcUplo5Zl
	kriLADbQY4FHKFwsCNhA8pnzI2v6O+vkVQvT8LacdXPkoTeBZ+HbujdKRUkqmjKPMYtG0Q3onvHQc
	XcSThhrpJSJbDPR+e4SsBF5KOuTrXtDCUy4TIHAXVOQKow1tnieYvX17S9R5eZ96zdiG5mphR24fC
	IQRF58TLVlspAu6KbO4vGgvef7A+R7rld5MmyzefOvmg5X1OAmBHLaI0Ifg0fpc2ihfyeQgjQaF9H
	Sl4mE20tulm2qqwgB4o2Lu6EvLVO1OqwBZbV62O8lkUZQhB6YYo2tqAX6GaBkNEkADEhAxsYEiO7i
	+T+ewIAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcr6t-0004ri-RI; Mon, 17 Jun 2019 12:51:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcr6N-0004gG-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:51:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so9772453wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2zuxNNJ4iuFL5CUgXXBK/C8GK/Wfm+gcHDg2NkvAFB8=;
 b=q+s/96q0GvL81bpISKq1BYq2qgGMpiINLYY94rSfeJIBgtJ0JASEtiXtDPecNFmtZL
 IVM+FA8aky8PBmnMLL4+Kt0aJ3tCYdUb9UEdfNN6lMqZIm32xgDsGAGZEN75E5BGglZ5
 O0qHpPxDxjps+O6mgY7ewWjzgrArHawuVqm5pgALhFmzbvj/vTigwdNoWTRq+QYjzbQW
 X4PP0kzs+r42vn1y/uQP2HCx+p4e6qaylctjsm4b3GGzN1UOWC+lSwN5UNNB59hZ9phn
 mt8/uuVdLmFh2bLj3JPXGKXcTYEITepZw7iCLKx8El0VEXOnDiwDYGwUZY8bVg2fGUtk
 a2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2zuxNNJ4iuFL5CUgXXBK/C8GK/Wfm+gcHDg2NkvAFB8=;
 b=oEWv7zocZKRfTgHf4lf/nnyVbj27HULH3eZBiAvukYZEy5p/04tKCn2xcjT0OupDq1
 JtpVjK45a/MT9EP3Q/pSczzpTAIukOZW8LSC0ZXb4h4JQBT/ujIaD6DvM2wwlDk1WJeh
 hkzOO9qchV2sFB+hwWHCmWYkYfZ8ho6MPHJTnBG50J4aG03XZf8/wecsAZ3u97yuREXb
 qgUDKvDB5WfS+Zu6k0IsITnMONtutyCaWI1xZ1I7tuVxYkROxaUG9L7ihFnaZL74UCuB
 C+Hc6U8HY+y/m86LFHP76m6tpOxuUfZARSlzOkmGi/4QPMReV54qtbTGEX2NeRxAPd1d
 OIDA==
X-Gm-Message-State: APjAAAU8mxXZGAfxADTLzRLiH5CIXMt9t7Nr3DoYsZO8CGVoMOXu7BYs
 OGDCo19OAKar6a7vPcigSgL5yA==
X-Google-Smtp-Source: APXvYqxQmsT3xz0CBZrCiSA472UgfglVRfGZm5u9OAQIPSBLxsX3r/VA44xZ+WxLMb03U8CAncn0Ag==
X-Received: by 2002:a5d:6050:: with SMTP id j16mr6799737wrt.20.1560775869586; 
 Mon, 17 Jun 2019 05:51:09 -0700 (PDT)
Received: from dell.watershed.co.uk ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id o11sm10477852wmh.37.2019.06.17.05.51.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 05:51:09 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 bjorn.andersson@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, felipe.balbi@linux.intel.com
Subject: [RESEND v4 1/4] soc: qcom: geni: Add support for ACPI
Date: Mon, 17 Jun 2019 13:51:02 +0100
Message-Id: <20190617125105.6186-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617125105.6186-1-lee.jones@linaro.org>
References: <20190617125105.6186-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055111_214407_390679F0 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
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
