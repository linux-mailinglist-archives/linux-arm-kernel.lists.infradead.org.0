Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2231C8E74
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEpF/nWc6ic//n2N2bfGDzfxHxfIWCnhcHcHu/ExUh0=; b=NyAPEjix8FL3+X
	5eIP+lZAEUyVSOsHvi3I2eygt0X+K4lyjhtewrv5cmVMULsPKfux04isElo5U4aLKpwwKDZeb2dQX
	GMDYH9hzxwGjVtJa7Qb8G/8tdIJTG0HVCxb5R3bwWsNpNWNm62bSKiGvuxhYGc1FWmjeKMNx5GiO1
	Ftp+XAa0IwCGBiik0wzMs9RUxmXiMuyosWQvtn67g6ScrqB5+UrCyDCdvNvyLgjaBxkYN7Iv8GsKw
	bo7ZxIFcx/y1qzV2wdDLmpenzqMwv1PnsM8kLdTCCYHHOFtsVm3vgaPP8OycvemUvysBWSdQFZe86
	e9eWGOiJW1yd+wMLi3nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhWL-0002LV-Ml; Thu, 07 May 2020 14:29:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhVc-0001vh-Gr
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:28:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3EA892145D;
 Thu,  7 May 2020 14:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588861699;
 bh=wWICHhShsjiNXg4Lrs8fFbE9djX+UgP3NHhA9p/iUbk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kAFbJKmw+kx+SNyLvkjCxoHkV2wHauOSygLJr1OgrBo5HjYYy4NCTm5u2V4kCsDzC
 iNq/4mXiwNFGWwHpkJAxF7QlYzucofEk6rH2gqcUoOIrrvAXciP1M9FOBhyc7ZUP41
 g+4WwDXXuohA19NGyLQHOHKFbe8lfXBN0xjpJTA4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 41/50] i2c: aspeed: Avoid i2c interrupt status
 clear race condition.
Date: Thu,  7 May 2020 10:27:17 -0400
Message-Id: <20200507142726.25751-41-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507142726.25751-1-sashal@kernel.org>
References: <20200507142726.25751-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_072820_616809_571B8662 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, ryan_chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Wolfram Sang <wsa@the-dreams.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: ryan_chen <ryan_chen@aspeedtech.com>

[ Upstream commit c926c87b8e36dcc0ea5c2a0a0227ed4f32d0516a ]

In AST2600 there have a slow peripheral bus between CPU and i2c
controller. Therefore GIC i2c interrupt status clear have delay timing,
when CPU issue write clear i2c controller interrupt status. To avoid
this issue, the driver need have read after write clear at i2c ISR.

Fixes: f327c686d3ba ("i2c: aspeed: added driver for Aspeed I2C")
Signed-off-by: ryan_chen <ryan_chen@aspeedtech.com>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
[wsa: added Fixes tag]
Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/i2c/busses/i2c-aspeed.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index a7be6f24450bd..538dfc4110f85 100644
--- a/drivers/i2c/busses/i2c-aspeed.c
+++ b/drivers/i2c/busses/i2c-aspeed.c
@@ -603,6 +603,7 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
 	/* Ack all interrupts except for Rx done */
 	writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
 	       bus->base + ASPEED_I2C_INTR_STS_REG);
+	readl(bus->base + ASPEED_I2C_INTR_STS_REG);
 	irq_remaining = irq_received;
 
 #if IS_ENABLED(CONFIG_I2C_SLAVE)
@@ -645,9 +646,11 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
 			irq_received, irq_handled);
 
 	/* Ack Rx done */
-	if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
+	if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
 		writel(ASPEED_I2CD_INTR_RX_DONE,
 		       bus->base + ASPEED_I2C_INTR_STS_REG);
+		readl(bus->base + ASPEED_I2C_INTR_STS_REG);
+	}
 	spin_unlock(&bus->lock);
 	return irq_remaining ? IRQ_NONE : IRQ_HANDLED;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
