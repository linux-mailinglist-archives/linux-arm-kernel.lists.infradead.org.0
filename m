Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C647452B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2j9T1rrKLHsAq7FYzZ3To3yxuuTGP8zVcB/0qYpK7s=; b=AIpTY3wye4SVFI
	ZM01eBprigF5KbNC412XHlHTNgsC1k/9KXS55ghS9vj6InrCSPiKVFsgXOYD+cKUIueNa75CSWYS1
	ureY8iLk/q+Rr0c6x5+6xuEBioJ3oowg+c5YQMRnBGrInO4DiG1qsDE2b7sYuyPfpsGNIctZzPxPc
	Kb31RXdC02Y0ow5X2hE0p+TX5XxSi+rTgwxWUE0Uz/FaWZp0DwyR2PT7MHCsDEwbltmjvKsbgKY6u
	5g27MsbYa0F2N2GbqqB/iFc6WiJ9rWMs4jK8VwbNBeHFZSxTgibka5GkLHfiFBufHewGXz9yn1rzM
	rEbF9KBkR7Pm1Ae7LSDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbclN-0000nd-QZ; Fri, 14 Jun 2019 03:20:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbce5-0000cj-MM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so385976plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kL4bvpTkIxzXH8Y5LirqPgKQFts/fgCJz2Uk/H1BBsA=;
 b=u+88Jdi7Q2EeMON1v99eEjm9+dO5INKlFqJHoLqKGVOyh3nEcQXjS35XfEJ5A2VEHA
 2I2MGN7Qk32wlEFIVDoAvNMIWA2oa2fapQk441nt2HlgF5Glw/iQBurHguBosW2Lc7kE
 OinAbfXHPRwyDF0uukWdCxCAtavKB6z0DAEZljHgQyVFJeU9ZPuJKcRFdlQ9xL7pNS6f
 r7RJoFG4+NLPymu0kCH6ak1l0U9tGg6Jgo0Ftbtpkpt83EZ62NHHyZiQxxn+IBMOjsXz
 1fQJd8ESeOJ1gaJV/g9qWIQ8aivYfHWco/LFd+4P2r1Ainssb/eNVPTAZkXVvG1HmXYi
 QRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kL4bvpTkIxzXH8Y5LirqPgKQFts/fgCJz2Uk/H1BBsA=;
 b=KIxQliBdCwttLBuDzTFojkWQLkMLomWNf/7iJjoVuEJhUr2fJCiznR1iTtsnEndAnN
 mB+da4Z5tUvGtQkQZjxFvIblCxUD8r7bOXaN04VZkTvWZWXN4LnbRSybaZzIxuzj4fjd
 I2dlwqdY+LlbDkBq3uhvPwud/t5e1b/cqe2elTWxdcGegh9DRHU9A57f5vrwykEtJngz
 z7A+6XvqVZY2TOdnVoqPFymi5iIeM9KmPEPTlUALfB+MzLEe8TkALi399iRMtLvOmk9U
 z5VKw6H3b1kR6V42zEogBXlEHK747eldD2ZA10ABUaW/q+ScTvidLzzrUEp0Ka/dhoTc
 ymgQ==
X-Gm-Message-State: APjAAAW6g0wWEy+ck20/xnaH5Og7/HN/cfm5U19A25q4TDjMe5sgmMP7
 nDVBDMDXXDnSBS1EaTrX72fr6+MZ5O4=
X-Google-Smtp-Source: APXvYqzdS+h3nTBe4+ah+h47lCx5qzIMvTC/Buyw8qV9hj5xEcJCPdt4F090HB7zRNgWQjs9BbQgsQ==
X-Received: by 2002:a17:902:8a94:: with SMTP id
 p20mr71883806plo.312.1560481972488; 
 Thu, 13 Jun 2019 20:12:52 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id b6sm1044511pjo.25.2019.06.13.20.12.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:52 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 22/45] arm64: entry: Apply BP hardening for suspicious
 interrupts from EL0
Date: Fri, 14 Jun 2019 08:38:05 +0530
Message-Id: <f63b1037760ac07b1dab75685d20e32c3c5b8396.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201253_804407_6DCEE12C 
X-CRM114-Status: GOOD (  11.95  )
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
