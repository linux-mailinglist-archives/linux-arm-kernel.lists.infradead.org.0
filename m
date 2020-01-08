Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A79134B08
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kql5LVKSXq4fdpEQycE88gi4In78BACbe7oRB4FiIjo=; b=Y2EmzNiRnh/PEUkFeUNRXtlqQd
	9aShC6z9dHGQIk10GretDGpvAeLqWlaS5h/0fifv4HQW/sKz1QZXRM4e8UHc3l+djxxc2S6FZVzhx
	ILIDpZ5pI0d1capaAHEy0ynveO6v3JXZPFnu/WDn8KeN0VG6YqF9imct/HTwXk/OlB/5W1Q7movwI
	uYSTnVxlR+kJ3se0SVriYYxAhVseeXnSrQsF9E9TdAa8rqxSEJ/PVSZ471tOlRI4/HTGtunoRMQfI
	SgbO0HDbBI69iHC1MNEfwFMpw3Hsa7+vJAXq6i4vRySc5jkmro5c5+/AkwBmgpy2rMxAtyDdeWMyf
	vBRN9VRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGWH-0007cS-09; Wed, 08 Jan 2020 18:57:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVh-0007IY-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:56:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DA98328;
 Wed,  8 Jan 2020 10:56:52 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EE0303F534;
 Wed,  8 Jan 2020 10:56:50 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 01/17] arm64: entry: mark all entry code as notrace
Date: Wed,  8 Jan 2020 18:56:18 +0000
Message-Id: <20200108185634.1163-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105653_216753_D54D42B8 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Almost all functions in entry-common.c are marked notrace, with
el1_undef and el1_inv being the only exceptions. We appear to have done
this on the assumption that there were no exception registers that we
needed to snapshot, and thus it was safe to run trace code that might
result in further exceptions and clobber those registers.

However, until we inherit the DAIF flags, our irq flag tracing is stale,
and this discrepancy could set off warnings in some configurations.
Given we don't expect to trigger el1_undef or el1_inv unless something
is already wrong, any irqflag warnigns are liable to mask the
information we'd actually care about.

Let's keep things simple and mark el1_undef and el1_inv as notrace.
Developers can trace do_undefinstr and bad_mode if they really want to
monitor these cases.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 5dce5e56995a..67198142a0fc 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -36,14 +36,14 @@ static void notrace el1_pc(struct pt_regs *regs, unsigned long esr)
 }
 NOKPROBE_SYMBOL(el1_pc);
 
-static void el1_undef(struct pt_regs *regs)
+static void notrace el1_undef(struct pt_regs *regs)
 {
 	local_daif_inherit(regs);
 	do_undefinstr(regs);
 }
 NOKPROBE_SYMBOL(el1_undef);
 
-static void el1_inv(struct pt_regs *regs, unsigned long esr)
+static void notrace el1_inv(struct pt_regs *regs, unsigned long esr)
 {
 	local_daif_inherit(regs);
 	bad_mode(regs, 0, esr);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
