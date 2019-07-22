Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5887E6FAAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5tWcUT/ZAvFIBVsXTFpgVDaYlVq3NGOx580EavPyA8=; b=G8pe/QuUFKQk0R
	VdIGw5ZTJAObxjQmn42Q0MpSYHflAN6clKM0bJ4nROxsSIWkb5BSWFkJ1W80Tst5S3ewuYeFkEqPh
	8NgZA6yx0Cmo+zrc22c6habIQH4UdrhDK9ObtJhXxaCV/AZWgdiKp0+S3dWxHEIs54osazhnOcrsz
	gHC/HBh1/ZIKERhFdg6Yl5/f6Z0EuSZqnEB6DTrDE4Jgpz492rFhePv7qGUcqdgz8UCZujRJhP5ot
	2RiNC7skvc1GzggffkuAy1/lG93Y093aviqiIO2JxAXf5mn91dH0kksjX/U17vnm4vVTVlH0GNqCK
	XNYHZbChIgcwo97txeMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT4a-0000ZR-Sz; Mon, 22 Jul 2019 07:49:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT40-0000Kx-MO
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:48:54 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37CEA2199C;
 Mon, 22 Jul 2019 07:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563781732;
 bh=d2K631q1iz4c8zbaSDa5ag8ChRtWqT8DbZvzcJhGp9Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w81PoW6MwyECbd2TTy5PRj1Ackc3EGzTbwwzyZ4/qk5SvwfWbiAnsaPPjJrmXgY1u
 jhbfidnmkbwNquWIPG6/GTz7+fjsxSOVmWZ+3F4k92Ou80g5P3DL+UdSvMgCYqYtLc
 1OlgcNAAxqm5a5q8K5U6Wn2+W0xjC4x0HpsBDDoo=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 2/4] arm64: unwind: Prohibit probing on return_address()
Date: Mon, 22 Jul 2019 16:48:48 +0900
Message-Id: <156378172702.12011.1144595747474511323.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <156378170297.12011.17385386326930403235.stgit@devnote2>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_004852_826913_F0969AA1 
X-CRM114-Status: GOOD (  12.56  )
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
 Matt Hart <matthew.hart@linaro.org>, linux-arm-kernel@lists.infradead.org,
 mhiramat@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prohibit probing on return_address() and subroutines which
is called from return_address(), since the it is invoked from
trace_hardirqs_off() which is also kprobe blacklisted.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/arm64/kernel/return_address.c |    4 +++-
 arch/arm64/kernel/stacktrace.c     |    3 +++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/return_address.c b/arch/arm64/kernel/return_address.c
index b21cba90f82d..7f8a143268b0 100644
--- a/arch/arm64/kernel/return_address.c
+++ b/arch/arm64/kernel/return_address.c
@@ -8,6 +8,7 @@
 
 #include <linux/export.h>
 #include <linux/ftrace.h>
+#include <linux/kprobes.h>
 
 #include <asm/stack_pointer.h>
 #include <asm/stacktrace.h>
@@ -17,7 +18,7 @@ struct return_address_data {
 	void *addr;
 };
 
-static int save_return_addr(struct stackframe *frame, void *d)
+static nokprobe_inline int save_return_addr(struct stackframe *frame, void *d)
 {
 	struct return_address_data *data = d;
 
@@ -52,3 +53,4 @@ void *return_address(unsigned int level)
 		return NULL;
 }
 EXPORT_SYMBOL_GPL(return_address);
+NOKPROBE_SYMBOL(return_address);
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index 62d395151abe..cd7dab54d17b 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -7,6 +7,7 @@
 #include <linux/kernel.h>
 #include <linux/export.h>
 #include <linux/ftrace.h>
+#include <linux/kprobes.h>
 #include <linux/sched.h>
 #include <linux/sched/debug.h>
 #include <linux/sched/task_stack.h>
@@ -73,6 +74,7 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 
 	return 0;
 }
+NOKPROBE_SYMBOL(unwind_frame);
 
 void notrace walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
 		     int (*fn)(struct stackframe *, void *), void *data)
@@ -87,6 +89,7 @@ void notrace walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
 			break;
 	}
 }
+NOKPROBE_SYMBOL(walk_stackframe);
 
 #ifdef CONFIG_STACKTRACE
 struct stack_trace_data {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
