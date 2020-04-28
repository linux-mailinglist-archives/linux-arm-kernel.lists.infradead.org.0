Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3A71BCE65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVYt39NtM9BfHqae0uGEUNCkN9cfTTpAZSnx3+QeQds=; b=i32ZfqTdap8ndI
	qWfs1Wzjy3BwGpGKcHfPd9scK7l/yH+UruhAbu1cEgO68vGxeWCENnYaee4K2iFvT8M2GrdgURtjT
	OcRyoxZTiFe3KhYm09Q4S6qQFQJznh5STisE96wBxpq6y/D8uWDq2e+bp/iobAW4iCfamn49siQHY
	XgvSdP42XAyMZZcD+tcuyWcwYzfDAlmrCdhCgGYs2ntDJmOW2h3HXdK8fCWlZpzLDXdC0GGqcU9JD
	Kc8lQHZBSrelvxqoFn/jDI3EB1mzLRGFNZsLUbeVNhVo2vq7qL6uFPlooGo6UoaXC/qRTjl7snQ9i
	lmz8TZkOL/FjBL8cNv5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXZ3-0006Fg-AL; Tue, 28 Apr 2020 21:14:49 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXYg-00067m-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 21:14:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id mq3so61561pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 14:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JZmkueo9bTgmb3PydH64E/vdUILQ0LUamDaAt5MylEk=;
 b=NhZmIu4KEqUSDa/E+bo/5joJgDeITf/iXWPe9alloMIQ6fDCSGwu+3cLqwlZVdQ15e
 /+/0jACKvFQqBmuUk4OKqh074PQSR7z5Bh7WGcKq0S3IrqNrc8w7oebIsxOOaX/saVgP
 6SXl2o1kZH8RxKpkPmMPqM/5pj+j24CowDnE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JZmkueo9bTgmb3PydH64E/vdUILQ0LUamDaAt5MylEk=;
 b=L3+WJVZeuB19crCzMK3lVH9Tn4pWHJdHrof2Pr50I97Ta8y6YPkmytLL9UDSDt/7TI
 hqNhsw2NPHttIVvJifr/u6gYkfGDPRj3m/iyzqNwByCQW6Xkg+eZIZDaTJZSpqDLUF8+
 byYlOZQANyv04R5DBkFYg1zRzT49t3VTtlZuWzaEDi8CrLsEeReZRKf3JkSHoLiP1nnr
 hT7pvMaZUmoAln/FBUjeHao2tn/v9QvOsoRTcBJ04OPv9phjBrqFn4ZrCDQszkoeihdd
 qAM8AsjFtgb+5v3RNx+0o4Ji2i7QPG+YY75D0hkq0z5usTkguqGkahPou1To/QoPccCD
 53nw==
X-Gm-Message-State: AGi0PuYJ0nVyO4uCXHwLIRxjExSJYeiJpmL0fmKIONOfd3Jw0NdwFLKn
 twpo4a7YBV4vC74nRcH7WoLZNA==
X-Google-Smtp-Source: APiQypLXRGV+isVLx1JvZmba80LFp7Hwc/rmCh06E1Odz6fwodjwu5doMa5whNEyqURs3sIQW/icgA==
X-Received: by 2002:a17:902:9697:: with SMTP id
 n23mr3755091plp.150.1588108465622; 
 Tue, 28 Apr 2020 14:14:25 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 18sm2988202pjf.30.2020.04.28.14.14.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 14:14:24 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: jason.wessel@windriver.com, daniel.thompson@linaro.org,
 gregkh@linuxfoundation.org
Subject: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64() for
 early kgdb
Date: Tue, 28 Apr 2020 14:13:45 -0700
Message-Id: <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200428211351.85055-1-dianders@chromium.org>
References: <20200428211351.85055-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_141426_302365_11DEA7C1 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kgdb-bugreport@lists.sourceforge.net,
 bjorn.andersson@linaro.org, hpa@zytor.com, frowand.list@gmail.com,
 corbet@lwn.net, will@kernel.org, jinho lim <jordan.lim@samsung.com>,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, catalin.marinas@arm.com,
 Dave Martin <Dave.Martin@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 jslaby@suse.com, Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 tglx@linutronix.de, mingo@redhat.com, Allison Randal <allison@lohutok.net>,
 sumit.garg@linaro.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---

Changes in v3:
- Change boolean weak function to KConfig.

Changes in v2: None

 arch/arm64/Kconfig                      | 1 +
 arch/arm64/include/asm/debug-monitors.h | 2 ++
 arch/arm64/kernel/debug-monitors.c      | 2 +-
 arch/arm64/kernel/traps.c               | 3 +++
 4 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..08a736175d2d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -13,6 +13,7 @@ config ARM64
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_DMA_PREP_COHERENT
 	select ARCH_HAS_ACPI_TABLE_UPGRADE if ACPI
+	select ARCH_HAS_EARLY_DEBUG
 	select ARCH_HAS_FAST_MULTIPLIER
 	select ARCH_HAS_FORTIFY_SOURCE
 	select ARCH_HAS_GCOV_PROFILE_ALL
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
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
