Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9A11FDE5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ygs59iDkeW49rHoBMQxdbQUjhxDnOG8V9hMEnxokBeE=; b=od4rFGHmlBuzfy
	7UWhkgy+JQGs5bpqHVhsBN6Bp7itpygbbRtDL5z5uu7PllBPvQ0lNrjpNK4ea1GpI2M+yoxtEOstk
	lMlkZOP7vbiU0kH0bj7gnCt1PNVa3j6aLY1CBTaHm7yNZVAQ7oATaPggAjD4g2ZZGhpEGmCv1woyK
	h4FfUP3M5MfDa9ojbiA2k6y3cvCCwWDnt9PaORRUi6cOqDfHN5r+zBJnM1B+JYxBlz7lvld07099Q
	k/zga0XVA/YIDiNtyvucbVziOh7aUQskwtSM4bDwlmFG+i5htGWDOrmkGS+XEGnuEIMtfZGbal/rZ
	py2s0WAQhS4rTl0H4gxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljRr-0003fW-L3; Thu, 18 Jun 2020 01:34:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj90-00049G-Kh
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:15:09 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83DFA20EDD;
 Thu, 18 Jun 2020 01:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442904;
 bh=DdzfsFUTBuNCx27Rd/SiNHCfH/ifH2yDGhE13vpwydM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sRdrQw0HHzarDlyxwquBKjgiqKZ8TCBym7DQkUr1ioMz4RkmzzL66TOmT33i1Lyv1
 vO6Zmf+enSGxKIrnthIqV8WfhTfLyEeav4TjSj6xMfFkTqYnpbvAstbFOfsiCuHBrj
 SR7gNl+7Vc3+t+cUQQD48G1Gza9XzoyT+LhmY7HI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 324/388] pinctrl: sirf: add missing put_device()
 call in sirfsoc_gpio_probe()
Date: Wed, 17 Jun 2020 21:07:01 -0400
Message-Id: <20200618010805.600873-324-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181507_310484_FB080F70 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: Sasha Levin <sashal@kernel.org>, yu kuai <yukuai3@huawei.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: yu kuai <yukuai3@huawei.com>

[ Upstream commit 66339f2fba3fa05b0507e1887e4c6abcfc6228a3 ]

A coccicheck run provided information like the following:

drivers/pinctrl/sirf/pinctrl-sirf.c:798:2-8: ERROR: missing put_device;
call of_find_device_by_node on line 792, but without a corresponding
object release within this function.

Generated by: scripts/coccinelle/free/put_device.cocci

Thus add a jump target to fix the exception handling for this
function implementation.

Fixes: 5130216265f6 ("PINCTRL: SiRF: add GPIO and GPIO irq support in CSR SiRFprimaII")
Signed-off-by: yu kuai <yukuai3@huawei.com>
Link: https://lore.kernel.org/r/20200603013532.755220-1-yukuai3@huawei.com
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pinctrl/sirf/pinctrl-sirf.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/sirf/pinctrl-sirf.c b/drivers/pinctrl/sirf/pinctrl-sirf.c
index 1ebcb957c654..63a287d5795f 100644
--- a/drivers/pinctrl/sirf/pinctrl-sirf.c
+++ b/drivers/pinctrl/sirf/pinctrl-sirf.c
@@ -794,13 +794,17 @@ static int sirfsoc_gpio_probe(struct device_node *np)
 		return -ENODEV;
 
 	sgpio = devm_kzalloc(&pdev->dev, sizeof(*sgpio), GFP_KERNEL);
-	if (!sgpio)
-		return -ENOMEM;
+	if (!sgpio) {
+		err = -ENOMEM;
+		goto out_put_device;
+	}
 	spin_lock_init(&sgpio->lock);
 
 	regs = of_iomap(np, 0);
-	if (!regs)
-		return -ENOMEM;
+	if (!regs) {
+		err = -ENOMEM;
+		goto out_put_device;
+	}
 
 	sgpio->chip.gc.request = sirfsoc_gpio_request;
 	sgpio->chip.gc.free = sirfsoc_gpio_free;
@@ -824,8 +828,10 @@ static int sirfsoc_gpio_probe(struct device_node *np)
 	girq->parents = devm_kcalloc(&pdev->dev, SIRFSOC_GPIO_NO_OF_BANKS,
 				     sizeof(*girq->parents),
 				     GFP_KERNEL);
-	if (!girq->parents)
-		return -ENOMEM;
+	if (!girq->parents) {
+		err = -ENOMEM;
+		goto out_put_device;
+	}
 	for (i = 0; i < SIRFSOC_GPIO_NO_OF_BANKS; i++) {
 		bank = &sgpio->sgpio_bank[i];
 		spin_lock_init(&bank->lock);
@@ -868,6 +874,8 @@ static int sirfsoc_gpio_probe(struct device_node *np)
 	gpiochip_remove(&sgpio->chip.gc);
 out:
 	iounmap(regs);
+out_put_device:
+	put_device(&pdev->dev);
 	return err;
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
