Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129D611FB58
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 22:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHtBjQL/ayEir2KX9vJrKA1CXaZnFQNp04cVweHMfqs=; b=DWqsCPQc2aWSke
	0uKgXtjzsWV6o3y+7XrYPYT5fmUAD3hkOTMG3uVemgYLTzv2zZINjwqJsOqhXxKHNxDqFGiqO9K9C
	iY9FnZyluvFltYWg3PBP4bJOiDxavlNlcKKb/7TzenkFnoRbx87yTCu8qRswTzONRP81jXjJdnUjV
	WH1iEWMWDjiiyshg8YiSZgpithMmGT7/KygW2v95uFHd+MPvJCrMMbOeJQxp/hmT3koquWEMcJS+c
	UtnP9z5N0XJ4V9PQD1uAE9yBiVLe76zphwLU2GTtn3JYxfR86eU6hOaJQHi/VPglmF0j7/suT01vE
	OyzvN+lZPVVGt5rU+tUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igb5F-0001HW-5U; Sun, 15 Dec 2019 21:05:45 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igb55-0001Fu-Ng
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 21:05:37 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CD457891B0;
 Mon, 16 Dec 2019 10:05:11 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576443911;
 bh=Vlmbh7Wfj/vOHyWeHWs/Hj+XcJMWfw+hdSIPCcGDSzI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=MZwogzFt47XEaCkDE1MuGcnZJKljOAnNyXGFNSb4I+gSW3UhNt3n4YJ/QXQ/aDvjd
 h08atFws7uqzdmgQT0zAbL4/oEuUHu2MjPZ0vmdVHrnWxu3deM7ryB3NBsgFhL09tA
 uOS/40E4BgG1WPL1HwDJMBYiVT9CmvyEvBtVEJJl7zoR86jcKVng9PRP/KDiK4hBy0
 Cbxct733goH2CKfPbn8J2CbrQ+puRsuWFwseDDKmwmcXAom6TALY3PStru8pTisvrY
 L0+jKmB6Ry8IYnX8CbkiDAN3OuwhGxH9N3uZGsTs3Chum7AUHgUsyRaumHU0bj0sJm
 oR8mT2BhrQ/4Q==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5df6a0070000>; Mon, 16 Dec 2019 10:05:11 +1300
Received: from hamishm-dl.ws.atlnz.lc (hamishm-dl.ws.atlnz.lc [10.33.24.30])
 by smtp (Postfix) with ESMTP id CE3BF13EEA8;
 Mon, 16 Dec 2019 10:05:08 +1300 (NZDT)
Received: by hamishm-dl.ws.atlnz.lc (Postfix, from userid 1133)
 id 967B4540430; Mon, 16 Dec 2019 10:05:11 +1300 (NZDT)
From: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
To: linus.walleij@linaro.org,
	rjui@broadcom.com,
	sbranden@broadcom.com
Subject: [PATCH v2 1/1] pinctrl: iproc: Set irq handler based on trig type
Date: Mon, 16 Dec 2019 10:05:03 +1300
Message-Id: <20191215210503.15488-2-hamish.martin@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191215210503.15488-1-hamish.martin@alliedtelesis.co.nz>
References: <20191215210503.15488-1-hamish.martin@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_130536_129029_0D51C4E1 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org,
 Hamish Martin <hamish.martin@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than always using handle_simple_irq() as the gpio_irq_chip
handler, set a more appropriate handler based on the IRQ trigger type
requested.
This is important for level triggered interrupts which need to be
masked during handling.

Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
---
v2: Alterations based on Ray Jui's review comments
- shift setting of handler type inside spinlocked region
- install handle_bad_irq as default handler for uninitialised interrupts

 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 831a9318c384..aa9b5ba1bf38 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -286,6 +286,12 @@ static int iproc_gpio_irq_set_type(struct irq_data *d, unsigned int type)
 	iproc_set_bit(chip, IPROC_GPIO_INT_DE_OFFSET, gpio, dual_edge);
 	iproc_set_bit(chip, IPROC_GPIO_INT_EDGE_OFFSET, gpio,
 		       rising_or_high);
+
+	if (type & IRQ_TYPE_EDGE_BOTH)
+		irq_set_handler_locked(d, handle_edge_irq);
+	else
+		irq_set_handler_locked(d, handle_level_irq);
+
 	raw_spin_unlock_irqrestore(&chip->lock, flags);
 
 	dev_dbg(chip->dev,
@@ -868,7 +874,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 			return -ENOMEM;
 		girq->parents[0] = irq;
 		girq->default_type = IRQ_TYPE_NONE;
-		girq->handler = handle_simple_irq;
+		girq->handler = handle_bad_irq;
 	}
 
 	ret = gpiochip_add_data(gc, chip);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
