Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCC4129777
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 15:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vUnxggHd0qArLIJedmjqWwDp5aXaoz2VZmCIj/y8MF4=; b=ntraFjvH6K9KJp7FvHdSUOGJkD
	Dje5VDYjHBMe2rtam2x7J2hwvXUK4TFbvLsMGP6BlCeb1B0eiTo6Ijwfr9+78nMLMuUEYwyDPtPxe
	njup6ttzKCrbmk2DSPRKU9QsARolKA/gULmSFRhg7WuiCNEpNdowEChOX8j75bpWb7WiobY9vOp4F
	WOA/wn/+3cqhWSANMXS7eXT2D6DB4UmXELDjE08pU1AUFv2prgzmW3+mIlwH9rJmmZVAQMhVS9u1L
	efPiwQP1L3iYxjJ745sD3vQKZJpnY0o8Nc3w2uJ2KvQ4L9OLsI+ZOuecNK7jih90cgcGnEve1vzUp
	vNogT2aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijOkf-0001HE-PP; Mon, 23 Dec 2019 14:32:05 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijOjn-0000ko-8D
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 14:31:13 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47hMGX4NCpz9txhk;
 Mon, 23 Dec 2019 15:31:00 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=tKloNmQ7; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id wg-FKRBGZb_D; Mon, 23 Dec 2019 15:31:00 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47hMGX3CQYz9txhg;
 Mon, 23 Dec 2019 15:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577111460; bh=1sCTMh9eLrKbXMBzZ6ByOaUxXu4FVEq0WFbzGJwzJ1U=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=tKloNmQ7zRuNJRg6o0sQZEisTztwPgiRt98F5HOR0wix3oiGQX5WQfx+XiUl1vYfC
 QDhjfXmwPgV2gfPyzdif2vpw7ca12gkm7LJtcVpyuyBRvLyW/aFwyqcH4tdNfaFqR+
 yoblfORQR58ZCkx++FGC+m86d0l0jPdK5AmcT+YY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8CA598B7AB;
 Mon, 23 Dec 2019 15:31:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id di2S7ACdtTLy; Mon, 23 Dec 2019 15:31:05 +0100 (CET)
Received: from po16098vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 56DE88B7A1;
 Mon, 23 Dec 2019 15:31:05 +0100 (CET)
Received: by po16098vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 5BCE8637D4; Mon, 23 Dec 2019 14:31:05 +0000 (UTC)
Message-Id: <02861d0a05c2d48db4e9ee9093e2e2598093c372.1577111366.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1577111363.git.christophe.leroy@c-s.fr>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v2 04/10] lib: vdso: get pointer to vdso data from the arch
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 23 Dec 2019 14:31:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_063111_585843_D069F32F 
X-CRM114-Status: GOOD (  12.72  )
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

On powerpc, __arch_get_vdso_data() clobbers the link register,
requiring the caller to set a stack frame in order to save it.

As the parent function already has to set a stack frame and save
the link register to call the C vdso function, retriving the
vdso data pointer there is lighter.

Give arches the opportunity to hand the vdso data pointer
to C vdso functions.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 arch/arm/vdso/vgettimeofday.c            | 12 ++++++++----
 arch/arm64/kernel/vdso/vgettimeofday.c   |  9 ++++++---
 arch/arm64/kernel/vdso32/vgettimeofday.c | 12 ++++++++----
 arch/mips/vdso/vgettimeofday.c           | 21 ++++++++++++++-------
 arch/x86/entry/vdso/vclock_gettime.c     | 22 +++++++++++++++-------
 lib/vdso/gettimeofday.c                  | 28 ++++++++++++++--------------
 6 files changed, 65 insertions(+), 39 deletions(-)

diff --git a/arch/arm/vdso/vgettimeofday.c b/arch/arm/vdso/vgettimeofday.c
index 5451afb715e6..efad7d508d06 100644
--- a/arch/arm/vdso/vgettimeofday.c
+++ b/arch/arm/vdso/vgettimeofday.c
@@ -10,7 +10,8 @@
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
-	int ret = __cvdso_clock_gettime32(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime32(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -21,7 +22,8 @@ int __vdso_clock_gettime(clockid_t clock,
 int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -32,7 +34,8 @@ int __vdso_clock_gettime64(clockid_t clock,
 int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 			struct timezone *tz)
 {
-	int ret = __cvdso_gettimeofday(tv, tz);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_gettimeofday(vd, tv, tz);
 
 	if (likely(!ret))
 		return ret;
@@ -43,7 +46,8 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
-	int ret = __cvdso_clock_getres_time32(clock_id, res);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_getres_time32(vd, clock_id, res);
 
 	if (likely(!ret))
 		return ret;
diff --git a/arch/arm64/kernel/vdso/vgettimeofday.c b/arch/arm64/kernel/vdso/vgettimeofday.c
index 62694876b216..9a7122ec6d17 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -11,7 +11,8 @@
 int __kernel_clock_gettime(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -22,7 +23,8 @@ int __kernel_clock_gettime(clockid_t clock,
 int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
 			  struct timezone *tz)
 {
-	int ret = __cvdso_gettimeofday(tv, tz);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_gettimeofday(vd, tv, tz);
 
 	if (likely(!ret))
 		return ret;
@@ -33,7 +35,8 @@ int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
 int __kernel_clock_getres(clockid_t clock_id,
 			  struct __kernel_timespec *res)
 {
-	int ret =  __cvdso_clock_getres(clock_id, res);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret =  __cvdso_clock_getres(vd, clock_id, res);
 
 	if (likely(!ret))
 		return ret;
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 6770d2bedd1f..3eb6a82c1c25 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -11,13 +11,14 @@
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
+	const struct vdso_data *vd = __arch_get_vdso_data();
 	int ret;
 
 	/* The checks below are required for ABI consistency with arm */
 	if ((u32)ts >= TASK_SIZE_32)
 		return -EFAULT;
 
-	ret = __cvdso_clock_gettime32(clock, ts);
+	ret = __cvdso_clock_gettime32(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -28,13 +29,14 @@ int __vdso_clock_gettime(clockid_t clock,
 int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
+	const struct vdso_data *vd = __arch_get_vdso_data();
 	int ret;
 
 	/* The checks below are required for ABI consistency with arm */
 	if ((u32)ts >= TASK_SIZE_32)
 		return -EFAULT;
 
-	ret = __cvdso_clock_gettime(clock, ts);
+	ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -45,7 +47,8 @@ int __vdso_clock_gettime64(clockid_t clock,
 int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 			struct timezone *tz)
 {
-	int ret = __cvdso_gettimeofday(tv, tz);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_gettimeofday(vd, tv, tz);
 
 	if (likely(!ret))
 		return ret;
@@ -56,6 +59,7 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
+	const struct vdso_data *vd = __arch_get_vdso_data();
 	int ret;
 	struct __kernel_timespec ts;
 
@@ -63,7 +67,7 @@ int __vdso_clock_getres(clockid_t clock_id,
 	if ((u32)res >= TASK_SIZE_32)
 		return -EFAULT;
 
-	ret = __cvdso_clock_getres_time32(clock_id, res);
+	ret = __cvdso_clock_getres_time32(vd, clock_id, res);
 
 	if (likely(!ret))
 		return ret;
diff --git a/arch/mips/vdso/vgettimeofday.c b/arch/mips/vdso/vgettimeofday.c
index 02758c58454c..65d79d4695da 100644
--- a/arch/mips/vdso/vgettimeofday.c
+++ b/arch/mips/vdso/vgettimeofday.c
@@ -14,7 +14,8 @@
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
-	int ret = __cvdso_clock_gettime32(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime32(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -25,7 +26,8 @@ int __vdso_clock_gettime(clockid_t clock,
 int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 			struct timezone *tz)
 {
-	int ret = __cvdso_gettimeofday(tv, tz);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_gettimeofday(vd, tv, tz);
 
 	if (likely(!ret))
 		return ret;
@@ -36,7 +38,8 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
-	int ret = __cvdso_clock_getres_time32(clock_id, res);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_getres_time32(vd, clock_id, res);
 
 	if (likely(!ret))
 		return ret;
@@ -47,7 +50,8 @@ int __vdso_clock_getres(clockid_t clock_id,
 int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -60,7 +64,8 @@ int __vdso_clock_gettime64(clockid_t clock,
 int __vdso_clock_gettime(clockid_t clock,
 			 struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -71,7 +76,8 @@ int __vdso_clock_gettime(clockid_t clock,
 int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 			struct timezone *tz)
 {
-	int ret = __cvdso_gettimeofday(tv, tz);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_gettimeofday(vd, tv, tz);
 
 	if (likely(!ret))
 		return ret;
@@ -82,7 +88,8 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct __kernel_timespec *res)
 {
-	int ret =  __cvdso_clock_getres(clock_id, res);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret =  __cvdso_clock_getres(vd, clock_id, res);
 
 	if (likely(!ret))
 		return ret;
diff --git a/arch/x86/entry/vdso/vclock_gettime.c b/arch/x86/entry/vdso/vclock_gettime.c
index fde511cfe284..b87847b660dd 100644
--- a/arch/x86/entry/vdso/vclock_gettime.c
+++ b/arch/x86/entry/vdso/vclock_gettime.c
@@ -19,7 +19,8 @@ extern __kernel_old_time_t __vdso_time(__kernel_old_time_t *t);
 
 int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
-	int ret = __cvdso_gettimeofday(tv, tz);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_gettimeofday(vd, tv, tz);
 
 	if (likely(!ret))
 		return ret;
@@ -32,7 +33,9 @@ int gettimeofday(struct __kernel_old_timeval *, struct timezone *)
 
 __kernel_old_time_t __vdso_time(__kernel_old_time_t *t)
 {
-	return __cvdso_time(t);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+
+	return __cvdso_time(vd, t);
 }
 
 __kernel_old_time_t time(__kernel_old_time_t *t)	__attribute__((weak, alias("__vdso_time")));
@@ -45,7 +48,8 @@ extern int __vdso_clock_getres(clockid_t clock, struct __kernel_timespec *res);
 
 int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -59,7 +63,8 @@ int clock_gettime(clockid_t, struct __kernel_timespec *)
 int __vdso_clock_getres(clockid_t clock,
 			struct __kernel_timespec *res)
 {
-	int ret =  __cvdso_clock_getres(clock_id, res);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret =  __cvdso_clock_getres(vd, clock_id, res);
 
 	if (likely(!ret))
 		return ret;
@@ -76,7 +81,8 @@ extern int __vdso_clock_getres(clockid_t clock, struct old_timespec32 *res);
 
 int __vdso_clock_gettime(clockid_t clock, struct old_timespec32 *ts)
 {
-	int ret = __cvdso_clock_gettime32(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime32(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -89,7 +95,8 @@ int clock_gettime(clockid_t, struct old_timespec32 *)
 
 int __vdso_clock_gettime64(clockid_t clock, struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime(clock, ts);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_gettime(vd, clock, ts);
 
 	if (likely(!ret))
 		return ret;
@@ -102,7 +109,8 @@ int clock_gettime64(clockid_t, struct __kernel_timespec *)
 
 int __vdso_clock_getres(clockid_t clock, struct old_timespec32 *res)
 {
-	int ret = __cvdso_clock_getres_time32(clock, res);
+	const struct vdso_data *vd = __arch_get_vdso_data();
+	int ret = __cvdso_clock_getres_time32(vd, clock, res);
 
 	if (likely(!ret))
 		return ret;
diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index c6eeeb47f446..24e1ba838260 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -13,7 +13,6 @@
 /*
  * The generic vDSO implementation requires that gettimeofday.h
  * provides:
- * - __arch_get_vdso_data(): to get the vdso datapage.
  * - __arch_get_hw_counter(): to get the hw counter based on the
  *   clock_mode.
  */
@@ -79,9 +78,9 @@ static void do_coarse(const struct vdso_data *vd, clockid_t clk,
 }
 
 static __maybe_unused int
-__cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
+__cvdso_clock_gettime(const struct vdso_data *vd, clockid_t clock,
+		      struct __kernel_timespec *ts)
 {
-	const struct vdso_data *vd = __arch_get_vdso_data();
 	u32 msk;
 
 	/* Check for negative values or invalid clocks */
@@ -105,10 +104,11 @@ __cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
 }
 
 static __maybe_unused int
-__cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
+__cvdso_clock_gettime32(const struct vdso_data *vd, clockid_t clock,
+			struct old_timespec32 *res)
 {
 	struct __kernel_timespec ts;
-	int ret = __cvdso_clock_gettime(clock, &ts);
+	int ret = __cvdso_clock_gettime(vd, clock, &ts);
 
 	if (likely(!ret)) {
 		res->tv_sec = ts.tv_sec;
@@ -118,10 +118,9 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
 }
 
 static __maybe_unused int
-__cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
+__cvdso_gettimeofday(const struct vdso_data *vd, struct __kernel_old_timeval *tv,
+		     struct timezone *tz)
 {
-	const struct vdso_data *vd = __arch_get_vdso_data();
-
 	if (likely(tv != NULL)) {
 		struct __kernel_timespec ts;
 
@@ -141,9 +140,9 @@ __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 }
 
 #ifdef VDSO_HAS_TIME
-static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time)
+static __maybe_unused __kernel_old_time_t
+__cvdso_time(const struct vdso_data *vd, __kernel_old_time_t *time)
 {
-	const struct vdso_data *vd = __arch_get_vdso_data();
 	__kernel_old_time_t t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec);
 
 	if (time)
@@ -155,9 +154,9 @@ static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time
 
 #ifdef VDSO_HAS_CLOCK_GETRES
 static __maybe_unused
-int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
+int __cvdso_clock_getres(const struct vdso_data *vd, clockid_t clock,
+			 struct __kernel_timespec *res)
 {
-	const struct vdso_data *vd = __arch_get_vdso_data();
 	u64 hrtimer_res;
 	u32 msk;
 	u64 ns;
@@ -199,10 +198,11 @@ int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
 }
 
 static __maybe_unused int
-__cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
+__cvdso_clock_getres_time32(const struct vdso_data *vd, clockid_t clock,
+			    struct old_timespec32 *res)
 {
 	struct __kernel_timespec ts;
-	int ret = __cvdso_clock_getres(clock, &ts);
+	int ret = __cvdso_clock_getres(vd, clock, &ts);
 
 	if (likely(!ret && res)) {
 		res->tv_sec = ts.tv_sec;
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
