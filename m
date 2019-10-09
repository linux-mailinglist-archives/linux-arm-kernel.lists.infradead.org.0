Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D654D1054
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R3MQxGGGfRp63/xYoVdr/Vz2p+ekYLttD0VtGG1L6go=; b=EcGCNIvguQtILe
	iWOD5W1Cl5WmRYFgLKDeIP9Ywyuks+AZJKK3A3hkxA1IuF97wx07dRHDwSOh9hCfhbCmb5Pw+Mc7N
	tOxMZAGAkVUSmJdrdb2mBsbTZmeO6tbti4jijBLd+DordwqlVJJTXYs/Il6Y3f07nGZyCXyap2vW+
	y7IVcxzBzIyUHYWDv/Tz8hJJvSfdU5daIYjotgtB/xABeJLJwnPkQJF7xe9FvNnNOqyTjgkDoXa5E
	cnNfb7MzDldRmPkafGj/sbD3QGgala7jmrOT5GtlW+4hG2aaZLXcobYhD3ZPAJw/nc1Rxd+/nw8Ji
	bATnDFYON4XeyEod0Png==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICBS-0006vt-Os; Wed, 09 Oct 2019 13:39:18 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICBK-0006uy-9x
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:39:11 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iICBE-0007Zc-6m; Wed, 09 Oct 2019 14:39:04 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iICBD-0007Ow-Nt; Wed, 09 Oct 2019 14:39:03 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] ARM: OMAP2+: force iomem for omap_interconnect_sync
Date: Wed,  9 Oct 2019 14:39:02 +0100
Message-Id: <20191009133902.28405-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_063910_497636_9EE693EF 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 Ben Dooks <ben.dooks@codethink.co.uk>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Force the type of omap_interconnect_sync to avoid the
following sparse warnign:

arch/arm/mach-omap2/omap4-common.c:142:27: warning: incorrect type in assignment (different address spaces)
arch/arm/mach-omap2/omap4-common.c:142:27:    expected void [noderef] <asn:2> *static [toplevel] sram_sync
arch/arm/mach-omap2/omap4-common.c:142:27:    got void *

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Tony Lindgren <tony@atomide.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-omap@vger.kernel.org
---
 arch/arm/mach-omap2/omap4-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/omap4-common.c b/arch/arm/mach-omap2/omap4-common.c
index 5c3845730dbf..d27c5f61d708 100644
--- a/arch/arm/mach-omap2/omap4-common.c
+++ b/arch/arm/mach-omap2/omap4-common.c
@@ -139,7 +139,7 @@ static int __init omap4_sram_init(void)
 		pr_warn("%s:Unable to get sram pool needed to handle errata I688\n",
 			__func__);
 	else
-		sram_sync = (void *)gen_pool_alloc(sram_pool, PAGE_SIZE);
+		sram_sync = (void __force __iomem *)gen_pool_alloc(sram_pool, PAGE_SIZE);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
