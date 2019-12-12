Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A83111D910
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 23:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfMbddW7pnl7Ov/g7i3XZ39xd4E1uCuLlqzn+2iFsOg=; b=ZXHriIds/+vVJm
	l4FddjBk+59TlVDVuHQqWsNYazxUETDEh5AjaTWlCqlmrPJSQ5PPLULRAFoVBcNRW6rFPFzblXmA2
	W0f2xbUCVCNn3fdjAFZ0aTkJY88Uu1/7CN4iMKSXiDwP3W6aWndepxxEAtgaB4QNMBNwy+I4ITrJW
	vBk3wqVVs0LYPOfDWoxs7qi+Q9vwHfJVPLoGGSKtgWwj8GDggBjz01NBj9H6d2g8QE4NUrPAKU35J
	EplVTun3uWNIZpNlZ30Z+7uMEs6q8XGLa6j9JeTcpLqIZ3hISOo8AweqYLdVq+x8sR/Ct7BVVEiHL
	RShE0EnCTe+Ar/+dpHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWfB-0001wh-T0; Thu, 12 Dec 2019 22:10:25 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWee-0000fe-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 22:09:54 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6C1EB886BF;
 Fri, 13 Dec 2019 11:09:43 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576188583;
 bh=7P9buINH8YZmi8YLKUIL68gu/6asYNIBiQhY6iZpyrs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=2TPrp/FvGrmrN4CtpRefZbw+Vh6j9IltNNZ6QWdT48bFOeOBf0NLKEMSOqOSp8P+T
 OTZx9aTZEh2Ka8so0J88n2AHCoqHrXrw3d2Z5ZdaQxwYRPkvPNfVK2Q9SKY2U0HmHC
 tlQzCiXk4f+thvPzjnZGJ2xMI/YYis1M15Uap0RmqXS/sxEA9vx71JvZAnp4sr80Wk
 qz3Y6szdeUvHHs7bJ/DooYiPTxxiWQmKne4LHkH89IWojUnX4UjDL+1Pi39/tUnTq1
 dYQ0XdQ94LOeUvV6RAq+kEdfakhUYRxNVSwbB1XnLD7Qw/7zXMUOQDGEGabAjGp9Hc
 BdTm9jOEaoGxQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5df2baa20000>; Fri, 13 Dec 2019 11:09:43 +1300
Received: from hamishm-dl.ws.atlnz.lc (hamishm-dl.ws.atlnz.lc [10.33.24.30])
 by smtp (Postfix) with ESMTP id 3178D13EF6B;
 Fri, 13 Dec 2019 11:09:38 +1300 (NZDT)
Received: by hamishm-dl.ws.atlnz.lc (Postfix, from userid 1133)
 id 76782540505; Fri, 13 Dec 2019 11:09:38 +1300 (NZDT)
From: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
To: linus.walleij@linaro.org,
	rjui@broadcom.com,
	sbranden@broadcom.com
Subject: [PATCH 1/1] pinctrl: iproc: Set irq handler based on trig type
Date: Fri, 13 Dec 2019 11:09:23 +1300
Message-Id: <20191212220923.15089-2-hamish.martin@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191212220923.15089-1-hamish.martin@alliedtelesis.co.nz>
References: <20191212220923.15089-1-hamish.martin@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_140953_073325_06AA983C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 831a9318c384..c79e91eb1a47 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -288,6 +288,11 @@ static int iproc_gpio_irq_set_type(struct irq_data *d, unsigned int type)
 		       rising_or_high);
 	raw_spin_unlock_irqrestore(&chip->lock, flags);
 
+	if (type & IRQ_TYPE_EDGE_BOTH)
+		irq_set_handler_locked(d, handle_edge_irq);
+	else
+		irq_set_handler_locked(d, handle_level_irq);
+
 	dev_dbg(chip->dev,
 		"gpio:%u level_triggered:%d dual_edge:%d rising_or_high:%d\n",
 		gpio, level_triggered, dual_edge, rising_or_high);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
