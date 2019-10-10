Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4F3D1D45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yg62dSCDUNOAfy8gHyeMdf5SUh698yjS1pn4m9v9hVE=; b=pVZzMLH1kZxXPW
	wU4jRYY5simoxTamRUCSf57hKTRBFyrjDVNk1QRsPLGAaLfAO/ZTX5hN/Cct++3V/MVQB35W3dMyl
	0xWe8SJnpizcPSy2DDTzSc7pEfxqYd5EO8ssDG0PMo408gVyiXTF93V9NLVkgHYp/c/2ptaJamms/
	TQwT61y1elQ+nD+0YowN1HfBufmHgUVJdeVFvEP1mOmUfajGC5EIcr9Ugf5h/MzPVXPYd7FUVIWGF
	pZWerfwdn2CZhlgIFjkzgVcogmBe9j/WDRWX27SO8xxDx4S15Jkje4ilrtJrmMvGYiatfX1dI/lE/
	tkvXvkT03o4g7LjM2kZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIM6A-0000Jy-R9; Thu, 10 Oct 2019 00:14:30 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIM4M-0007HR-06
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:12:39 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 593B78162;
 Thu, 10 Oct 2019 00:13:11 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 7/8] ARM: OMAP2+: Allow core oswr for omap4
Date: Wed,  9 Oct 2019 17:12:23 -0700
Message-Id: <20191010001224.41826-8-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010001224.41826-1-tony@atomide.com>
References: <20191010001224.41826-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_171238_091804_0C5C6B80 
X-CRM114-Status: GOOD (  10.09  )
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
wakeup"), things now behave for enabling core oswr for omap4.

Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/pm44xx.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-omap2/pm44xx.c b/arch/arm/mach-omap2/pm44xx.c
--- a/arch/arm/mach-omap2/pm44xx.c
+++ b/arch/arm/mach-omap2/pm44xx.c
@@ -128,18 +128,8 @@ static int __init pwrdms_setup(struct powerdomain *pwrdm, void *unused)
 		return 0;
 	}
 
-	/*
-	 * Bootloader or kexec boot may have LOGICRETSTATE cleared
-	 * for some domains. This is the case when kexec booting from
-	 * Android kernels that support off mode for example.
-	 * Make sure it's set at least for core and per, otherwise
-	 * we currently will see lost GPIO interrupts for wlcore and
-	 * smsc911x at least if per hits retention during idle.
-	 */
-	if (!strncmp(pwrdm->name, "core", 4)
-		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_RET);
-
-	if (!strncmp(pwrdm->name, "l4per", 5)
+	if (!strncmp(pwrdm->name, "core", 4) ||
+	    !strncmp(pwrdm->name, "l4per", 5))
 		pwrdm_set_logic_retst(pwrdm, PWRDM_POWER_OFF);
 
 	pwrst = kmalloc(sizeof(struct power_state), GFP_ATOMIC);
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
