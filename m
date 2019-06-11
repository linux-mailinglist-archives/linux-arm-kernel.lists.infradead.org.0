Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2143CFE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NJXAL6kfFbG/J5Xpt8GeUVAajV9eDmpZEuAZvO7pjCU=; b=hwgNfpW2dw+jopUHNpBI0/U3sB
	lAvCJjp32W9B87d1ftQ4/BOaSwD9s+bqRRd0cq1Do4Io+lL1JdpaItwqHlRFhlrbv5sICmOEm3i5u
	zzpzhqAYOAMcR0G6G5GDYUBdByw49FiATnNElwXZDtiHpCaWln8uTkqh4v3DMD4HoP0Akv2CfiqGh
	UT0hrzI+1mMLwSZnOze1nGLOJ+Koa+XPDtwkrgeze2Xr8KC1ZsJao7oEJMQuDAyMkmq0eVwIKpa3d
	Bd+W/9eod9AreAdlQ6q1gKoBqJJjODd65W9JVOFgHiQrQ8+VFnjB5Cy1vDBac9RWEnoWVUtu63YSk
	IStP/Btg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCn-0008Jl-2u; Tue, 11 Jun 2019 14:56:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCX-0008GJ-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:56:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7FC3337;
 Tue, 11 Jun 2019 07:56:38 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BB9203F246;
 Tue, 11 Jun 2019 07:56:36 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v5 2/4] x86/entry: Simplify _TIF_SYSCALL_EMU handling
Date: Tue, 11 Jun 2019 15:56:27 +0100
Message-Id: <20190611145627.23229-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523090618.13410-3-sudeep.holla@arm.com>
References: <20190523090618.13410-3-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075641_127449_3C65CC39 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com,
 Will Deacon <will.deacon@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The usage of emulated and _TIF_SYSCALL_EMU flags in syscall_trace_enter
is more complicated than required.

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Acked-by: Oleg Nesterov <oleg@redhat.com>
Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/x86/entry/common.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

Hi Catalin,

I assume you can now pick up this patch.

Regards,
Sudeep

v4->v5: Updated changelog as suggested by tglx and added his Reviewed-by

diff --git a/arch/x86/entry/common.c b/arch/x86/entry/common.c
index a986b3c8294c..0a61705d62ec 100644
--- a/arch/x86/entry/common.c
+++ b/arch/x86/entry/common.c
@@ -72,23 +72,18 @@ static long syscall_trace_enter(struct pt_regs *regs)

 	struct thread_info *ti = current_thread_info();
 	unsigned long ret = 0;
-	bool emulated = false;
 	u32 work;

 	if (IS_ENABLED(CONFIG_DEBUG_ENTRY))
 		BUG_ON(regs != task_pt_regs(current));

-	work = READ_ONCE(ti->flags) & _TIF_WORK_SYSCALL_ENTRY;
+	work = READ_ONCE(ti->flags);

-	if (unlikely(work & _TIF_SYSCALL_EMU))
-		emulated = true;
-
-	if ((emulated || (work & _TIF_SYSCALL_TRACE)) &&
-	    tracehook_report_syscall_entry(regs))
-		return -1L;
-
-	if (emulated)
-		return -1L;
+	if (work & (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_EMU)) {
+		ret = tracehook_report_syscall_entry(regs);
+		if (ret || (work & _TIF_SYSCALL_EMU))
+			return -1L;
+	}

 #ifdef CONFIG_SECCOMP
 	/*
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
