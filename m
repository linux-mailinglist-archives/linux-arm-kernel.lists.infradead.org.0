Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365B0A191C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2j9T1rrKLHsAq7FYzZ3To3yxuuTGP8zVcB/0qYpK7s=; b=W4sJapMvMcaJ57
	I/5ZWZqULxWzlZoDFgt11ThLFDzgCCDm7Y1ixx5Yj76rpae9Qth7FMzo50O3oOvua5ZQe+orrRaWG
	ioxbMuEs1SzW353NfXpBk32SJtxfqsCCUubrZjyUO6YozqotpQvI2xMZJFAhY/e5/UcgVmgcsbcSf
	LqRAfyABFZEfDHZ/gDBzI3gBHRtn6y6auljGQCRihJcDPqhoxSq3VunZvUKqqGYH7LwRjO75LWTP9
	pXYEiZcOl5Wj8LQRuug5KGW7omP5ufCxQBjHBt7q89n/Q31w1bukerfBwL9yRrOG6+bbXlHO1FSaN
	pBfwkVlIiDFsODYeDMow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IqI-0005XB-KH; Thu, 29 Aug 2019 11:43:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iil-0006yJ-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id az1so471676plb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kL4bvpTkIxzXH8Y5LirqPgKQFts/fgCJz2Uk/H1BBsA=;
 b=uQR2nK9Abh6tvSTERRD5xBq9uwIxsZobXq4VEfEob3EK6BxdIufTOc5Wx3Y/FVU4uc
 JWR1NrqBH7lUEVzldljV3kwsB+S09nQFWAzzaR3VX9uxPnRn8IXDKjrv2CwTLnMaYHYb
 /Oz0Ek425YEemXc/7qOYG6eSOdf2MaBTXINhNAnGlqFpjO/CPx6xeW4x0phOm4w4AAnU
 MhjlHro4CJmTRlEKwdlqXVEI9OZZvBTPuJbLamLy9gPjCo8VToC1yGgADlXvtZjfOZ+b
 io0G7yJ1Xb4O27IQJpP/v2qJpHKzTFev0xrvzTrIGNbhswhr+mNOJcu8WS95sQRWCZb8
 blkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kL4bvpTkIxzXH8Y5LirqPgKQFts/fgCJz2Uk/H1BBsA=;
 b=t0spP8YvRgy9Mx966inLcxsbvyIO2adtzYxWKkjcK315yKjrRjthxhq9cSochJ7A0z
 YJRUBKyHLDajeywLVfGHSs7fHjcjDT9enfVi+fKsxXj3Ai4HcGVyh6OxPtAuOaMQ/2fG
 p256SiQxzszPQUIMeQiirX5FT4+x0Us8nCExfU4tD0mVNXrqI/jU5HvXssAN2I8X2XS7
 edFjJ98Zlj3yXxc3Fs85WNNPGZ/mSRk8E9ceoWPfzAOx8TbqfxwoTofb/x4lpVf9nwfc
 KyIWZ3Nz4sdN7VH7sp1zd7tiZ1mssinpDiIM4OPc5cLB0fMlnDwMmJ8OdsAY0uPpd/5p
 oIlA==
X-Gm-Message-State: APjAAAUiLGxWCKORrUCxsxHaTAeA0CU6kBWX4n7CVY4eQiJ8dgoql9Zc
 27EGQ6uZMSGGfkc8q1uNlbhXOA==
X-Google-Smtp-Source: APXvYqy8YFh1mdMBf+OANfN4ae8Bqd8t4rFFIx82JCvQqRVm6LVGN3pK+l2vSa6Ykosu0quhrTgqxg==
X-Received: by 2002:a17:902:7c8b:: with SMTP id
 y11mr9687584pll.259.1567078567353; 
 Thu, 29 Aug 2019 04:36:07 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id g14sm2587953pfo.41.2019.08.29.04.36.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:06 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 28/44] arm64: entry: Apply BP hardening for
 suspicious interrupts from EL0
Date: Thu, 29 Aug 2019 17:04:13 +0530
Message-Id: <16be0cb9c5bbcff5cfe74cf8d47c5a4084e45b5e.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043608_479331_596B8EAB 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 30d88c0e3ace625a92eead9ca0ad94093a8f59fe upstream.

It is possible to take an IRQ from EL0 following a branch to a kernel
address in such a way that the IRQ is prioritised over the instruction
abort. Whilst an attacker would need to get the stars to align here,
it might be sufficient with enough calibration so perform BP hardening
in the rare case that we see a kernel address in the ELR when handling
an IRQ from EL0.

Reported-by: Dan Hettena <dhettena@nvidia.com>
Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/entry.S | 5 +++++
 arch/arm64/mm/fault.c     | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 42a141f01f3b..1548be9732ce 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -582,6 +582,11 @@ ENDPROC(el0_sync)
 #endif
 
 	ct_user_exit
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+	tbz	x22, #55, 1f
+	bl	do_el0_irq_bp_hardening
+1:
+#endif
 	irq_handler
 
 #ifdef CONFIG_TRACE_IRQFLAGS
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 082f385b6592..9ff48d083c4c 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -535,6 +535,12 @@ asmlinkage void __exception do_mem_abort(unsigned long addr, unsigned int esr,
 	arm64_notify_die("", regs, &info, esr);
 }
 
+asmlinkage void __exception do_el0_irq_bp_hardening(void)
+{
+	/* PC has already been checked in entry.S */
+	arm64_apply_bp_hardening();
+}
+
 asmlinkage void __exception do_el0_ia_bp_hardening(unsigned long addr,
 						   unsigned int esr,
 						   struct pt_regs *regs)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
