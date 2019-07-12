Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218AA66674
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2j9T1rrKLHsAq7FYzZ3To3yxuuTGP8zVcB/0qYpK7s=; b=qenMwpvj1b/F5w
	5NXUIooe6byV5ng7a1ZdG8o66lJHRqpXE+btcD2WeIHkCXL4OTf6DWvwuG9WndGo9tapY3ejT9KnM
	dNpGAEvsbj4TZBwvn+3EHVX/3Qgx9RTxPcXEsFUjRhuL+8i2F9hJ3cAsTyG43r1JC23gKVwIBxxbz
	tb/+/2hZos5rz49BqkGIalLHgh/0yV4wu9QlThCWjWYoYgQcQzfY9dvwpP2MqgaC6nYQG3cPmFKP9
	eGDcNNomsDl9wEQvIaEqHKNrMqJFCIx1WXAttNfzjhJQQy/iCC2KvFOU/Bp8E6ZJiTS52U+NJQV5v
	WzSBUhiblhRvQ+uMt6nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloJ7-0002gA-HY; Fri, 12 Jul 2019 05:41:21 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8L-00021O-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so4204464pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kL4bvpTkIxzXH8Y5LirqPgKQFts/fgCJz2Uk/H1BBsA=;
 b=y9XIy3wTk60NXWrXhru0mUO9/FiIQPREsZdlokiU8JNb99L26GCt/yZIG2IBNB1WJg
 Kn89bWYn63fAPyCXVRrqjeEMRm+D73cSM1bBSF2Fpc+SGlMyBlN3M4u2xYr6pxEiIzLd
 6Gv2JiHmZ5cDQF2BNlHUn62gP7cXHnpLypPt9ePeql3gi7+CzsagsMbfy1H721NCE0KK
 e878J9lQ1hyCCnI1gCkFdRECRGv0ZYVS+qNN5zmgumqJ+IBujvctwv3tIikLMsI0cP3O
 luRcEbquQ0y/S7UTqt9xwzfWjyT42vXfWK8WpJcBNXChxvHVMfw3c9m+up/a1itGbWyc
 DlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kL4bvpTkIxzXH8Y5LirqPgKQFts/fgCJz2Uk/H1BBsA=;
 b=TeWXLPC73IkGf09txaW8Nh7SIVEpkXulj0xVCZNADpuPydcxxKlTikTc+FPaJK4fqP
 kttRX3/tsncsj9V9XSLftdK/9Ed0iHifNhPPuTH6vzo1ZxtD6l/opDsrwEZUg+AJ9jbi
 jYUoGKc4P2/bCYGyqlqAb1NapJVLRRQHaXi0OQbewV70+0fzkku6W3wxJJzxY2IALLZ/
 r7fZQtHfuCNlKmbXHDiQxdpRD+XBCRTeJKCUAKvQu+oFVpUWHmrn15DojyVZAu36SI26
 3bdqDEbiqXNmKaZJX2hoLNK7+cT1p3ppKLXG+GmgYtQGSM3nZ1hHLurkHbwitddoFGB6
 jHOA==
X-Gm-Message-State: APjAAAUMWsiPZt9EN5JEDOpKtBZ6E+0FEP/MehUMe1c2iTqSCQnOKm8B
 hjwyYJ+6CVPUAjGyEhXCJb5BNQ==
X-Google-Smtp-Source: APXvYqzy0Q8kC5lDn5f+LWPOQ3X16InC9Bmxkp9LXrYgrQcOEwOOR/Ct+HvmAvFdZA9kTRN4QO1GRg==
X-Received: by 2002:a17:902:4c88:: with SMTP id
 b8mr9462899ple.29.1562909412745; 
 Thu, 11 Jul 2019 22:30:12 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id m9sm14607083pgr.24.2019.07.11.22.30.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:12 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 27/43] arm64: entry: Apply BP hardening for suspicious
 interrupts from EL0
Date: Fri, 12 Jul 2019 10:58:15 +0530
Message-Id: <5de9501d4e24fe45bb5938c4eacad6ab56b1ae55.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223014_064891_FE128AA6 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
