Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE8C62A5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 22:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jyC4ATL3pAuNpn9Hly70OJtjmfYJnIjkJ2Wj1zbiMXM=; b=E2fwVts9zYr9Y4
	lWBpIg6FHPImRbxSgtyvdnUW5ncD/6NRbTzfwNIZ2njM/QC9V26RreIsoDOpNpn4ksdYkQhb1tJVt
	GDDe9wDLUpQE4HJcjo0YD9kXcNQA3jpXV61sHLcPYK+MdgIxdYIPbIRf6tU2h7P1VZPdV5nlXXLCA
	hPIOOYxZV75jfI3HjytQdo5RufK2Vy257lwXqQRzDT6sQ8pTHKYPvNJwUYavz4cDtlOsDJ5TfkzNG
	eskz3JOq30VypExNtQKwRhCB+mJrnC+AtmEPysDQJPQ7Ga50m4s3f0+oy+hWkVJ6Ey7lc/7lmZSYE
	6hk+LHeIvtjWM6RtfLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkaI9-00049m-3w; Mon, 08 Jul 2019 20:31:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkaHx-00049J-Ee
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 20:31:07 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MOAJt-1i8aQU1YWP-00OYvi; Mon, 08 Jul 2019 22:30:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: mtd-xip: work around clang/llvm bug
Date: Mon,  8 Jul 2019 22:30:31 +0200
Message-Id: <20190708203049.3484750-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:V7NNcdZbV6mw7tfdYJiUJWjfhAMjQ4ZOz+c5SMkPzy2jzCIxgH/
 pt3z+EXXXxY3LSweF/O5LBo2UxCpnX3kg0YItAVqxX3M9B2A5HrqQ81VPjg6+j1qPFmB85f
 ImodRn9ATMXuOL36cdfA72rGbINvDJVBi1P9wvZ162xPRURHIwauaITV/6GYiZlrruAZgD3
 yPClGNspWQsjkOU9QoV/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v+XvPb26ioU=:TjLKe2p2Vyy1aD8C0Nufwj
 FrZeID3M43k7HjEvkInllCLnR/9x6gufxWP8ADpgN0auCuIIjPIP2tu0X3ASOv/QXifZ6fjb4
 fKlZu6xDaoZtt8x67I8YacbTs4bBwepXTeep7F354PTBA34UGC8lZ+V1nE8sRbnncu3ob8/LP
 JR0tuXEqyWPyKcDtlpOHMZAMaZDwcg/kfr6xkzsUVYV75zOGIx8sq6NyqGQF3c1arsqTwrNcN
 hJhsQ7lnpgflhynJ5Bc549TYzbbcpmDJv2EPESCR8ZfGYOQGAR64bD1MNNDqeNGf32tFXzLi0
 +CkgAvnFKTjFeL8w8Gps4Rw4jiiWmhItlP2H/zFPsYwEBMV/uyZolwmW2WffgtqMKYreIRpoD
 wxA5LNyE+X+NdLbrzC7F/w5oKECDdDNa+wEsQMZS8O/NKs4gGpJ9Wl0QpYQ1z5zga8wlaFtHd
 ypJVr3q8cXSs7REZxwEZeSbfMZ6LXVm9uUQQcImXbb2yyrvpOdcgw8YpBgSshFJe0dW3AwA+L
 xIRheBgbluwdF4sFdEOy+IqW/QuHkind6qLv3FGlEGcHh/n5ErPd5rSn67lwA9/dQ3sew4ELj
 0IJABvVcc/M72PPepyFP1dkhf9bcvHnoPaE8lUm7HhlCHX+5g2CTjshcvagx/93ZVV/VZ+DFN
 YdDjg4aD2IE+NkZFigDlAijfbNlhkhrMyh45aKVjofJ8rIJiGPbgcDt1eVJiz39O5rlLq6RGW
 BhGY84gtjs1+dnjKiPjpNUMaPmILlrDBvvo1Gg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_133105_789601_7C8746C8 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

llvm gets confused by inline asm with .rep directives, which
can lead to miscalculating the number of instructions inside it,
and in turn lead to an overflow for relative address calculation:

/tmp/cfi_cmdset_0002-539a47.s: Assembler messages:
/tmp/cfi_cmdset_0002-539a47.s:11288: Error: bad immediate value for offset (4100)
/tmp/cfi_cmdset_0002-539a47.s:11289: Error: bad immediate value for offset (4100)

This might be fixed in future clang versions, but is not hard
to work around by just replacing the .rep with a series of
eight unrolled nop instructions.

Link: https://bugs.llvm.org/show_bug.cgi?id=42539
https://godbolt.org/z/DSM2Jy
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/include/asm/mtd-xip.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/mtd-xip.h b/arch/arm/include/asm/mtd-xip.h
index dfcef0152e3d..5ad0325604e4 100644
--- a/arch/arm/include/asm/mtd-xip.h
+++ b/arch/arm/include/asm/mtd-xip.h
@@ -15,6 +15,8 @@
 #include <mach/mtd-xip.h>
 
 /* fill instruction prefetch */
-#define xip_iprefetch() 	do { asm volatile (".rep 8; nop; .endr"); } while (0)
+#define xip_iprefetch()	do {						\
+	 asm volatile ("nop; nop; nop; nop; nop; nop; nop; nop;");	\
+} while (0)								\
 
 #endif /* __ARM_MTD_XIP_H__ */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
