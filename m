Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E118EFE220
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 16:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g6mI5YDuKDAsH924W7etArX2DI5E42Erwl397n/JmrI=; b=XJanFlSLtmljDC
	RW4AG21IWEPDXisqI12T2FepcfVPPnbgyau1Se2Zx9KTlEB4pjsGxQvEKtzr5nVYbBG78No7/GY6/
	I+eS0apKuqPLJ72xl32osxpUCQsxop1jTeHamzD8Q7VUO0h8yRkHvtw5iCoGEnbu5hpeZrvhjvT7Y
	2g0oVMKZ9c/MGRZgj7IBFRWtrdDAg8AMiIGdktZSyX1druneIeOx90j2H5tvDPll9sODRT8BWj0yQ
	dDbSycSPslFDOr1Oac7Y/y+cNwRSQmU7kkMEec8XvDVGtWTfkkk3OiYPKdy2awQure/w1teeWZZw4
	2dQZxS7Ckqqp8JSg9khQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVdzx-0002dq-IG; Fri, 15 Nov 2019 15:59:01 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVdzt-0002dh-0E
 for linux-arm-kernel@bombadil.infradead.org; Fri, 15 Nov 2019 15:58:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z8Ij/vXKkRd12+abMepMcJTwPOB+fBV1xnOsclURsWo=; b=Qdjl+BJgFXPn4ukrwhL/NP3V+c
 9BJRceHnQo9xsNe3s9RYW0jACXo+dWXJWOHMFjPtgjSIJs+h9pLicyV01bq8LIPAqkcHXLFjUCNjU
 SS2OII9f1vBmU1YenYplK6dsI+mjvWgnwRjTj1+QoElEq7aB4rnfnAR03/Zzt2NPsQXQpNyGjTnIO
 kDlNHd2AKsI9NkKlPKbakkaLwtm7dYaawiyBYbv6/uunQCjtMMgzVSZiWeyM/3QONCNRlnOSQY1YV
 YRkgQgtqGoTlkKRR8yKUGdMjmmMIppfaebkBCgEVWgo9z7apIIWKB1UkhgxM+4lA00C5+/3YnUdTK
 WukDqyGw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVdzp-00012l-Hp
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 15:58:55 +0000
X-Originating-IP: 90.66.177.178
Received: from localhost (lfbn-1-2888-178.w90-66.abo.wanadoo.fr
 [90.66.177.178]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 515674000B;
 Fri, 15 Nov 2019 15:58:13 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl: armada-37xx: Fix irq mask access in
 armada_37xx_irq_set_type()
Date: Fri, 15 Nov 2019 16:57:52 +0100
Message-Id: <20191115155752.2562-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, stable@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As explained in the following commit a9a1a4833613 ("pinctrl:
armada-37xx: Fix gpio interrupt setup") the armada_37xx_irq_set_type()
function can be called before the initialization of the mask field.

That means that we can't use this field in this function and need to
workaround it using hwirq.

Fixes: 30ac0d3b0702 ("pinctrl: armada-37xx: Add edge both type gpio irq support")
Cc: stable@vger.kernel.org
Reported-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 9df4277a16be..aa9dcde0f069 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -595,10 +595,10 @@ static int armada_37xx_irq_set_type(struct irq_data *d, unsigned int type)
 		regmap_read(info->regmap, in_reg, &in_val);
 
 		/* Set initial polarity based on current input level. */
-		if (in_val & d->mask)
-			val |= d->mask;		/* falling */
+		if (in_val & BIT(d->hwirq % GPIO_PER_REG))
+			val |= BIT(d->hwirq % GPIO_PER_REG);	/* falling */
 		else
-			val &= ~d->mask;	/* rising */
+			val &= ~(BIT(d->hwirq % GPIO_PER_REG));	/* rising */
 		break;
 	}
 	default:
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
