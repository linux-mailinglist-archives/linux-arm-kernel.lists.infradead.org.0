Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216ABC276C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 22:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EYgYlVKXbrNgh6BEnnBf2K38AMe/EP80h/+cEH2dOGU=; b=jOF
	FeBHy6lprsJLpU38U8ETerOog7/6DP+oLwz4dl3XL52jS3wpbiX8FYE/qcfaOWBpf8XILVeEhm0C9
	RdrIogzWC7g4s1hCsoe9Zj1RRZcgjkccFpK8fOvGC6tJ2PzuNbGrZnogxtPkkmxhBwMUBE3wxFvZW
	L2ZGn+z105ENF3fuixWXcc8Wyquhclbwe5nNo1pHh1yLi8W8GzVQU+XYsoJ29OlIkHZdukagltpAW
	5CYZnvm+QTn+Pt9ljX0KXHNX0fQyl9YHjJPbtb7Vla4FDPYWDpGgjNVdGbIallr2BaXnDAiXrw1/a
	gOrqeiGO9cRiCJLHmHyZh1qFaWcotRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF2iW-0007ki-KI; Mon, 30 Sep 2019 20:56:24 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF2iN-0007jZ-3r
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 20:56:16 +0000
Received: by mail-qk1-x744.google.com with SMTP id 4so9120528qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 13:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BEh0LfONw8WWbMYYoNzYq2HBhr7sqFPDv5NouMGgnRI=;
 b=mL+wonISTN9PlMPaMX0BT3yopdGljaFqMOjYIYk42pG2SXxOoN0BOcCi3ZRop9Ga90
 5tQdhA+raRVQM7iTIQTIxNSWHpDKSySYYS+bWtBACqghZmHl1txliDIQKkYC+knzrTYq
 KZ5sglKEe1Md7nj23AebrKQKNt8mTaPpk9CBhZINTwZ430kPMSzYBX5UGJV9Rle+fhYF
 65C9PhiB8oESqG/YZXuQQY5rsoLxvqdwWcM3cueLqirHWPgAhh2Noj9UcHQV7NytpmXA
 KpiawEdDMXb2TXpuYXcOcC9BKtH67lb9RfKMFeV5F0rqaa4euGvGVxI0H8NlerUg1+qg
 DRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BEh0LfONw8WWbMYYoNzYq2HBhr7sqFPDv5NouMGgnRI=;
 b=uWS5+j3gEPlYOt6q7lajbgZckGVUKWT6sXjaaGDHJGeRgqooJXF23eYAP+miDreo2C
 8Rf35tbNswGfIHMoz8+HfUf0aeHZVZMsesHb/hFSFlP1EkGKwD7C39+CFzNXX5/JW4HU
 N8q8O71XA4gbaBXnh3BXqdAqQapQ/2wP10AO5nlJS24olH1MB66oiB+LZK4Al+yPobeY
 hio4d0eDEU1X+khgVYaBRIN/7wLWgC0/u4jpzYxhbVT1RO4Kxlst75bxTqcNBPRqKbru
 6POwz5nY35nriDdnTIjQvtmuOTtFrUGwq4G76X41Hc14PkjIweN0kd8dTWU3KI4iCDD9
 /GQw==
X-Gm-Message-State: APjAAAWCm3WhVpU5RSp25QqhMHfvY7u5cjj1ATUn0f+Xv+BapfRcd/rs
 lDZY5mI3HZLOFRQoQdF4KA==
X-Google-Smtp-Source: APXvYqyN3kJm6L2nnYMhwowAqdviIW7EdlUTti17K9HaILnrKAQb3VoCSzpIoW2ZSAlzM6kmFGCcZg==
X-Received: by 2002:a37:bc84:: with SMTP id m126mr2247705qkf.196.1569876973826; 
 Mon, 30 Sep 2019 13:56:13 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id j17sm6213041qki.99.2019.09.30.13.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 13:56:12 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Dave Martin <Dave.Martin@arm.com>, Julien Grall <julien.grall@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] arm64/sve: Fix wrong free for task->thread.sve_state
Date: Mon, 30 Sep 2019 16:56:00 -0400
Message-Id: <20190930205600.25542-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_135615_161590_2B99C9FE 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
There is no need to wait until copy_process() to clear TIF_SVE for
dst, because the thread flags for dst are initialized already by
copying the src task_struct.
This change simplifies the code, so get rid of comments that are no
longer needed.

As a note, arm64 used to have thread_info on the stack. So it
would not be possible to clear TIF_SVE until the stack is initialized.
From commit c02433dd6de3 ("arm64: split thread_info from task stack"),
the thread_info is part of the task, so it should be valid to modify
the flag from arch_dup_task_struct().

Cc: stable@vger.kernel.org # 4.15.x-
Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
Suggested-by: Dave Martin <Dave.Martin@arm.com>
Tested-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/kernel/process.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index a47462def04b..ef7aa909bfda 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -332,22 +332,27 @@ void arch_release_task_struct(struct task_struct *tsk)
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
 
+	/* We rely on the above assignment to initialize dst's thread_flags: */
+	BUILD_BUG_ON(!IS_ENABLED(CONFIG_THREAD_INFO_IN_TASK));
+
+	/*
+	 * Detach src's sve_state (if any) from dst so that it does not
+	 * get erroneously used or freed prematurely.  dst's sve_state
+	 * will be allocated on demand later on if dst uses SVE.
+	 * For consistency, also clear TIF_SVE here: this could be done
+	 * later in copy_process(), but to avoid tripping up future
+	 * maintainers it is best not to leave TIF_SVE and sve_state in
+	 * an inconsistent state, even temporarily.
+	 */
+	dst->thread.sve_state = NULL;
+	clear_tsk_thread_flag(dst, TIF_SVE);
+
 	return 0;
 }
 
@@ -360,13 +365,6 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 
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
