Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75410F078E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aC31KIk8cq3b4zWrfHy22m8xmt7aYYSQw35zeLfqoRE=; b=FPKsYYlii4rpV7hn4QKF9L+Jc4
	FCUU08bQFQTYuDZQZGkyA1nypA3aAwJ/YqQsHcaceRsUZkFb8cyNWyoeFMqL9XNHTOc8bwmk7hbTE
	ki0X6+FWKPtdtx0X31QvbxQvSstB9LlxmgLvJpsclekBlo4eBQWnDvMO1F1JWpyCF5YnjcjGdepXY
	xE2oFvOkRxaauneMPiLgd/e6VnV4VNapBRJY78F7BxzzfelLNrjf5418UNuXD44+hUDjrd4bonD+N
	cUtNDYgpALIY2v17xTs9wrYg/Fl2ABtCD1QV3AW2PfIhV4DcxyF8Y84skjmO4CxTMMfT4QwXjX6fL
	X52mpCzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5xM-000052-58; Tue, 05 Nov 2019 21:01:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5v4-0005GN-Rj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:21 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1516021D81;
 Tue,  5 Nov 2019 20:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987558;
 bh=D/+nPNLGFL1r/kQMOcZSooYSVJ5DGejofPD8qX+EmJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w+By/QMYX+WOPyDVNzKWVft1X1ft6outXXVdcTgjSXbf0UgCchXxtbg9Qns0tg5Ok
 T6vOINL/f2ccv9TGp2E1V69+KzeBGWiQv2ZSr655t7xyevnGBGJKFTbSFDysuGj4WS
 5PCblOp8BOzdmTn7SfS7Hv3Bx/nC8VKFRlqOc/nI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 07/53] ARM: Move system register accessors to
 asm/cp15.h
Date: Tue,  5 Nov 2019 21:58:00 +0100
Message-Id: <20191105205846.1394-8-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125918_964729_8AFBDDE8 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Murzin <vladimir.murzin@arm.com>

Commit 4f2546384150e78cad8045e59a9587fabcd9f9fe upstream.

Headers linux/irqchip/arm-gic.v3.h and arch/arm/include/asm/kvm_hyp.h
are included in virt/kvm/arm/hyp/vgic-v3-sr.c and both define macros
called __ACCESS_CP15 and __ACCESS_CP15_64 which obviously creates a
conflict. These macros were introduced independently for GIC and KVM
and, in fact, do the same thing.

As an option we could add prefixes to KVM and GIC version of macros so
they won't clash, but it'd introduce code duplication.  Alternatively,
we could keep macro in, say, GIC header and include it in KVM one (or
vice versa), but such dependency would not look nicer.

So we follow arm64 way (it handles this via sysreg.h) and move only
single set of macros to asm/cp15.h

Cc: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/arch_gicv3.h | 27 ++++++++------------
 arch/arm/include/asm/cp15.h       | 15 +++++++++++
 2 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/arch/arm/include/asm/arch_gicv3.h b/arch/arm/include/asm/arch_gicv3.h
index e08d15184056..af25c32b1ccc 100644
--- a/arch/arm/include/asm/arch_gicv3.h
+++ b/arch/arm/include/asm/arch_gicv3.h
@@ -22,9 +22,7 @@
 
 #include <linux/io.h>
 #include <asm/barrier.h>
-
-#define __ACCESS_CP15(CRn, Op1, CRm, Op2)	p15, Op1, %0, CRn, CRm, Op2
-#define __ACCESS_CP15_64(Op1, CRm)		p15, Op1, %Q0, %R0, CRm
+#include <asm/cp15.h>
 
 #define ICC_EOIR1			__ACCESS_CP15(c12, 0, c12, 1)
 #define ICC_DIR				__ACCESS_CP15(c12, 0, c11, 1)
@@ -102,58 +100,55 @@
 
 static inline void gic_write_eoir(u32 irq)
 {
-	asm volatile("mcr " __stringify(ICC_EOIR1) : : "r" (irq));
+	write_sysreg(irq, ICC_EOIR1);
 	isb();
 }
 
 static inline void gic_write_dir(u32 val)
 {
-	asm volatile("mcr " __stringify(ICC_DIR) : : "r" (val));
+	write_sysreg(val, ICC_DIR);
 	isb();
 }
 
 static inline u32 gic_read_iar(void)
 {
-	u32 irqstat;
+	u32 irqstat = read_sysreg(ICC_IAR1);
 
-	asm volatile("mrc " __stringify(ICC_IAR1) : "=r" (irqstat));
 	dsb(sy);
+
 	return irqstat;
 }
 
 static inline void gic_write_pmr(u32 val)
 {
-	asm volatile("mcr " __stringify(ICC_PMR) : : "r" (val));
+	write_sysreg(val, ICC_PMR);
 }
 
 static inline void gic_write_ctlr(u32 val)
 {
-	asm volatile("mcr " __stringify(ICC_CTLR) : : "r" (val));
+	write_sysreg(val, ICC_CTLR);
 	isb();
 }
 
 static inline void gic_write_grpen1(u32 val)
 {
-	asm volatile("mcr " __stringify(ICC_IGRPEN1) : : "r" (val));
+	write_sysreg(val, ICC_IGRPEN1);
 	isb();
 }
 
 static inline void gic_write_sgi1r(u64 val)
 {
-	asm volatile("mcrr " __stringify(ICC_SGI1R) : : "r" (val));
+	write_sysreg(val, ICC_SGI1R);
 }
 
 static inline u32 gic_read_sre(void)
 {
-	u32 val;
-
-	asm volatile("mrc " __stringify(ICC_SRE) : "=r" (val));
-	return val;
+	return read_sysreg(ICC_SRE);
 }
 
 static inline void gic_write_sre(u32 val)
 {
-	asm volatile("mcr " __stringify(ICC_SRE) : : "r" (val));
+	write_sysreg(val, ICC_SRE);
 	isb();
 }
 
diff --git a/arch/arm/include/asm/cp15.h b/arch/arm/include/asm/cp15.h
index c3f11524f10c..dbdbce1b3a72 100644
--- a/arch/arm/include/asm/cp15.h
+++ b/arch/arm/include/asm/cp15.h
@@ -49,6 +49,21 @@
 
 #ifdef CONFIG_CPU_CP15
 
+#define __ACCESS_CP15(CRn, Op1, CRm, Op2)	\
+	"mrc", "mcr", __stringify(p15, Op1, %0, CRn, CRm, Op2), u32
+#define __ACCESS_CP15_64(Op1, CRm)		\
+	"mrrc", "mcrr", __stringify(p15, Op1, %Q0, %R0, CRm), u64
+
+#define __read_sysreg(r, w, c, t) ({				\
+	t __val;						\
+	asm volatile(r " " c : "=r" (__val));			\
+	__val;							\
+})
+#define read_sysreg(...)		__read_sysreg(__VA_ARGS__)
+
+#define __write_sysreg(v, r, w, c, t)	asm volatile(w " " c : : "r" ((t)(v)))
+#define write_sysreg(v, ...)		__write_sysreg(v, __VA_ARGS__)
+
 extern unsigned long cr_alignment;	/* defined in entry-armv.S */
 
 static inline unsigned long get_cr(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
