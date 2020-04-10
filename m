Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52281A4BEC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 00:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL4tik2J0VvDuOvTzdTPIOvLP1gFeuYFNSoPkJI+EXI=; b=NcQtx2h9fntJy0
	iJZ6+/FWZ39rdCMvyYzcZOCG83y43R2wI2RBUlY4cqDxU+65fT6Knsl0ek5BuG68oaftz+cmFvF8l
	RLoa59lKpXGFKWQ/6wxbZOcN6S1i6fbDLF9PrjH/6L8a1GAQLt8/e6m0rLek4+o9L67dx9Vj+wB/V
	rh3ear9+IcX0dpv2rXtVkpDgYu76Ul09DNrCi5wKUTu5gALG43Xwm8hMtMzpHh/N/N0MoKSBN1H8m
	KoPfhFyFxpvP166809I4wABF/kdq+ru0dHSDhmTnl6SDucaeKnauhYVflELigI9jt5S8OhW8gObuj
	IdBRiMs3FmAGJOhrWLlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN1yz-0008MB-61; Fri, 10 Apr 2020 22:18:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN1yi-0008FR-BE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 22:18:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id b8so1587763pfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 15:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CZZEM8zHHOknPexrydpRDd/A9CQLDTcTBB/h6CZWGog=;
 b=MHVBt2IgYBHTrCspWPShthhQT2kgu3DTNXdNJ1SxGgeVa03KjExi/dMeSMRHGaJdBF
 1p3ePEadxFcV6QqbZ36oZK14lCUlZNgl2kPD3ebHFSZcvqkFhYH0VjcCJqr93VAPe8uT
 j7Da9ZUPKDBWAEhTiKChsUDHTMtz43rVDMmcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CZZEM8zHHOknPexrydpRDd/A9CQLDTcTBB/h6CZWGog=;
 b=LlYnJ39hkjcfSgqfO8cARpoZq63obQ7IQK5GCrwu9+MCi5DyN53MOrA6NGcakfb5k+
 TukOlbwe9RGg/JS3f3rfs05yO193lC0BY2Mj4JBF7urmNsKJz3E+gL/lSylN0jSSTF6z
 jlJwH2Y1qdhJSRzRBakfn7YbP76uik2mL1Vg/odifWuzNrumMGUjfZe9FyCb8uUg/Ntc
 A82WwN3q4I0wbuwwoP0ERZmtsGnGePpRY3Rkl8y7m+hD/8PzYlewvBj6jhdj/Nn+Ghfz
 rR5GlkupjTkhGvhZpMOK70OZ7nbYKlPmUUe9uQNqrr9f1JP5yoeveVFA7ecifU1hmaaQ
 DrTg==
X-Gm-Message-State: AGi0PuY7QChJGke79UKeilQpJ/Df4z16qbFMq7anntsrqLzkRLrNWrbI
 b4TJjx93qkjmD1Bny7jmnsORZw==
X-Google-Smtp-Source: APiQypLhHe1XgDyD7hEM5rJRm4fgDerRzQjGoAI4i0QzlEiG6qpgXUajRyIDJPscAh69ZecWUlVENQ==
X-Received: by 2002:aa7:9148:: with SMTP id 8mr6898973pfi.70.1586557103438;
 Fri, 10 Apr 2020 15:18:23 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id x2sm2646600pfq.92.2020.04.10.15.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 15:18:22 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: jason.wessel@windriver.com, daniel.thompson@linaro.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 3/7] arm64: Add call_break_hook() to early_brk64() for early
 kgdb
Date: Fri, 10 Apr 2020 15:17:22 -0700
Message-Id: <20200410151632.3.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
In-Reply-To: <20200410221726.36442-1-dianders@chromium.org>
References: <20200410221726.36442-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_151824_406462_0D3F74C2 
X-CRM114-Status: GOOD (  15.11  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, hpa@zytor.com, will@kernel.org, corbet@lwn.net,
 frowand.list@gmail.com, jinho lim <jordan.lim@samsung.com>, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, jslaby@suse.com,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de, tglx@linutronix.de,
 mingo@redhat.com, Allison Randal <allison@lohutok.net>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to make early kgdb work properly we need early_brk64() to be
able to call into it.  This is as easy as adding a call into
call_break_hook() just like we do later in the normal brk_handler().

Once we do this we can let kgdb know that it can break into the
debugger a little earlier (specifically when parsing early_param's).

NOTE: without this patch it turns out that arm64 can't do breakpoints
even at dbg_late_init(), so if we decide something about this patch is
wrong we might need to move dbg_late_init() a little later.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

 arch/arm64/include/asm/debug-monitors.h | 2 ++
 arch/arm64/kernel/debug-monitors.c      | 2 +-
 arch/arm64/kernel/kgdb.c                | 5 +++++
 arch/arm64/kernel/traps.c               | 3 +++
 4 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..2d82a0314d29 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -97,6 +97,8 @@ void unregister_user_break_hook(struct break_hook *hook);
 void register_kernel_break_hook(struct break_hook *hook);
 void unregister_kernel_break_hook(struct break_hook *hook);
 
+int call_break_hook(struct pt_regs *regs, unsigned int esr);
+
 u8 debug_monitors_arch(void);
 
 enum dbg_active_el {
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..59c353dfc8e9 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -297,7 +297,7 @@ void unregister_kernel_break_hook(struct break_hook *hook)
 	unregister_debug_hook(&hook->node);
 }
 
-static int call_break_hook(struct pt_regs *regs, unsigned int esr)
+int call_break_hook(struct pt_regs *regs, unsigned int esr)
 {
 	struct break_hook *hook;
 	struct list_head *list;
diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 43119922341f..96a47af870bc 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -301,6 +301,11 @@ static struct notifier_block kgdb_notifier = {
 	.priority	= -INT_MAX,
 };
 
+extern bool kgdb_arch_can_debug_early(void)
+{
+	return true;
+}
+
 /*
  * kgdb_arch_init - Perform any architecture specific initialization.
  * This function will handle the initialization of any architecture
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573..a8173f0c1774 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
 	if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
 		return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
 #endif
+	if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
+		return 0;
+
 	return bug_handler(regs, esr) != DBG_HOOK_HANDLED;
 }
 
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
