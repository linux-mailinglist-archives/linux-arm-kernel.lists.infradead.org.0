Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D636129784
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GmtxsfQU4d2alAXQXZ13ESNYfFi34lN5CcQcnU/Al2g=; b=QDj/hBE0VCK7+2bPMRu8XgOcEx
	+kpDXv4NYOJnmwjJyUE35qnPB3jYWs3MQwex2Y9WKxwZB/RRJ21ptmtieMWP8tzlPqw54+qUzl5M0
	BvtQoWNR/yuoPkDC2o5uWsEeUX+MS7PpoBAHZoEmtcmQQF6Jq8PvasXL/kdPWbssYvo8pTkVBjEMn
	k2rUVDavPhtZSJP8j/OmRV9UUexa9JH+hUdYnHd2pIIn0GxjAR7aWUYhmjBFFFCjl8fFOHsMgyjIh
	ivOVI7qBFKIfaHmsSBVu87sIORo+ONy1Zcw96JSyXTATZKSSlHe0/LXXXZqjJvVeOZie2xAPRx/Tt
	oZSK09Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOmY-00039s-2z; Mon, 23 Dec 2019 14:34:02 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOjr-0000nC-05
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:31:18 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47hMGd5Q88z9txk1;
 Mon, 23 Dec 2019 15:31:05 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=CYa8vo7J; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id sgBO7Sf4a4HI; Mon, 23 Dec 2019 15:31:05 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47hMGd4MbJz9txjx;
 Mon, 23 Dec 2019 15:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577111465; bh=t9hQX4/SzVKeiT0tcSoxOBftxg2wIkN3Ts7FVCdCdLs=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=CYa8vo7Jpg7BwLn28d4u3EMnxVYWj7Q5ev7rMu3Fdz+VQMKfALP1kDWTibo5y+IXM
 Ba5KGc4ye0BfgBAvDGRxgtNb+yLundPZIg32c/Sk5Rh04JSQO5i6IXSZ2vewiqB4S4
 MtbJX3cOY2pqrrMvHlgXwSWKilhAW+G96N8QCVCQ=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B06838B7AB;
 Mon, 23 Dec 2019 15:31:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id XL0AoMbhhIk0; Mon, 23 Dec 2019 15:31:10 +0100 (CET)
Received: from po16098vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 767B58B7A1;
 Mon, 23 Dec 2019 15:31:10 +0100 (CET)
Received: by po16098vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 80B72637D4; Mon, 23 Dec 2019 14:31:10 +0000 (UTC)
Message-Id: <4e44aca7d8c3b5ebb1453d499354ca5233d6defb.1577111367.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1577111363.git.christophe.leroy@c-s.fr>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v2 09/10] powerpc/vdso32: inline __get_datapage()
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 23 Dec 2019 14:31:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_063115_419521_75B6AF9A 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__get_datapage() is only a few instructions to retrieve the
address of the page where the kernel stores data to the VDSO.

By inlining this function into its users, a bl/blr pair and
a mflr/mtlr pair is avoided, plus a few reg moves.

The improvement is noticeable (about 55 nsec/call on an 8xx)

vdsotest before the patch:
gettimeofday:    vdso: 731 nsec/call
clock-gettime-realtime-coarse:    vdso: 668 nsec/call
clock-gettime-monotonic-coarse:    vdso: 745 nsec/call

vdsotest after the patch:
gettimeofday:    vdso: 677 nsec/call
clock-gettime-realtime-coarse:    vdso: 613 nsec/call
clock-gettime-monotonic-coarse:    vdso: 690 nsec/call

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>

---
v3: define get_datapage macro in asm/vdso_datapage.h
v4: fixed build failure with old binutils
---
 arch/powerpc/include/asm/vdso_datapage.h  | 10 ++++++++++
 arch/powerpc/kernel/vdso32/cacheflush.S   |  9 ++++-----
 arch/powerpc/kernel/vdso32/datapage.S     | 28 +++-------------------------
 arch/powerpc/kernel/vdso32/gettimeofday.S | 12 +++++-------
 4 files changed, 22 insertions(+), 37 deletions(-)

diff --git a/arch/powerpc/include/asm/vdso_datapage.h b/arch/powerpc/include/asm/vdso_datapage.h
index 40f13f3626d3..ee5319a6f4e3 100644
--- a/arch/powerpc/include/asm/vdso_datapage.h
+++ b/arch/powerpc/include/asm/vdso_datapage.h
@@ -118,6 +118,16 @@ struct vdso_data {
 
 extern struct vdso_data *vdso_data;
 
+#else /* __ASSEMBLY__ */
+
+.macro get_datapage ptr, tmp
+	bcl	20, 31, .+4
+	mflr	\ptr
+	addi	\ptr, \ptr, (__kernel_datapage_offset - (.-4))@l
+	lwz	\tmp, 0(\ptr)
+	add	\ptr, \tmp, \ptr
+.endm
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __KERNEL__ */
diff --git a/arch/powerpc/kernel/vdso32/cacheflush.S b/arch/powerpc/kernel/vdso32/cacheflush.S
index 7f882e7b9f43..d178ec8c279d 100644
--- a/arch/powerpc/kernel/vdso32/cacheflush.S
+++ b/arch/powerpc/kernel/vdso32/cacheflush.S
@@ -8,6 +8,7 @@
 #include <asm/processor.h>
 #include <asm/ppc_asm.h>
 #include <asm/vdso.h>
+#include <asm/vdso_datapage.h>
 #include <asm/asm-offsets.h>
 
 	.text
@@ -24,14 +25,12 @@ V_FUNCTION_BEGIN(__kernel_sync_dicache)
   .cfi_startproc
 	mflr	r12
   .cfi_register lr,r12
-	mr	r11,r3
-	bl	__get_datapage@local
+	get_datapage	r10, r0
 	mtlr	r12
-	mr	r10,r3
 
 	lwz	r7,CFG_DCACHE_BLOCKSZ(r10)
 	addi	r5,r7,-1
-	andc	r6,r11,r5		/* round low to line bdy */
+	andc	r6,r3,r5		/* round low to line bdy */
 	subf	r8,r6,r4		/* compute length */
 	add	r8,r8,r5		/* ensure we get enough */
 	lwz	r9,CFG_DCACHE_LOGBLOCKSZ(r10)
@@ -48,7 +47,7 @@ V_FUNCTION_BEGIN(__kernel_sync_dicache)
 
 	lwz	r7,CFG_ICACHE_BLOCKSZ(r10)
 	addi	r5,r7,-1
-	andc	r6,r11,r5		/* round low to line bdy */
+	andc	r6,r3,r5		/* round low to line bdy */
 	subf	r8,r6,r4		/* compute length */
 	add	r8,r8,r5
 	lwz	r9,CFG_ICACHE_LOGBLOCKSZ(r10)
diff --git a/arch/powerpc/kernel/vdso32/datapage.S b/arch/powerpc/kernel/vdso32/datapage.S
index 6c7401bd284e..1095d818f94a 100644
--- a/arch/powerpc/kernel/vdso32/datapage.S
+++ b/arch/powerpc/kernel/vdso32/datapage.S
@@ -10,35 +10,13 @@
 #include <asm/asm-offsets.h>
 #include <asm/unistd.h>
 #include <asm/vdso.h>
+#include <asm/vdso_datapage.h>
 
 	.text
 	.global	__kernel_datapage_offset;
 __kernel_datapage_offset:
 	.long	0
 
-V_FUNCTION_BEGIN(__get_datapage)
-  .cfi_startproc
-	/* We don't want that exposed or overridable as we want other objects
-	 * to be able to bl directly to here
-	 */
-	.protected __get_datapage
-	.hidden __get_datapage
-
-	mflr	r0
-  .cfi_register lr,r0
-
-	bcl	20,31,data_page_branch
-data_page_branch:
-	mflr	r3
-	mtlr	r0
-	addi	r3, r3, __kernel_datapage_offset-data_page_branch
-	lwz	r0,0(r3)
-  .cfi_restore lr
-	add	r3,r0,r3
-	blr
-  .cfi_endproc
-V_FUNCTION_END(__get_datapage)
-
 /*
  * void *__kernel_get_syscall_map(unsigned int *syscall_count) ;
  *
@@ -53,7 +31,7 @@ V_FUNCTION_BEGIN(__kernel_get_syscall_map)
 	mflr	r12
   .cfi_register lr,r12
 	mr	r4,r3
-	bl	__get_datapage@local
+	get_datapage	r3, r0
 	mtlr	r12
 	addi	r3,r3,CFG_SYSCALL_MAP32
 	cmpli	cr0,r4,0
@@ -75,7 +53,7 @@ V_FUNCTION_BEGIN(__kernel_get_tbfreq)
   .cfi_startproc
 	mflr	r12
   .cfi_register lr,r12
-	bl	__get_datapage@local
+	get_datapage	r3, r0
 	lwz	r4,(CFG_TB_TICKS_PER_SEC + 4)(r3)
 	lwz	r3,CFG_TB_TICKS_PER_SEC(r3)
 	mtlr	r12
diff --git a/arch/powerpc/kernel/vdso32/gettimeofday.S b/arch/powerpc/kernel/vdso32/gettimeofday.S
index 3306672f57a9..d6c1d331e8cb 100644
--- a/arch/powerpc/kernel/vdso32/gettimeofday.S
+++ b/arch/powerpc/kernel/vdso32/gettimeofday.S
@@ -9,6 +9,7 @@
 #include <asm/processor.h>
 #include <asm/ppc_asm.h>
 #include <asm/vdso.h>
+#include <asm/vdso_datapage.h>
 #include <asm/asm-offsets.h>
 #include <asm/unistd.h>
 
@@ -33,8 +34,7 @@ V_FUNCTION_BEGIN(__kernel_gettimeofday)
 
 	mr	r10,r3			/* r10 saves tv */
 	mr	r11,r4			/* r11 saves tz */
-	bl	__get_datapage@local	/* get data page */
-	mr	r9, r3			/* datapage ptr in r9 */
+	get_datapage	r9, r0
 	cmplwi	r10,0			/* check if tv is NULL */
 	beq	3f
 	lis	r7,1000000@ha		/* load up USEC_PER_SEC */
@@ -74,8 +74,7 @@ V_FUNCTION_BEGIN(__kernel_clock_gettime)
 	mflr	r12			/* r12 saves lr */
   .cfi_register lr,r12
 	mr	r11,r4			/* r11 saves tp */
-	bl	__get_datapage@local	/* get data page */
-	mr	r9,r3			/* datapage ptr in r9 */
+	get_datapage	r9, r0
 	lis	r7,NSEC_PER_SEC@h	/* want nanoseconds */
 	ori	r7,r7,NSEC_PER_SEC@l
 50:	bl	__do_get_tspec@local	/* get sec/nsec from tb & kernel */
@@ -156,7 +155,7 @@ V_FUNCTION_BEGIN(__kernel_clock_getres)
 
 	mflr	r12
   .cfi_register lr,r12
-	bl	__get_datapage@local	/* get data page */
+	get_datapage	r3, r0
 	lwz	r5, CLOCK_HRTIMER_RES(r3)
 	mtlr	r12
 	li	r3,0
@@ -190,8 +189,7 @@ V_FUNCTION_BEGIN(__kernel_time)
   .cfi_register lr,r12
 
 	mr	r11,r3			/* r11 holds t */
-	bl	__get_datapage@local
-	mr	r9, r3			/* datapage ptr in r9 */
+	get_datapage	r9, r0
 
 	lwz	r3,STAMP_XTIME_SEC+LOPART(r9)
 
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
