Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27D81967BC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 17:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y4rnpJMh73h79UjFegiGxIoJJEWRcam2PFvIvlCAGh0=; b=kx3
	eMmJ3QU1SReTUTi0l9RCNAkwpBw10O57cQFXuqdxhAqQ3VwS9L2AL6dJaK6prQtkkuICp2MP5ZOLV
	P+YQIjX7HNnt5VD9SDk4pM6D5Ap6CfBlDu044Ih/IKtrU5ZlXs57T388Ho1jRYzT268ODuHM7GspP
	jz1MvtZ5YM+JpFcxto6eg1cBCYe997Q5e7KPYn1zA2rLZbknKV7Wu0kY0AfweZ+qsBRM/GoHev+0h
	Os+bIeOQfeY+9KeJRWve9Q28TtB+3srSdbNdqOMNrrXCZinYs6R+Z60bbqaKTVFkqAFMcgbEnCmO9
	CkeAwog8S4p6FD07iOnbLptrAHfTAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIEbz-0007Kf-FK; Sat, 28 Mar 2020 16:47:07 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIEbT-0007AH-7R
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 16:46:36 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGhMxY005915
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:23 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGhM0T009250;
 Sat, 28 Mar 2020 16:43:22 GMT
Message-Id: <202003281643.02SGhM0T009250@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Tue, 10 Dec 2019 00:35:14 -0500
Subject: [RFC PATCH v1 40/50] arch/*/include/asm/stackprotector.h: Use
 get_random_canary() consistently
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_094635_360303_BA185415 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, Paul Burton <paulburton@kernel.org>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

... in boot_init_stack_canary().

This is the archetypical example of where the extra security of
get_random_bytes() is wasted.  The canary is only important as
long as it's stored in __stack_chk_guard.

It's also a great example of code that has been copied around
a lot and not updated.

Remove the XOR with LINUX_VERSION_CODE as it's pointless; the inclusion
of utsname() in init_std_data in the random seeding obviates it.

The XOR with the TSC on x86 and mtfb() on powerPC were left in,
as I haven't proved them redundant yet.  For those, we call
get_random_long(), xor, and mask manually.

FUNCTIONAL CHANGE: mips and xtensa were changed from 64-bit
get_random_long() to 56-bit get_random_canary() to match the
others, in accordance with the logic in CANARY_MASK.

(We could do 1 bit better and zero *one* of the two high bytes.)

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Paul Burton <paulburton@kernel.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: linux-mips@vger.kernel.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: Rich Felker <dalias@libc.org>
Cc: linux-sh@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc:  "H. Peter Anvin" <hpa@zytor.com>
Cc: x86@kernel.org
Cc: Chris Zankel <chris@zankel.net>
Cc: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-xtensa@linux-xtensa.org
---
 arch/arm/include/asm/stackprotector.h     | 9 +++------
 arch/arm64/include/asm/stackprotector.h   | 8 ++------
 arch/mips/include/asm/stackprotector.h    | 7 ++-----
 arch/powerpc/include/asm/stackprotector.h | 6 ++----
 arch/sh/include/asm/stackprotector.h      | 8 ++------
 arch/x86/include/asm/stackprotector.h     | 4 ++--
 arch/xtensa/include/asm/stackprotector.h  | 7 ++-----
 7 files changed, 15 insertions(+), 34 deletions(-)

diff --git a/arch/arm/include/asm/stackprotector.h b/arch/arm/include/asm/stackprotector.h
index 72a20c3a0a90b..88c66fec1b5f4 100644
--- a/arch/arm/include/asm/stackprotector.h
+++ b/arch/arm/include/asm/stackprotector.h
@@ -30,17 +30,14 @@ extern unsigned long __stack_chk_guard;
  */
 static __always_inline void boot_init_stack_canary(void)
 {
-	unsigned long canary;
-
 	/* Try to get a semi random initial value. */
-	get_random_bytes(&canary, sizeof(canary));
-	canary ^= LINUX_VERSION_CODE;
+	unsigned long canary = get_random_canary();
 
 	current->stack_canary = canary;
 #ifndef CONFIG_STACKPROTECTOR_PER_TASK
-	__stack_chk_guard = current->stack_canary;
+	__stack_chk_guard = canary;
 #else
-	current_thread_info()->stack_canary = current->stack_canary;
+	current_thread_info()->stack_canary = canary;
 #endif
 }
 
diff --git a/arch/arm64/include/asm/stackprotector.h b/arch/arm64/include/asm/stackprotector.h
index 5884a2b028277..705f60b9df85e 100644
--- a/arch/arm64/include/asm/stackprotector.h
+++ b/arch/arm64/include/asm/stackprotector.h
@@ -26,16 +26,12 @@ extern unsigned long __stack_chk_guard;
  */
 static __always_inline void boot_init_stack_canary(void)
 {
-	unsigned long canary;
-
 	/* Try to get a semi random initial value. */
-	get_random_bytes(&canary, sizeof(canary));
-	canary ^= LINUX_VERSION_CODE;
-	canary &= CANARY_MASK;
+	unsigned long canary = get_random_canary();
 
 	current->stack_canary = canary;
 	if (!IS_ENABLED(CONFIG_STACKPROTECTOR_PER_TASK))
-		__stack_chk_guard = current->stack_canary;
+		__stack_chk_guard = canary;
 }
 
 #endif	/* _ASM_STACKPROTECTOR_H */
diff --git a/arch/mips/include/asm/stackprotector.h b/arch/mips/include/asm/stackprotector.h
index 68d4be9e12547..6d1e4652152bc 100644
--- a/arch/mips/include/asm/stackprotector.h
+++ b/arch/mips/include/asm/stackprotector.h
@@ -28,14 +28,11 @@ extern unsigned long __stack_chk_guard;
  */
 static __always_inline void boot_init_stack_canary(void)
 {
-	unsigned long canary;
-
 	/* Try to get a semi random initial value. */
-	get_random_bytes(&canary, sizeof(canary));
-	canary ^= LINUX_VERSION_CODE;
+	unsigned long canary = get_random_canary();
 
 	current->stack_canary = canary;
-	__stack_chk_guard = current->stack_canary;
+	__stack_chk_guard = canary;
 }
 
 #endif	/* _ASM_STACKPROTECTOR_H */
diff --git a/arch/powerpc/include/asm/stackprotector.h b/arch/powerpc/include/asm/stackprotector.h
index 1c8460e235838..76577b72ef736 100644
--- a/arch/powerpc/include/asm/stackprotector.h
+++ b/arch/powerpc/include/asm/stackprotector.h
@@ -21,12 +21,10 @@
  */
 static __always_inline void boot_init_stack_canary(void)
 {
-	unsigned long canary;
-
 	/* Try to get a semi random initial value. */
-	canary = get_random_canary();
+	unsigned long canary = get_random_long();
+
 	canary ^= mftb();
-	canary ^= LINUX_VERSION_CODE;
 	canary &= CANARY_MASK;
 
 	current->stack_canary = canary;
diff --git a/arch/sh/include/asm/stackprotector.h b/arch/sh/include/asm/stackprotector.h
index 35616841d0a1c..a9ef619c8a0ec 100644
--- a/arch/sh/include/asm/stackprotector.h
+++ b/arch/sh/include/asm/stackprotector.h
@@ -15,15 +15,11 @@ extern unsigned long __stack_chk_guard;
  */
 static __always_inline void boot_init_stack_canary(void)
 {
-	unsigned long canary;
-
 	/* Try to get a semi random initial value. */
-	get_random_bytes(&canary, sizeof(canary));
-	canary ^= LINUX_VERSION_CODE;
-	canary &= CANARY_MASK;
+	unsigned long canary = get_random_canary();
 
 	current->stack_canary = canary;
-	__stack_chk_guard = current->stack_canary;
+	__stack_chk_guard = canary;
 }
 
 #endif /* __ASM_SH_STACKPROTECTOR_H */
diff --git a/arch/x86/include/asm/stackprotector.h b/arch/x86/include/asm/stackprotector.h
index 91e29b6a86a5e..af74fd3130cf4 100644
--- a/arch/x86/include/asm/stackprotector.h
+++ b/arch/x86/include/asm/stackprotector.h
@@ -72,9 +72,9 @@ static __always_inline void boot_init_stack_canary(void)
 	 * there it already has some randomness on most systems. Later
 	 * on during the bootup the random pool has true entropy too.
 	 */
-	get_random_bytes(&canary, sizeof(canary));
+	canary = get_random_u64();
 	tsc = rdtsc();
-	canary += tsc + (tsc << 32UL);
+	canary += tsc + (tsc << 32);
 	canary &= CANARY_MASK;
 
 	current->stack_canary = canary;
diff --git a/arch/xtensa/include/asm/stackprotector.h b/arch/xtensa/include/asm/stackprotector.h
index e368f94fd2af3..9807fd80e5a8e 100644
--- a/arch/xtensa/include/asm/stackprotector.h
+++ b/arch/xtensa/include/asm/stackprotector.h
@@ -27,14 +27,11 @@ extern unsigned long __stack_chk_guard;
  */
 static __always_inline void boot_init_stack_canary(void)
 {
-	unsigned long canary;
-
 	/* Try to get a semi random initial value. */
-	get_random_bytes(&canary, sizeof(canary));
-	canary ^= LINUX_VERSION_CODE;
+	unsigned long canary = get_random_canary();
 
 	current->stack_canary = canary;
-	__stack_chk_guard = current->stack_canary;
+	__stack_chk_guard = canary;
 }
 
 #endif	/* _ASM_STACKPROTECTOR_H */
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
