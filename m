Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3103313ED71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIwg6jUYuCLt3UR+bSfmsdnTTYkBSr+xgqItAuE6nkM=; b=Lr5qWOwFN320g8
	JkfxhuV7235qN2mzWCxp7Yv0B06w25bz7QSUe0RnhU0Mg6xdEebQrnjj3BgGUJ8QPss/ipoKcqy91
	Wzoq860qzA7t+6U15eVItGom9zPCwXhvbuksp9/vGj8ovCvGY11CPQ+I8TaCsRo7e6XgOEfI5mhuu
	5CY7PDr/KKl/V7itevOEiBJ77cgOeStYHbaEz0XlBRkQu+qQNv2fWfj+6qk6r1NQkdmLQrCEgrfO4
	l/75uXqHXGjrk8Ac3u53ZIb2BzGNGhzS4QF00BscyPe07mmJOYmqI8fkw8Ae8SQJlYXfUHsi9WYAg
	WXER7IJzy1c3pGuOK9Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Tv-00086S-LI; Thu, 16 Jan 2020 18:02:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8vK-0004sn-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:27:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BC5F246C9;
 Thu, 16 Jan 2020 17:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195633;
 bh=fto6auODjSObhV4dyVgUD2pgW/Kn8GTtAltYPsvBTbo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g6Vd9MIb3Yc2vNSl9dtGI7nFtYLCjK3uGVDLDGDQBPhC3lW1csnhi0lvLKgFdAYIR
 ADORBRNjmS/n/+auX7ES6UXs/OfnCoix3z7oouGR+6C5tsuFveEc5FQ3mxdJcad/F1
 GUoVMU4AYm6HLNdT8zq5gzULqHT+oKishOUQ52Zg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 200/371] ARM: riscpc: fix lack of keyboard
 interrupts after irq conversion
Date: Thu, 16 Jan 2020 12:21:12 -0500
Message-Id: <20200116172403.18149-143-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092714_730065_321448D6 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

[ Upstream commit 63a0666bca9311f35017be454587f3ba903644b8 ]

Fix lack of keyboard interrupts for RiscPC due to incorrect conversion.

Fixes: e8d36d5dbb6a ("ARM: kill off set_irq_flags usage")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-rpc/irq.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rpc/irq.c b/arch/arm/mach-rpc/irq.c
index b8a61cb11207..7f0f40178634 100644
--- a/arch/arm/mach-rpc/irq.c
+++ b/arch/arm/mach-rpc/irq.c
@@ -118,7 +118,7 @@ extern unsigned char rpc_default_fiq_start, rpc_default_fiq_end;
 
 void __init rpc_init_irq(void)
 {
-	unsigned int irq, clr, set = 0;
+	unsigned int irq, clr, set;
 
 	iomd_writeb(0, IOMD_IRQMASKA);
 	iomd_writeb(0, IOMD_IRQMASKB);
@@ -130,6 +130,7 @@ void __init rpc_init_irq(void)
 
 	for (irq = 0; irq < NR_IRQS; irq++) {
 		clr = IRQ_NOREQUEST;
+		set = 0;
 
 		if (irq <= 6 || (irq >= 9 && irq <= 15))
 			clr |= IRQ_NOPROBE;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
