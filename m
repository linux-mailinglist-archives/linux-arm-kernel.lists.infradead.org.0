Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67657D1D46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpuMlAPLVBeIIAXcIk2Fz8FxkWHxXOqCo7LWV9beJ/U=; b=QwskKG+pbnSh7o
	37OhdrSbgWd2zF3EzA3EpUrzPDa+ql0lyxPP9o/D0Nob60ZH5DWgc1EhcFYlB1WdoBUXMRiFzop/x
	NmrNtqndGwfzxWIaiOZMUNz8nkFo4wFQYoSlqfaf0s+6AcMC/YeLjmrWoFk+Xs2fn9PTIkAPAkAmh
	znuK5JyZ8DoQ/IikVvcuz8YlG+lD+DR0W0DwR/AptZ5Sizxd0+d2naf0xJTZ4aCbXN7ryyplrly4H
	x8gJUt3flE3l+8CS6Ho+rM6/3315fyGjehrcrjKslMImlq5+lB0L7Lf0AGomWjNYmLbVgZOK8qS3s
	ozf/61i/X0vwIhGwHP6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM5w-00004u-Ut; Thu, 10 Oct 2019 00:14:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4K-0007Fv-Ru
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:38 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2659781CA;
 Thu, 10 Oct 2019 00:13:10 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 6/8] ARM: OMAP2+: Allow per oswr for omap4
Date: Wed,  9 Oct 2019 17:12:22 -0700
Message-Id: <20191010001224.41826-7-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010001224.41826-1-tony@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171236_944595_32E979C8 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org, Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit f74297dd9354 ("ARM: OMAP2+: Make sure LOGICRETSTATE bits are not
cleared") disabled oswr (open switch retention) for per and core domains
as various GPIO related issues were noticed if the bootloader had
configured the bits for LOGICRETSTATE for per and core domains.

With the recent gpio-omap fixes, mostly related to commit e6818d29ea15
("gpio: gpio-omap: configure edge detection for level IRQs for idle
wakeup"), things now behave for enabling per oswr for omap4.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/pm44xx.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap2/pm44xx.c b/arch/arm/mach-omap2/pm44xx.c
--- a/arch/arm/mach-omap2/pm44xx.c
+++ b/arch/arm/mach-omap2/pm44xx.c
@@ -136,10 +136,12 @@ static int __init pwrdms_setup(struct powerdomain *pwrdm, void *unused)
 	 * we currently will see lost GPIO interrupts for wlcore and
 	 * smsc911x at least if per hits retention during idle.
 	 */
-	if (!strncmp(pwrdm->name, "core", 4) ||
-	    !strncmp(pwrdm->name, "l4per", 5))
+	if (!strncmp(pwrdm->name, "core", 4)
 		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_RET);
 
+	if (!strncmp(pwrdm->name, "l4per", 5)
+		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_OFF);
+
 	pwrst = kmalloc(sizeof(struct power_state), GFP_ATOMIC);
 	if (!pwrst)
 		return -ENOMEM;
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
