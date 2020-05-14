Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DE61D239A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=REiMRrFEa50cGTBOpLukyev71UvGNvKNIc9n/ivBJXA=; b=LRN93dO6RNCfZZ
	tXC6LDlO0x8L896H/5T158DuF+YB3qH8kDlYN/Ulgh4LmA4ZVDDmA61gxb/LD4eDOgCP6h8Fciltd
	uwEhf77GEt1Y/HuhPCi6UHHhR9BIC3tB4eSJnPJ6LAX5FriPurIN8JCdq6AS9ilUOPjRFgz3FCVkZ
	DLnhhywO8+pW7cR0rKO03ALKXvkQ+E/aPnU0/OTXKd6kdpAhNN+CV3vwp3nJ5ejHUK5YaqggNVPgr
	2hR4Pfm5uWIpSFT0DVK7cSv6EDmoIklZs95YJDf4xOe0D/sUxvJf2hB3KQ26bbiDIzyXnTBTCLY35
	mRL+6I5NBbc6dF18X2UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1ha-0001C9-12; Thu, 14 May 2020 00:26:18 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1hR-0001BS-NN
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:26:11 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49Mslg3v9dz1rqqS;
 Thu, 14 May 2020 02:26:07 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49Mslg28fNz1qql9;
 Thu, 14 May 2020 02:26:07 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Fuq64URWGR3I; Thu, 14 May 2020 02:26:06 +0200 (CEST)
X-Auth-Info: GEFkQqWmIonJjOP7Q3LNFuJidKGBpavxP1bkC94TinI=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 14 May 2020 02:26:06 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] genirq: Check irq_data_get_irq_chip() return value before
 use
Date: Thu, 14 May 2020 02:25:55 +0200
Message-Id: <20200514002555.171801-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172609_905898_B904C362 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The irq_data_get_irq_chip() can return NULL, however it is expected
that this never happens. If a buggy driver leads to a NULL being
returned from irq_data_get_irq_chip(), warn about it.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Stephen Boyd <sboyd@codeaurora.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
To: linux-arm-kernel@lists.infradead.org
---
V2: - Use WARN_ON_ONCE() and return -ENODEV
    - Reword the commit message
---
 kernel/irq/manage.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index 453a8a0f4804..761911168438 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -2619,6 +2619,8 @@ int __irq_get_irqchip_state(struct irq_data *data, enum irqchip_irq_state which,
 
 	do {
 		chip = irq_data_get_irq_chip(data);
+		if (WARN_ON_ONCE(!chip))
+			return -ENODEV;
 		if (chip->irq_get_irqchip_state)
 			break;
 #ifdef CONFIG_IRQ_DOMAIN_HIERARCHY
@@ -2696,6 +2698,8 @@ int irq_set_irqchip_state(unsigned int irq, enum irqchip_irq_state which,
 
 	do {
 		chip = irq_data_get_irq_chip(data);
+		if (WARN_ON_ONCE(!chip))
+			return -ENODEV;
 		if (chip->irq_set_irqchip_state)
 			break;
 #ifdef CONFIG_IRQ_DOMAIN_HIERARCHY
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
