Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AA6D9520
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ufMVGMrs+b3XOm3NH+Bd/eKM0bjnpy7FHRMleOntc/w=; b=Wgn
	v4wF2aOtY20WJjsnYjflk3vp4hgxH5so8G9Fq2aNEXTRLXSlEdREbfzj/JOZQIyrFehIhuFAQJDDZ
	sADmi/SwkWPJ/x5sK95cztnYLUp27X3TvZtF4y5sfjUOm0mYbi8a1cWh1rF7CXLdutRMjrOu3E96b
	sOe+f2hQi4h/Zb8K3+/hHkRvfX1tS9cU8ezZxugoXkxvWx8NxIk9RwqjLgKzcKVcMvflM8WMjDkFx
	qPfulfA+jAabeIP51Mrp6+xCZ3vaZ9h8YhgFpK7ydoXBHW+pYT9+JAxyxmn2+wrxC914i9rvrEB9P
	zwr5yoS2eWQnjOm21TsFP8nr4fpXx9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkwk-0000Ji-AZ; Wed, 16 Oct 2019 15:10:42 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkvu-0007ig-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:09:52 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id EF9h2100205gfCL01F9hfC; Wed, 16 Oct 2019 17:09:41 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iKkvl-0003wJ-0S; Wed, 16 Oct 2019 17:09:41 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iKkvk-0007yb-VA; Wed, 16 Oct 2019 17:09:40 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] ARM: shmobile: rcar-gen2: Drop legacy DT clock support
Date: Wed, 16 Oct 2019 17:09:39 +0200
Message-Id: <20191016150939.30620-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080950_900494_EB491149 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of commit 362b334b17943d84 ("ARM: dts: r8a7791: Convert to new
CPG/MSSR bindings"), all upstream R-Car Gen2 device tree source files
use the unified "Renesas Clock Pulse Generator / Module Standby and
Software Reset" DT bindings.

Hence remove backward compatibility with old R-Car Gen2 device trees
describing a hierarchical representation of the various CPG and MSTP
clocks.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel-for-v5.5.

The abovementioned commit was part of the v4.15 release.
The conversion was backported to v4.14.75-ltsi, and included in any
R-Car BSP based on v4.14 (rcar-3.6.0 and later).
---
 arch/arm/mach-shmobile/setup-rcar-gen2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-shmobile/setup-rcar-gen2.c b/arch/arm/mach-shmobile/setup-rcar-gen2.c
index 9e4bc1865f84abae..2fd3aa6f32124df0 100644
--- a/arch/arm/mach-shmobile/setup-rcar-gen2.c
+++ b/arch/arm/mach-shmobile/setup-rcar-gen2.c
@@ -24,7 +24,6 @@
 #include "rcar-gen2.h"
 
 static const struct of_device_id cpg_matches[] __initconst = {
-	{ .compatible = "renesas,rcar-gen2-cpg-clocks", },
 	{ .compatible = "renesas,r8a7743-cpg-mssr", .data = "extal" },
 	{ .compatible = "renesas,r8a7744-cpg-mssr", .data = "extal" },
 	{ .compatible = "renesas,r8a7790-cpg-mssr", .data = "extal" },

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
