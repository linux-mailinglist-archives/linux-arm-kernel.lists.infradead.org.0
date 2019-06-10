Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537893B0F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=68rPkNyqSh3j+p0/hnMd9nNKk6JXmsaRKyWZuERuNG8=; b=Z64X99DHkG//aR6jZVDfYsac7i
	6AcG4GiAxndn2dAZNo4oFQjIGS+53V2Zmmz2V0lUixQGFDaxjhCT/LoPArMGrUvPXZYmD0DO/YMDe
	Ycm8re44MowT4cPeS7thXLL3TAz1j2RNkb0POYNPh5Qg/eWRVii4RHkiT9G6GUI8BZYADPlSRVg8d
	alnALHV49AvC3NIralZebT2LGUGg2aV5MGz8ks8gcZ3Y4iu2psnZxMQAac88/JMh0zX+7a9WvReZ9
	08D19UyhG+A/cCwhd9hJxSTZIIJ/Z+4sCS5fUHCrINmJYVMC3oyFFfEU7AKFlsrjuc0+/rtU22p1A
	3koLYy7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFuF-0003JP-VF; Mon, 10 Jun 2019 08:43:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFsj-0002Ck-Li
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:42:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so7605141wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9rm9ccpuGtAMzIOW1NWstMoYndtXNXfoUtRC4Q0MWiI=;
 b=O3IPYAnJIDAl9EBtH7E8TaBsbNYtCKJBzNXBhBSGchgmycGXMZ+SeXXWnHSJOF+E1x
 lQJx8GEVyLHbCQSfwQGcmlHAXj/qpJqdYd+xa6Ge30LjoqMMj+e3DI1Mf5jTQdOnB7lv
 qBdw4GPvolTSV9zkgu3+9mYCaajae+noAZGPuKK4G0hfX8CoHLO+xuJwymz43tAPCRTS
 oFAksS5WtCnQ7hjeAO1Bx0DsLKc7CGuGhzCCjiYBjfnFqYs9mTkBQ+gLf+CtMSny0UhA
 EEWQm6DVSKX1xMXFHmiAC7i0TC6/CjOQCe/Z53vgI+f5Bs62A+INNhrLfdctLDZ8DOfP
 EVuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9rm9ccpuGtAMzIOW1NWstMoYndtXNXfoUtRC4Q0MWiI=;
 b=kfDQoPoj+D0w9choEHdVwL65lPpOkIGLYGjZz3odT89UjeZCNEdqo1jn0poOgLSQFi
 zLmhV6O9dchI3Q3YzctOyJIR/8q0qR9p7Xl9ZGEamD6uNY4TdM+99FjoFCdceGVCUL+T
 UeKGG0Hr5MUtYC6D0RKvuRHAgYDoOR0NHfLi0S4gISTXh0Oy0hk5yLBsh+z62fGl2z25
 Hs1Qpuj/NfHqyCRlG/wO5LM7bAQ8GYLCBjLSFlDs+71ZoAir6yuCIJYgAQfgwXkVarv/
 ICjXXnQBYJBiPupxOGYwnIZrn9xHFDeuESnhpyDFGM5XDF74z3M7BtSI+r/thxuBQcKp
 yZMw==
X-Gm-Message-State: APjAAAVtW04exBgI9NH64vtuvkzhvFToCXY7pIjn4n8fGpu7ZZHOot//
 de4uSzmGGmFE0Tn910bu0tboYw==
X-Google-Smtp-Source: APXvYqy0TzWjN//I98gsrjpi6bkDoeqKWl3h2z+48UmR2v8GC9sKAVPvXFf6vTUnnB6w26x9gz61Hg==
X-Received: by 2002:a1c:448b:: with SMTP id
 r133mr13074978wma.114.1560156140428; 
 Mon, 10 Jun 2019 01:42:20 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a125sm9929670wmf.42.2019.06.10.01.42.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 01:42:19 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v3 5/8] soc: qcom: geni: Add support for ACPI
Date: Mon, 10 Jun 2019 09:42:10 +0100
Message-Id: <20190610084213.1052-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
References: <20190610084213.1052-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014221_716612_8EF73CFC 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
