Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0A74A619
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfTAicPRtWu/TBlWjGbPMPbYILkIO5btm/dEfO3CHpo=; b=XnvHrh6V0jCBZc
	1C6+gg3NQkmmKwb5+0HDJejB6qMEzbEkAETVfdyeJLs+d75IVsbuLpsAdE3txBOMyXwsSMJ8kXAyb
	B+cE44p1ZU7/iuKuvMCpvoUV4ZAxEppK1R24KOZT6WDHwsdFFf2YDxWLV5a0J9wA1TCfPpKfvFyFu
	u/uvb4PVoo+pNzgPriRuBlZF7euuIvqBqPmuO4ZQtZBB5cvzU1B0Yn9Unu1FE8bhkJt74Vhrk2vm/
	LTEM1KbTZfUacvTnuita0hinlTzooYKnnOwIQfRPaV5xlJbPHMtzMc45dPhdskzUL9+7zLAhjqBZg
	mDultvriNrQRppaAV5hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGYx-0008Ke-02; Tue, 18 Jun 2019 16:02:23 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGYO-000878-R6
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1560873708; x=1592409708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=5dxPM2jebBBl2HqfGDgN1kkUGse4zSbBuv7sLIXFwD0=;
 b=YT6nFSrNBaKjQ2G7yo9v4DyZ1N0WiyDEM2MNdp2VK55taAqd9c88eLv5
 a7bCwgz3Y7ARU13dbxhWHMBwuobDDcDQQNgIRgB9sO6cAB/RTUc+roJ1Q
 +KRnE7v3zKpGgdfFWux6rOtUBnidPe4tUMhgTUwifyuGlpH3qLvYqZtn4 w=;
X-IronPort-AV: E=Sophos;i="5.62,389,1554768000"; d="scan'208";a="811117649"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-1a-715bee71.us-east-1.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 18 Jun 2019 16:01:45 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-715bee71.us-east-1.amazon.com (Postfix) with ESMTPS
 id CED09A2373; Tue, 18 Jun 2019 16:01:40 +0000 (UTC)
Received: from EX13D21UWB001.ant.amazon.com (10.43.161.108) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 18 Jun 2019 16:01:22 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D21UWB001.ant.amazon.com (10.43.161.108) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 18 Jun 2019 16:01:22 +0000
Received: from 8c859006a84e.ant.amazon.com (172.26.203.28) by
 mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 18 Jun 2019 16:01:20 +0000
From: <alpawi@amazon.com>
To: 
Subject: [PATCH 2/2] pinctrl: armada-37xx: fix control of pins 32 and up
Date: Tue, 18 Jun 2019 11:01:05 -0500
Message-ID: <20190618160105.26343-3-alpawi@amazon.com>
X-Mailer: git-send-email 2.17.2 (Apple Git-113)
In-Reply-To: <20190618160105.26343-1-alpawi@amazon.com>
References: <20190618160105.26343-1-alpawi@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_090150_026471_5820ED2D 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Benjamin Herrenschmidt <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, Patrick Williams <alpawi@amazon.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrick Williams <alpawi@amazon.com>

The 37xx configuration registers are only 32 bits long, so
pins 32-35 spill over into the next register.  The calculation
for the register address was done, but the bitmask was not, so
any configuration to pin 32 or above resulted in a bitmask that
overflowed and performed no action.

Fix the register / offset calculation to also adjust the offset.

Signed-off-by: Patrick Williams <alpawi@amazon.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 00598b6f5c2a..82c980c5cccd 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -221,11 +221,11 @@ static const struct armada_37xx_pin_data armada_37xx_pin_sb = {
 };
 
 static inline void armada_37xx_calc_reg_offset(unsigned int *reg,
-					       unsigned int offset)
+					       unsigned int *offset)
 {
 	/* We never have more than 2 registers */
-	if (offset >= GPIO_PER_REG) {
-		offset -= GPIO_PER_REG;
+	if (*offset >= GPIO_PER_REG) {
+		*offset -= GPIO_PER_REG;
 		*reg += sizeof(u32);
 	}
 }
@@ -376,7 +376,7 @@ static inline void armada_37xx_irq_update_reg(unsigned int *reg,
 {
 	int offset = irqd_to_hwirq(d);
 
-	armada_37xx_calc_reg_offset(reg, offset);
+	armada_37xx_calc_reg_offset(reg, &offset);
 }
 
 static int armada_37xx_gpio_direction_input(struct gpio_chip *chip,
@@ -386,7 +386,7 @@ static int armada_37xx_gpio_direction_input(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int mask;
 
-	armada_37xx_calc_reg_offset(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, &offset);
 	mask = BIT(offset);
 
 	return regmap_update_bits(info->regmap, reg, mask, 0);
@@ -399,7 +399,7 @@ static int armada_37xx_gpio_get_direction(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int val, mask;
 
-	armada_37xx_calc_reg_offset(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, &offset);
 	mask = BIT(offset);
 	regmap_read(info->regmap, reg, &val);
 
@@ -413,7 +413,7 @@ static int armada_37xx_gpio_direction_output(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int mask, val, ret;
 
-	armada_37xx_calc_reg_offset(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, &offset);
 	mask = BIT(offset);
 
 	ret = regmap_update_bits(info->regmap, reg, mask, mask);
@@ -434,7 +434,7 @@ static int armada_37xx_gpio_get(struct gpio_chip *chip, unsigned int offset)
 	unsigned int reg = INPUT_VAL;
 	unsigned int val, mask;
 
-	armada_37xx_calc_reg_offset(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, &offset);
 	mask = BIT(offset);
 
 	regmap_read(info->regmap, reg, &val);
@@ -449,7 +449,7 @@ static void armada_37xx_gpio_set(struct gpio_chip *chip, unsigned int offset,
 	unsigned int reg = OUTPUT_VAL;
 	unsigned int mask, val;
 
-	armada_37xx_calc_reg_offset(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, &offset);
 	mask = BIT(offset);
 	val = value ? mask : 0;
 
-- 
2.17.2 (Apple Git-113)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
