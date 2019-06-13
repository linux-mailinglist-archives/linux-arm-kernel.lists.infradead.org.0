Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A570B4332E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KD+1xZ0Va9a0XeLE1bsYgllYeRV20nHFUTnBklBcRY=; b=TkVYK6yyvOOA4E
	ai/7GANAfrFwDzxqHBqd53Aw1U5Nd1EDpbuKPvwlegL7TvSp3QSjFhe8PUVQLB4g+ErAcUF1nKh0Y
	9RaTsdWnKNcqWYUAsswMgrbfrRWKkN0bR4XvxBknzgEFNabPtEJVn97vE7OyBEs/JYFaEsLYAqez9
	d+klvEuZG8udY63DSEq0neswYpnQvjdLnCoZgBptFt150DxOHYCRZX72/hD6W0XNL9bo6HgdTPag+
	4IwXv2VBHN6yKWOBA3CvpNLc3xUF6mSJIf9/8s1VCTaDOhqrE8HexN1ZA2Bi4wtWPm/e0CqH0+KSu
	sLBJTZWNuaSTDXm9FlXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJx8-0001Om-2i; Thu, 13 Jun 2019 07:15:18 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrp-0004Qx-DZ; Thu, 13 Jun 2019 07:09:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 13/17] binfmt_flat: provide an asm-generic/flat.h
Date: Thu, 13 Jun 2019 09:08:59 +0200
Message-Id: <20190613070903.17214-14-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613070903.17214-1-hch@lst.de>
References: <20190613070903.17214-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-c6x-dev@linux-c6x.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This file implements the flat get/put reloc helpers for architectures
that do not need to overload the relocs by simply using get_user/put_user.

Note that many nommu architectures currently use {get,put}_unaligned, which
looks a little bogus and should probably later be switched over to this
version as well.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm/include/asm/Kbuild                   |  1 +
 arch/m68k/include/asm/flat.h                  | 21 +------------------
 .../asm => include/asm-generic}/flat.h        | 12 ++++-------
 3 files changed, 6 insertions(+), 28 deletions(-)
 rename {arch/arm/include/asm => include/asm-generic}/flat.h (73%)

diff --git a/arch/arm/include/asm/Kbuild b/arch/arm/include/asm/Kbuild
index a8f149ab45b8..6b2dc15b6dff 100644
--- a/arch/arm/include/asm/Kbuild
+++ b/arch/arm/include/asm/Kbuild
@@ -5,6 +5,7 @@ generic-y += early_ioremap.h
 generic-y += emergency-restart.h
 generic-y += exec.h
 generic-y += extable.h
+generic-y += flat.h
 generic-y += irq_regs.h
 generic-y += kdebug.h
 generic-y += local.h
diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
index d7102fcd43eb..46379e08cdd6 100644
--- a/arch/m68k/include/asm/flat.h
+++ b/arch/m68k/include/asm/flat.h
@@ -6,26 +6,7 @@
 #ifndef __M68KNOMMU_FLAT_H__
 #define __M68KNOMMU_FLAT_H__
 
-#include <linux/uaccess.h>
-
-static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
-{
-#ifdef CONFIG_CPU_HAS_NO_UNALIGNED
-	return copy_from_user(addr, rp, 4) ? -EFAULT : 0;
-#else
-	return get_user(*addr, rp);
-#endif
-}
-
-static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
-{
-#ifdef CONFIG_CPU_HAS_NO_UNALIGNED
-	return copy_to_user(rp, &addr, 4) ? -EFAULT : 0;
-#else
-	return put_user(addr, rp);
-#endif
-}
+#include <asm-generic/flat.h>
 
 #define FLAT_PLAT_INIT(regs) \
 	do { \
diff --git a/arch/arm/include/asm/flat.h b/include/asm-generic/flat.h
similarity index 73%
rename from arch/arm/include/asm/flat.h
rename to include/asm-generic/flat.h
index bbc27901446f..fcd2b45c0735 100644
--- a/arch/arm/include/asm/flat.h
+++ b/include/asm-generic/flat.h
@@ -1,15 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/*
- * arch/arm/include/asm/flat.h -- uClinux flat-format executables
- */
-
-#ifndef __ARM_FLAT_H__
-#define __ARM_FLAT_H__
+#ifndef _ASM_GENERIC_FLAT_H
+#define _ASM_GENERIC_FLAT_H
 
 #include <linux/uaccess.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+		u32 *addr, u32 *persistent)
 {
 #ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
 	return copy_from_user(addr, rp, 4) ? -EFAULT : 0;
@@ -27,4 +23,4 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 #endif
 }
 
-#endif /* __ARM_FLAT_H__ */
+#endif /* _ASM_GENERIC_FLAT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
