Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB3211FC1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LR2L/avf5wJuRXyKaS/iJjHaZzeOLhqQUCUIW8T41qQ=; b=lvVYr2HwH/OOLW
	wp1VXKpU7bNZ1RjEyEIw3YN9/CFEIOGv/Ht999MO3RKeDzgbihoP3LaahTibP5DAaLKB1ucQ6B4JM
	oaxYiB/rg1egMUPMjM1ll5X/a/O56tzvPhSo8ThwM2z9EmDet1eLo9Oki4NaO/oYAtn1cV3VcJP77
	vt1yf2HEAD2tTk3KcHxOz9DJ1bQbed08/tPzGk8KUdWOi0khboM3U1jdwGyKASn71Yk1srjexaVmF
	oH7/ZSUyoRiF5BQswr+npvvxivG4l0ZPbD0udF5L3thT0944IQAOh65q911ZTPqmXzv9MTo04yXOM
	2btKS5jaX2t0LTIBdb6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige7p-0004cS-0a; Mon, 16 Dec 2019 00:20:37 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige78-00047c-Uv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:19:57 +0000
Received: by mail-qv1-xf44.google.com with SMTP id dc14so385457qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pqQp4+UbbRX/7xlzqwr46OCkSlvgFANLzi802cRaz4A=;
 b=GyH7/Io5fH/c/CUmowH+I8vPoZ8s483kMhc3an3/j9mKJEAGIdoesqC3IMwmIaJf03
 ofn1CUUMWPYu6mLP1xPuGDobPBCRrctiJt71rFvn7BUCtLlI4zPp0N4uYuDweGoKXOCP
 onnsUA8IcLU1SG6wQREkSB57Jh1vP8OF5a9qw0sBK2sVIapT0w/2JQUScUrHqEMKVXCo
 ooyArdT1qkWIdNyhNVcqZbqJALcl1PuEzHCZd4RDv1JRQBkR9eTxP0/m9dGoWfhFWn64
 6Li8U0KzRuQBfnhK4YnbQvWKuqIf+s+y01QrEgZcw3jGf/crhDv1JKa9Y3gPAa70XxBP
 xA9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pqQp4+UbbRX/7xlzqwr46OCkSlvgFANLzi802cRaz4A=;
 b=V7vEt8ZJ6Wo184KeUxwjg1Guw0Y888RnoOZQBUPDuTFmXeU4M6e5x1itbfsAbhndG1
 yxEa4ykI+0v4mbi8Pbjo4k7N8uGtBVpKPJKYEicmcxFNn/JTfx0TfG5MHKqUYCfQpovA
 BhYLh6k6YABd1aybT9tg0Qv2236j/cq08iqk0vrJu8NFvg3HddG5Q7a2sfZ+Jonwku80
 6dJ7zSB06A9rSxx+LMnJgbGRsBX2+lBaXISrAoJHWWTtpN1TppjGl2/w+fi8HXLZxu+B
 11jT8gk9zRG7rhP5VCSP/9ESuW2i4qCMlqcjGg1VtFzsJP1+F9BH0yDwHKxcdkGom6m4
 fYQw==
X-Gm-Message-State: APjAAAXVb9GG0K1uSRsJN7+AohY6mNmQVBcqdt+ajStVtnRMjihdETxE
 DaXZi8TVHp9gl/xNETXl2AY=
X-Google-Smtp-Source: APXvYqxDQ+j2rURsMx2x0xRfHlMUbbM83uuSbHR32vFcElSOqCViHNeFWFNuwVwKh7NFCGLlq6vXXw==
X-Received: by 2002:ad4:5614:: with SMTP id ca20mr95564qvb.43.1576455593249;
 Sun, 15 Dec 2019 16:19:53 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id l20sm3935350qtj.60.2019.12.15.16.19.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:19:52 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 1D85822430;
 Sun, 15 Dec 2019 19:19:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:19:52 -0500
X-ME-Sender: <xms:ps32XSiA8-W5GqC5Qy3FoXGOj8quSVO-Rhv_jOUF0x5RjYwOGeKgAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnh
 hgsehgmhgrihhlrdgtohhmqeenucfkphephedvrdduheehrdduuddurdejudenucfrrghr
 rghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrg
 hlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeep
 ghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgvnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:ps32XcozRl7uyns0jxZ5RbnzMCjSlYce4Gl3XelJ3tNtaWiQmANVRA>
 <xmx:ps32XaGAddK6-w31E5CHPXQYuPakcYS_mrOQpy-wvdRbvq_o50YOlA>
 <xmx:ps32XelygpSR2dCJDv_W5E8D_JRuo6QyN2c9cChwjcAoI_tE4J64HA>
 <xmx:qM32XfzFWVElOSSskywo0p0kinDjc-v64e7XlUzN1MaesgGu0REO3cIZZr8>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id B1E9530600FE;
 Sun, 15 Dec 2019 19:19:49 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 3/6] arm/arm64: clocksource: Introduce vclock_mode
Date: Mon, 16 Dec 2019 08:19:19 +0800
Message-Id: <20191216001922.23008-4-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216001922.23008-1-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_161955_075022_2605624D 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Enrico Weigelt <info@metux.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Michael Kelley <mikelley@microsoft.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Marc Zyngier <maz@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to x86, use a vclock_mode in arch_clocksource_data to differ
clocksoures use different read function in vDSO.

No functional changes, only preparation for support vDSO in ARM64 on
Hyper-V.

Note: the changes for arm are only because arm and arm64 share the same
code in the arch timer driver and require arch_clocksource_data having
the same field.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/arm/include/asm/clocksource.h                | 6 +++++-
 arch/arm/kernel/vdso.c                            | 1 -
 arch/arm64/include/asm/clocksource.h              | 6 +++++-
 arch/arm64/include/asm/mshyperv.h                 | 2 +-
 arch/arm64/include/asm/vdso/compat_gettimeofday.h | 5 +++--
 arch/arm64/include/asm/vdso/gettimeofday.h        | 5 +++--
 arch/arm64/include/asm/vdso/vsyscall.h            | 4 +---
 drivers/clocksource/arm_arch_timer.c              | 8 ++++----
 8 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/arch/arm/include/asm/clocksource.h b/arch/arm/include/asm/clocksource.h
index 0b350a7e26f3..017c5ab6e587 100644
--- a/arch/arm/include/asm/clocksource.h
+++ b/arch/arm/include/asm/clocksource.h
@@ -1,8 +1,12 @@
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
+#define VCLOCK_NONE	0	/* No vDSO clock available.		*/
+#define VCLOCK_CNTVCT	1	/* vDSO should use cntvcnt		*/
+#define VCLOCK_MAX	1
+
 struct arch_clocksource_data {
-	bool vdso_direct;	/* Usable for direct VDSO access? */
+	int vclock_mode;
 };
 
 #endif
diff --git a/arch/arm/kernel/vdso.c b/arch/arm/kernel/vdso.c
index c89ac1b9d28b..09e46ec420fe 100644
--- a/arch/arm/kernel/vdso.c
+++ b/arch/arm/kernel/vdso.c
@@ -263,4 +263,3 @@ void arm_install_vdso(struct mm_struct *mm, unsigned long addr)
 	if (!IS_ERR(vma))
 		mm->context.vdso = addr;
 }
-
diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
index 0ece64a26c8c..fbe80057468c 100644
--- a/arch/arm64/include/asm/clocksource.h
+++ b/arch/arm64/include/asm/clocksource.h
@@ -2,8 +2,12 @@
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
+#define VCLOCK_NONE	0	/* No vDSO clock available.		*/
+#define VCLOCK_CNTVCT	1	/* vDSO should use cntvcnt		*/
+#define VCLOCK_MAX	1
+
 struct arch_clocksource_data {
-	bool vdso_direct;	/* Usable for direct VDSO access? */
+	int vclock_mode;
 };
 
 #endif
diff --git a/arch/arm64/include/asm/mshyperv.h b/arch/arm64/include/asm/mshyperv.h
index 9cc4aeddf2d0..0afb00e3501d 100644
--- a/arch/arm64/include/asm/mshyperv.h
+++ b/arch/arm64/include/asm/mshyperv.h
@@ -90,7 +90,7 @@ extern void hv_get_vpreg_128(u32 reg, struct hv_get_vp_register_output *result);
 #define hv_set_reference_tsc(val) \
 		hv_set_vpreg(HV_REGISTER_REFERENCE_TSC, val)
 #define hv_set_clocksource_vdso(val) \
-		((val).archdata.vdso_direct = false)
+		((val).archdata.vclock_mode = VCLOCK_NONE)
 
 #if IS_ENABLED(CONFIG_HYPERV)
 #define hv_enable_stimer0_percpu_irq(irq)	enable_percpu_irq(irq, 0)
diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
index c50ee1b7d5cd..630d04c3c92e 100644
--- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
@@ -8,6 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
+#include <asm/clocksource.h>
 #include <uapi/linux/time.h>
 
 #include <asm/vdso/compat_barrier.h>
@@ -117,10 +118,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 	u64 res;
 
 	/*
-	 * clock_mode == 0 implies that vDSO are enabled otherwise
+	 * clock_mode == VCLOCK_NONE implies that vDSO are disabled so
 	 * fallback on syscall.
 	 */
-	if (clock_mode)
+	if (clock_mode == VCLOCK_NONE)
 		return __VDSO_USE_SYSCALL;
 
 	/*
diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index b08f476b72b4..e6e3fe0488c7 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,6 +8,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
+#include <asm/clocksource.h>
 #include <uapi/linux/time.h>
 
 #define __VDSO_USE_SYSCALL		ULLONG_MAX
@@ -71,10 +72,10 @@ static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
 	u64 res;
 
 	/*
-	 * clock_mode == 0 implies that vDSO are enabled otherwise
+	 * clock_mode == VCLOCK_NONE implies that vDSO are disabled so
 	 * fallback on syscall.
 	 */
-	if (clock_mode)
+	if (clock_mode == VCLOCK_NONE)
 		return __VDSO_USE_SYSCALL;
 
 	/*
diff --git a/arch/arm64/include/asm/vdso/vsyscall.h b/arch/arm64/include/asm/vdso/vsyscall.h
index 0c20a7c1bee5..07f78b0da498 100644
--- a/arch/arm64/include/asm/vdso/vsyscall.h
+++ b/arch/arm64/include/asm/vdso/vsyscall.h
@@ -24,9 +24,7 @@ struct vdso_data *__arm64_get_k_vdso_data(void)
 static __always_inline
 int __arm64_get_clock_mode(struct timekeeper *tk)
 {
-	u32 use_syscall = !tk->tkr_mono.clock->archdata.vdso_direct;
-
-	return use_syscall;
+	return tk->tkr_mono.clock->archdata.vclock_mode;
 }
 #define __arch_get_clock_mode __arm64_get_clock_mode
 
diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 9a5464c625b4..9b8d4d00b53b 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -69,7 +69,7 @@ static enum arch_timer_ppi_nr arch_timer_uses_ppi = ARCH_TIMER_VIRT_PPI;
 static bool arch_timer_c3stop;
 static bool arch_timer_mem_use_virtual;
 static bool arch_counter_suspend_stop;
-static bool vdso_default = true;
+static int vdso_default = VCLOCK_CNTVCT;
 
 static cpumask_t evtstrm_available = CPU_MASK_NONE;
 static bool evtstrm_enable = IS_ENABLED(CONFIG_ARM_ARCH_TIMER_EVTSTREAM);
@@ -560,8 +560,8 @@ void arch_timer_enable_workaround(const struct arch_timer_erratum_workaround *wa
 	 * change both the default value and the vdso itself.
 	 */
 	if (wa->read_cntvct_el0) {
-		clocksource_counter.archdata.vdso_direct = false;
-		vdso_default = false;
+		clocksource_counter.archdata.vclock_mode = VCLOCK_NONE;
+		vdso_default = VCLOCK_NONE;
 	}
 }
 
@@ -979,7 +979,7 @@ static void __init arch_counter_register(unsigned type)
 		}
 
 		arch_timer_read_counter = rd;
-		clocksource_counter.archdata.vdso_direct = vdso_default;
+		clocksource_counter.archdata.vclock_mode = vdso_default;
 	} else {
 		arch_timer_read_counter = arch_counter_get_cntvct_mem;
 	}
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
