Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917703BE88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzQSSnVUM3R4APpClz+P7TRForUHU+cTkuQHAslHRrA=; b=YUmzF9F+TBQ/+q
	raFgi61HzkBxaMcL+WtYnBftHJoxzm59WDB+FAtlOB/UIvRe6pGORPFoDx+L4qWHPCQO325xjlAY4
	l6kkIiI9PPseXcKLxOunsCHcoLqWWVLQ762DUGkvnKrNuQAwymp6hHy6itD5RmlWXya45ZoEcdS3o
	ktrT6sTL6tddrhYFyI5vSIlWcgUsTbJix5zj+v8z/cbXXKGmT9E76+mhEVFjKEU9k6vql+vW0Jr1o
	lJAVNPGExI3a3J+Jp52nMPAloQhvvxYgAjDKAfGCQ1LmNvQEoLwU38oPrAEoW5zR5L5g3EYFzDCmm
	yKUsvZt8V9u80NsNYxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRml-0004GK-UX; Mon, 10 Jun 2019 21:25:00 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haRik-0000k2-Fb; Mon, 10 Jun 2019 21:20:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: [PATCH 12/15] binfmt_flat: remove the persistent argument from
 flat_get_addr_from_rp
Date: Mon, 10 Jun 2019 23:20:12 +0200
Message-Id: <20190610212015.9157-13-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610212015.9157-1-hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
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
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The argument is never used.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/c6x/include/asm/flat.h        | 2 +-
 arch/h8300/include/asm/flat.h      | 2 +-
 arch/microblaze/include/asm/flat.h | 2 +-
 arch/sh/include/asm/flat.h         | 2 +-
 arch/xtensa/include/asm/flat.h     | 2 +-
 fs/binfmt_flat.c                   | 4 +---
 include/asm-generic/flat.h         | 2 +-
 7 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
index 2d57a9204d21..9e6544b51386 100644
--- a/arch/c6x/include/asm/flat.h
+++ b/arch/c6x/include/asm/flat.h
@@ -5,7 +5,7 @@
 #include <asm/unaligned.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	*addr = get_unaligned((__force u32 *)rp);
 	return 0;
diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
index 4683146f0e9e..78070f924177 100644
--- a/arch/h8300/include/asm/flat.h
+++ b/arch/h8300/include/asm/flat.h
@@ -17,7 +17,7 @@
 
 #define	flat_get_relocate_addr(rel)		(rel & ~0x00000001)
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	u32 val = get_unaligned((__force u32 *)rp);
 	if (!(flags & FLAT_FLAG_GOTPIC))
diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
index 9e3d8e01d294..1ab86770eaee 100644
--- a/arch/microblaze/include/asm/flat.h
+++ b/arch/microblaze/include/asm/flat.h
@@ -28,7 +28,7 @@
  */
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	u32 *p = (__force u32 *)rp;
 
diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
index 1002343dd84a..fee4f25555cb 100644
--- a/arch/sh/include/asm/flat.h
+++ b/arch/sh/include/asm/flat.h
@@ -12,7 +12,7 @@
 #include <asm/unaligned.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	*addr = get_unaligned((__force u32 *)rp);
 	return 0;
diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
index 3d357371b28b..ed5870c779f9 100644
--- a/arch/xtensa/include/asm/flat.h
+++ b/arch/xtensa/include/asm/flat.h
@@ -5,7 +5,7 @@
 #include <asm/unaligned.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-					u32 *addr, u32 *persistent)
+					u32 *addr)
 {
 	*addr = get_unaligned((__force u32 *)rp);
 	return 0;
diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index ed7d969593d2..114ea225c5a5 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -794,7 +794,6 @@ static int load_flat_file(struct linux_binprm *bprm,
 	 * __start to address 4 so that is okay).
 	 */
 	if (rev > OLD_FLAT_VERSION) {
-		u32 __maybe_unused persistent = 0;
 		for (i = 0; i < relocs; i++) {
 			u32 addr, relval;
 			__be32 tmp;
@@ -815,8 +814,7 @@ static int load_flat_file(struct linux_binprm *bprm,
 			}
 
 			/* Get the pointer's value.  */
-			ret = flat_get_addr_from_rp(rp, relval, flags,
-							&addr, &persistent);
+			ret = flat_get_addr_from_rp(rp, relval, flags, &addr);
 			if (unlikely(ret))
 				goto err;
 
diff --git a/include/asm-generic/flat.h b/include/asm-generic/flat.h
index fcd2b45c0735..1928a3596938 100644
--- a/include/asm-generic/flat.h
+++ b/include/asm-generic/flat.h
@@ -5,7 +5,7 @@
 #include <linux/uaccess.h>
 
 static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
-		u32 *addr, u32 *persistent)
+		u32 *addr)
 {
 #ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
 	return copy_from_user(addr, rp, 4) ? -EFAULT : 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
