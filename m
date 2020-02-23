Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BA7169572
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHHh72GIbV/bFvIUjzwYe6SxU31Y+HBEmId/wuRo5mw=; b=c/rS2lA4xt76sf
	46o7UO836OkBlBoMRNvlmwpvsc4IkNgkUumYn4n4NAljGo7Wv98K0Gjku3jj7SW8ci1/xoUNZug+b
	tjXskSu1OVqUxPBQabI3QSxMvDLJsW00LqSfuzddrbwbFNSX6VduIoBOUeGHEtEEzRYMHxPDYIsTg
	RdaWW+fOga2pxjMHKudAQ0kCc3BjkoWXhgzFfEBpLVhYhRtAbpiucihstAIgsG37R7NoBBuV4uaZC
	L1weW2x0BVqfjojptob1L6Jl2JJzqFbx2wSkxL4OXk+9WeVSZesTkuZBeBZT2TMlrG49EWzcosO79
	cEJMN//ktJ94DINCmEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hVc-0001WU-DX; Sun, 23 Feb 2020 03:00:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hHl-0002gn-21
 for linux-arm-kernel@bombadil.infradead.org; Sun, 23 Feb 2020 02:46:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=rpjH7PkG8mlQ5IwpXF+0JavZIV89r1ibkKlkKEezGMA=; b=ZSZQIxKIV2t2Z7W+K9BEpsG9vQ
 Pt0zIDyizAWvkqxC2VQwqeAyqLj2OXf11D5KYeYZgjWkWcRVZcTHLyg7liRzdcRVcYUxB3fhXZMpi
 tRN6kmXFTe3VmT1CoLYYYfYwDierQJHNxR1DvzuFwmzzVBfGTb54GQvaxFs/dPv4wdcYNsN0O+Vj1
 7R6+pm8jqKpfN0OzZOOVVjvHK3EmrJDMtCsfxHbjQcyGx7xxXYi1ozupO40apxfsjUdMRCGO0Ow3V
 bu9mPOhPrsQZun6sFodyn/l5ZTDa41l+eORHk1Af33+PfZ5DG0bsXmcqekMD6KmcOuulZDjdIIYgF
 wmPLJOFQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gx7-0007tD-7p
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 02:25:06 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7D1424673;
 Sun, 23 Feb 2020 02:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424704;
 bh=bIEcXbkcDGAtFRHevsBRWkFZdGSxx9gvCVYRqCiSmYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1ILzwIyOARDqD91F6UtY4/4doKG2qpVWAi2V+w+WqpyrqAO2QRm5wQddJOgPnP7s3
 napZ5KoyJvHi+uswYg5h9m2mgMw7Fg1iJgNyt3FpdEl1/7iGeXcjE58g1a6IFESi/r
 iYayQMi2QGZahVLU2dTlAqwwVNWPYpFB7ZAcmLUw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 4/7] arm/ftrace: Fix BE text poking
Date: Sat, 22 Feb 2020 21:24:56 -0500
Message-Id: <20200223022459.2594-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022459.2594-1-sashal@kernel.org>
References: <20200223022459.2594-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Zijlstra <peterz@infradead.org>, Sasha Levin <sashal@kernel.org>,
 Dmitry Osipenko <digetx@gmail.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Zijlstra <peterz@infradead.org>

[ Upstream commit be993e44badc448add6a18d6f12b20615692c4c3 ]

The __patch_text() function already applies __opcode_to_mem_*(), so
when __opcode_to_mem_*() is not the identity (BE*), it is applied
twice, wrecking the instruction.

Fixes: 42e51f187f86 ("arm/ftrace: Use __patch_text()")
Reported-by: Dmitry Osipenko <digetx@gmail.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Dmitry Osipenko <digetx@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/kernel/ftrace.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
index faa9a905826ee..7982409e5c27f 100644
--- a/arch/arm/kernel/ftrace.c
+++ b/arch/arm/kernel/ftrace.c
@@ -105,13 +105,10 @@ static int ftrace_modify_code(unsigned long pc, unsigned long old,
 {
 	unsigned long replaced;
 
-	if (IS_ENABLED(CONFIG_THUMB2_KERNEL)) {
+	if (IS_ENABLED(CONFIG_THUMB2_KERNEL))
 		old = __opcode_to_mem_thumb32(old);
-		new = __opcode_to_mem_thumb32(new);
-	} else {
+	else
 		old = __opcode_to_mem_arm(old);
-		new = __opcode_to_mem_arm(new);
-	}
 
 	if (validate) {
 		if (probe_kernel_read(&replaced, (void *)pc, MCOUNT_INSN_SIZE))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
