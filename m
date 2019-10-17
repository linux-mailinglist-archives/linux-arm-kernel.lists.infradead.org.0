Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD646DAA2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wuiZMOGMmo79lA7KnOSeSyYP+LoPV5Q11ImPK2tgN/Q=; b=E7RplZIAAOfFrd
	oQgw9nAGwhq3ejC++2vrmEuYjiCEj+C3m2BPywd0dedELx1DhSkl9JVhOwGtaJ1+tm3AEHMQZxCmx
	wFD3rqDmJ7qccKEkdH4iiLC9uCSUWpugP46X93OaL1IYMWEZ4XiItNMwQzkHX5657swv04o3Y2drx
	I3RzZnpAMVrdMv03adoTIiBCRPMBNVYBz67AUjKulgG3BXaMCk5nU5Dz2OqSKfKMp0c3lWA4PvWsc
	6JbZbomTbU7hw9y6MIa6TsEjhhwmrLVk06RADJWu6wHd9lao1baY8zq2YQaGBOvwxRKIglC3oLxun
	38yPs6gOLIrHFyIxLt8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3CD-0000eB-En; Thu, 17 Oct 2019 10:39:53 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3C0-0000cU-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:39:41 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iL3Bv-0001us-DS; Thu, 17 Oct 2019 11:39:35 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iL3Bu-0001mf-PG; Thu, 17 Oct 2019 11:39:34 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] zx: make zx_smp_prepare_cpus static
Date: Thu, 17 Oct 2019 11:39:34 +0100
Message-Id: <20191017103934.6814-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_033940_443517_079A0D32 
X-CRM114-Status: GOOD (  10.66  )
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
Cc: Jun Nie <jun.nie@linaro.org>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Shawn Guo <shawnguo@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The zx_smp_prepare_cpus is not declared and not directly
exported outside of the file it is in. Make it static to
remove the following sparse warning:

arch/arm/mach-zx/platsmp.c:41:13: warning: symbol 'zx_smp_prepare_cpus' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Jun Nie <jun.nie@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/mach-zx/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zx/platsmp.c b/arch/arm/mach-zx/platsmp.c
index d4e1d3792224..43a33eaff388 100644
--- a/arch/arm/mach-zx/platsmp.c
+++ b/arch/arm/mach-zx/platsmp.c
@@ -38,7 +38,7 @@ static void __iomem *pcu_base;
 static void __iomem *matrix_base;
 static void __iomem *scu_base;
 
-void __init zx_smp_prepare_cpus(unsigned int max_cpus)
+static void __init zx_smp_prepare_cpus(unsigned int max_cpus)
 {
 	struct device_node *np;
 	unsigned long base = 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
