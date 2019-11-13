Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC49FB682
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:38:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kLbESRxRB3/MoIW2gHC5S/IIwdlfG3xlgCTE3VO+8Fs=; b=qChfNFrBuy2tU7
	S4PGHfEIcwkoxW4/Rpv0tuonh76Sv0+tQcCtQtCwxLq5uUe9ozQRzlgbx+PmN2Gcw9Uyw+3zOR9Fx
	HHu5USN+/9IkSbfIQDcAW5cMyfZMvq9PqrxO39qeWL4ePirNe3cL2Lndrqgm49CKes4eJw4TePCzD
	dvRyBeqc+FwjN4rRdjzJKMaKcvoj3zqiTaxKmb1iGB6Dhyv7A7vq57VA5W2N/QLCqg7LfSuYJ5HFB
	x5Y1Wqq4wC0mgUxX9tkOwVTPysqcfulwkQPavWGypzDqHeDD4B8FgHmst6h/MIX12c3M1BrK+0LdW
	WA0PUYkbIKNcdDr+6fNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwad-0004Qj-Ti; Wed, 13 Nov 2019 17:37:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwaW-0004Q2-Bk
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:37:53 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id DCE9480E2;
 Wed, 13 Nov 2019 17:38:28 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Drop useless gptimer option for omap4
Date: Wed, 13 Nov 2019 09:37:49 -0800
Message-Id: <20191113173749.57261-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_093752_434180_AB0D0241 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tero Kristo <t-kristo@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have local timers on Cortex-A9, so using the gptimer option makes no
sense. Let's just drop it for omap4 to simplify the timer options a bit.

If this is really needed, it can be still done by specifying dts properties
in the board specific file for assigned-clocks and assigned-clock-parents.

This gets us a bit closer to start dropping legacy platform data for
gptimers except for timer1 that is used for system clockevent.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/timer.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
--- a/arch/arm/mach-omap2/timer.c
+++ b/arch/arm/mach-omap2/timer.c
@@ -545,7 +545,7 @@ static void __init __omap_sync32k_timer_init(int clkev_nr, const char *clkev_src
 	omap2_gp_clockevent_init(clkev_nr, clkev_src, clkev_prop);
 
 	/* Enable the use of clocksource="gp_timer" kernel parameter */
-	if (use_gptimer_clksrc || gptimer)
+	if (clksrc_nr && (use_gptimer_clksrc || gptimer))
 		omap2_gptimer_clocksource_init(clksrc_nr, clksrc_src,
 						clksrc_prop);
 	else
@@ -586,7 +586,7 @@ void __init omap3_gptimer_timer_init(void)
 static void __init omap4_sync32k_timer_init(void)
 {
 	__omap_sync32k_timer_init(1, "timer_32k_ck", "ti,timer-alwon",
-			2, "sys_clkin_ck", NULL, false);
+				  0, NULL, NULL, false);
 }
 
 void __init omap4_local_timer_init(void)
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
