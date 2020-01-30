Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558F014DE83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 17:10:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=arDPr3uPm7lhia1csgwEtl2LreqrqBOJNwWLOiFizZU=; b=IqctoGwW5LM1RJJ9LvPzVu4wey
	ULnywXpynMIVSGHb+hZzpAqAR0MPvft5p+qCnXjaHGKKF33IWlTd/zElaZY4plHesA2DGIL13A/Dq
	XBK0yxAdrngUYYsdFmFZV/I57U+wAmVoIHUUO7woRW7j67ugkRO5wjAEmnFfIyBn82g7sj2tKuOZ8
	l88le8wFo5yNFnqYy5VHA7T0U8icD9ld33vTXEqHkb43i6ipW5eVctLyyG4bEIKEHX+15iwqkJt6J
	fn04v4NrSHXFwtfOMFOOziqZnzxPPtV+MnWKIQi0uaVylmz3RCZi+XouM/ejiVMs3M+NCu2qd0zIQ
	RGS8Y+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCOW-0001YY-9s; Thu, 30 Jan 2020 16:10:16 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCMz-0000Wr-8V
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 16:08:47 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 487ldZ5dPYz9v6KP;
 Thu, 30 Jan 2020 17:08:34 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=tElhNhyd; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 7XZjh1vsHG97; Thu, 30 Jan 2020 17:08:34 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 487ldZ3QtGz9v6KN;
 Thu, 30 Jan 2020 17:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580400514; bh=sfGFxmiLk0piqyU/qQus80qwW8Tg3vU9asN8yDMG0JY=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=tElhNhydrFaWKvthIHYHJmYYKmkdr8NX5tPQ7uruBxcZ+VpMsl26/gjtoX0x7wtxL
 sP6VbjfzfAUgSKPycuJizg4DJL5nEcTP8IDrfkl8nf/ezal9DTWEVB0HtZB3+IoUSU
 m9eScOMUd5Iro8OYS339Or4y2ljA9uppySqmVCvg=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C1ED88B87D;
 Thu, 30 Jan 2020 17:08:35 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id fMGaFitaHfsU; Thu, 30 Jan 2020 17:08:35 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 712078B877;
 Thu, 30 Jan 2020 17:08:35 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 3C7AE65283; Thu, 30 Jan 2020 16:08:35 +0000 (UTC)
Message-Id: <4016b89e2db7f7b510613496a9531135d9adc9ba.1580399657.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1580399657.git.christophe.leroy@c-s.fr>
References: <cover.1580399657.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 1/6] powerpc/vdso64: Switch from __get_datapage() to
 get_datapage inline macro
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 30 Jan 2020 16:08:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_080841_592161_8B0053A5 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On the same way as already done on PPC32, drop __get_datapage()
function and use get_datapage inline macro instead.

See commit ec0895f08f99 ("powerpc/vdso32: inline __get_datapage()")

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 arch/powerpc/kernel/vdso64/cacheflush.S   |  9 ++++----
 arch/powerpc/kernel/vdso64/datapage.S     | 28 +++--------------------
 arch/powerpc/kernel/vdso64/gettimeofday.S |  8 +++----
 3 files changed, 11 insertions(+), 34 deletions(-)

diff --git a/arch/powerpc/kernel/vdso64/cacheflush.S b/arch/powerpc/kernel/vdso64/cacheflush.S
index 526f5ba2593e..cab14324242b 100644
--- a/arch/powerpc/kernel/vdso64/cacheflush.S
+++ b/arch/powerpc/kernel/vdso64/cacheflush.S
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
-	bl	V_LOCAL_FUNC(__get_datapage)
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
diff --git a/arch/powerpc/kernel/vdso64/datapage.S b/arch/powerpc/kernel/vdso64/datapage.S
index dc84f5ae3802..067247d3efb9 100644
--- a/arch/powerpc/kernel/vdso64/datapage.S
+++ b/arch/powerpc/kernel/vdso64/datapage.S
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
-	bl	V_LOCAL_FUNC(__get_datapage)
+	get_datapage	r3, r0
 	mtlr	r12
 	addi	r3,r3,CFG_SYSCALL_MAP64
 	cmpldi	cr0,r4,0
@@ -75,7 +53,7 @@ V_FUNCTION_BEGIN(__kernel_get_tbfreq)
   .cfi_startproc
 	mflr	r12
   .cfi_register lr,r12
-	bl	V_LOCAL_FUNC(__get_datapage)
+	get_datapage	r3, r0
 	ld	r3,CFG_TB_TICKS_PER_SEC(r3)
 	mtlr	r12
 	crclr	cr0*4+so
diff --git a/arch/powerpc/kernel/vdso64/gettimeofday.S b/arch/powerpc/kernel/vdso64/gettimeofday.S
index 1c9a04703250..e54c4ce4d356 100644
--- a/arch/powerpc/kernel/vdso64/gettimeofday.S
+++ b/arch/powerpc/kernel/vdso64/gettimeofday.S
@@ -26,7 +26,7 @@ V_FUNCTION_BEGIN(__kernel_gettimeofday)
 
 	mr	r11,r3			/* r11 holds tv */
 	mr	r10,r4			/* r10 holds tz */
-	bl	V_LOCAL_FUNC(__get_datapage)	/* get data page */
+	get_datapage	r3, r0
 	cmpldi	r11,0			/* check if tv is NULL */
 	beq	2f
 	lis	r7,1000000@ha		/* load up USEC_PER_SEC */
@@ -71,7 +71,7 @@ V_FUNCTION_BEGIN(__kernel_clock_gettime)
 	mflr	r12			/* r12 saves lr */
   .cfi_register lr,r12
 	mr	r11,r4			/* r11 saves tp */
-	bl	V_LOCAL_FUNC(__get_datapage)	/* get data page */
+	get_datapage	r3, r0
 	lis	r7,NSEC_PER_SEC@h	/* want nanoseconds */
 	ori	r7,r7,NSEC_PER_SEC@l
 	beq	cr5,70f
@@ -188,7 +188,7 @@ V_FUNCTION_BEGIN(__kernel_clock_getres)
 
 	mflr	r12
   .cfi_register lr,r12
-	bl	V_LOCAL_FUNC(__get_datapage)
+	get_datapage	r3, r0
 	lwz	r5, CLOCK_HRTIMER_RES(r3)
 	mtlr	r12
 	li	r3,0
@@ -221,7 +221,7 @@ V_FUNCTION_BEGIN(__kernel_time)
   .cfi_register lr,r12
 
 	mr	r11,r3			/* r11 holds t */
-	bl	V_LOCAL_FUNC(__get_datapage)
+	get_datapage	r3, r0
 
 	ld	r4,STAMP_XTIME_SEC(r3)
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
