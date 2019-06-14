Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E03452B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Imh/jYgm5FaNUXYYGGGczw9tY8VCLoJ/RsxoMe84hBs=; b=Lzz+73hVFpC+Eh
	2yjWCfrBZinbRXoSnAz1hva4gCJALJelofp+pZRzoiTZKZUzox9gXHugH365LMAOHOSRlhq9BOp3R
	+DfOiae/kgyHqHJtEtINKnEwSMKeoMax2hZUc29PdTC2jn9rZNnJ1wd4UDodpPEfKNrqu9lbsGYbN
	XjhcGNpN1S1sXTCpCDzCrNnaoP7W5rmCCTw/EAn14iegBbufAn3sR/lxhcwh8BzljCoVEnwXOHRof
	A28I4bbALGpkg1HAqC1hhYbUfIdcaaCq3J2eFs0SbCZ5W1sMqDaBXXzr1UQEwQ2z52YyDRj9aptzg
	fDdQJkKiCnJFGY7DHliQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcl7-0007mJ-3z; Fri, 14 Jun 2019 03:20:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbce2-0000aa-Ox
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so493592pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y6GazOWQm4IOOc6xrMbLHqM6mIdOvxmzg2BIOtMFGqg=;
 b=QEkL+VfUuFHaUPoZrhk6ZT7Pxpl8boNF2CaYbIXPqGr11CT0iqDp494FCeQ9FYUKy0
 k0ubcLU/OTtf72r0prvbE+Pdx5ECXxAEt8TO0W+6j10IaET7QsRQF7sgH6R/FLUnxZxW
 uG1aw0NYax+CHYI1AxUrR+v5etyy29g+yZJe0VgZ/t4zvTsQjLp33CRoLuMo0n3C1zk5
 O4oE8SuXkXi/ufe9/gZVe98tHnfBcXIOQIBlQaSAIvZrdxv0NJFhcKl/Wu/nmZyHU9sH
 U6OblEjWNokjRmkhk3t0y+3HeyI66oGIKcdBgZSypchbQ97DwMOm54PQqRX+uYwxEi4l
 JyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y6GazOWQm4IOOc6xrMbLHqM6mIdOvxmzg2BIOtMFGqg=;
 b=B4R1Mt8qXjntrmnGORiTnmnJkbLj9kflkFD4grT/SwVkl+TvdQD75gANcCc4jxnHDx
 08cjPJWtR/dk+pKpY8BGzN+zeB8v776Yz0lgJZLYw1D8ezSDkI1xj3x++mRjfp6/CUV/
 uHtJagztLfxSAXwk1NKcQT/V5ifrt11GHi+xX+7LpWWZLfQO3WpOT6nLOMlOsMcC4HwU
 KMxZqqqf4DNF06VfJnVrwUFQf3qTdSuqCIVrDFs8HTxemo4ukobEX/s1aX5bkUdwbsgn
 LZV0ZmkNszYfNTvT8M1WjIoDqZnUCpSj2BSsaHFHLtvonkKTz9+KY29V/OWNtehI/HFP
 YZHA==
X-Gm-Message-State: APjAAAW5Vc2pOCXfQ9TSq8nq65J28SL956zdUh32nZTUBj9uJQ6ZlOei
 Nptv012nVwl2/UauTeQ/nDC3OUzhdJA=
X-Google-Smtp-Source: APXvYqxgOUsWsAd7mcooKIc7Hwy2xtxuJhMAqB8tg9mPnQ/kvSAoroLa3roQCVI6rhoA9Gz4GxJ/Zg==
X-Received: by 2002:a65:42ca:: with SMTP id l10mr33032835pgp.181.1560481969628; 
 Thu, 13 Jun 2019 20:12:49 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id s9sm1131106pjp.7.2019.06.13.20.12.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:49 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 21/45] arm64: entry: Apply BP hardening for high-priority
 synchronous exceptions
Date: Fri, 14 Jun 2019 08:38:04 +0530
Message-Id: <342eec766d9748b0c9fb4a5da48220052a5426e6.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201250_871957_A23FABCE 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 5dfc6ed27710c42cbc15db5c0d4475699991da0a upstream.

Software-step and PC alignment fault exceptions have higher priority than
instruction abort exceptions, so apply the BP hardening hooks there too
if the user PC appears to reside in kernel space.

Reported-by: Dan Hettena <dhettena@nvidia.com>
Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Resolved rebase conflicts ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/entry.S | 6 ++++--
 arch/arm64/mm/fault.c     | 9 +++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 05bfc71639fc..42a141f01f3b 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -530,8 +530,10 @@ ENDPROC(el1_irq)
 	 * Stack or PC alignment exception handling
 	 */
 	mrs	x26, far_el1
-	// enable interrupts before calling the main handler
-	enable_dbg_and_irq
+	enable_dbg
+#ifdef CONFIG_TRACE_IRQFLAGS
+	bl	trace_hardirqs_off
+#endif
 	ct_user_exit
 	mov	x0, x26
 	mov	x1, x25
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 1878c881a247..082f385b6592 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -561,6 +561,12 @@ asmlinkage void __exception do_sp_pc_abort(unsigned long addr,
 	struct siginfo info;
 	struct task_struct *tsk = current;
 
+	if (user_mode(regs)) {
+		if (instruction_pointer(regs) > TASK_SIZE)
+			arm64_apply_bp_hardening();
+		local_irq_enable();
+	}
+
 	if (show_unhandled_signals && unhandled_signal(tsk, SIGBUS))
 		pr_info_ratelimited("%s[%d]: %s exception: pc=%p sp=%p\n",
 				    tsk->comm, task_pid_nr(tsk),
@@ -621,6 +627,9 @@ asmlinkage int __exception do_debug_exception(unsigned long addr_if_watchpoint,
 	if (interrupts_enabled(regs))
 		trace_hardirqs_off();
 
+	if (user_mode(regs) && instruction_pointer(regs) > TASK_SIZE)
+		arm64_apply_bp_hardening();
+
 	if (!inf->fn(addr_if_watchpoint, esr, regs)) {
 		rv = 1;
 	} else {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
