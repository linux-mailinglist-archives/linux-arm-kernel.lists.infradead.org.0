Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E706814DE7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 17:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b5cXwpEo0ykKfQpjyIQ5TU3rFMTq6h3jXTBsoX0s1zU=; b=iskXElbjTqYDSxseyfKPQcQ2vG
	fE4Xx1RQw0Zo0Uxg/1jXIFahuQmFp+8489xLE6Gqi2pO12Joqn+w9klEUDYapde4+b23KKNn/8cwz
	x9ajIKsDchrnDpUnkvlPZ2Nzn9Y9r2aQcIWVuNklbiMoEDvuyHqjKZwoOAHTMHUhW7wj+FzuEE0Ek
	XSoMuzgWcDxLf9I3w1S6z0Ki+qqweRjbFRgIxx6kglsn5iaryfvxVhBOFI3EM+70ohw+IFJAUZgqQ
	dorGuB9tk5uIHDxG9EOjoapPwuV+aH9Hi6taKltaeWWIScClqSonCIzV5t5u02CseM6olt20FMiQ0
	bJorkotQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCNc-0000l5-46; Thu, 30 Jan 2020 16:09:20 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCMy-0000WB-7u
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 16:08:42 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 487ldc2tlWz9v6KN;
 Thu, 30 Jan 2020 17:08:36 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Flnvqj48; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id tulGZmQ36mb7; Thu, 30 Jan 2020 17:08:36 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 487ldc1nW7z9v6KL;
 Thu, 30 Jan 2020 17:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580400516; bh=UmmY6RKPs52swsiEhL0YnHgxeG0I3aYWBOfOGx8ZwIo=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=Flnvqj48dfl8/yndb1mTKcf8DvCaGWKFUHsNdNN6X0s9vFR8mJHJFxRx4Bw/iqeZR
 WM43eamWwOAhqv82frlTiWiUBAamKwg23Lnp84EA89xdkD58T84GgLlDir5uq96mER
 gfHbj/fuHJ7GkkqPhWRcgg/ywtnIB9mhdgAz6mF0=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id CB2328B87B;
 Thu, 30 Jan 2020 17:08:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id rAi9O2jk2ZVc; Thu, 30 Jan 2020 17:08:37 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7D5798B877;
 Thu, 30 Jan 2020 17:08:37 +0100 (CET)
Received: by po14934vm.idsi0.si.c-s.fr (Postfix, from userid 0)
 id 4827E65283; Thu, 30 Jan 2020 16:08:37 +0000 (UTC)
Message-Id: <abf97996602ef07223fec30c005df78e5ed41b2e.1580399657.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1580399657.git.christophe.leroy@c-s.fr>
References: <cover.1580399657.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 3/6] lib/vdso: Allow architectures to provide the vdso data
 pointer
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 nathanl@linux.ibm.com, arnd@arndb.de, tglx@linutronix.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Date: Thu, 30 Jan 2020 16:08:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_080840_588081_B4BE9770 
X-CRM114-Status: GOOD (  12.45  )
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

On powerpc, __arch_get_vdso_data() clobbers the link register,
requiring the caller to save it.

As the parent function already has to set a stack frame and saves
the link register before calling the C vdso function, retriving the
vdso data pointer there is lighter.

Give architectures the opportunity to hand the vdso data pointer
to C vdso functions.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 83 +++++++++++++++++++++++++++++++++--------
 1 file changed, 67 insertions(+), 16 deletions(-)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index f8b8ec5e63ac..72d65dd50cb4 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -206,9 +206,9 @@ static __always_inline int do_coarse(const struct vdso_data *vd, clockid_t clk,
 }
 
 static __maybe_unused int
-__cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
+__cvdso_clock_gettime_common(const struct vdso_data *vd, clockid_t clock,
+			     struct __kernel_timespec *ts)
 {
-	const struct vdso_data *vd = __arch_get_vdso_data();
 	u32 msk;
 
 	/* Check for negative values or invalid clocks */
@@ -233,23 +233,33 @@ __cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
 }
 
 static __maybe_unused int
-__cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
+__cvdso_clock_gettime_data(const struct vdso_data *vd, clockid_t clock,
+			   struct __kernel_timespec *ts)
 {
-	int ret = __cvdso_clock_gettime_common(clock, ts);
+	int ret = __cvdso_clock_gettime_common(vd, clock, ts);
 
 	if (unlikely(ret))
 		return clock_gettime_fallback(clock, ts);
 	return 0;
 }
 
+static __maybe_unused int
+__cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
+{
+	const struct vdso_data *vd = __arch_get_vdso_data();
+
+	return __cvdso_clock_gettime_data(vd, clock, ts);
+}
+
 #ifdef BUILD_VDSO32
 static __maybe_unused int
-__cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
+__cvdso_clock_gettime32_data(const struct vdso_data *vd, clockid_t clock,
+			     struct old_timespec32 *res)
 {
 	struct __kernel_timespec ts;
 	int ret;
 
-	ret = __cvdso_clock_gettime_common(clock, &ts);
+	ret = __cvdso_clock_gettime_common(vd, clock, &ts);
 
 	if (unlikely(ret))
 		return clock_gettime32_fallback(clock, res);
@@ -260,13 +270,21 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
 
 	return ret;
 }
-#endif /* BUILD_VDSO32 */
 
 static __maybe_unused int
-__cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
+__cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
 
+	return __cvdso_clock_gettime32_data(vd, clock, res);
+}
+#endif /* BUILD_VDSO32 */
+
+static __maybe_unused int
+__cvdso_gettimeofday_data(const struct vdso_data *vd,
+			  struct __kernel_old_timeval *tv, struct timezone *tz)
+{
+
 	if (likely(tv != NULL)) {
 		struct __kernel_timespec ts;
 
@@ -289,10 +307,18 @@ __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 	return 0;
 }
 
-#ifdef VDSO_HAS_TIME
-static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time)
+static __maybe_unused int
+__cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
+
+	return __cvdso_gettimeofday_data(vd, tv, tz);
+}
+
+#ifdef VDSO_HAS_TIME
+static __maybe_unused __kernel_old_time_t
+__cvdso_time_data(const struct vdso_data *vd, __kernel_old_time_t *time)
+{
 	__kernel_old_time_t t;
 
 	if (IS_ENABLED(CONFIG_TIME_NS) && vd->clock_mode == VCLOCK_TIMENS)
@@ -305,13 +331,20 @@ static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time
 
 	return t;
 }
+
+static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time)
+{
+	const struct vdso_data *vd = __arch_get_vdso_data();
+
+	return __cvdso_time_data(vd, time);
+}
 #endif /* VDSO_HAS_TIME */
 
 #ifdef VDSO_HAS_CLOCK_GETRES
 static __maybe_unused
-int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
+int __cvdso_clock_getres_common(const struct vdso_data *vd, clockid_t clock,
+				struct __kernel_timespec *res)
 {
-	const struct vdso_data *vd = __arch_get_vdso_data();
 	u32 msk;
 	u64 ns;
 
@@ -349,23 +382,33 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 }
 
 static __maybe_unused
-int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
+int __cvdso_clock_getres_data(const struct vdso_data *vd, clockid_t clock,
+			      struct __kernel_timespec *res)
 {
-	int ret = __cvdso_clock_getres_common(clock, res);
+	int ret = __cvdso_clock_getres_common(vd, clock, res);
 
 	if (unlikely(ret))
 		return clock_getres_fallback(clock, res);
 	return 0;
 }
 
+static __maybe_unused
+int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
+{
+	const struct vdso_data *vd = __arch_get_vdso_data();
+
+	return __cvdso_clock_getres_data(vd, clock, res);
+}
+
 #ifdef BUILD_VDSO32
 static __maybe_unused int
-__cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
+__cvdso_clock_getres_time32_data(const struct vdso_data *vd, clockid_t clock,
+				 struct old_timespec32 *res)
 {
 	struct __kernel_timespec ts;
 	int ret;
 
-	ret = __cvdso_clock_getres_common(clock, &ts);
+	ret = __cvdso_clock_getres_common(vd, clock, &ts);
 
 	if (unlikely(ret))
 		return clock_getres32_fallback(clock, res);
@@ -376,5 +419,13 @@ __cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
 	}
 	return ret;
 }
+
+static __maybe_unused int
+__cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
+{
+	const struct vdso_data *vd = __arch_get_vdso_data();
+
+	return __cvdso_clock_getres_time32_data(vd, clock, res);
+}
 #endif /* BUILD_VDSO32 */
 #endif /* VDSO_HAS_CLOCK_GETRES */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
