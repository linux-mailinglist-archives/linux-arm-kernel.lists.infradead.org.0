Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC681D5C53
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 00:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f2ap9eamSAdMngvSJnFwO/2NsXvLKN10tM08odhMsXo=; b=PGZVMH3aKsvfmf
	OAOhiBhaZN7BNX7RyarqB7Gaoyy1erghaHy21IHEevhERbbArPAzpHZ+jSBFCkjELbfayDcfDNg1a
	rPckXdk1P9fecRFEDB9ytlqpPPKwM53uPh+pXK4sMOksukUIs6+sr1iDlDyOHhgAxlVJzM2la/CEg
	T3F+yKBCJEex7NZGWkieqexwuGUoSBhRQ9GI+8tPZfH4AHI3le1ew8l3dYyIsT5bCQrJR+7JNKflf
	p+6vW1h+O2f1wVFGZr4Nx6mLFFMExjRHaISRv8UR9Md8kEE5iFGDsLz+N3eNT35md494jxzAB5+su
	HRLQXK9Ui0i8bBdLYwKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZijW-0002vK-H7; Fri, 15 May 2020 22:23:10 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZijO-0002uC-82
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 22:23:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id g185so4290354qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 15:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=TAEeLRHczjNG3Cacn9/4Eq8k480FxxPELQkCilNmlOU=;
 b=BwkiLuN3CS3wSfV5UK/uFMwWOrqdIuQqkzgFEHnZA9kg/p0ceMCfR2loMYNAIkq/7m
 fQixDxjcDe6oAk+sKgT3wjq5PUYOKFnQFT9f4IdUe+PWGoMFPfnDTP0EohFkMO9YTTvj
 0OWexima9S9sys9Y7txoCZRf4F+yVgioqoAdJf0/RbBg0B3aifD33ddB1j880f10TgqI
 8gnIeGfnCVkPvinPsCZiKQVgWgzpYDVHvpHFR+KJe2sAivPii6Ba1Rm9ol7BZx2K+IHC
 N4VCkR0oofbqlYUm5ueUJbsRooZ3d9ZX54zUi9CZ/1WD85d0MdGRZfczKjEbP8H2Sh8z
 amHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=TAEeLRHczjNG3Cacn9/4Eq8k480FxxPELQkCilNmlOU=;
 b=KswEyLjjyN9ETjwDo4w/me88TochI+AWT6/7NidoprGZuuBqZip8QUc2Ds+fFYgfdr
 TpTvsSTsLejZjOl6Gvhxm7ANoZLticB6bGHUBPjYAHPnkb12DyAObCvJbhZvYC3YxE3T
 7iMKnMRblqvyz5EnDTkHCPFYxXQx85/pjIaal933D8CeZrUsMRTag/Ad6ME1m86gnTtL
 0AvR+Bn9h83HLxVIyNAgLjHMki7t7X2MWgJ3wTxWEtRNO3jJYhmJBtKXbnH9a8xTrNaI
 GpAmC4uTZm5pKGCgmBOjR/Psw0Crm1xfIswDTnIB5L8C2CxOiRhWiDv/hXn3uesWQ7EA
 r7eA==
X-Gm-Message-State: AOAM531jvhreFbURGLJYoqTgVgtXu29axCgPUkjLaJLxoBwCKWTfWkGh
 SysGrZ77h/o1Hn7xQx6bsj1xVBGPS8Q=
X-Google-Smtp-Source: ABdhPJxWS5ExnKqQjp6aui5DcHPI3l0EUkcpJEBffC9mwIoRBD5bOFJDjMNSjDsV2dZeT5P2n4OsFA==
X-Received: by 2002:a37:8347:: with SMTP id f68mr5438179qkd.153.1589581376285; 
 Fri, 15 May 2020 15:22:56 -0700 (PDT)
Received: from juliacomputing.com ([2601:184:4780:3aef:d1fc:d97:8a48:767e])
 by smtp.gmail.com with ESMTPSA id 127sm2642035qkj.59.2020.05.15.15.22.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 15:22:55 -0700 (PDT)
Date: Fri, 15 May 2020 18:22:53 -0400
From: Keno Fischer <keno@juliacomputing.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Fix PTRACE_SYSEMU semantics
Message-ID: <20200515222253.GA38408@juliacomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_152302_286161_C773A84F 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, oleg@redhat.com,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoth the man page:
```
       If the tracee was restarted by PTRACE_SYSCALL or PTRACE_SYSEMU, the
       tracee enters syscall-enter-stop just prior to entering any system
       call (which will not be executed if the restart was using
       PTRACE_SYSEMU, regardless of any change made to registers at this
       point or how the tracee is restarted after this stop).
```

The parenthetical comment is currently true on x86 and powerpc,
but not currently true on arm64. arm64 re-checks the _TIF_SYSCALL_EMU
flag after the syscall entry ptrace stop. However, at this point,
it reflects which method was used to re-start the syscall
at the entry stop, rather than the method that was used to reach it.
Fix that by recording the original flag before performing the ptrace
stop, bringing the behavior in line with documentation and x86/powerpc.

Signed-off-by: Keno Fischer <keno@juliacomputing.com>
---
 arch/arm64/kernel/ptrace.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b3d3005d9515..b67b4d14aa17 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1829,10 +1829,12 @@ static void tracehook_report_syscall(struct pt_regs *regs,
 
 int syscall_trace_enter(struct pt_regs *regs)
 {
-	if (test_thread_flag(TIF_SYSCALL_TRACE) ||
-		test_thread_flag(TIF_SYSCALL_EMU)) {
+	u32 flags = READ_ONCE(current_thread_info()->flags) &
+		(_TIF_SYSCALL_EMU | _TIF_SYSCALL_TRACE);
+
+	if (flags) {
 		tracehook_report_syscall(regs, PTRACE_SYSCALL_ENTER);
-		if (!in_syscall(regs) || test_thread_flag(TIF_SYSCALL_EMU))
+		if (!in_syscall(regs) || (flags & _TIF_SYSCALL_EMU))
 			return -1;
 	}
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
