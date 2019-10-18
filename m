Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4B4DBB88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 04:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=H1UIdAfva2pniO1KCs/RK6Jr3FZgBwGbbeKN5RTCkNI=; b=Gpx
	CI0crDPuns8azkGzrTKEWXFzQMPW9l3LP1BjY25KjwqB35cenCi7wGBgDARPnIaXoh9iI+x+ETbIk
	uw+0r9VxOjjWhRVFuLQWt2BzD6l9J+WsgYZ5OKlqEqaIPlAdkWoEgV8jNbc4UtQBVk1YDaSpI1e7i
	XHlZ2IeOy1YGEWSBNjGPMRVc3rnka2B1C+yrob5+k+QVOT54CZZKw+mEZIdKI7JDkiKV6zAbd1F1S
	26ieXC4t1xO7uXWV8IZY5Caac4Vr82jqjO6LVg/SPTFT6kziU/94IytOe9h5rIqqujvbFrbq13ctq
	NO+StrkhRuuNzOgfiFmstTwYRwBBo2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLISo-0002KN-Ft; Fri, 18 Oct 2019 02:58:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLISb-0002I6-Pc
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 02:57:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id 23so2502269pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 19:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=ucTp4pYNsoXIVC4j9OusGhsOmcXWf7rr6MoAdvFKtu4=;
 b=CfRbqYmycchsM1bJlVBRGEXaNsWo9LlbTr2NcLF7r1E4npsvAZAH5jd4uh3EpePLd5
 ufr+cUV7VAX39CfjOthSGrd8LF6VP60ThHzbx7hhKguPAUPX3VFIQ5DSNZjjGtsX8Az9
 fyL5HFvwPvE4/BpTzU/czRQaKcUE5AZPsxtj5m6ILQftjNw5CmEbccaSjS4jVzmEtuJS
 Di6XKPjFXwR4+vVOK5SO4TzIQ/ANsljiFWP8dsFftOju0dwfTqqn18Ivjcq5QCsittKl
 +OW7o1R7IXY7w2qGgF5hzwCF4gCWh5CxiIRIQWu3jt3XR3GRw7xlxvRbun6FKx6qwgof
 zSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=ucTp4pYNsoXIVC4j9OusGhsOmcXWf7rr6MoAdvFKtu4=;
 b=JcXZ5fee0+/s9iNnenjX4h10d5ojYUmlobnTA7T+w5RMgJe8e0zXRyQO+bQU2FYOja
 3KkrbTKJgkpAhsuMHuFpg6weCwe8/Cgpo/mTwZo3UEOs+DAVFT4/5Yr8G8lXHJGJi/GM
 8TBveA9ns/DcYYxxWjx67f3mzca2/YfH2tS2E+2fYSYYa1ujGKcxK0sdh/2QbXJJrt25
 9ClKHebT4U0381+FkEwdlSMufkrFySYfOkABHptjfZI8tydbH9Wi7c9NouJIRXKeSOpt
 sZVCbdwxpFqrtXQ5T+C4y6m7S/E2FQC6xHI5drK6wk1hUJfO/tEzQoEkEbZBBsP3l+a0
 XNPQ==
X-Gm-Message-State: APjAAAWaCAs+mSJ+hetHRByPQkZw4Zd1bxXwLk9lLWNGK0upCnWEqimn
 zXzczljctp8yFRXhKxkAJj4=
X-Google-Smtp-Source: APXvYqy96D31GFo6gGMu/neDxNH+1DxPMLtYZjXD3nhnD1h0yzdmy0NM2aKr4ORijlMkp8mxDhk3lA==
X-Received: by 2002:a17:90a:80c2:: with SMTP id
 k2mr8322228pjw.92.1571367467557; 
 Thu, 17 Oct 2019 19:57:47 -0700 (PDT)
Received: from software.domain.org ([66.42.68.162])
 by smtp.gmail.com with ESMTPSA id a7sm3451692pjv.0.2019.10.17.19.57.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 17 Oct 2019 19:57:46 -0700 (PDT)
From: Huacai Chen <chenhc@lemote.com>
To: Andy Lutomirski <luto@kernel.org>
Subject: [PATCH] lib/vdso: Use __arch_use_vsyscall() to indicate fallback
Date: Fri, 18 Oct 2019 11:00:19 +0800
Message-Id: <1571367619-13573-1-git-send-email-chenhc@lemote.com>
X-Mailer: git-send-email 2.7.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195749_858910_F233DC72 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chenhuacai[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, chenhuacai@gmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Huacai Chen <chenhc@lemote.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In do_hres(), we currently use whether the return value of __arch_get_
hw_counter() is negtive to indicate fallback, but this is not a good
idea. Because:

1, ARM64 returns ULL_MAX but MIPS returns 0 when clock_mode is invalid;
2, For a 64bit counter, a "negtive" value of counter is actually valid.

To solve this problem, we use U64_MAX as the only "invalid" return
value -- this is still not fully correct, but has no problem in most
cases. Moreover, all vdso time-related functions should rely on the
return value of __arch_use_vsyscall(), because update_vdso_data() and
update_vsyscall_tz() also rely on it. So, in the core functions of
__cvdso_gettimeofday(), __cvdso_clock_gettime() and __cvdso_clock_
getres(), if __arch_use_vsyscall() returns false, we use the fallback
functions directly.

Fixes: 00b26474c2f1613d7ab894c5 ("lib/vdso: Provide generic VDSO implementation")
Cc: stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Paul Burton <paul.burton@mips.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Huacai Chen <chenhc@lemote.com>
---
 arch/arm64/include/asm/vdso/vsyscall.h |  2 +-
 arch/mips/include/asm/vdso/vsyscall.h  |  2 +-
 include/asm-generic/vdso/vsyscall.h    |  2 +-
 lib/vdso/gettimeofday.c                | 12 +++++++++++-
 4 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/vsyscall.h b/arch/arm64/include/asm/vdso/vsyscall.h
index 0c731bf..406e6de 100644
--- a/arch/arm64/include/asm/vdso/vsyscall.h
+++ b/arch/arm64/include/asm/vdso/vsyscall.h
@@ -31,7 +31,7 @@ int __arm64_get_clock_mode(struct timekeeper *tk)
 #define __arch_get_clock_mode __arm64_get_clock_mode
 
 static __always_inline
-int __arm64_use_vsyscall(struct vdso_data *vdata)
+int __arm64_use_vsyscall(const struct vdso_data *vdata)
 {
 	return !vdata[CS_HRES_COARSE].clock_mode;
 }
diff --git a/arch/mips/include/asm/vdso/vsyscall.h b/arch/mips/include/asm/vdso/vsyscall.h
index 1953147..8b10dd7 100644
--- a/arch/mips/include/asm/vdso/vsyscall.h
+++ b/arch/mips/include/asm/vdso/vsyscall.h
@@ -29,7 +29,7 @@ int __mips_get_clock_mode(struct timekeeper *tk)
 #define __arch_get_clock_mode __mips_get_clock_mode
 
 static __always_inline
-int __mips_use_vsyscall(struct vdso_data *vdata)
+int __mips_use_vsyscall(const struct vdso_data *vdata)
 {
 	return (vdata[CS_HRES_COARSE].clock_mode != VDSO_CLOCK_NONE);
 }
diff --git a/include/asm-generic/vdso/vsyscall.h b/include/asm-generic/vdso/vsyscall.h
index e94b1978..ac05a625 100644
--- a/include/asm-generic/vdso/vsyscall.h
+++ b/include/asm-generic/vdso/vsyscall.h
@@ -26,7 +26,7 @@ static __always_inline int __arch_get_clock_mode(struct timekeeper *tk)
 #endif /* __arch_get_clock_mode */
 
 #ifndef __arch_use_vsyscall
-static __always_inline int __arch_use_vsyscall(struct vdso_data *vdata)
+static __always_inline int __arch_use_vsyscall(const struct vdso_data *vdata)
 {
 	return 1;
 }
diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index e630e7f..4ad062e 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -9,6 +9,7 @@
 #include <linux/hrtimer_defs.h>
 #include <vdso/datapage.h>
 #include <vdso/helpers.h>
+#include <vdso/vsyscall.h>
 
 /*
  * The generic vDSO implementation requires that gettimeofday.h
@@ -50,7 +51,7 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
 		cycles = __arch_get_hw_counter(vd->clock_mode);
 		ns = vdso_ts->nsec;
 		last = vd->cycle_last;
-		if (unlikely((s64)cycles < 0))
+		if (unlikely(cycles == U64_MAX))
 			return -1;
 
 		ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
@@ -91,6 +92,9 @@ __cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
 	if (unlikely((u32) clock >= MAX_CLOCKS))
 		return -1;
 
+	if (!__arch_use_vsyscall(vd))
+		return -1;
+
 	/*
 	 * Convert the clockid to a bitmask and use it to check which
 	 * clocks are handled in the VDSO directly.
@@ -145,6 +149,9 @@ __cvdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
 
+	if (!__arch_use_vsyscall(vd))
+		return gettimeofday_fallback(tv, tz);
+
 	if (likely(tv != NULL)) {
 		struct __kernel_timespec ts;
 
@@ -189,6 +196,9 @@ int __cvdso_clock_getres_common(clockid_t clock, struct __kernel_timespec *res)
 	if (unlikely((u32) clock >= MAX_CLOCKS))
 		return -1;
 
+	if (!__arch_use_vsyscall(vd))
+		return -1;
+
 	hrtimer_res = READ_ONCE(vd[CS_HRES_COARSE].hrtimer_res);
 	/*
 	 * Convert the clockid to a bitmask and use it to check which
-- 
2.7.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
