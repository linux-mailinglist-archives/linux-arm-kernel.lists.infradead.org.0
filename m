Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F39D1F9A76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FDE1BjM8AOhyS62SG0lzTOsVBBmkJdiI1tMtmnxhth0=; b=Rr3fFAdKXm3m/i
	t4c0Yq991tl2mafXGy+frraxi7tiCGaqPZGee6vhrbcr6NoFOMAqbijcjqLqSt/qTeB8/1/ua6nSZ
	u2TfUz1XvJb8w1oBKVNOKq8mmlevwkK2U0U3QG6K/zXx/E6YcyK0a4m/5d11MUiywzlCd6hlWTt0g
	F/X21PuO619oC2mCiNwTdUDYc5dIhtlG7YzD2ltDZvnjyZBJPSbIODPS9P5uueeAHxdP1gRz9zRcQ
	k1oGYvEioe2qR9jUSS3Klrxv/sQpl5PXzoIbmHX/2HAH89PnP5QYqYu0LlFS7vui3z0ZauoJDKHQ2
	j8H1sxhbN+pCIqRrYGVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqGK-0005ad-Na; Mon, 15 Jun 2020 14:39:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqGB-0005aG-Ps
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:38:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id 64so7896157pfv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M1NtAaJQbnuNgbUb1D/FsI0at4jS7yofQQpYC64HM5M=;
 b=UYDuKMmOwZdlZz6/KeX+EVpriSho+LhNzH7LrG+Thh/SIIZmeyofDwtXtRWFG31XqV
 b/bf1jkuLyzT9zFLkumChihEfVoedph8rF6sN3z08OTcMv8OXaZNiQv0ND0yalI3ewz8
 hDISCJlPgvyphk7rwMFtXmg1y8CIasdYPW6Y+uQ9LzPXj53kCVj8wvKcrIwkinIX+CP1
 NIQpPszxYenej3pFLpnHQoUhsobAlifGRpMF4gwTV9zkgR5YsyboWYcIFtVCpLtX0kKH
 VVwDYyCrtXxIKQLEbYWBnnKoqKxATGIeEduSFD2hFV77eNhdqRPzMvQuMl//iCVmuqVI
 +xMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M1NtAaJQbnuNgbUb1D/FsI0at4jS7yofQQpYC64HM5M=;
 b=FVBJ1pSyEZFKQdXxRzYBY2yTSf4gn3UJ60QL4eHIoWujzijDdH0q6Au/O95EKV/bKm
 wQuoxi9Y3ryMzVIYEBSM2uEM+13wtf+opDhKSgHYv0ZHrTXTG8FG7Y5gcEMswOENrrrn
 yK6H7csjGbRnAWctO8Q6h13rJCk/c12fmktBtv8jitfpndMGzCu4oDKGASDqq/IsKRcw
 M7Ir4bryrwpO6rjRq/D5Ys9/TWW8S0H25MRQ+thC6I/lEnvjt8y1e7OUKP4LjCxjnPGM
 kLuKP9eGfOMYdS2W4Hl41ZQX9wyMknd5X0K0+V69mO37lOaw7h0DlCz/qju3VL6zX3D8
 ++YA==
X-Gm-Message-State: AOAM532xyj+uR6tHN9tCAYiJlNtqfLs99Fq7QEQtT5Cy7NVns5x2/NCD
 X/H7mmw00l1LM6zA19wKwKVCkA==
X-Google-Smtp-Source: ABdhPJxiGsnXmYIs7G3t9SMJRek0VnDmtWmhF+DPVXkG3tqC3vCgC7Z/gu3POHo0euBdrQ1pF0bQ1g==
X-Received: by 2002:a62:3382:: with SMTP id
 z124mr23666064pfz.263.1592231930594; 
 Mon, 15 Jun 2020 07:38:50 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.gmail.com with ESMTPSA id y10sm12327239pgi.54.2020.06.15.07.38.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 07:38:49 -0700 (PDT)
From: Mark Salyzyn <salyzyn@android.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2]: arch: arm64: vdso: export the symbols for time()
Date: Mon, 15 Jun 2020 07:38:24 -0700
Message-Id: <20200615143838.143137-1-salyzyn@android.com>
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073851_858187_90E6699A 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Enrico Weigelt <info@metux.net>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Allison Randal <allison@lohutok.net>, Mark Salyzyn <salyzyn@android.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Chiawei Wang <chiaweiwang@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chiawei Wang <chiaweiwang@google.com>

__cvdso_time() can be found in vDSO implementation,
but the symbols for time() are not exported.

Export the symbols and run bionic-benchmarks.

BEFORE:
bionic-benchmarks32 --bionic_extra BM_time_time
-----------------------------------------------------
Benchmark           Time             CPU   Iterations
-----------------------------------------------------
BM_time_time     83.6 ns         83.5 ns      8385964

bionic-benchmarks64 --bionic_extra BM_time_time
-----------------------------------------------------
Benchmark           Time             CPU   Iterations
-----------------------------------------------------
BM_time_time     63.5 ns         63.4 ns     11037509

AFTER:
bionic-benchmarks32 --bionic_extra BM_time_time
-----------------------------------------------------
Benchmark           Time             CPU   Iterations
-----------------------------------------------------
BM_time_time     8.57 ns         8.56 ns     81887312

bionic-benchmarks64 --bionic_extra BM_time_time
-----------------------------------------------------
Benchmark           Time             CPU   Iterations
-----------------------------------------------------
BM_time_time     7.52 ns         7.51 ns     93253809

Signed-off-by: Chiawei Wang <chiaweiwang@google.com>
Signed-off-by: Mark Salyzyn <salyzyn@android.com>
Cc: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Enrico Weigelt <info@metux.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alexios Zavras <alexios.zavras@intel.com>
Cc: linux-arm-kernel@lists.infradead.org
---
v2:
- add prototypes in both vgettimeofday.c
- use __kernel_old_time_t instead of time_t
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h | 12 ++++++++++++
 arch/arm64/include/asm/vdso/gettimeofday.h        | 10 ++++++++++
 arch/arm64/kernel/vdso/vdso.lds.S                 |  1 +
 arch/arm64/kernel/vdso/vgettimeofday.c            |  5 +++++
 arch/arm64/kernel/vdso32/vdso.lds.S               |  1 +
 arch/arm64/kernel/vdso32/vgettimeofday.c          |  5 +++++
 6 files changed, 34 insertions(+)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index b6907ae78e53..d0a5655785bd 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -14,8 +14,20 @@
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
+#define VDSO_HAS_TIME			1
+
 #define BUILD_VDSO32			1
 
+extern int __vdso_clock_gettime(clockid_t clock,
+				struct old_timespec32 *ts);
+extern int __vdso_clock_gettime64(clockid_t clock,
+				  struct __kernel_timespec *ts);
+extern int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
+			       struct timezone *tz);
+extern int __vdso_clock_getres(clockid_t clock_id,
+			       struct old_timespec32 *res);
+extern __kernel_old_time_t time(__kernel_old_time_t *time);
+
 static __always_inline
 int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
 			  struct timezone *_tz)
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index afba6ba332f8..e0dcf0dce6c0 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -11,6 +11,16 @@
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
+#define VDSO_HAS_TIME			1
+
+extern int __kernel_clock_gettime(clockid_t clock,
+				  struct __kernel_timespec *ts);
+extern int __kernel_gettimeofday(struct __kernel_old_timeval *tv,
+				 struct timezone *tz);
+extern int __kernel_clock_getres(clockid_t clock_id,
+				 struct __kernel_timespec *res);
+extern __kernel_old_time_t __vdso_time(__kernel_old_time_t *time);
+
 static __always_inline
 int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
 			  struct timezone *_tz)
diff --git a/arch/arm64/kernel/vdso/vdso.lds.S b/arch/arm64/kernel/vdso/vdso.lds.S
index 7ad2d3a0cd48..61dddb0af1a5 100644
--- a/arch/arm64/kernel/vdso/vdso.lds.S
+++ b/arch/arm64/kernel/vdso/vdso.lds.S
@@ -77,6 +77,7 @@ VERSION
 		__kernel_gettimeofday;
 		__kernel_clock_gettime;
 		__kernel_clock_getres;
+		__kernel_time;
 	local: *;
 	};
 }
diff --git a/arch/arm64/kernel/vdso/vgettimeofday.c b/arch/arm64/kernel/vdso/vgettimeofday.c
index 4236cf34d7d9..9a9058ba1f89 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -23,3 +23,8 @@ int __kernel_clock_getres(clockid_t clock_id,
 {
 	return __cvdso_clock_getres(clock_id, res);
 }
+
+__kernel_old_time_t __vdso_time(__kernel_old_time_t *time)
+{
+	return __cvdso_time(time);
+}
diff --git a/arch/arm64/kernel/vdso32/vdso.lds.S b/arch/arm64/kernel/vdso32/vdso.lds.S
index a3944927eaeb..2222c78451b4 100644
--- a/arch/arm64/kernel/vdso32/vdso.lds.S
+++ b/arch/arm64/kernel/vdso32/vdso.lds.S
@@ -69,6 +69,7 @@ VERSION
 		__kernel_rt_sigreturn_arm;
 		__kernel_rt_sigreturn_thumb;
 		__vdso_clock_gettime64;
+		__vdso_time;
 	local: *;
 	};
 }
diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 5acff29c5991..7eb988fa06d8 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -30,6 +30,11 @@ int __vdso_clock_getres(clockid_t clock_id,
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 
+__kernel_old_time_t time(__kernel_old_time_t *time)
+{
+	return __cvdso_time(time);
+}
+
 /* Avoid unresolved references emitted by GCC */
 
 void __aeabi_unwind_cpp_pr0(void)
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
