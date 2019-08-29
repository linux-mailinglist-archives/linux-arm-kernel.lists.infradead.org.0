Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F43A1919
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Imh/jYgm5FaNUXYYGGGczw9tY8VCLoJ/RsxoMe84hBs=; b=ow6hkE45PBQWZj
	momvHb4uqi/cQBzJRlE5or470nFViK0v8yid4xDm+u1OFOwMFOOOHBr2XwWwD30aX+d+EgWYvXXHT
	8FukKMWLmO3vN/sGRVIpo0l36+8eWg++aS+aeWobB70pfwGXTIw1z2eqZQAnYZogv5jYdqqcSZYRL
	4zyA+8DZh4C5bnUh1zDSVQKEnjg136sYpV/iKgcYz/keSgNvZNJ6xGnKJM7FZ4nNMKptLpbmOlw6i
	8TQ1mtd9DTIdrbSByGrkGRlYP814n+RXZ1ZYJgtwK+KS+SDm4aMnZUxE2vGeQLKgg58JoMi63Vz8j
	qAZwfbi2xH0h1uduBE8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Iq5-0005JK-Dx; Thu, 29 Aug 2019 11:43:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iij-0006wg-CG
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so1437197plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y6GazOWQm4IOOc6xrMbLHqM6mIdOvxmzg2BIOtMFGqg=;
 b=LyNvyEL50rTrdkIjipcrLCUtIh4hp0sPiDDZNm2ss9LdOgbQO2Z5KQJOoEpkvAXgJp
 2QpodfuPyGGaNRQadqdv3j4PfCLK26hknY1obYrHuUurdxwNueTidXsjcit+3hLKtwUU
 YJlmFFKYU1L5PDFxZLaGsjkMsWjdNOHI9EBneFPah8x5LtE4AejBca8qWlYGVNSlThKx
 ni6xB0phzYbDpMgrCZkMABWszq7FpzhMhJTOv8FHHzGtpsLIE82jHJ+YifCYESWcpIRk
 l6ayd71M7UMDayZrv68qBPQeQtbsYENCskRHqqVefLjRudwLeNUS4vpNxFHaYW0av0Wo
 zolQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y6GazOWQm4IOOc6xrMbLHqM6mIdOvxmzg2BIOtMFGqg=;
 b=WL+m+g2gPcaVBJHrrC1NcIWKZcY90mtyAsiQvxyLm0P+SNKL3w6chVFhQ1s6doX+0m
 a9+O5kszLtwhMS9zap1HJwUcY5+dtrJxSHIvsPtInvao+ms+lX/dyZQbBcYxZ5wh6AR2
 /JVO9IpOqPdQQP5YdFl1CyxS3DEVJuA6boMaw97eSXo/gLgAuxXnpwPiZfYXAJIDtayl
 9rm3JAVdOI0qUySUUF6xLRWKsofQOAtoSX6thFSMD8BJJ6kYQLfvoDRmIp3B3+T6wD6d
 a6OIYAjv0tn2ndKIfxdzgjpyGpSXxis29sZfYFmspdoeVWbsvU9FyNseVSjk0dXIq4a8
 0fBA==
X-Gm-Message-State: APjAAAXIITgC3HZ2TGVE5VfbAt6j187O1XJg/by7kCpGnShnvX45KZiq
 8I0u7V00Hy3daKnfL91lnM+lmg==
X-Google-Smtp-Source: APXvYqylU6VlJeIPHMWviGMFk9YcyO6Wnq/64uLquncZiKttj/4gMdRzMRgHYQuDzEEIjF7963d3Tw==
X-Received: by 2002:a17:902:fa5:: with SMTP id
 34mr9509568plz.285.1567078564877; 
 Thu, 29 Aug 2019 04:36:04 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id 4sm3138639pfe.76.2019.08.29.04.36.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:04 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 27/44] arm64: entry: Apply BP hardening for
 high-priority synchronous exceptions
Date: Thu, 29 Aug 2019 17:04:12 +0530
Message-Id: <711165f3d8dce609dfb777b3705fe1b58ca237cf.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043605_540274_9CCD3F61 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
