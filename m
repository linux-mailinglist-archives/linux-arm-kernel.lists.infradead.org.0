Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C1266673
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Imh/jYgm5FaNUXYYGGGczw9tY8VCLoJ/RsxoMe84hBs=; b=Cphh6PenYVJKdw
	xlbniHAiWZTpi+7udkig8U3G82jV6YAsU6ta9pLSDzo6C/yoBmGCURFRrk1RgPL+ilArxfkEXm7bJ
	/lbqhzP0zh+eFVQcKps74U63Wj+kxSbZcWpckPrPWsQzhY1LviY9//duKhiV5qDfGKfyVnUstghsC
	vM7SKnamhDo7PA9My14OTt9V9ZrePNIVGmVRJg1ueUH3wGDkXhUGRY4elgg4Ut6zUmpZc4v7rxqHh
	WNxsT4PTp/4z/odPNLPy2Il1Zhs4dKnY412lDulFp9k908DkB4Z5un/HBAipK+Y68lIFDHofZj5lP
	AFGzOGny0unIgPNrWs3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloIq-0002RX-2p; Fri, 12 Jul 2019 05:41:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8I-0001lc-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id m4so4011675pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y6GazOWQm4IOOc6xrMbLHqM6mIdOvxmzg2BIOtMFGqg=;
 b=OLl7bCKkpQB7HHEvi5BkF9G+nxhlHneSx/wcuVyx88Sh/2izv53KLpprn3OrcBdfxf
 rNFg7nrxIOlioyjKCxApisfUbELSBwZr8FRiz6ewJdbT5hEqRNMDqiss40SoU3mVFwRE
 c7SHuTjanEBu6AvXHj5GaCr7Io8wfrkPSE4NMD+LYrslHYcbLWIxj33eLl1x2SHE9Rzg
 RspIACQBzsDAu1P66ipaqShi11/DUXGPE+snfgWs+qLy9xumg4gra08TS7YU5fmNVtyc
 /Hqz4YLE9XVKKW6iAj9x8RrphBBu5/8GHIGeo8zNwQswhWG/JdJGSfLa9kEfhisnk4g5
 sCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y6GazOWQm4IOOc6xrMbLHqM6mIdOvxmzg2BIOtMFGqg=;
 b=Vysz6Ge3Y8A6GnNiwTyE8OPXJ3f985iFqs5X9hGRUDKKMTllr8rA6C9TFzgZGWZ+Yq
 JjPVK9yDrvWO76/98v2lmqmdV2jIaTJ6Mc0Oqvmm6NQ3mmSwLg2dQ8MIKNPdPtRg/AGb
 nZDdLtX3NNQ1WgYkwpm1f5Jl3YVejIt8VGx3tbs88xpyC/zqVX9B/j+1kFDk26JZ82x1
 QtwBJhT1MZGHxniinY46Zzf3mEOcpMMqiwQ6VgW6BS1/15Nl/x51fvJOEggv7qhb3CgK
 neOh+/DsxKOYcw/6C/IrqopgmVkiavEazLUt9ReNXm/GE653heHCM/wJxleZLjqbGGIY
 CRGQ==
X-Gm-Message-State: APjAAAXT5OqpkzwDFoKgwYoFGnYxfNW0FPhovJIkb48uzt2WBPQayxrK
 RAgeViymyF51D1e9BVOduzIB/Q==
X-Google-Smtp-Source: APXvYqxojursbgsW2fF8uCH3rz1bfklhCeKLFXa/j5LLKnYLrY6bWEHrOrCcvAp4HzMnygSuWGZdaA==
X-Received: by 2002:a63:6fcf:: with SMTP id k198mr8542676pgc.276.1562909409883; 
 Thu, 11 Jul 2019 22:30:09 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id o14sm6910270pjp.29.2019.07.11.22.30.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:09 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 26/43] arm64: entry: Apply BP hardening for
 high-priority synchronous exceptions
Date: Fri, 12 Jul 2019 10:58:14 +0530
Message-Id: <3ce1670e749b99ec2ce2fcee330b06c65bf71474.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223010_799502_9E96A92C 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
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
