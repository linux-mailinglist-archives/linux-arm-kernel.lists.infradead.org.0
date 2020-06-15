Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD7B1F9542
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gqc+k00LvUiQBtxgo61lYwIE/My3+zU779OYoxFSSmc=; b=MeKI/hqThSq+lL
	J9hriwUt8XZHHLVMVFOx0butB/0Uc6fvZ3NqtSqT/D2QmSA/CLg4uIG0Uhd/JwTODybbiMXCYEwns
	U77lLwBzBBlGSDcAo/fASYclF9nz4dVdz700JwfV84uNLumXDiFhWuLRWBwMsc56pxi0YWqVYKei5
	etV7yePfIsjPXW1vBN91JUH4+Lm+/ix1HTIpQ7ABSr6oLsqLIOoVYEOfXOYfSjVIsdfKMY/MvCbv9
	DNYu7OlrNK6wPEKcAFKbGnxv8CkDLYjVKYexpgpyGOWLPcAHnsPiUv1Ad4Erf/inkKstsLxcwfbf4
	UVObmBVGLR+WwrYyCuaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknEH-0006wJ-Fb; Mon, 15 Jun 2020 11:24:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknE9-0006vl-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:24:34 +0000
Received: by mail-pg1-x543.google.com with SMTP id d4so451517pgk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 04:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3QRZ5ywtyFsxk5MHx1800AYGN1jSYKOCI9c+NnnOAzM=;
 b=FAymlCvsvMbZ0UGo7IGXv3Sx+u4nZzqXQmkPZXbDH2rYLctsQIAQl0UybmevkxWJAh
 Y66PQ0Xbepd7cy1Qyyx0C3Jqsd5MnxaoojSyG94AsIfq4/pRnVleBjftGrY/co+YHHPc
 np2IKhqqzuZ/mktxoHGb/nI5/pcgMIXX+KsYjzG+tgft7Strlrehv9eRLCNMWSDIjiAp
 F1ea71iUqK2hT5FhESPYbfNBZviEWNmbOzyXk6Q5e8v1FogWR1v5YTh9TEyau+hw+4uP
 J1eJgjCc7gc4VAl0c3CBub5C2BsmlnoSMPg1f8s6/rqX0157r+wcmYx1iYlnmHSwmcl5
 2g7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3QRZ5ywtyFsxk5MHx1800AYGN1jSYKOCI9c+NnnOAzM=;
 b=bnZpJDm7qkz1FBO27+lNZPjJpVt1TfVjll2xcJvIN3Tg3Ux5KdbwXK4POQJRVGvzWr
 6XHi+CG0mslR7n6aLorvQbwHDa4ZDj7HOyWBMpQw4eHHWh/kHAv+jvwPjUM2R5A2ChEH
 VNeNnn+ZonqhCho46zdmf9PqxTiXdLpiko6MImyxOyw6SpBcZntn2z1t8RM4FdU6poKj
 Aujakqzx1dBX38ikN0fnqF592quB+pOIo1r4fw1nxZzzQp971gOhW1XR51Xialf2eN5G
 ZrNRYePpTt5Zcq1cK3P5jkwU+60HTmHeRf4S0HlMnitjWn4C6X66MVI7u9QFxnn8Puzl
 8AtA==
X-Gm-Message-State: AOAM531FVXYOpcOn5ORtnv4Pe/Luz+e5Bef4NU/9MA95p6qjXBcFZecB
 d5FA23ZFT6x9CYi5lcHiI0NN2A==
X-Google-Smtp-Source: ABdhPJywD7hLKqggb4lGrVFIGkjim2YhP5qSbAbVYtu42KtLN2murCX0vQWnPhvhXP54HoGsMJQ55A==
X-Received: by 2002:a62:6d01:: with SMTP id i1mr23403506pfc.286.1592220271439; 
 Mon, 15 Jun 2020 04:24:31 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.gmail.com with ESMTPSA id gg10sm12160121pjb.38.2020.06.15.04.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 04:24:30 -0700 (PDT)
From: Mark Salyzyn <salyzyn@android.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH]: arch: arm64: vdso: export the symbols for time()
Date: Mon, 15 Jun 2020 04:24:05 -0700
Message-Id: <20200615112422.234735-1-salyzyn@android.com>
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_042433_197815_749FF574 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Catalin Marinas <catalin.marinas@arm.com>, Mark Salyzyn <salyzyn@android.com>,
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
---
 arch/arm64/include/asm/vdso/compat_gettimeofday.h | 2 ++
 arch/arm64/include/asm/vdso/gettimeofday.h        | 2 ++
 arch/arm64/kernel/vdso/vdso.lds.S                 | 1 +
 arch/arm64/kernel/vdso/vgettimeofday.c            | 5 +++++
 arch/arm64/kernel/vdso32/vdso.lds.S               | 1 +
 arch/arm64/kernel/vdso32/vgettimeofday.c          | 5 +++++
 6 files changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index b6907ae78e53..55e841bff432 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -14,6 +14,8 @@
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
+#define VDSO_HAS_TIME			1
+
 #define BUILD_VDSO32			1
 
 static __always_inline
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index afba6ba332f8..4d2f028284a0 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -11,6 +11,8 @@
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
+#define VDSO_HAS_TIME			1
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
index 4236cf34d7d9..09be63204e74 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -23,3 +23,8 @@ int __kernel_clock_getres(clockid_t clock_id,
 {
 	return __cvdso_clock_getres(clock_id, res);
 }
+
+time_t __kernel_time(time_t *time)
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
index 5acff29c5991..9296385e7bb8 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -30,6 +30,11 @@ int __vdso_clock_getres(clockid_t clock_id,
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 
+time_t __vdso_time(time_t *time)
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
