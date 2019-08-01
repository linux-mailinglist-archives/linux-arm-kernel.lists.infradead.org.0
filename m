Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ED37D797
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGQfTibfZS2bd+OMm5YUAkx0U13YfdFUHfqOp7uMM8o=; b=cBAsRMjYyyYhWg
	ahgdodOm61BIJNvqqizRorCAR3e6Hqy0+Nz9NHnbAzEh5Kujrf0rGUNdIJWfLubqYCi1/1yCRelzg
	I5/tBRv5qVIOphI3JXPSRB7zG4Tq1jp3ULroFx4p4Chqg+bJRTWjbbhm+tmrfQhaw+XPybDKae1rX
	9mtP3fqqRJLU+iuj0/YZSxfBrNQHlH6TwEpZ6vO4DpcgTfX9pKPmnCDQ468eLJjHzWTv7i3Y5owzJ
	yHtqQPeaqQfoDovWQkiTRn3Ki3bejSWu9IahvPGOZJUrCj2tOuO4mbWbdQd/4B6U537UW0zlmLpwD
	Dt/sgxfiPW6GWxWkpapA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Rf-0005Sl-Jy; Thu, 01 Aug 2019 08:28:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Ky-0003gk-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id y15so33617444pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bD+Nn9yJj6UL1BxkfmyNVyFE/Bkgh8dLgfivcvvulBg=;
 b=ANFP8g1p8JFQVKTJYFx6Vw0TW4voibG5DCIASdhkve+IYqSbpJ4pf1CPI/gRJ9yt9S
 Exd2NJ/005eJrvN/yD3fqP0TfCskg40yqFmckXx7hep+VMMYb4kaUeqZgNxjwXXFeGLC
 O3Ushag+gGUFO2uvKX4/gXf4FklbrwOHxejkTxQhoge9Yh0YBa9qCcs7TDt/NyGFFi4o
 gTbulqNmF52VLHNlryHUkhlrggT41FV0BmdZM6Tsypos2QcAO39GpCKgBwmqbDroqaal
 K618LSh+GSZQjXSoXrvv+ILwOFzCzenhlRDr2gjgi3/ik+gpk9I1T9beafOOAiHqpqDx
 BioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bD+Nn9yJj6UL1BxkfmyNVyFE/Bkgh8dLgfivcvvulBg=;
 b=SMstGhJScO8O6pAdV4aReuYe6xRLuziNyulKhbwRlQfblkZQdXLisWKwTDoyTh6iHj
 WKHM7ymz6ce0Dcvl08epCA3qxw7BmujFqU0SFUaVSgk3K0NwRLpKwmgPztcJ+sE2kAGR
 3LT6yvUTeRZGcCmNU31ovBmbJx1+nYbIH17Dmwm6E98kgn1h6/r6kbtneongRCPmSpPR
 qhBTltgq522C6v/Ds8XgRRV0v6nOZJMpVv1bRoeJrEClRc+Hwju/BHzYWNxDANB1+wAW
 nkcu21LjnLRVv4ijWQ67QqjCNdWffHHRGOd0GYux/VdIdV5DvSxVtNpGie8l539ovWHq
 NVGg==
X-Gm-Message-State: APjAAAWxer1xpZa5erDgI0QJ77ab+TTqo0bDD26jx0uwbeJ/uy7E6pA+
 l8o0vgizO38Z4C1h3IINqyE+pg==
X-Google-Smtp-Source: APXvYqypoB0dNvIfWnZO4fN9gYvd+RKBGHdAxLgr2a8Ae+fHpzOWFZr7WBaSVZCjI7TMwOfX4wnj9g==
X-Received: by 2002:a63:e20a:: with SMTP id q10mr115552737pgh.24.1564647683731; 
 Thu, 01 Aug 2019 01:21:23 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id p13sm6487461pjb.30.2019.08.01.01.21.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:23 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 42/47] ARM: add PROC_VTABLE and PROC_TABLE macros
Date: Thu,  1 Aug 2019 13:46:26 +0530
Message-Id: <888892dc104d817f590058687946b7f6078d328c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012124_445746_FA91BCEF 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit e209950fdd065d2cc46e6338e47e52841b830cba upstream.

Allow the way we access members of the processor vtable to be changed
at compile time.  We will need to move to per-CPU vtables to fix the
Spectre variant 2 issues on big.Little systems.

However, we have a couple of calls that do not need the vtable
treatment, and indeed cause a kernel warning due to the (later) use
of smp_processor_id(), so also introduce the PROC_TABLE macro for
these which always use CPU 0's function pointers.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/proc-fns.h | 39 ++++++++++++++++++++++-----------
 arch/arm/kernel/setup.c         |  4 +---
 2 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/arch/arm/include/asm/proc-fns.h b/arch/arm/include/asm/proc-fns.h
index 19939e88efca..a1a71b068edc 100644
--- a/arch/arm/include/asm/proc-fns.h
+++ b/arch/arm/include/asm/proc-fns.h
@@ -23,7 +23,7 @@ struct mm_struct;
 /*
  * Don't change this structure - ASM code relies on it.
  */
-extern struct processor {
+struct processor {
 	/* MISC
 	 * get data abort address/flags
 	 */
@@ -79,9 +79,13 @@ extern struct processor {
 	unsigned int suspend_size;
 	void (*do_suspend)(void *);
 	void (*do_resume)(void *);
-} processor;
+};
 
 #ifndef MULTI_CPU
+static inline void init_proc_vtable(const struct processor *p)
+{
+}
+
 extern void cpu_proc_init(void);
 extern void cpu_proc_fin(void);
 extern int cpu_do_idle(void);
@@ -98,18 +102,27 @@ extern void cpu_reset(unsigned long addr) __attribute__((noreturn));
 extern void cpu_do_suspend(void *);
 extern void cpu_do_resume(void *);
 #else
-#define cpu_proc_init			processor._proc_init
-#define cpu_check_bugs			processor.check_bugs
-#define cpu_proc_fin			processor._proc_fin
-#define cpu_reset			processor.reset
-#define cpu_do_idle			processor._do_idle
-#define cpu_dcache_clean_area		processor.dcache_clean_area
-#define cpu_set_pte_ext			processor.set_pte_ext
-#define cpu_do_switch_mm		processor.switch_mm
 
-/* These three are private to arch/arm/kernel/suspend.c */
-#define cpu_do_suspend			processor.do_suspend
-#define cpu_do_resume			processor.do_resume
+extern struct processor processor;
+#define PROC_VTABLE(f)			processor.f
+#define PROC_TABLE(f)			processor.f
+static inline void init_proc_vtable(const struct processor *p)
+{
+	processor = *p;
+}
+
+#define cpu_proc_init			PROC_VTABLE(_proc_init)
+#define cpu_check_bugs			PROC_VTABLE(check_bugs)
+#define cpu_proc_fin			PROC_VTABLE(_proc_fin)
+#define cpu_reset			PROC_VTABLE(reset)
+#define cpu_do_idle			PROC_VTABLE(_do_idle)
+#define cpu_dcache_clean_area		PROC_TABLE(dcache_clean_area)
+#define cpu_set_pte_ext			PROC_TABLE(set_pte_ext)
+#define cpu_do_switch_mm		PROC_VTABLE(switch_mm)
+
+/* These two are private to arch/arm/kernel/suspend.c */
+#define cpu_do_suspend			PROC_VTABLE(do_suspend)
+#define cpu_do_resume			PROC_VTABLE(do_resume)
 #endif
 
 extern void cpu_resume(void);
diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index 5aa9c08de410..13bda9574e18 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -625,9 +625,7 @@ static void __init setup_processor(void)
 	cpu_name = list->cpu_name;
 	__cpu_architecture = __get_cpu_architecture();
 
-#ifdef MULTI_CPU
-	processor = *list->proc;
-#endif
+	init_proc_vtable(list->proc);
 #ifdef MULTI_TLB
 	cpu_tlb = *list->tlb;
 #endif
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
