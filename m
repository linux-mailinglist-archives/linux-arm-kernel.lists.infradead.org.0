Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C338BB4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3lsuflgVU/8iPnJl3LjBYKMGbd5qDd+YQCFD7gj7OAE=; b=UWaskt22ls9QDVUFh2RNQHtzG5
	0fn19Uc9cc/CL4E4JMCvDbPKso75I2K1vXG3iy1JmgntKVQaXzMMJyYbYFWyOhkSfeH5jf860z1ar
	tDpHVeLtLtxJng6tjNS/jIRzBMaaEz+Pm7tdLmpuMb5FlMCozUxg0KsKmSt5q4CoZY+QPU8v8Ey89
	TK2xCV9yvAU4bSxOiGjmTps9JuQpIX0vctgqIT1qG8hf5soexYrWT6fh8XjYcbMjSsyz2cN33WDZl
	yqd5OaS510Rvq1HVHzWhtKX+DSvfLYfCAxEQkzxCBgHQflaRNkDCwE2yU910UmxOQ3aJJ0xjeZETY
	+LeBOnMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXeB-0006DB-O7; Tue, 13 Aug 2019 14:19:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXbY-00051T-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:16:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC9131596;
 Tue, 13 Aug 2019 07:16:47 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 16D7C3F706;
 Tue, 13 Aug 2019 07:16:46 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: constify sys64_hook instances
Date: Tue, 13 Aug 2019 15:16:39 +0100
Message-Id: <20190813141639.13476-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813141639.13476-1-mark.rutland@arm.com>
References: <20190813141639.13476-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_071653_262969_4DFAB668 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All instances of struct sys64_hook contain compile-time constant data,
and are never inentionally modified, so let's make them all const.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/kernel/traps.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 42c8422cdf4a..a5d7ce4297b0 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -511,7 +511,7 @@ struct sys64_hook {
 	void (*handler)(unsigned int esr, struct pt_regs *regs);
 };
 
-static struct sys64_hook sys64_hooks[] = {
+static const struct sys64_hook sys64_hooks[] = {
 	{
 		.esr_mask = ESR_ELx_SYS64_ISS_EL0_CACHE_OP_MASK,
 		.esr_val = ESR_ELx_SYS64_ISS_EL0_CACHE_OP_VAL,
@@ -636,7 +636,7 @@ static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
 	arm64_compat_skip_faulting_instruction(regs, 4);
 }
 
-static struct sys64_hook cp15_32_hooks[] = {
+static const struct sys64_hook cp15_32_hooks[] = {
 	{
 		.esr_mask = ESR_ELx_CP15_32_ISS_SYS_MASK,
 		.esr_val = ESR_ELx_CP15_32_ISS_SYS_CNTFRQ,
@@ -656,7 +656,7 @@ static void compat_cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
 	arm64_compat_skip_faulting_instruction(regs, 4);
 }
 
-static struct sys64_hook cp15_64_hooks[] = {
+static const struct sys64_hook cp15_64_hooks[] = {
 	{
 		.esr_mask = ESR_ELx_CP15_64_ISS_SYS_MASK,
 		.esr_val = ESR_ELx_CP15_64_ISS_SYS_CNTVCT,
@@ -667,7 +667,7 @@ static struct sys64_hook cp15_64_hooks[] = {
 
 asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
 {
-	struct sys64_hook *hook, *hook_base;
+	const struct sys64_hook *hook, *hook_base;
 
 	if (!cp15_cond_valid(esr, regs)) {
 		/*
@@ -707,7 +707,7 @@ asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
 
 asmlinkage void __exception do_sysinstr(unsigned int esr, struct pt_regs *regs)
 {
-	struct sys64_hook *hook;
+	const struct sys64_hook *hook;
 
 	for (hook = sys64_hooks; hook->handler; hook++)
 		if ((hook->esr_mask & esr) == hook->esr_val) {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
