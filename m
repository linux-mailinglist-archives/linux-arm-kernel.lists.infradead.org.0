Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CA81FDDEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jE44bg0dWSE6+xlMHd4vjSfainYAq7D975TXYYPPus4=; b=Q6FdtnzV53KrEU
	fZQ36j5a+ilLHqFQRJyehuETHWpQhDDrQZKfxi7vg9vI3k9alBS/HRHhOghMmUK8Doe4mPkI4m9Gx
	/l999JdHgMoVB3A9e91iRXFnpmeqLezrJGSnhZeqtR8pCLiZUVwBN4fLEHruJKWFo1f4jxhLqJz7U
	/Be2Z09mWPDldKtxGnsxVtyU7e+dqoz9B4kodzm0tJYc8E2mjCai3D7cDY1fQW0kGt4RaKNTdTJFE
	DoeGJHmx934BZN6EWtc9NUoWWYEEvWIsOjV1f0JFqtBhtFDYL6zi0f5Sofb/6ono1u2HnEzMfO/j7
	jZvZQmLpVGTl2nW+UHNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljMo-0005gS-UZ; Thu, 18 Jun 2020 01:29:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj7s-0003EA-8A
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:14:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9FCD21924;
 Thu, 18 Jun 2020 01:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442835;
 bh=L+2u2x+M17UPWRFkAT8mRWoi6IoHPRAravkJ2WX2OFE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eQ3nCr3SHpbkua+1tYSTYfI+OkILvLU1HiP0imX4P6ckqBtyXu/xrsebVoRpHELqV
 PQ1N4MmsBTyuCOxFAlmvpDq/zqlymqUBTZpVg7diDTaxUZO1NfYDt/B7z7ZMA+ZiIj
 R4Ikc2Zulgo+gsvWW60av4m01qMHDAhouKUFx8Ok=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 269/388] pinctrl: Fix return value about
 devm_platform_ioremap_resource()
Date: Wed, 17 Jun 2020 21:06:06 -0400
Message-Id: <20200618010805.600873-269-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181356_354096_34CD4F6A 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-gpio@vger.kernel.org,
 Tiezhu Yang <yangtiezhu@loongson.cn>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tiezhu Yang <yangtiezhu@loongson.cn>

[ Upstream commit b5d9ff10dca49f4d4b7846c3751c6bec50d07375 ]

When call function devm_platform_ioremap_resource(), we should use IS_ERR()
to check the return value and return PTR_ERR() if failed.

Fixes: 4b024225c4a8 ("pinctrl: use devm_platform_ioremap_resource() to simplify code")
Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Link: https://lore.kernel.org/r/1590234326-2194-1-git-send-email-yangtiezhu@loongson.cn
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/bcm/pinctrl-bcm281xx.c | 2 +-
 drivers/pinctrl/pinctrl-at91-pio4.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm281xx.c b/drivers/pinctrl/bcm/pinctrl-bcm281xx.c
index f690fc5cd688..71e666178300 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm281xx.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm281xx.c
@@ -1406,7 +1406,7 @@ static int __init bcm281xx_pinctrl_probe(struct platform_device *pdev)
 	pdata->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pdata->reg_base)) {
 		dev_err(&pdev->dev, "Failed to ioremap MEM resource\n");
-		return -ENODEV;
+		return PTR_ERR(pdata->reg_base);
 	}
 
 	/* Initialize the dynamic part of pinctrl_desc */
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index 694912409fd9..54222ccddfb1 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -1019,7 +1019,7 @@ static int atmel_pinctrl_probe(struct platform_device *pdev)
 
 	atmel_pioctrl->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(atmel_pioctrl->reg_base))
-		return -EINVAL;
+		return PTR_ERR(atmel_pioctrl->reg_base);
 
 	atmel_pioctrl->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(atmel_pioctrl->clk)) {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
