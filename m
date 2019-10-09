Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D559BD12D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MWFKLPIcSaY8zZLorzYV6Mc3ftFdsowY/2PW0EWTIvc=; b=t1mJ6Xn34s0yqC
	rUB8aAPpCwjhYdWBiha5F6vVotL68dhaMySIwZqUJviaJSZe9Qk1xF8Qmo03o/aiw6JlP6Bs9jbuF
	HKpWyiwwGXjcNALbPec0oeTrzZsFd29UhcGCuTTFr6dc8MH/VfoSs6C7hg51g148pnTv3Jc+x7sVx
	4CTR0ICWL3i5/DxBeVOSv0X1DlyfrdMWqXDvhi09wMgZ1f9qxJj6Rv11XcGvgyuNaMm1/cwwtEmvX
	V9GET+6f/KmghCbz3ZJ97kvF7BQqi/7LEFtFs3Iov5l/r4eCv2yeBOBv3FuQuknqMNLyxCQPrImco
	1WYbbhukCp/rpZiNy8+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDyV-00070L-Q7; Wed, 09 Oct 2019 15:34:03 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDyJ-0006yn-JG
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:33:54 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIDyC-0002ip-6X; Wed, 09 Oct 2019 16:33:44 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iIDyB-0006CS-Mv; Wed, 09 Oct 2019 16:33:43 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] mvebu: fix __iomem on mvebu_pm_store_armadaxp_bootinfo()
Date: Wed,  9 Oct 2019 16:33:42 +0100
Message-Id: <20191009153342.23789-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_083351_787700_B0A8B2EB 
X-CRM114-Status: GOOD (  11.91  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Ben Dooks <ben.dooks@codethink.co.uk>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mvebu_pm_store_armadaxp_bootinfo() uses writel to
store data, so the pointer into it should be __iomem
annotated. Fixes the following sparse warnings:

arch/arm/mach-mvebu/pm.c:124:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:124:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:124:9:    got unsigned int [usertype] *
arch/arm/mach-mvebu/pm.c:125:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:125:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:125:9:    got unsigned int [usertype] *
arch/arm/mach-mvebu/pm.c:133:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:133:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:133:9:    got unsigned int [usertype] *
arch/arm/mach-mvebu/pm.c:134:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:134:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:134:9:    got unsigned int [usertype] *
arch/arm/mach-mvebu/pm.c:140:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:140:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:140:9:    got unsigned int [usertype] *
arch/arm/mach-mvebu/pm.c:141:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:141:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:141:9:    got unsigned int [usertype] *
arch/arm/mach-mvebu/pm.c:148:50: warning: incorrect type in argument 1 (different address spaces)
arch/arm/mach-mvebu/pm.c:148:50:    expected unsigned int [noderef] [usertype] <asn:2> *store_addr
arch/arm/mach-mvebu/pm.c:148:50:    got unsigned int [usertype] *[assigned] store_addr
arch/arm/mach-mvebu/pm.c:150:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-mvebu/pm.c:150:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-mvebu/pm.c:150:9:    got unsigned int [usertype] *[assigned] store_addr

Note, this doesn't take into account writel() is probably heavy
handed here and just writing the data and then flushing all the
caches etc would be good enough.

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/mach-mvebu/pm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/pm.c b/arch/arm/mach-mvebu/pm.c
index c487be61d6d8..c223f87ed338 100644
--- a/arch/arm/mach-mvebu/pm.c
+++ b/arch/arm/mach-mvebu/pm.c
@@ -106,7 +106,7 @@ static phys_addr_t mvebu_internal_reg_base(void)
 	return of_translate_address(np, in_addr);
 }
 
-static void mvebu_pm_store_armadaxp_bootinfo(u32 *store_addr)
+static void mvebu_pm_store_armadaxp_bootinfo(u32 __iomem *store_addr)
 {
 	phys_addr_t resume_pc;
 
@@ -152,9 +152,9 @@ static void mvebu_pm_store_armadaxp_bootinfo(u32 *store_addr)
 
 static int mvebu_pm_store_bootinfo(void)
 {
-	u32 *store_addr;
+	u32 __iomem *store_addr;
 
-	store_addr = phys_to_virt(BOOT_INFO_ADDR);
+	store_addr = (__force __iomem u32*)phys_to_virt(BOOT_INFO_ADDR);
 
 	if (of_machine_is_compatible("marvell,armadaxp"))
 		mvebu_pm_store_armadaxp_bootinfo(store_addr);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
