Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931FC3D2EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXWVBqBtOU/KX2Gz6pBQbbispLDlID6XU+T5i0t80BE=; b=JzgNTAXBC5M2ot
	WKZQ2HBUs9Gn2IhKGfdIE9w/afgxxEhuQ+xmOC9FHqgpmJFWN49ioqZtSN43vRVKCqVf5HsXKS2Pu
	ULiWrTGaEBjXSvIOk2qTb8b+AdExqvUaqGDzUBiHKBwnJgortCPT6e8kT9iFXec+4dyLIayskHwTC
	56lJG5cA127sH0beAOwULhtvS11upBOfv6zYkZEzrNL+T2P62pHzcNHikx7KRmbVxwpUgkfW9SITr
	JjC7rI8D0ZhHvyTyLwQRP47Uo6JS1SOoWSqSz+sImtpp7KXUJhfObH/W7KJMRwHgJ3ZsZoe3Y65Ry
	1lc0l5aJJSQ0UL6WnOJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajwM-0000tb-2x; Tue, 11 Jun 2019 16:48:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajvd-0000Tq-O0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HhKNSqe+HgFT8wugNFwfrEoTIMpDZ4D+PV1L2Tf9IB4=; b=XnuA4Bu+9lwwJLPiM04vO42Z/J
 /JmlpdBfjhot0IEcQQ3S94PAoUWG1spF7PXAEyFSa6TP9StR2chJD42wc0FumctZIBVpZIg+amrha
 7Ua6p9YE94jJrba0u/FhoXrAsmgN3St8udtCzch4nIBId7oFwnfq0voiaG2qhsGV9r58DRE47zOcs
 8rzA45GnrKU2vWWOs+vLkTSaWRUC7Ic6j7/9KVeEUP0Rx1Uq1k5pJCC6XN/qoGRe0TWJweIl7D66K
 U9Hh4j9J+Nf5HWYQcZQlC2Yq+9+PuEX2m7R+QXr0C4UG5UiwDlhbOdZmJMMCOORRL4FDYozRs73eB
 CmRmhLFw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:36660 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvT-0006rg-2g; Tue, 11 Jun 2019 17:47:11 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvR-00037G-CK; Tue, 11 Jun 2019 17:47:09 +0100
In-Reply-To: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
References: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] ARM: riscpc: move RiscPC assembly files from arch/arm/lib
 to mach-rpc
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hajvR-00037G-CK@rmk-PC.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:47:09 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094721_914971_053AD1E9 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ian Molton <spyro@f2s.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the assembly files for RiscPC from arch/arm/lib to mach-rpc so
that we contain RiscPC bits in one subdirectory.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 MAINTAINERS                                       | 2 +-
 arch/arm/lib/Makefile                             | 1 -
 arch/arm/mach-rpc/Makefile                        | 3 ++-
 arch/arm/{lib/ecard.S => mach-rpc/ecard-loader.S} | 0
 arch/arm/{lib => mach-rpc}/floppydma.S            | 0
 arch/arm/{lib => mach-rpc}/io-acorn.S             | 0
 6 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/arm/{lib/ecard.S => mach-rpc/ecard-loader.S} (100%)
 rename arch/arm/{lib => mach-rpc}/floppydma.S (100%)
 rename arch/arm/{lib => mach-rpc}/io-acorn.S (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2c2fce72e694..e1ff69fd5bb7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1183,7 +1183,7 @@ F:	Documentation/gpu/afbc.rst
 ARM MFM AND FLOPPY DRIVERS
 M:	Ian Molton <spyro@f2s.com>
 S:	Maintained
-F:	arch/arm/lib/floppydma.S
+F:	arch/arm/mach-rpc/floppydma.S
 F:	arch/arm/include/asm/floppy.h
 
 ARM PMU PROFILING AND DEBUGGING
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 0bff0176db2c..b25c54585048 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -31,7 +31,6 @@ else
 endif
 
 ifeq ($(CONFIG_ARCH_RPC),y)
-  lib-y				+= ecard.o io-acorn.o floppydma.o
   AFLAGS_delay-loop.o		+= -march=armv4
 endif
 
diff --git a/arch/arm/mach-rpc/Makefile b/arch/arm/mach-rpc/Makefile
index 2ebc6875aeb8..ab964a66ea2a 100644
--- a/arch/arm/mach-rpc/Makefile
+++ b/arch/arm/mach-rpc/Makefile
@@ -4,4 +4,5 @@
 
 # Object file lists.
 
-obj-y			:= dma.o ecard.o fiq.o irq.o riscpc.o time.o
+obj-y	:=dma.o ecard.o ecard-loader.o fiq.o floppydma.o io-acorn.o irq.o \
+	  riscpc.o time.o
diff --git a/arch/arm/lib/ecard.S b/arch/arm/mach-rpc/ecard-loader.S
similarity index 100%
rename from arch/arm/lib/ecard.S
rename to arch/arm/mach-rpc/ecard-loader.S
diff --git a/arch/arm/lib/floppydma.S b/arch/arm/mach-rpc/floppydma.S
similarity index 100%
rename from arch/arm/lib/floppydma.S
rename to arch/arm/mach-rpc/floppydma.S
diff --git a/arch/arm/lib/io-acorn.S b/arch/arm/mach-rpc/io-acorn.S
similarity index 100%
rename from arch/arm/lib/io-acorn.S
rename to arch/arm/mach-rpc/io-acorn.S
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
