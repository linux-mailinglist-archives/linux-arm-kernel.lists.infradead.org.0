Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB1C1F2554
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cfb5LkSNLCI8mg9r5YpLdLE7fJ/WFaL4u5qLByAsb9s=; b=iqf7RmuTFVAHT4
	1ZA9u/ubN75E7NLa7VOcolpEuBttPLwXg5I/e7OHzofVN1i3W+8oQweujvBxzSndNi53QLhpdnxzD
	XlX1PaIQt8ymst039A3MehguP4RFoj8BmOtULEhx4ITer96BmjjuzxMIRRrTNjgyMn8nomPJH53G/
	RnsnEgORHqtdiYJdzKu4jwCsFKSmB47ZqZIv9+4B5IEoIV5VQwKXA1h6AwaQ98+sl0gHNHwKGyQrE
	3vDp424AuoNPvl1b1dGyJw4C6slAe8ky75InDLL1SI/JcSUjykcukuyXcMrxIWVN3iXraD2YcG60h
	JEc9im+EMjW0LO6QTeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRCZ-0001E2-Cv; Mon, 08 Jun 2020 23:29:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQz1-00019I-EO
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:15:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 921F121501;
 Mon,  8 Jun 2020 23:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658110;
 bh=jAO10dhZ0/bvgXRJ5ALw6c+WQy6MKBhxPTMd0JqViQU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Yp0wg583cF/EJPOSbFpdN9IqDseS+8SjiNe+I6RNd5lKW+bWA7Sg7dxHXYpvHm0oJ
 Gfa7aIoiLnNdXok2JCtEkj8WOuCcRik8BW7c5JwB/bgqLCUFXFyBE7/2mT9cDNm7nC
 lai9bI4IGeA7KA8S0NjsuY0CxyU/sYX4FnL+EWak=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 149/606] arm64: Fix PTRACE_SYSEMU semantics
Date: Mon,  8 Jun 2020 19:04:34 -0400
Message-Id: <20200608231211.3363633-149-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161511_633308_FCBFF407 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Bin Lu <Bin.Lu@arm.com>,
 Keno Fischer <keno@juliacomputing.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Keno Fischer <keno@juliacomputing.com>

commit 1cf6022bd9161081215028203919c33fcfa6debb upstream.

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

Fixes: f086f67485c5 ("arm64: ptrace: add support for syscall emulation")
Cc: <stable@vger.kernel.org> # 5.3.x-
Signed-off-by: Keno Fischer <keno@juliacomputing.com>
Acked-by: Will Deacon <will@kernel.org>
Tested-by: Sudeep Holla <sudeep.holla@arm.com>
Tested-by: Bin Lu <Bin.Lu@arm.com>
[catalin.marinas@arm.com: moved 'flags' bit masking]
[catalin.marinas@arm.com: changed 'flags' type to unsigned long]
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/ptrace.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index cd6e5fa48b9c..c30f77bd875f 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1829,10 +1829,11 @@ static void tracehook_report_syscall(struct pt_regs *regs,
 
 int syscall_trace_enter(struct pt_regs *regs)
 {
-	if (test_thread_flag(TIF_SYSCALL_TRACE) ||
-		test_thread_flag(TIF_SYSCALL_EMU)) {
+	unsigned long flags = READ_ONCE(current_thread_info()->flags);
+
+	if (flags & (_TIF_SYSCALL_EMU | _TIF_SYSCALL_TRACE)) {
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
