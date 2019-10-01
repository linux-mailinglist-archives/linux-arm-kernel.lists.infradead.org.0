Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59948C3980
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uU9jZpAzYN6Sz+LoFiamYzl0H07uK7XnBmYkR554AU8=; b=qaIi6/or7QlTYy
	a0fWS85smcLxN8iXMbilLducqV+XqQxTwfEMueyli4Kng3THXcTH348JMrH4+bPUOsXkgdaTUDM2E
	STIVll61nVhl1nm47L5+Tvyntls1dfJrydFHLF9CIcrKYEvanDDwxCqQz5SAb+ifr05yEbnH2NZou
	GEXEnGn97W7XHMmnwlyVdqzGmmhKCRlNDhkV7VtY0TpE5CjavaY4olp0QGOwqk4mt7JeGRwFkPa5X
	74+zktFaTuv+Eym0iUbE/awSZ4Tq6mLkr9FzGsI5Bvmp4SykM0Tr4q3QbtRsf5W3+63WwWMuVxOBq
	ay0/FGyNLEnaa5op6ypQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKPV-0008PF-PK; Tue, 01 Oct 2019 15:49:57 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKPN-0008OQ-1s
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1569944988; x=1601480988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=PgZ9aytk0j+S8TWOd0mGQ2grSS4ZIPx/rutqBSNX9jI=;
 b=Vl5WOhqBnUarXg7QtiEDzMy7b+wfCE3iVKhM353m6fzubxfbvObwITFd
 tF7gkSzIXEfzGCtsYalShBQ+tRs7X6YXP+siFgZjn7oe8sqjL8hypdRjz
 XrQscHSWQMkjvE43AglTAezjFHcDmAuFfetlxEW40YcmdEXS/yljWf9ML A=;
X-IronPort-AV: E=Sophos;i="5.64,571,1559520000"; d="scan'208";a="838434598"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2c-2225282c.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 01 Oct 2019 15:47:16 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-2225282c.us-west-2.amazon.com (Postfix) with ESMTPS
 id 4D0D9A1EF5; Tue,  1 Oct 2019 15:46:56 +0000 (UTC)
Received: from EX13D02UWC004.ant.amazon.com (10.43.162.236) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 1 Oct 2019 15:46:56 +0000
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13D02UWC004.ant.amazon.com (10.43.162.236) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 1 Oct 2019 15:46:56 +0000
Received: from 8c859006a84e.ant.amazon.com (172.26.203.30) by
 mail-relay.amazon.com (10.43.160.118) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 1 Oct 2019 15:46:55 +0000
From: Patrick Williams <alpawi@amazon.com>
To: 
Subject: [PATCH v2] pinctrl: armada-37xx: fix control of pins 32 and up
Date: Tue, 1 Oct 2019 10:46:31 -0500
Message-ID: <20191001154634.96165-1-alpawi@amazon.com>
X-Mailer: git-send-email 2.17.2 (Apple Git-113)
In-Reply-To: <20190618160105.26343-3-alpawi@amazon.com>
References: <20190618160105.26343-3-alpawi@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_084949_140858_73BD29E0 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Patrick Williams <patrick@stwcx.xyz>, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, Patrick Williams <alpawi@amazon.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 37xx configuration registers are only 32 bits long, so
pins 32-35 spill over into the next register.  The calculation
for the register address was done, but the bitmask was not, so
any configuration to pin 32 or above resulted in a bitmask that
overflowed and performed no action.

Fix the register / offset calculation to also adjust the offset.

Fixes: 5715092a458c ("pinctrl: armada-37xx: Add gpio support")
Signed-off-by: Patrick Williams <alpawi@amazon.com>
Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: <stable@vger.kernel.org>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 6462d3ca7ceb..34c1fee52cbe 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -221,11 +221,11 @@ static const struct armada_37xx_pin_data armada_37xx_pin_sb = {
 };
 
 static inline void armada_37xx_update_reg(unsigned int *reg,
-					  unsigned int offset)
+					  unsigned int *offset)
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
 
-	armada_37xx_update_reg(reg, offset);
+	armada_37xx_update_reg(reg, &offset);
 }
 
 static int armada_37xx_gpio_direction_input(struct gpio_chip *chip,
@@ -386,7 +386,7 @@ static int armada_37xx_gpio_direction_input(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int mask;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_update_reg(&reg, &offset);
 	mask = BIT(offset);
 
 	return regmap_update_bits(info->regmap, reg, mask, 0);
@@ -399,7 +399,7 @@ static int armada_37xx_gpio_get_direction(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int val, mask;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_update_reg(&reg, &offset);
 	mask = BIT(offset);
 	regmap_read(info->regmap, reg, &val);
 
@@ -413,7 +413,7 @@ static int armada_37xx_gpio_direction_output(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int mask, val, ret;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_update_reg(&reg, &offset);
 	mask = BIT(offset);
 
 	ret = regmap_update_bits(info->regmap, reg, mask, mask);
@@ -434,7 +434,7 @@ static int armada_37xx_gpio_get(struct gpio_chip *chip, unsigned int offset)
 	unsigned int reg = INPUT_VAL;
 	unsigned int val, mask;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_update_reg(&reg, &offset);
 	mask = BIT(offset);
 
 	regmap_read(info->regmap, reg, &val);
@@ -449,7 +449,7 @@ static void armada_37xx_gpio_set(struct gpio_chip *chip, unsigned int offset,
 	unsigned int reg = OUTPUT_VAL;
 	unsigned int mask, val;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_update_reg(&reg, &offset);
 	mask = BIT(offset);
 	val = value ? mask : 0;
 
-- 
2.17.2 (Apple Git-113)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
