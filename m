Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C074A618
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6i7HYomaaI91aHL6froQmc1q8XXVQpYNeWeNJeXXIg=; b=Ca5V6+L8JBTDws
	kpfGF4ofV3A5oMp23SormWUDr4wfkMdgNA9Ob+DSy354jgBBbcFV5CQ+ZCwnJxO5Q4aXzoLwr5TPF
	rlZlteSN8LCLO3TYPyVtKlsrB7SeL/9rVkGpqaEE3yQ+1YZ2wC46YFaCHMD9nsnbHbfdaUIdSa0Qm
	wAjxSdFy0DA2+NEAKJpstMR0KA4fTegj8yuKReKLFDc3EMu8iLV4yyt6+CLpqLQCEVTznPVtr/qy7
	iY+Lqa1GlJ2R06x4rV2HmszcTcb7oxVhU6aXQsQW8n5xAjlRkX7l90XeA03ieD6By+fuQt5SuCJcp
	lWFt4dSGVA349Kp/IFDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGYY-00082I-Bg; Tue, 18 Jun 2019 16:01:58 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGY1-0007qu-QF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1560873685; x=1592409685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=5D1InVqe8HFg9rHcH4d9F3uig3vBIGfWCBEB8Dy5q08=;
 b=ZU8HnA7vfmQBAuFpMj6UGKxdg/phOi3S1zT9069ek2KowTtpP4JBWeFc
 SOQPWf61KmB6qXx9eNI8bFk8vbF/8jHokEvQ4PmgCSHU9QdZJGhc9ee5N
 7TVEQ+QjtLYZdZ0p5s2njB+MoBxTJW3hjRAsBnmwkx82OPntKl9E/aUNK M=;
X-IronPort-AV: E=Sophos;i="5.62,389,1554768000"; d="scan'208";a="401230186"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-74cf8b49.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 18 Jun 2019 16:01:23 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-74cf8b49.us-east-1.amazon.com (Postfix) with ESMTPS
 id 05422C06EB; Tue, 18 Jun 2019 16:01:20 +0000 (UTC)
Received: from EX13D02UWB003.ant.amazon.com (10.43.161.48) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 18 Jun 2019 16:01:20 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D02UWB003.ant.amazon.com (10.43.161.48) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 18 Jun 2019 16:01:20 +0000
Received: from 8c859006a84e.ant.amazon.com (172.26.203.28) by
 mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 18 Jun 2019 16:01:18 +0000
From: <alpawi@amazon.com>
To: 
Subject: [PATCH 1/2] pinctrl: armada-37xx: rename reg-offset function
Date: Tue, 18 Jun 2019 11:01:04 -0500
Message-ID: <20190618160105.26343-2-alpawi@amazon.com>
X-Mailer: git-send-email 2.17.2 (Apple Git-113)
In-Reply-To: <20190618160105.26343-1-alpawi@amazon.com>
References: <20190618160105.26343-1-alpawi@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_090125_995861_274C413D 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
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
Precedence: list
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

The previously named function 'armada_37xx_update_reg'
implies that it updates the hardware register, but it
only calculates a register offset.  Rename to match
functionality.

Signed-off-by: Patrick Williams <alpawi@amazon.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 6462d3ca7ceb..00598b6f5c2a 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -220,8 +220,8 @@ static const struct armada_37xx_pin_data armada_37xx_pin_sb = {
 	.ngroups = ARRAY_SIZE(armada_37xx_sb_groups),
 };
 
-static inline void armada_37xx_update_reg(unsigned int *reg,
-					  unsigned int offset)
+static inline void armada_37xx_calc_reg_offset(unsigned int *reg,
+					       unsigned int offset)
 {
 	/* We never have more than 2 registers */
 	if (offset >= GPIO_PER_REG) {
@@ -376,7 +376,7 @@ static inline void armada_37xx_irq_update_reg(unsigned int *reg,
 {
 	int offset = irqd_to_hwirq(d);
 
-	armada_37xx_update_reg(reg, offset);
+	armada_37xx_calc_reg_offset(reg, offset);
 }
 
 static int armada_37xx_gpio_direction_input(struct gpio_chip *chip,
@@ -386,7 +386,7 @@ static int armada_37xx_gpio_direction_input(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int mask;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, offset);
 	mask = BIT(offset);
 
 	return regmap_update_bits(info->regmap, reg, mask, 0);
@@ -399,7 +399,7 @@ static int armada_37xx_gpio_get_direction(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int val, mask;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, offset);
 	mask = BIT(offset);
 	regmap_read(info->regmap, reg, &val);
 
@@ -413,7 +413,7 @@ static int armada_37xx_gpio_direction_output(struct gpio_chip *chip,
 	unsigned int reg = OUTPUT_EN;
 	unsigned int mask, val, ret;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, offset);
 	mask = BIT(offset);
 
 	ret = regmap_update_bits(info->regmap, reg, mask, mask);
@@ -434,7 +434,7 @@ static int armada_37xx_gpio_get(struct gpio_chip *chip, unsigned int offset)
 	unsigned int reg = INPUT_VAL;
 	unsigned int val, mask;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, offset);
 	mask = BIT(offset);
 
 	regmap_read(info->regmap, reg, &val);
@@ -449,7 +449,7 @@ static void armada_37xx_gpio_set(struct gpio_chip *chip, unsigned int offset,
 	unsigned int reg = OUTPUT_VAL;
 	unsigned int mask, val;
 
-	armada_37xx_update_reg(&reg, offset);
+	armada_37xx_calc_reg_offset(&reg, offset);
 	mask = BIT(offset);
 	val = value ? mask : 0;
 
-- 
2.17.2 (Apple Git-113)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
