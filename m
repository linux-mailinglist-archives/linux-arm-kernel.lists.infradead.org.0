Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5A4DC2D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7wDtXvs1WN7zgXtmUvfh0J6ek0wecGH48D+PbfjIhkY=; b=ovga/pw0PI6gje
	pfchQVbmkoTYs1XJytoQqzU7TMj/Be/LOREvIaFSvoEDeMDNP1DphV/B5oUyX6k/vJj9z2UE5C9wX
	MtwWrZN5adT5OZQTEDI1xL2g3BlhsuGsGNj6Sh8/3kPjxVz7p5b/iIbyDy4Fde5Fc2HX8LxXOPoUC
	btUZ0XeJ7VxfbGlKStgYhqaQhH+DBSINiQ6G+fdMA5JHC0NualCd7F4TXnsdJ9MRKm1NwWinm7oJ+
	98hJBhd3SXOMTvbtwHpiKAKTso5/cezXUSTjWCd6kgoTi6X98ZjxKbeN8fV+KeIsHdUvkeYTZr+ZH
	8A8WiR6jI6CfBGY7FDJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPbX-0006Lf-Bv; Fri, 18 Oct 2019 10:35:31 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPbP-0006L8-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:35:24 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iLPbH-0007eN-5H; Fri, 18 Oct 2019 11:35:15 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iLPbG-0006HR-PL; Fri, 18 Oct 2019 11:35:14 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] do not export show_fiq_list
Date: Fri, 18 Oct 2019 11:35:13 +0100
Message-Id: <20191018103513.24096-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_033523_231502_16395A01 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The show_fiq_list() is not used outside the file it is
defined in, so make it static and remove the header
file declaration (which it did not include) to remove
the following sparse warning:

arch/arm/kernel/fiq.c:85:5: warning: symbol 'show_fiq_list' was not declared. Should it be static?

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/include/asm/mach/irq.h | 1 -
 arch/arm/kernel/fiq.c           | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/mach/irq.h b/arch/arm/include/asm/mach/irq.h
index dfe832a3bfc7..fcc5667c7cea 100644
--- a/arch/arm/include/asm/mach/irq.h
+++ b/arch/arm/include/asm/mach/irq.h
@@ -15,7 +15,6 @@ struct seq_file;
  * This is internal.  Do not use it.
  */
 extern void init_FIQ(int);
-extern int show_fiq_list(struct seq_file *, int);
 
 /*
  * This is for easy migration, but should be changed in the source
diff --git a/arch/arm/kernel/fiq.c b/arch/arm/kernel/fiq.c
index cd1234c103fc..693d0b35acc4 100644
--- a/arch/arm/kernel/fiq.c
+++ b/arch/arm/kernel/fiq.c
@@ -82,7 +82,7 @@ static struct fiq_handler default_owner = {
 
 static struct fiq_handler *current_fiq = &default_owner;
 
-int show_fiq_list(struct seq_file *p, int prec)
+static int show_fiq_list(struct seq_file *p, int prec)
 {
 	if (current_fiq != &default_owner)
 		seq_printf(p, "%*s:              %s\n", prec, "FIQ",
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
