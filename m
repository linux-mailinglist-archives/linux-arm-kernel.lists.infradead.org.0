Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BE7748F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 10:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPMEhCBq7kyKq00eA01e8EA5Tz9m3ZfLthXVKbgRJFo=; b=pNWv49uB8w+CT3
	2YPqUt+3wt/8Si7GOb4R4nyhGSWK1wl4piFjG2a6mGi6ZitCngqZTLSkpdxSEDAHWWtMCLR3IdAEj
	LXAousCFJ0PxCcs4HM+WzfmE823xMh+25iiCEm3L4jTNyndibgf08eJc3tp/VC8gh9gPswcL+vkoN
	D8vxR9ik/TbGjESROQBcUD6gWdJqkXh4vAWjE/i4dkAwwKL8ri5n7o1vQmtxga61G5x8+bg0V87cE
	OF6Wf3SYzYEIMZ0+vz59bj1qQdxkagVKP9LTVjLaym/w0EcJQfSvC3G5zYr71hYR629V8hU605G3n
	NoHdEpzay4ajMNeKhxvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYwy-0004q3-4Y; Thu, 25 Jul 2019 08:18:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYvO-00043m-MO
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 08:16:34 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F351820657;
 Thu, 25 Jul 2019 08:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564042590;
 bh=U5JsQy9M6SP8lvveNoBirJFjzlJL4CpLUxow+e3YRvo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bXA7Rl4m1FdAnDljrSpbxyNrTH2z8iih7Q6dNDIACq/JZ2YEq6oyUBvUr6O4tztZK
 0C++xAFHag/f4QcJPiuQfC4xCDiH0v4SAqAfBopH46lPyCOKPKYs/Q4YwUtX8nD+SE
 p5/l8oVtssyFD3TRWXmyN0IPESb1pyg1C8xqZyeE=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v3 4/4] arm64: Remove unneeded rcu_read_lock from debug
 handlers
Date: Thu, 25 Jul 2019 17:16:25 +0900
Message-Id: <156404258547.2020.3652813018925680357.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <156404254387.2020.886452004489353899.stgit@devnote2>
References: <156404254387.2020.886452004489353899.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_011632_440479_DBA79078 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 Matt Hart <matthew.hart@linaro.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org, mhiramat@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove rcu_read_lock()/rcu_read_unlock() from debug exception
handlers since we are sure those are not preemptible and
interrupts are off.

Acked-by: Paul E. McKenney <paulmck@linux.ibm.com>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/arm64/kernel/debug-monitors.c |   14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index f8719bd30850..48222a4760c2 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -207,16 +207,16 @@ static int call_step_hook(struct pt_regs *regs, unsigned int esr)
 
 	list = user_mode(regs) ? &user_step_hook : &kernel_step_hook;
 
-	rcu_read_lock();
-
+	/*
+	 * Since single-step exception disables interrupt, this function is
+	 * entirely not preemptible, and we can use rcu list safely here.
+	 */
 	list_for_each_entry_rcu(hook, list, node)	{
 		retval = hook->fn(regs, esr);
 		if (retval == DBG_HOOK_HANDLED)
 			break;
 	}
 
-	rcu_read_unlock();
-
 	return retval;
 }
 NOKPROBE_SYMBOL(call_step_hook);
@@ -305,14 +305,16 @@ static int call_break_hook(struct pt_regs *regs, unsigned int esr)
 
 	list = user_mode(regs) ? &user_break_hook : &kernel_break_hook;
 
-	rcu_read_lock();
+	/*
+	 * Since brk exception disables interrupt, this function is
+	 * entirely not preemptible, and we can use rcu list safely here.
+	 */
 	list_for_each_entry_rcu(hook, list, node) {
 		unsigned int comment = esr & ESR_ELx_BRK64_ISS_COMMENT_MASK;
 
 		if ((comment & ~hook->mask) == hook->imm)
 			fn = hook->fn;
 	}
-	rcu_read_unlock();
 
 	return fn ? fn(regs, esr) : DBG_HOOK_ERROR;
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
