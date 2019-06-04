Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC147344B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OOdsJyckBQiJC1/m5sriwm9Lwlob6k0I0DqORIeLksI=; b=NYfyV0UISYkevWhomyGUHY1RwC
	LrSZPgi/m2s1GTi4tbhGpT1rljKKZfzQd8wmEK2WAlRuZoM88RcS+6aG10t9hOdzX9lXOWw84RlKj
	4dw/AYuUSeUhBxqK15/qn1+LIYzNWtzsOWye7PKoi/qOONNS6WmE6GPd6+TkFZpUkXmEB4rZvmYHR
	NgHtYj5INpMZjLQa4H0V4AF+KoUtWhY6qaRD26NqxxDyIIE9eLn82lWZ0gkYMOJymgVoLYLxrGqkr
	vpoc5zWrgYMQF7tUnn+v8T1DB9kBSLU6ak2NPzRHzpw/0c3+UJDYeO8oQ6RrG96Qde9whw6dUtFmj
	3n1fPISQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6x7-0001XV-0L; Tue, 04 Jun 2019 10:46:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6wD-0008Cf-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:45:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id o12so8156964wrj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 03:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ixa6PZM7Qd3yNTQ1/2lb9UJukHzNBYD4+3OM8ec4OSs=;
 b=SrM3zAvHO7s4r4kfWRb3yKeFRE5PBTe75g4T6jp6QVLZ+DbjYiqMYZ/caaJl2svogL
 Dho1YX4HBmmhcjNwienKNpKLHxULynaK4RwnoYB8aEOifJlkpTWldE/+L9a6CBOW2SBV
 8TY+kVlRP8QzflACyJFTgmXnlx9rJAUzH4CNwmMUfhVqaznt97K1fxCP8/Zawp6/IgVv
 nclsKzImAAkMxU8Y2NicxZ+aWSjqdzGCXD6Uy2EN7XkkhnMLxpGxX+mLyl/mAhj77crl
 3OedRVGkpp68L5HrhDth6eUQCdIJppx09j67O+gWfpNvj+pXqJRqm3HD5nbQBk9OGfYV
 t2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ixa6PZM7Qd3yNTQ1/2lb9UJukHzNBYD4+3OM8ec4OSs=;
 b=CxFRetB58qVbi6FdMQRVVtUvhBg3NSCqqKLjynxdiWVK9oHpjGvrCn3BVoegTpWwE8
 cH0B6TFmrCkuaLfePPyzKWkCnPQZX/Qkua1g5jA9PtneRVOCiRcGLX2YTU3vfyeY9Wvh
 Ygwyf51komuQu7PlYa8Sz2fGCBVT4xsmoNm2Hi9io8dfI3aZsvhIlWc1mAS6djVmmtX0
 b2Fn+vmhFZRQoik2aetuMceweqosO1RfMiw0NT2jbaMX1O2ubR60X6XLO1WZd/eET5x8
 MiW95Qjuesy6EV6Mbc83LYGiGRjquB23Qohu33/s0PaWKXJsJIWPZQ8jnp/r4P9cx1sr
 t1LA==
X-Gm-Message-State: APjAAAVorcotSIJRf1ehnSwTstOfctteHD4KZRAe1R27w1jKiKeV99BR
 OUwjfkevHfNw5QzV5M+OMQwc4w==
X-Google-Smtp-Source: APXvYqxeY6H93q1Bt0x5h2fNrnGLPGAkTcBxIAddnWtbIbwQwr3Fz5wwwK1XYktubxlpc0VDO1ZA7Q==
X-Received: by 2002:adf:e286:: with SMTP id v6mr6228022wri.340.1559645103884; 
 Tue, 04 Jun 2019 03:45:03 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id t140sm2718623wmt.0.2019.06.04.03.45.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 03:45:03 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, kramasub@codeaurora.org, andy.gross@linaro.org,
 david.brown@linaro.org, wsa+renesas@sang-engineering.com,
 bjorn.andersson@linaro.org, linus.walleij@linaro.org, balbi@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 5/8] soc: qcom: geni: Add support for ACPI
Date: Tue,  4 Jun 2019 11:44:52 +0100
Message-Id: <20190604104455.8877-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604104455.8877-1-lee.jones@linaro.org>
References: <20190604104455.8877-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_034505_363295_1DA527FD 
X-CRM114-Status: GOOD (  13.92  )
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
