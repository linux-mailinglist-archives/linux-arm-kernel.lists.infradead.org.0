Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B6EBF9D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=517YaYuRx2F95YxbPLA+4BQgFR5EbW/bwo70sx3UyQI=; b=UhNPrI6/jTOCS3MbXVeOmRN+54
	PcgngLLJPreRx3UpmHuQto5iO9DUsNj+EQoUmfVIvYiEPMpq4ZmjoWCs2GjyuL83ptF5Su12kUPDr
	f9Ajh/p0yauZ7O1gqVFzqI9c5CMlMCVfWfaB1/u+ByDWrQu/DOTtXudm9h8ypDXQHrW056MfKYFhM
	NCT+lZ07Z4ePfzHoxbJY586MtFFwPV7r7koGUzFiygFRrSOBoALmmju6Nlfl7G+Df7Gqy0v8Mj+U0
	ywhueceLjB5W8JZl26lNWhB84QepHytRbQZf5EPWm1hvc/sGRghoj1+rSHxMdqhrso+UG2/VLBWvT
	xp4uGlfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZ9E-0004Lq-MY; Thu, 26 Sep 2019 19:09:52 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZ8q-00049q-Um
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:09:30 +0000
Received: by mail-qk1-x741.google.com with SMTP id y144so2730914qkb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0YzzG8xxLRO9x05MMXHNcmaWt4m3lyixn3G0cfw2LTY=;
 b=j1WQtp9el6RXeSS/dMWW2hEkAa2+QmSTgqf/WCfndmMkgGSwKeb0WsBZXeIs4TVO8K
 44LxE9aKNaDTVUkYl7+iZOQFKAQH3MQHKRKnQNmJOo31EhyFWyf6WAB/nXbdHl33hQ+v
 tdonJhz8db6WvQJr5eKInwpziJBIJD7r8/xOk0Ao8vsyXQzSIlhJGCjGJe1d87r9y6Ww
 izr4jPsKA5Ubm/kt9AvwF3ofJyRzOTu0k5rr/uGDgFWJqK60P7geo/U5mHDbYUjbs+Do
 Oy27ns7sXbqJN0vKgAqTfn/09tU6oTn9SmlLDwRS/qRMdmCNQxHI70XWNSEzoN09no++
 Uomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0YzzG8xxLRO9x05MMXHNcmaWt4m3lyixn3G0cfw2LTY=;
 b=A76stVTfXEEFNDafBLIdrWazqKXTeicajfikeHx/WKbjUu9udBi//67p5kzJkm5uJ2
 KrqjagYR5NBVUTXSjBtb5y3dRBwCc4T450Wf816nKKq8DJxvKRNK78igZpTfWjmhEkwX
 w6iUuHCSVj3QQjXO2BXu9TtKIGvuUAq+80jOgVqkkqt9M0HIqlNRGi52LxftpN1FpHp9
 WLiz268Jxbf87iUKCMuYFLyaF+Kf+h0xJqsUX/PiRIIf84IrW6jSeB5JA13H0bqFh85u
 wA8VKT7MRehqq2wExg3xu1+HJLO6s5/YK2iIQtO8qwNHNd9XP0W365mldYjMtcTmtDu3
 fP/w==
X-Gm-Message-State: APjAAAW93H/B7Wwxes1Um3ZUI+NeGYFiHti5xdby8l33yMxsYU7ImwUi
 cKP4WaLCgKVsE81I4beSAg==
X-Google-Smtp-Source: APXvYqwSOSysU8P4nrm7m2YCc3HaQgA+s3t7B4xfHD2euxlUm4qo1UJU3wTeA5BCin4DflQBMogvNA==
X-Received: by 2002:a37:dc06:: with SMTP id v6mr400739qki.163.1569524967525;
 Thu, 26 Sep 2019 12:09:27 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f144sm40062qke.132.2019.09.26.12.09.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:09:27 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64/sve: Fix wrong free for task->thread.sve_state
Date: Thu, 26 Sep 2019 15:08:46 -0400
Message-Id: <20190926190846.3072-2-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926190846.3072-1-msys.mizuma@gmail.com>
References: <20190926190846.3072-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_120928_988530_6A9CFCA5 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add a flag in task->thread which shows the fork is in progress.
If the fork is in progress, that means the child has the pointer
to the parent's sve_state, doesn't free the sve_state.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
Reported-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
---
 arch/arm64/include/asm/processor.h | 1 +
 arch/arm64/kernel/fpsimd.c         | 6 ++++--
 arch/arm64/kernel/process.c        | 2 ++
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5623685c7d13..3ca3e350145a 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -143,6 +143,7 @@ struct thread_struct {
 	unsigned long		fault_address;	/* fault info */
 	unsigned long		fault_code;	/* ESR_EL1 value */
 	struct debug_info	debug;		/* debugging */
+	unsigned int		fork_in_progress;
 #ifdef CONFIG_ARM64_PTR_AUTH
 	struct ptrauth_keys	keys_user;
 #endif
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 37d3912cfe06..8641db4cb062 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -202,8 +202,10 @@ static bool have_cpu_fpsimd_context(void)
  */
 static void __sve_free(struct task_struct *task)
 {
-	kfree(task->thread.sve_state);
-	task->thread.sve_state = NULL;
+	if (!task->thread.fork_in_progress) {
+		kfree(task->thread.sve_state);
+		task->thread.sve_state = NULL;
+	}
 }
 
 static void sve_free(struct task_struct *task)
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index a47462def04b..8ac0ee4e5f76 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -347,6 +347,7 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 	if (current->mm)
 		fpsimd_preserve_current_state();
 	*dst = *src;
+	dst->thread.fork_in_progress = 1;
 
 	return 0;
 }
@@ -365,6 +366,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 	 * and disable discard SVE state for p:
 	 */
 	clear_tsk_thread_flag(p, TIF_SVE);
+	p->thread.fork_in_progress = 0;
 	p->thread.sve_state = NULL;
 
 	/*
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
