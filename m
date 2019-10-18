Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C105EDC314
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68hSwRdZ/wTXNa9aYGprf55G9Boc+QOvm9bHkFjVPzs=; b=KQXcb1sKh53iYG
	WmXPqV4ARvgvv6hUJ2htjDXN9CcZdAoYq6D2dkP4Or8+oi2PebKl15viuYx7octRhsewhv8LW1dxb
	8W9sLq5bE/22Vx7Fa/fjaBmSssSOGD07d220u0AgoVk+gfn5uHETIss3uHe7pbnw7KalJeZLDtxYr
	ECd52SjhJ0PN4/3n35YdOGoJtf07wbSr3nrFB9wtcnIwTyocKGZqLWKxAjCIE+2sddQP0Sh4lAGmH
	Q2/6pByvxUt16Hhohm2qKRuURGVNATMBB0X5peXawvNyHcqaJ52zhF96IuiOkWo0BYoUHo8DfNcLh
	wxpKNpjOYCYd54lWJnMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPtU-00048V-Le; Fri, 18 Oct 2019 10:54:04 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPtJ-00047t-So
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:53:55 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iLPtG-0008BP-6N; Fri, 18 Oct 2019 11:53:50 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iLPtF-0002fT-G9; Fri, 18 Oct 2019 11:53:49 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] fiq: include <asm/mach/irq.h> for missing declarations
Date: Fri, 18 Oct 2019 11:53:48 +0100
Message-Id: <20191018105348.10210-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035354_079632_058C09CC 
X-CRM114-Status: UNSURE (   9.73  )
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
Cc: "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The show_fiq_list and init_FIQ are declared in the
<asm/mach/irq.h> but the fiq.c does not include it.
Include <asm/mach/irq.h> to remove the following
sparse warning:

arch/arm/kernel/fiq.c:85:5: warning: symbol 'show_fiq_list' was not declared. Should it be static?
arch/arm/kernel/fiq.c:159:13: warning: symbol 'init_FIQ' was not declared. Should it be static?

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
KernelVersion: 5.4-rc3
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/kernel/fiq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/fiq.c b/arch/arm/kernel/fiq.c
index cd1234c103fc..54b665dc14f7 100644
--- a/arch/arm/kernel/fiq.c
+++ b/arch/arm/kernel/fiq.c
@@ -47,6 +47,7 @@
 #include <asm/fiq.h>
 #include <asm/irq.h>
 #include <asm/traps.h>
+#include <asm/mach/irq.h>
 
 #define FIQ_OFFSET ({					\
 		extern void *vector_fiq_offset;		\
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
