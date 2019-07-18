Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B50E6C8DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vyx/OhRVurpjvnk4AMIoLFn4nSABIuEdAyTEGat2XpE=; b=bXlzohUusGhwLK
	IqX9qe8qOEgqrkfuoN/kikFz+JuxmH8pr7WrvVmUrqGjknLsL3Zgpq8aQsMi/pxnVHmAOMCpjUTM+
	4WD+PA5OizEmwQv4fkkfv+UKpeh8ZTfGYwiYR5qh9B4eI3meWHVqhlf1LsCQzjKpYtKLOCDjW22HT
	YyyWhbWEV8AJI49Y2dd7GM0Cja7QFljnLlk0CFAa5hqC4429c12OT79mZecHgwWw6Evc0U4B5aaQS
	gqH3IRSRowezAInu2CnjreJWLsljExshsiaY6MgRBZCy/ckwOCqoAr1A7/eHRoVPAaBJqyAEk5yWo
	YIFJESbkTz1T3ldC9gKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzDl-0007nj-Hg; Thu, 18 Jul 2019 05:44:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzCz-0007PY-FW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:44:03 +0000
Received: from localhost.localdomain (115.42.148.210.bf.2iij.net
 [210.148.42.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB1742077C;
 Thu, 18 Jul 2019 05:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563428641;
 bh=gfhHae/Itpt4cAnEUBWjU+vv/jZ4knj9Gh5tlJZH32w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NbZK2rcN4p4Do4xNZrSCrpocqmzJSvw185NluBokppvstd5PDELeRoeBvlxWmbx/j
 5Z86mXbG9w36rFsAnbjFo6pNCtSmcdmZCEl3JBF6w4BplF9d9OaxK4npYS1TQtZzq+
 o6puJrBaLviuSqMUn4YcVdYNnFDnm7ukvjVfqNoU=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH 3/3] arm64: debug: Remove rcu_read_lock from debug exception
Date: Thu, 18 Jul 2019 14:43:58 +0900
Message-Id: <156342863822.8565.7624877983728871995.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <156342860634.8565.14804606041960884732.stgit@devnote2>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_224401_670394_CBB85CC5 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
handlers since the software breakpoint can be hit on idle task.

Actually, we don't need it because those handlers run in exception
context where the interrupts are disabled. This means those are never
preempted.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Paul E. McKenney <paulmck@linux.ibm.com>
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
