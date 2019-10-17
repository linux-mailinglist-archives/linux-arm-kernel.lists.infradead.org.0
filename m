Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AE6DAA25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DudkQQKfNqE3W7GGjNGoVzsBmFITKJbObxJdasp74GM=; b=bn+PCd59/Nc2rt
	klJd3NmRhqmH3wKGISeE6cU5lKBoD2CpcJz/ezKbPPFYXjbhHnNs66wvkkYJNr5h2hw1cmGpMTbcM
	KBI4DMazkSPvfLIIy9FiE/PXGR5ypWUkBDejZ/FjPPYKlYgAP1x+Vmwkz/mlOHGy/XvKWeACtKd0O
	qEHqXkAJNCuiNuwj44Bmn3CkF7p/plLiWiaJuR/GLWLECcp1LXH6Ms/lSoOQBu8pj2rWGBjidpAJG
	ZC2PalnaMl5fJ6YlgjqP0FYM5Q8ROht+PrrG0gwOxsTAY9O1tpVe6A22m7Us+/rNB5EhoS3oCZ0Ir
	6d0BXEuzE6YmDRyRs/8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL39q-00008m-4X; Thu, 17 Oct 2019 10:37:26 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL39h-00008C-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:37:19 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL39f-0001rX-W5; Thu, 17 Oct 2019 11:37:16 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL39f-0001ev-Gm; Thu, 17 Oct 2019 11:37:15 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] mmp: move declaration of mmp_dt_init_timer to common.h
Date: Thu, 17 Oct 2019 11:37:13 +0100
Message-Id: <20191017103713.6333-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_033718_150276_70CFA0A3 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lubomir Rintel <lkundrak@v3.sk>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mmp_dt_init_timer() is shared by several files in the
mmp directory, so move the declaration to common.h to
remove the following sparse warning:

arch/arm/mach-mmp/time.c:204:13: warning: symbol 'mmp_dt_init_timer' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Lubomir Rintel <lkundrak@v3.sk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/mach-mmp/common.h  | 1 +
 arch/arm/mach-mmp/mmp-dt.c  | 2 --
 arch/arm/mach-mmp/mmp2-dt.c | 2 --
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-mmp/common.h b/arch/arm/mach-mmp/common.h
index 483b8b6d3005..5bb6dcf0a8c1 100644
--- a/arch/arm/mach-mmp/common.h
+++ b/arch/arm/mach-mmp/common.h
@@ -3,6 +3,7 @@
 #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
 extern void mmp_timer_init(int irq, unsigned long rate);
+extern void __init mmp_dt_init_timer(void);
 
 extern void __init mmp_map_io(void);
 extern void mmp_restart(enum reboot_mode, const char *);
diff --git a/arch/arm/mach-mmp/mmp-dt.c b/arch/arm/mach-mmp/mmp-dt.c
index 35559792d5cc..e205cdaf19bf 100644
--- a/arch/arm/mach-mmp/mmp-dt.c
+++ b/arch/arm/mach-mmp/mmp-dt.c
@@ -15,8 +15,6 @@
 
 #include "common.h"
 
-extern void __init mmp_dt_init_timer(void);
-
 static const char *const pxa168_dt_board_compat[] __initconst = {
 	"mrvl,pxa168-aspenite",
 	NULL,
diff --git a/arch/arm/mach-mmp/mmp2-dt.c b/arch/arm/mach-mmp/mmp2-dt.c
index 305a9daba6d6..ea63203b8810 100644
--- a/arch/arm/mach-mmp/mmp2-dt.c
+++ b/arch/arm/mach-mmp/mmp2-dt.c
@@ -16,8 +16,6 @@
 
 #include "common.h"
 
-extern void __init mmp_dt_init_timer(void);
-
 static void __init mmp_init_time(void)
 {
 #ifdef CONFIG_CACHE_TAUROS2
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
