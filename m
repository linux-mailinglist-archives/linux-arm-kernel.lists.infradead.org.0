Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEA518FAB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ZjWSWrLO3V3bRmpxF4Yie0yXv3yCNj4TRmj9y7KQ+8=; b=VzoPd2bn9XxqqH
	n5nUvumREfiFJBJ4MZDloXaoRtp7uu4oYi9YAmA9U1NiMr5ZBzOT0nTRMVfGjEUU5O/3Dg46ERgYG
	TFq3wvQDsHRFbwaA5byxl47fnwtQgwtavfS+WMb402z/EEMGIl0pypyRAJUkfGSCwAMZYYklKpy5l
	msFX1CJaXe9dz0aWs/pQO7PR4D54NTVClMco2PH5uh0RxaTd9pA5i7/W1w8VF07MLsdvSGqY4kAk8
	r8jBbQPAEiCZxsDGG9nl9UR6uKAkTtar1gF7zgYCKHBxn7QAXV7GAv3sZd5bP6zpA72v1RgMUmZ0s
	sLjp1O6Bln/fuJw4gNNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQSG-0005GF-TE; Mon, 23 Mar 2020 17:01:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQS6-0005Er-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:01:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00FC61FB;
 Mon, 23 Mar 2020 10:01:25 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 788F53F7C3;
 Mon, 23 Mar 2020 10:01:24 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: bti: Document behaviour for dynamically linked binaries
Date: Mon, 23 Mar 2020 17:01:19 +0000
Message-Id: <20200323170119.12263-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_100127_010492_D63D9378 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For dynamically linked binaries the interpreter is responsible for setting
PROT_BTI on everything except itself. The dynamic linker needs to be aware
of PROT_BTI, for example in order to avoid dropping that when marking
executable pages read only after doing relocations, and doing everything
in userspace ensures that we don't get any issues due to divergences in
behaviour between the kernel and dynamic linker within a single executable.
Add a comment indicating that this is intentional to the code to help
people trying to understand what's going on.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/process.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 24af13d7bde6..9b668565dd10 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -674,6 +674,11 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
 int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
 			 bool has_interp, bool is_interp)
 {
+	/*
+	 * For dynamicly linked executables the interpreter is
+	 * responsible for setting PROT_BTI on everything except
+	 * itself.
+	 */
 	if (is_interp != has_interp)
 		return prot;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
