Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0F81C5861
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WNtJ5o3v+EcrzjSBs3geIW+2ClFalgKRcm7FV55hK2w=; b=jVlNaVd7UHmN1c
	BXuvUPu4iUH8j3WrHOrpk5ncK0YgQUSvDg/WfXSgOweZZKAATGBn8ReOJ/ilhzrESAHAA/duS6T5E
	lFmYah5Vh4lcpOm5c0ZNsOCH6LgPFQ5YZWxO5fTp8wVnrzXNxEBxaoNfo9BuAfk5Xy0yWVW1a0LaG
	PVNh6LfgydafhrsQq4HR6at+BBCHyV2NbcYQK+2WBzMNcYGDvRlKRH2AU67gxyGJWbHDYt7BUfm99
	6Sub8UajBhxz/Z36TI7qr0hcE6qGRkkcoJ+qPWrJmVhaO84dqUWSzYggaoY9i207WaGjbdDynt6Ea
	cL5egcEJlnD6jLepduBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyL3-0004pk-HW; Tue, 05 May 2020 14:14:25 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyKs-0004nO-1x
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:14:17 +0000
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MBDrM-1jQzi83buY-00CePX; Tue, 05 May 2020 16:14:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kevin Hilman <khilman@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>
Subject: [PATCH] ARM: omap1: fix irq setup
Date: Tue,  5 May 2020 16:13:48 +0200
Message-Id: <20200505141400.767312-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:LvLPepcWVA3cOq/dneR4EUFbqygTCx28UhrDXt4MYSPcNJ4mrgn
 +QPxmj7Yxy4NuRDL2I3gKatumDNFanxLYw86EEXLQeaxf2uHxTPjdRxsZ0nyaJR+ncJanxy
 4nbOjM2H44/xEfwf5IKaHiR31MSIY7ePR1EXQ4Pd0jnyhEqjx5026Ue0/bycDgRv8VJvbSE
 z15LpjYn+K1X0KpouEG5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HMPeHO7MWj0=:QCVLcwagAi7moRTbEI8t4o
 uzWUr479RSv5Yd9emDprIzlpJRBuT53YlMq5+Ph3I8BO22ZitbEGM7a0XAZV1RVBCFf25N678
 TSSXd/DZRqPeNA1XgKo27ZE4YfC4aoy7CMpcWIcubWLSwahc2Xd649/RRCJ1m2OeQSpcVNUVy
 0S4sfhFaScwVX+oUmWSX3LSejHiSqhMTHxBHagCNqDQkYUgvY7Lk1ZLRLLfo5qI9Tgegs8PwV
 kV18Qh/OM9PwyUWsjmUIMGZZdeyBpHb7wox2LZZQ/jMUiOLhxzFzpIn3U0Vd/3+pBq1tSf40P
 ijm0zpuP258+KqWNNf26tgKSlX70j7WNSfTQw5lEjoGpNy0LG3ZHY2lDnbNHOrzrGDkVma1ZW
 QAUaXOEPlSk2TUXpiNbWsdDdJRKkkz6tSZFsz+tcZa1mCrVp06VXvlpZCDUqidndoJUdqcqTR
 tTRJSfP9TXKy9QTHkPTSZVr8WxIrcvil34FhEJeiuF0CYUXDWOQLlegPiXAfQ7qD7AHXkTvKh
 KU3SyvnFld/2S3Ux5n9p6oUgmDcLzE+N+w34hvIMfikZPCamItyAGjJX08clxNMQae1cg+qed
 2mMf1XNBAplayot4r50g5EN56RUtCME/8OHkIuIDeQa8l75/AnBimnkj6cz1aPm+9W2i1Pw2N
 CaQwxqyVNrY45q70PsMqbGXLktumgD0UiY3EMai9x6tPj3+vvsDz+XHg9FtGCe2SDKjL/V6UJ
 xSbQ3spM4NH7kQgc9kGalLumeO36TZI2qKqiV1K/BSrh2/DKj2yWD0pmUoP6MYOEwQAs1t/cO
 nDRnVmQi9zqpnZnWAibQPwqWUIJdJXK6XyLcf6VORR8tpPigNQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_071415_448942_68D3F6A2 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.73 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-omap@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A recent cleanup introduced a bug on any omap1 machine that has
no wakeup IRQ, i.e. omap15xx:

arch/arm/mach-omap1/pm.c:656:11: error: variable 'irq' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
        else if (cpu_is_omap16xx())
                 ^~~~~~~~~~~~~~~~~
include/linux/soc/ti/omap1-soc.h:115:30: note: expanded from macro 'cpu_is_omap16xx'
 #  define cpu_is_omap16xx()             is_omap16xx()
                                        ^~~~~~~~~~~~~
arch/arm/mach-omap1/pm.c:658:18: note: uninitialized use occurs here
        if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
                        ^~~
arch/arm/mach-omap1/pm.c:656:7: note: remove the 'if' if its condition is always true
        else if (cpu_is_omap16xx())
             ^~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to silence this warning
        int irq;
               ^

Move this code into a separate function to deal with it cleanly.

Fixes: b75ca5217743 ("ARM: OMAP: replace setup_irq() by request_irq()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-omap1/pm.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-omap1/pm.c b/arch/arm/mach-omap1/pm.c
index 0f8064bd40ae..266aa08aa8ed 100644
--- a/arch/arm/mach-omap1/pm.c
+++ b/arch/arm/mach-omap1/pm.c
@@ -605,10 +605,25 @@ static const struct platform_suspend_ops omap_pm_ops = {
 	.valid		= suspend_valid_only_mem,
 };
 
+static void omap_wakeup_init(void)
+{
+	int irq;
+
+	if (cpu_is_omap7xx())
+		irq = INT_7XX_WAKE_UP_REQ;
+	else if (cpu_is_omap16xx())
+		irq = INT_1610_WAKE_UP_REQ;
+	else
+		return;
+
+	if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
+			NULL))
+		pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
+}
+
 static int __init omap_pm_init(void)
 {
 	int error = 0;
-	int irq;
 
 	if (!cpu_class_is_omap1())
 		return -ENODEV;
@@ -651,13 +666,7 @@ static int __init omap_pm_init(void)
 
 	arm_pm_idle = omap1_pm_idle;
 
-	if (cpu_is_omap7xx())
-		irq = INT_7XX_WAKE_UP_REQ;
-	else if (cpu_is_omap16xx())
-		irq = INT_1610_WAKE_UP_REQ;
-	if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
-			NULL))
-		pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
+	omap_wakeup_init();
 
 	/* Program new power ramp-up time
 	 * (0 for most boards since we don't lower voltage when in deep sleep)
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
