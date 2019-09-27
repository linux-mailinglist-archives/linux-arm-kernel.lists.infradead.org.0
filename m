Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A190C08C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 17:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IQPAbAdSUkGUGf5zqGHxneS2U5uNNQX9Kau2QqZEgqQ=; b=i0c
	1EdHuJoqjYSdqzo5C+TaCmMlztEryi+OEcSdCLZHW1VDtQnI6Od/HHvKAommtwtMJ7OW+Ba+qQyjX
	DUYbOF0tLQvih3VQvR5fhbP1GIZGRz9fV54xLzZ0BmC1RYW90R2SXBj+5CMCTSXBtNjxjg5cM/fQ0
	o9Nu9OT0nbYEGN0u1E0CbUsGXxCZ8xLlyRe77SIvxDSsnq8zLHm8uqE2j4zgS/hRbFOBoFKtniI9G
	5o/eC2IH75T8gMoQPnxBzaEzM75lMrbWBhCoGjmDb4aCp4fWoyu3TuWGL92+U3jDGfO38+t34nk5/
	7ncRCxvs+IkcwJuKvQMPf5Y9Jj0NHSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDsLu-0006Bi-TS; Fri, 27 Sep 2019 15:40:14 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDsLd-0006Aq-PI
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 15:39:59 +0000
Received: by mail-qt1-x842.google.com with SMTP id j31so7821121qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 08:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Cpv5ZNVm9yUOsy7vshEHjPrRDw5bm6guIdo54Z4wEpg=;
 b=uuB0lD3fcX2NayhCWqNwWoaQ88d7SNLOxTyN4fzAmIqh8st6lYIXQC+nvvTJBHS0NL
 KiFSFOo7oS7qcCNMq1H3zbtN5RRxQ/0pUTPeLFjs1ewSzaJu0cQX0zn6ljqwWNH1gBQ4
 dP1bI3AqhMO1jDx71uSRcuzRXDAbfZjfFAcG+pbeOtQSCu6ZrqIA7f0JOEM0GowXTcqw
 TGh4qbSEAcN8L5aIceACCVcqBUUcIlASjkTxVczSVYHCACkOK/la/iMONawnFo2RVBeL
 cJdp3OC90dbVziwQS9BssT9M3NWJYRHnqY43xXtI5ULv9VmxuDjknrND3GmVF1RuvWfG
 ZhLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Cpv5ZNVm9yUOsy7vshEHjPrRDw5bm6guIdo54Z4wEpg=;
 b=YcrgfEMKB0BFaiJVqvkxF+zBcMjL2bI7zVDjPdzVZYwhMpg45p6FUZ2b35iYrRxBvg
 XZpQNItA6MffA7jWWeeZi3bDXM/Q/cGiyA5QyVkdfF4bzbWZATXqAdNw58XAEYgzAIwI
 VyuT2Heyc6liIxWEBZZfNPh4ohPa4DK87LqyzfybF6Ihh3BC8erX3VDAlrWyuoa9gO2N
 gQUqlOcgEW8OrlEUmnCfOVfwMZLv5FwTRjB+I6ocZkXWTGT57ZPgGzWxuqSzs2rT5us8
 wqY/jKCa520q/Vx9Biz2G3wB1ppK7EYscWlhZuQNGj6C77b7EkvoM8tbugJMfPqvyc7J
 wRFg==
X-Gm-Message-State: APjAAAWNdMkk9ISlIojqfFpvT8ou4BgpGg8+C/uJM4W5pDhNi6jCpH5G
 zxndzN4WCuTyqfbsH99MGQ==
X-Google-Smtp-Source: APXvYqxjo3cjsefaUMK6ihV7YZ9PbwXglYSh5Frdyx7pyyNvt1hnrtIPMjj+3egFABrR+y/qG6ILeQ==
X-Received: by 2002:a0c:d6c9:: with SMTP id l9mr8321121qvi.179.1569598796511; 
 Fri, 27 Sep 2019 08:39:56 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id n42sm3030137qta.31.2019.09.27.08.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 08:39:55 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Dave Martin <Dave.Martin@arm.com>, Julien Grall <julien.grall@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64/sve: Fix wrong free for task->thread.sve_state
Date: Fri, 27 Sep 2019 11:39:49 -0400
Message-Id: <20190927153949.29870-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_083957_820742_82AC8EC9 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

The system which has SVE feature crashed because of
the memory pointed by task->thread.sve_state was destroyed
by someone.

That is because sve_state is freed while the forking the
child process. The child process has the pointer of sve_state
which is same as the parent's because the child's task_struct
is copied from the parent's one. If the copy_process()
fails as an error on somewhere, for example, copy_creds(),
then the sve_state is freed even if the parent is alive.
The flow is as follows.

copy_process
        p = dup_task_struct
            => arch_dup_task_struct
                *dst = *src;  // copy the entire region.
:
        retval = copy_creds
        if (retval < 0)
                goto bad_fork_free;
:
bad_fork_free:
...
        delayed_free_task(p);
          => free_task
             => arch_release_task_struct
                => fpsimd_release_task
                   => __sve_free
                      => kfree(task->thread.sve_state);
                         // free the parent's sve_state

Move child's sve_state = NULL and clearing TIF_SVE flag
to arch_dup_task_struct() so that the child doesn't free the
parent's one.

Cc: stable@vger.kernel.org
Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
Suggested-by: Dave Martin <Dave.Martin@arm.com>
---
 arch/arm64/kernel/process.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index f674f28df..6937f5935 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -323,22 +323,16 @@ void arch_release_task_struct(struct task_struct *tsk)
 	fpsimd_release_task(tsk);
 }
 
-/*
- * src and dst may temporarily have aliased sve_state after task_struct
- * is copied.  We cannot fix this properly here, because src may have
- * live SVE state and dst's thread_info may not exist yet, so tweaking
- * either src's or dst's TIF_SVE is not safe.
- *
- * The unaliasing is done in copy_thread() instead.  This works because
- * dst is not schedulable or traceable until both of these functions
- * have been called.
- */
 int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 {
 	if (current->mm)
 		fpsimd_preserve_current_state();
 	*dst = *src;
 
+	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
+	dst->thread.sve_state = NULL;
+	clear_tsk_thread_flag(dst, TIF_SVE);
+
 	return 0;
 }
 
@@ -351,13 +345,6 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 
 	memset(&p->thread.cpu_context, 0, sizeof(struct cpu_context));
 
-	/*
-	 * Unalias p->thread.sve_state (if any) from the parent task
-	 * and disable discard SVE state for p:
-	 */
-	clear_tsk_thread_flag(p, TIF_SVE);
-	p->thread.sve_state = NULL;
-
 	/*
 	 * In case p was allocated the same task_struct pointer as some
 	 * other recently-exited task, make sure p is disassociated from
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
