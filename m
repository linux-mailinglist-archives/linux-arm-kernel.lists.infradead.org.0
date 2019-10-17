Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F86DAA1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X/T9srteT+Oa+BjeJNKgGyKjOsk+AWwc/wjyueCoaKU=; b=cjChkHa/BZ21FX
	BYSNITP0P8p+ywdYWQ9VJY/v2cW7U8aF5tXCI8VZURlJS2zq2dtTlW28Zs5DAp9rzC0qe4UKIthpr
	Nw/jFuzlLGnY7E5qO4koVqHpbFyvE2y7AtcSpjgRLE3WDOpXMUtYNZGjkitdT8LgoXVLiE9AbadWn
	EBrW+CF0td0asJF3ZWaj7YBL+MOCZZRF3nf2dPIM/trySSoPGMN0kpg5OFlP01ZvT+y++mNZ4JMTZ
	rqTZkNpzC6s6VftYChzkda+TvDFsk4ISoL6fdKx8vSS4mubgDA34yOKZwdAR7cXaxedOGzedS2hvw
	an2P/jndp4ogitznfZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL37J-00070A-Mh; Thu, 17 Oct 2019 10:34:49 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL37B-0006zk-Nn
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:34:43 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL379-0001lO-Ge; Thu, 17 Oct 2019 11:34:39 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL379-0001T1-6z; Thu, 17 Oct 2019 11:34:39 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] mmp: include common.h for mmp_timer_init
Date: Thu, 17 Oct 2019 11:34:36 +0100
Message-Id: <20191017103436.5575-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_033441_922101_6DC29E45 
X-CRM114-Status: UNSURE (   8.53  )
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

The arch/arm/mach-mmp/time.c should include the
common.h header for the declaration of mmp_timer_init.

This fixes the following sparse warning:

arch/arm/mach-mmp/time.c:184:13: warning: symbol 'mmp_timer_init' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Lubomir Rintel <lkundrak@v3.sk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/mach-mmp/time.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index 483df32583be..0706d8f667de 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -35,6 +35,7 @@
 #include "irqs.h"
 #include "cputype.h"
 #include "clock.h"
+#include "common.h"
 
 #define TIMERS_VIRT_BASE	TIMERS1_VIRT_BASE
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
