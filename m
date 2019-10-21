Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC80BDF32C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=usPAjYZEzBlJ4YHNyh2ESxpp4B3rq2hHwKTmW3tSSk4=; b=FcfHAnVsqTlNMrlEEM8LH+hz5m
	qW7k1B8T7K6mcRvgH0k/MnR1GYeyqBJb2KNZ+LiIUOCRlsbg79UcTQ+Fml9JIn6wFZhKDVytyJc6r
	J50U80wLgOdH3NxJSpQmJMa8QNRmzkasFi7TUqpz8OREGXdihSarApyFvWHH/9Uo2+2i5J2QsLRTm
	haYBibRTkUI1eTF7BDwkltBCzc8Mh8nf703LDI/lkbbOsM6RqmWIsSv2lr58vAIbsS4RHj6JQWt4f
	d3yYXgXA8ufn0Jg6a6MVgSAaeR5sPEeoXqTyW2cR8qVTcVac96ISn8daD2DrtTV54vqHtxVMqaRxt
	gB+x3PNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMadz-0002gK-Hu; Mon, 21 Oct 2019 16:34:55 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMadp-0002ez-4D
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:34:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AA221042;
 Mon, 21 Oct 2019 09:34:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 02B233F71F;
 Mon, 21 Oct 2019 09:34:34 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] ftrace: add ftrace_init_nop()
Date: Mon, 21 Oct 2019 17:34:19 +0100
Message-Id: <20191021163426.9408-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_093445_215823_2CD0FE11 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, will@kernel.org,
 ard.biesheuvel@linaro.org, peterz@infradead.org, catalin.marinas@arm.com,
 deller@gmx.de, jpoimboe@redhat.com, rostedt@goodmis.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 jeyu@kernel.org, amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Architectures may need to perform special initialization of ftrace
callsites, and today they do so by special-casing ftrace_make_nop() when
the expected branch address is MCOUNT_ADDR. In some cases (e.g. for
patchable-function-entry), we don't have an mcount-like symbol and don't
want a synthetic MCOUNT_ADDR, but we may need to perform some
initialization of callsites.

To make it possible to separate initialization from runtime
modification, and to handle cases without an mcount-like symbol, this
patch adds an optional ftrace_init_nop() function that architectures can
implement, which does not pass a branch address.

Where an architecture does not provide ftrace_init_nop(), we will fall
back to the existing behaviour of calling ftrace_make_nop() with
MCOUNT_ADDR.

At the same time, ftrace_code_disable() is renamed to
ftrace_code_init_disabled() to make it clearer that it is intended to
intialize a callsite into a disabled state, and is not for disabling a
callsite that has been runtime enabled.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Torsten Duwe <duwe@suse.de>
---
 kernel/trace/ftrace.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index f296d89be757..afd7e210e595 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -2493,15 +2493,22 @@ struct dyn_ftrace *ftrace_rec_iter_record(struct ftrace_rec_iter *iter)
 	return &iter->pg->records[iter->index];
 }
 
+#ifndef ftrace_init_nop
+static int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
+}
+#endif
+
 static int
-ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
+ftrace_code_init_disabled(struct module *mod, struct dyn_ftrace *rec)
 {
 	int ret;
 
 	if (unlikely(ftrace_disabled))
 		return 0;
 
-	ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
+	ret = ftrace_init_nop(mod, rec);
 	if (ret) {
 		ftrace_bug_type = FTRACE_BUG_INIT;
 		ftrace_bug(ret, rec);
@@ -2943,7 +2950,7 @@ static int ftrace_update_code(struct module *mod, struct ftrace_page *new_pgs)
 			 * to the NOP instructions.
 			 */
 			if (!__is_defined(CC_USING_NOP_MCOUNT) &&
-			    !ftrace_code_disable(mod, p))
+			    !ftrace_code_init_disabled(mod, p))
 				break;
 
 			update_cnt++;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
