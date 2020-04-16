Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526691ACD15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYi6AEsxRiHyrItPIls9Sc9/p62leNPAPV1wRlBlh9U=; b=mcDDFunclefSo6
	b//30A3aGpQshTMFVPTPGShHgSdF0mHQNLxUQdSMcoJIhfxtLbVqHuKRrBq91whwWKwh2COy9C6XA
	9dgJyhWlKe0OknxDsaRlwEK8Yo6BaIKN/aRExl+SNk6iol2KrSo+ttQlZ4pqThGot3pmDjHk+dkXt
	ny38IfCfptv1UevY78V/98qfskn0SpP6IWr5YXBEe9ciTdlV6d67ko/7q6jw+O96RY9F33yb47ENB
	bo84RDBpNWNi35tE8OYfShAa2JpwEu6Dfwux6c1I+ErwQ4+U//jGC1f9oaGjRJO7LYhgZ0dXXYsMq
	498wEMVsTCFt4IBErVQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP79e-0004Nl-3p; Thu, 16 Apr 2020 16:14:18 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78M-0003aT-Ru
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:00 +0000
Received: by mail-pf1-x44a.google.com with SMTP id q142so588672pfc.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0zoCAxwf9k6lfoo3cxV3l2Ts8Ighj8ILmpKvjJbqwvo=;
 b=oaXHw4OoNjSODYtqP+D86dNRDfH9pFvBIgL5AAghUBFYKnrbVWQbiCIYvMoV5G/92q
 eAijVWC8ga1IgT8f2InqqkXDfvnJOHAfEoJR4Tv3ygcBIFNB+3MRslx3FassUAy0Uatd
 KTgMwbBl3RKE4Te0j7hl6uSM+q2hHmXvTAE68O2Qqmw80ejmwBmIa/uQIk0Ea6awb4D/
 kiUfpIC642BpdAmbbEnAoxCTXQxQ62KaUPmVGWnjnutLyFbIJjdlfDx/bJhA/U7yXFFD
 en3fX1+ixzUBoNEWIbC1MibOBSiJdNjGY0/wQFmuEOqMPTQHYahJnCQZvu4lXlhPO+Ut
 3Uiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0zoCAxwf9k6lfoo3cxV3l2Ts8Ighj8ILmpKvjJbqwvo=;
 b=taOApw8s7svJ/yU9FvRxESvv2ZQzS10MOwkuIlrzZ4TIIryY6tBigJJRwJAHkX0nh2
 Q05DaxBYW6jl0ljZFZPQNPgVH7Mg7JTqrsNcqcKnrUWQaflD4gvQ3AbXGRSdDh/YS6yr
 iYD/ylxMBHKxRumN4z8fDKNe3VuQ/T1jfTuDg5G+hyxaJ8EcWoFHPViQUESbTwln13PF
 03nAT82omVsD7R9cSkaQmojnUD51Pgj9A54Lohf2DAaP7Xgx3rB3TCTY+LHn/Gb9P6Yv
 017cemHpXaZVpYFPwu48O0E0ljSZkkbn+v9EohoNlJdRaKzryeZfGf7TznZQx0YJ59rm
 CSFQ==
X-Gm-Message-State: AGi0PubGwcV/KUs9O/b5f+pBDmGYNcU5tFfAvULXEHi/tif70Kc+XzSt
 6ssDBy2XKVRgZoYlgCXw6sRhXKqrNcSJ4JDJkWc=
X-Google-Smtp-Source: APiQypKIig2VehAviH0oXuxl4EJ3M3D8ILlWZ/6oWMjPFzuhTA+6Vu4jAmcNZSFI+UI1yW8xrivvKTZYZblKhvZz34o=
X-Received: by 2002:a63:d049:: with SMTP id s9mr30834027pgi.384.1587053577150; 
 Thu, 16 Apr 2020 09:12:57 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:36 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 03/12] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091258_906078_8A1C90B5 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 5245e992c692..ad74d13f2c0f 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(p);
+	unsigned long s = (unsigned long)p;
+
+	while (p < end && READ_ONCE_NOCHECK(*p))
+		p++;
+
+	return (unsigned long)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
+			tsk->comm, task_pid_nr(tsk), used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = scs_magic(__scs_base(tsk));
@@ -200,6 +238,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
