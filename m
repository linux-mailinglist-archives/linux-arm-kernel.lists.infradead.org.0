Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8D243314
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KFF/18tV7hyHoPDlsLzmKplg8YjioKj8Xmw95BFBy8=; b=cTESy3GtkoypxH
	GJT4T/bKja6OapdET4esTluQJF8+68Cc37wnjIv5xIHOISWomm925Uu8liOc4GVgdVjzpL0cy4/dk
	8wUJeL/1jDs73/07UJHdTMAcKbOujhbz/scxQ+Jz7/JneV1D3SNsumADbxd8/ts+pCujv+jEluU0Y
	Z9YLPMtMlPFTqoq9aUPQ3cWFnPHLpSA99jYps+jnB0bVfIdcP7iSuDcRpKRmZFyt7l5abrr0XQTh5
	jFmeKAE7+zdjuvRCkltUM2PFq1G4K7w88bbntmQvbMNzLKtDKFMFc7RCEgxXDGsfyw0UmelddHe8R
	w+auNIIGtbXTFFLO47zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJsj-00060o-R8; Thu, 13 Jun 2019 07:10:45 +0000
Received: from mpp-cp1-natpool-1-013.ethz.ch ([82.130.71.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJrD-00049o-KU; Thu, 13 Jun 2019 07:09:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 02/17] binfmt_flat: remove flat_set_persistent
Date: Thu, 13 Jun 2019 09:08:48 +0200
Message-Id: <20190613070903.17214-3-hch@lst.de>
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

This helper is a no-op on all architectures, remove it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm/include/asm/flat.h        | 1 -
 arch/c6x/include/asm/flat.h        | 1 -
 arch/h8300/include/asm/flat.h      | 1 -
 arch/m68k/include/asm/flat.h       | 5 -----
 arch/microblaze/include/asm/flat.h | 1 -
 arch/sh/include/asm/flat.h         | 1 -
 arch/xtensa/include/asm/flat.h     | 1 -
 fs/binfmt_flat.c                   | 2 --
 8 files changed, 13 deletions(-)

diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
index 10cce9ecf151..576241d74704 100644
--- a/arch/arm/include/asm/flat.h
+++ b/arch/arm/include/asm/flat.h
@@ -31,6 +31,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 }
 
 #define	flat_get_relocate_addr(rel)		(rel)
-#define	flat_set_persistent(relval, p)		0
 
 #endif /* __ARM_FLAT_H__ */
diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
index ecc6aea6606c..ac87368efad1 100644
--- a/arch/c6x/include/asm/flat.h
+++ b/arch/c6x/include/asm/flat.h
@@ -18,6 +18,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	return 0;
 }
 #define flat_get_relocate_addr(rel)			(rel)
-#define flat_set_persistent(relval, p)			0
 
 #endif /* __ASM_C6X_FLAT_H */
diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
index dcc7775115dd..7ef7eefded3d 100644
--- a/arch/h8300/include/asm/flat.h
+++ b/arch/h8300/include/asm/flat.h
@@ -10,7 +10,6 @@
 
 #define	flat_argvp_envp_on_stack()		1
 #define	flat_old_ram_flag(flags)		1
-#define	flat_set_persistent(relval, p)		0
 
 /*
  * on the H8 a couple of the relocations have an instruction in the
diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
index a631caf5e18f..955617bb937b 100644
--- a/arch/m68k/include/asm/flat.h
+++ b/arch/m68k/include/asm/flat.h
@@ -30,11 +30,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 }
 #define	flat_get_relocate_addr(rel)		(rel)
 
-static inline int flat_set_persistent(u32 relval, u32 *persistent)
-{
-	return 0;
-}
-
 #define FLAT_PLAT_INIT(regs) \
 	do { \
 		if (current->mm) \
diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
index 34be5ed011be..846084fa7f04 100644
--- a/arch/microblaze/include/asm/flat.h
+++ b/arch/microblaze/include/asm/flat.h
@@ -15,7 +15,6 @@
 
 #define	flat_argvp_envp_on_stack()	0
 #define	flat_old_ram_flag(flags)	(flags)
-#define	flat_set_persistent(relval, p)		0
 
 /*
  * Microblaze works a little differently from other arches, because
diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
index 8f2929b32f2e..6f3b18679a98 100644
--- a/arch/sh/include/asm/flat.h
+++ b/arch/sh/include/asm/flat.h
@@ -25,7 +25,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	return 0;
 }
 #define	flat_get_relocate_addr(rel)		(rel)
-#define	flat_set_persistent(relval, p)		({ (void)p; 0; })
 
 #define FLAT_PLAT_INIT(_r) \
   do { _r->regs[0]=0; _r->regs[1]=0; _r->regs[2]=0; _r->regs[3]=0; \
diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
index 6ee5a35eb0ec..b1bc0d9a8d4e 100644
--- a/arch/xtensa/include/asm/flat.h
+++ b/arch/xtensa/include/asm/flat.h
@@ -18,6 +18,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
 	return 0;
 }
 #define flat_get_relocate_addr(rel)			(rel)
-#define flat_set_persistent(relval, p)			0
 
 #endif /* __ASM_XTENSA_FLAT_H */
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index afddea583999..a4c0b245ab1f 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -787,8 +787,6 @@ static int load_flat_file(struct linux_binprm *bprm,
 			if (get_user(relval, reloc + i))
 				return -EFAULT;
 			relval = ntohl(relval);
-			if (flat_set_persistent(relval, &persistent))
-				continue;
 			addr = flat_get_relocate_addr(relval);
 			rp = (u32 __user *)calc_reloc(addr, libinfo, id, 1);
 			if (rp == (u32 __user *)RELOC_FAILED) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
