Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6F519BE63
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jmz/Z/QF0RgYnX/+aRw3lwoseGXrCTRoPFcf0Bp8YcU=; b=CIg
	baashdy73xNd9RVdxEBOvqGwZW/57ndd0aM5jZIxBKwDO4mw92fcShs0U2KCKo7WVc71uhGNPUuEw
	UTdX09nwPerWOXfXNEJrs35LlCGVz1wOHVnzXC7k0Ng/IRyd9n055mnF4qZDW14loXwKTzw0La1wr
	CnlgJSp8Hf41OZ+l33i15het0yVioGbnPVqE4Q10/qRHuwUUFTOf4wYm6UL5QXECE8/7AK4ZDKgSF
	v6fazvuc8X1VxZZzATRFNpgNR+RpKCmj2pfhRzyf6tB687pNYKPHra/tBIPFULeHRI73rt9opF2Lc
	y8MMs5J1tmutPPIieFnLdsoi5P0oU7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJvqW-0002hL-AP; Thu, 02 Apr 2020 09:09:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvqP-0002gf-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:09:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id z7so2550631wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 02:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=StLW4oQA2WaIFFPJqSGzSymR2wGzT0o0QxMbZtBUVlk=;
 b=d9IdAHDZyEa62Jw04B77sMtjVPdNa9vpnb4vpYZxhWIYq3dd19MZtHfhDJtpigL4Aj
 0lTur6dAWq/vA3A5LzqOa9PCxYDSfcgoOkQ6DWrnhT5CaZYbzaafQ8ZoQbQNGHpl76zV
 XdHZQ8zGRGZ+Z3o3PL6fL2THK4+JKFeqY5SU8bghIVTLvB3g9cmdzfEyq9RRWGaV6dJ2
 VEZfIrAeawGjRpsXFkAB73r0sX5WcZCC+0TEvToep7FMLtZST9mL/X86o8YOYDXZ4W+W
 1f85fZry1d2bPj9tCUGgWKkaHEm4rXwC7YcOD5qTMp3O6lqbC0rkUzV6tlLY+zduzxLD
 rygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=StLW4oQA2WaIFFPJqSGzSymR2wGzT0o0QxMbZtBUVlk=;
 b=qeKjOO2Umz5bAnpJDGa1h++ewiPkxFNcxu6w7npUQsMKb7BkPinfOF/MOCcULMfZK2
 g3p9WRv+Ll5a1S7GZ82ofq2Dfhk+BHWwr2akPum8bdPg0nl2szvWqZkHthTBtlEX/nlc
 rnhgtBhsXee26l4ALvOFIXl8u90CVibR1xIvjSgjGE2AWlk8f3zhsunMJ3pA7xvbzqsm
 9dx2xWl5t40vGMhVV8apW4Q4/PTpWxwAtnadvZ6as7cc+JYXKrymavlo7CHnHsbl/3Bg
 uqO6ukd37G28WlTRLBHC0Oc9eobMhJNUiaGcZ0navoAyBDaY6QCimDKzYbLW7dyUI3Ue
 h1uw==
X-Gm-Message-State: AGi0PuYt5rAnhxK9a9o/Z0KQmJqJcvQyQlAIAu/0WN8UHiPqfTF6hTn9
 7Up6yPNQCaYAg2wUNjqv2B43Jw==
X-Google-Smtp-Source: APiQypL8UW6cTm5VP6BFVGzslvteA1w9m7t8nZrQqPskNcZ68K6UnXvkCjIsdFXA8Xk1zJTdxJLHMw==
X-Received: by 2002:a1c:6605:: with SMTP id a5mr2512660wmc.32.1585818539513;
 Thu, 02 Apr 2020 02:08:59 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id h2sm6150372wmb.16.2020.04.02.02.08.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 Apr 2020 02:08:58 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: linus.walleij@linaro.org,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH] pinctrl: sunxi: handle probe defferal
Date: Thu,  2 Apr 2020 09:08:52 +0000
Message-Id: <1585818532-23051-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_020901_842996_B1392A9A 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When checking the logs on my sun8i-a33-olinuxino I saw:
sun8i-a23-r-pinctrl 1f02c00.pinctrl: Reset controller missing
but this driver was working after.
This message is just here because the reset controller was still not probed.
So don't say anything if the return code say to wait.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/pinctrl/sunxi/pinctrl-sun8i-a23-r.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/sunxi/pinctrl-sun8i-a23-r.c b/drivers/pinctrl/sunxi/pinctrl-sun8i-a23-r.c
index 8a08c4afc6a8..9e5b61449999 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sun8i-a23-r.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sun8i-a23-r.c
@@ -103,8 +103,11 @@ static int sun8i_a23_r_pinctrl_probe(struct platform_device *pdev)
 
 	rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(rstc)) {
-		dev_err(&pdev->dev, "Reset controller missing\n");
-		return PTR_ERR(rstc);
+		ret = PTR_ERR(rstc);
+		if (ret == -EPROBE_DEFER)
+			return ret;
+		dev_err(&pdev->dev, "Reset controller missing err=%d\n", ret);
+		return ret;
 	}
 
 	ret = reset_control_deassert(rstc);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
