Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3341BA98D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYfUuNvTlCM2ED6Z/bZMA7OV3f7D3rf3+tGkTvLmOt4=; b=iGCLLDJXRPctiQ
	pbXOHJFwSZ3zc36xsLV0Kmz6l9fZ28Hras2H7BWtQO0mlR7g1OBiZ4i9kmLqmrbSRIrcdvaxeiBpb
	4qZYLBCRiuy995xQPXyGCUZ1sfDtVjQhTgbKiycyJblefW+p0EdBHd2KlebJ4RrcGwlo+mQmBwGJ/
	uRLfzwfoksHVqC0dXWPAZ/O+31Ymz1Qjxt628znLz+6qJp5gcZoqbIIf0+SWCX+FkO4jlprrAtK6g
	2DVIAb1PyLeFfuRlwFl3uIunXmKkqU/Sv8h3cJBBKAAwtB7Znme96y8HerhkgqGpVeDJGXXZigGcN
	WwQxX6t25lFQg+8Mu3EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6CA-0002dH-Uh; Mon, 27 Apr 2020 16:01:22 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6BP-00028z-BE
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:00:36 +0000
Received: by mail-yb1-xb49.google.com with SMTP id d206so20884119ybh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kikYfFSTfca/HkjJiT4VwZFMKgohIqKorfyIql1wDNc=;
 b=LKPo6Bc/Q5MtQzUK3oQa6NKadNaC15z3lO/zjdaounxLr3Yr/P6IlUdUGblL+xU5k4
 spAtU8NF5ubk32gUq0m5VXjp6kv3GAFhZ4b47WHO1jV9Re1P0wgxqNnIy78PYlqK6iHg
 Lz7JdX7MXdIx+DHcDceIZRSq68+3ppbTa32fDBBMVQUsXCdSeZ2Rk0+iayOXLcIpH0mh
 1y8jfaqoFffOSgqi3glfbRygtn76YwRgqeTcaTsWT5Ma8vEPSbQu5Sf1lQXSpiWIQ5jH
 osRX2DeCrw1RtV2JiczAkw6ANMNeNCpzDPw4w/B5fxj55cgpesof+s+eghyxXIYIpJqz
 Cp7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kikYfFSTfca/HkjJiT4VwZFMKgohIqKorfyIql1wDNc=;
 b=ctCRG5kS6VXS89jAf2mCvaCQtJauSEZzOuQAGjEFVFITsDSA2jQeVtyC2JogNIsSqK
 FSRgfuNps0HlDWguU95YhqwxBoaH1M9ikasQKgixQWpZomEdplsTSSF3Fy+hUBQMFY6C
 lcC17OmvyhINRtPmLYjM9Xra8uxcWVmthHTfrWltF9VHbnCrA7CO2Aap7xyKGRME8trF
 8w50j20TtnldzlTDzfOFihX3Ef+WN7VvagP+uFmvXicsTzSj8kTCT3BIUU55ae5opBy5
 lW1mFI8qkGA0PrxAKYOrdNDcLtsHXqWLK9NgCSGPo7gGF2ZkTr12t2dgzvXejExUveG/
 OwCw==
X-Gm-Message-State: AGi0PuZ1JNakQAu7qL8TWBbVb09rBljpXXfPwjOtZ9lRRbXbU28gb13W
 HKl2FxKiOnVNNRGK6PWUgCxbcpiUPpBKhgMRSqc=
X-Google-Smtp-Source: APiQypIgO4clcO6Z7kvhUaBuvYACtL+F9hDoKmeBmaTp5Edf0BzJT+qKnh+MwC69KhaGLcQ8wc5C0JEBbMo44i2AOQM=
X-Received: by 2002:a25:ddc3:: with SMTP id
 u186mr36888616ybg.383.1588003232559; 
 Mon, 27 Apr 2020 09:00:32 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:09 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 03/12] scs: add support for stack usage debugging
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
X-CRM114-CacheID: sfid-20200427_090035_447626_626F78CA 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Acked-by: Will Deacon <will@kernel.org>
---
 kernel/scs.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 8769016c714c..2a96573f2b1b 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -68,6 +68,43 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static unsigned long __scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = task_scs(tsk);
+	unsigned long *end = __scs_magic(p);
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
+	static unsigned long highest;
+	unsigned long used = __scs_used(tsk);
+	unsigned long prev;
+	unsigned long curr = highest;
+
+	while (used > curr) {
+		prev = cmpxchg_relaxed(&highest, curr, used);
+
+		if (prev == curr) {
+			pr_info("%s (%d): highest shadow stack usage: "
+				"%lu bytes\n",
+				tsk->comm, task_pid_nr(tsk), used);
+			break;
+		}
+
+		curr = prev;
+	}
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk) {}
+#endif
+
 void scs_release(struct task_struct *tsk)
 {
 	void *s;
@@ -77,6 +114,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_free(s);
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
