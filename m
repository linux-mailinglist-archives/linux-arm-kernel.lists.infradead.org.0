Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E601A13972F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:
	From:References:In-Reply-To:Message-Id:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tv14+BNcybyhZOlthvxQGNrOIq/j6zpAi/BanfDaOU8=; b=V42Jmrwf9yUQvw7S/gUpM1H50h
	aEqjlqXejscJMwXhfPBHfctfqn7dWDtCe0jzByYmNeX03rV0FcN0vfQXw5Z1XtMQrDbQz1TMO9X9s
	qDIPiGyxBCPsVVGBDANfeVIXt5cWjbEfUORAc8cqh9wa3cnJYYlY9xGqw9Ha+bNX7LveXuiohfUP9
	DsbvcorKGOdJH1rym/7wV05jgOPXfMKYsLTusbPixlgpRux/lSLX/bN5uFhjk6dH6sM8Pn+wk5gD/
	dkMDjHOMFqT9EzKPjDKmnjSzyJexk1eTqDGpEb59mGLz5e+p77RnrTwbY7Ffwl6xS46nb5njQS1Kz
	6xydLejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3FF-0005aL-F7; Mon, 13 Jan 2020 17:11:17 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3Cq-0002MP-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:08:52 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47xKmp0qNrz9tyXm;
 Mon, 13 Jan 2020 18:08:42 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=QXDttb7T; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id Mc_QosJO-mW7; Mon, 13 Jan 2020 18:08:42 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47xKmn6v83z9tyXf;
 Mon, 13 Jan 2020 18:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578935322; bh=JanAVwbfNrKMTHQ/SPAcOrXRwMktvfccR82GG0SlEYo=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=QXDttb7ToEKfY2gd8XNY7XB93hxx/aeTMiIVlXLs/0Y83dLW1ty70gGR5EWJQ+cJt
 J0Hmeex0AZuZDUOzTs9PzDmQ77FGZDp3DoRG06cEavNftLwvWtFUmiA3SGHkK4LJrz
 tUQ3nMsAQorHOQj2uWGEk5C4cVX+0To9zf2SzZjY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 4909C8B7C9;
 Mon, 13 Jan 2020 18:08:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 9c-CErJ1jcq7; Mon, 13 Jan 2020 18:08:47 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 00EC78B7BE;
 Mon, 13 Jan 2020 18:08:46 +0100 (CET)
Received: by localhost.localdomain (Postfix, from userid 0)
 id C95E864A1D; Mon, 13 Jan 2020 17:08:46 +0000 (UTC)
Message-Id: <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
In-Reply-To: <cover.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [RFC PATCH v3 08/12] lib: vdso: allow arches to provide vdso data
 pointer
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 arnd@arndb.de, tglx@linutronix.de, vincenzo.frascino@arm.com,
 luto@kernel.org
Date: Mon, 13 Jan 2020 17:08:46 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090849_258175_664D004C 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Give arches the opportunity to hand the vdso data pointer
to C vdso functions.

Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
---
 lib/vdso/gettimeofday.c | 56 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index da15a8842825..ea1a55507af5 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -104,9 +104,15 @@ static __always_inline int do_coarse(const struct vdso_data *vd, clockid_t clk,
 }
 
 static __maybe_unused int
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+__cvdso_clock_gettime_common(const struct vdso_data *vd, clockid_t clock,
+		      struct __kernel_timespec *ts)
+{
+#else
 __cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
+#endif
 	u32 msk;
 
 	/* Check for negative values or invalid clocks */
@@ -131,9 +137,16 @@ __cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
 }
 
 static __maybe_unused int
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+__cvdso_clock_gettime(const struct vdso_data *vd, clockid_t clock,
+		      struct __kernel_timespec *ts)
+{
+	int ret = __cvdso_clock_gettime_common(vd, clock, ts);
+#else
 __cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
 {
 	int ret = __cvdso_clock_gettime_common(clock, ts);
+#endif
 
 	if (unlikely(ret))
 		return clock_gettime_fallback(clock, ts);
@@ -141,12 +154,21 @@ __cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
 }
 
 static __maybe_unused int
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+__cvdso_clock_gettime32(const struct vdso_data *vd, clockid_t clock,
+			struct old_timespec32 *res)
+#else
 __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
+#endif
 {
 	struct __kernel_timespec ts;
 	int ret;
 
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+	ret = __cvdso_clock_gettime_common(vd, clock, &ts);
+#else
 	ret = __cvdso_clock_gettime_common(clock, &ts);
+#endif
 
 #ifdef VDSO_HAS_32BIT_FALLBACK
 	if (unlikely(ret))
@@ -164,9 +186,15 @@ __cvdso_clock_gettime32(clockid_t clock, struct old_timespec32 *res)
 }
 
 static __maybe_unused int
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+__cvdso_gettimeofday(const struct vdso_data *vd, struct __kernel_old_timeval *tv,
+		     struct timezone *tz)
+{
+#else
 __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
+#endif
 
 	if (likely(tv != NULL)) {
 		struct __kernel_timespec ts;
@@ -187,9 +215,15 @@ __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 }
 
 #ifdef VDSO_HAS_TIME
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+static __maybe_unused __kernel_old_time_t
+__cvdso_time(const struct vdso_data *vd, __kernel_old_time_t *time)
+{
+#else
 static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
+#endif
 	__kernel_old_time_t t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec);
 
 	if (time)
@@ -201,9 +235,15 @@ static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time
 
 #ifdef VDSO_HAS_CLOCK_GETRES
 static __maybe_unused
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+int __cvdso_clock_getres_common(const struct vdso_data *vd, clockid_t clock,
+				struct __kernel_timespec *res)
+{
+#else
 int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
+#endif
 	u32 msk;
 	u64 ns;
 
@@ -238,9 +278,16 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 }
 
 static __maybe_unused
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+int __cvdso_clock_getres(const struct vdso_data *vd, clockid_t clock,
+			 struct __kernel_timespec *res)
+{
+	int ret = __cvdso_clock_getres_common(vd, clock, res);
+#else
 int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
 {
 	int ret = __cvdso_clock_getres_common(clock, res);
+#endif
 
 	if (unlikely(ret))
 		return clock_getres_fallback(clock, res);
@@ -248,12 +295,21 @@ int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
 }
 
 static __maybe_unused int
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+__cvdso_clock_getres_time32(const struct vdso_data *vd, clockid_t clock,
+			    struct old_timespec32 *res)
+#else
 __cvdso_clock_getres_time32(clockid_t clock, struct old_timespec32 *res)
+#endif
 {
 	struct __kernel_timespec ts;
 	int ret;
 
+#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
+	ret = __cvdso_clock_getres_common(vd, clock, &ts);
+#else
 	ret = __cvdso_clock_getres_common(clock, &ts);
+#endif
 
 #ifdef VDSO_HAS_32BIT_FALLBACK
 	if (unlikely(ret))
-- 
2.13.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
