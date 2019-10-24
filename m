Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402E7E3FBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvUOk+woPICVRUBHmlEY3m4NB1th8MT0IhNz0Gj2Gqk=; b=N5BvkZslQDgNzx
	SpmnaMIIJoZvHsn3TlyO72btXT5QpQj3M2FuaTy6CyagRUI9K3GNx7g999ZdH3ORUUkJDTeHa3cSd
	xtNDzSAm5s8bZi4Jm6durSjCSs+r7EW5WvdF1w7tM455n0KQtxx3D4G1eDqLlOzVw2FsFXO832UJX
	18nkcoaw5Wl5Ut+zntHPGT7nhSHRTkcSs4T9imHrhoqlbkS8k1n+LWOIN/LAFD3MVl79d1qFHw2nJ
	DK8zr7/G+n6n5mEbN+k6cyuR0LCCe2ZO4cKvxmkyF6khLx54yn+OgCuXM/iTqTRLK9PG8Hco54FIs
	4Rp4SHjuZiDhSgFQGAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNlzL-0003ol-5Q; Thu, 24 Oct 2019 22:53:51 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxd-0002Vm-GN
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:08 +0000
Received: by mail-qk1-x749.google.com with SMTP id n17so356696qkg.14
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+pC1wUGnAfIzdtPt9JYqx48tH0ZogjxIc75X2woCblw=;
 b=Ghul3xFEQaQM5xzVBFQoG8U8HNwG42e7GeQtV27MTWSZRuGptIXTiXUGIjDHp/YIpT
 hClIyJ8yLd1+EE9qsR9Oss13EFC0aEBed0i7vXbPLw7n7Cz1HrHzSiWsA4EcykXlitoW
 K5h6f2Q+00V9aJmmUnI7P9/MLwLZ35DTumdhIT4mQ4ce7/IwgipCUWdP7+q+I8zT5OhO
 a+NHytq0v/YolBdJAa7n+PY0/a9IGtPsdaAIdeA5LZmh6S0ZyAYyOYEOeyhxqrKOFMvM
 QncsL/qfcrw8l2wQdAQW3JMAY3o7KpY74274D2H4sRGOglWCZipnGdOSYkKm6qs+y5EC
 TkYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+pC1wUGnAfIzdtPt9JYqx48tH0ZogjxIc75X2woCblw=;
 b=TnEQ68lFsCkCZsaUOLyUSPtNfygbvPHdNx0WDW+p+8ATr8XJUo+o23G5pNrjKBRMj/
 GLUeeoUt0C80Ryu88a6K0m4uNwa2kA00Acw+8bLumn48KsPitXS7dOKnvdDheXMxqirV
 5NMzkbVPAmlHeLspuOa5M9d2rdz4l+s3FIazah2QuVKsBOUgUuVgPa1S3gA+js3ozCKZ
 VWspcdUWL/yxMQx12SKm53yCCFLGzIaDzfmqMjQPgJYyZarz4uORjDIb/ZoogKATlT12
 xHEzDAaq9kVmlHgFs3rfQP8IYq0ZP6Dmm//xWanstdLT7d5lDiIyR3XCgDdC2Ldy7xCS
 jMIw==
X-Gm-Message-State: APjAAAWlz5G1COWVZI/tDUj9fAVnFOh+khqqQU1O6oB5lsFQHJBcVGvO
 WLIol/hdnyKlANzKKkByLWiyRl4ZMnymtnfn5ns=
X-Google-Smtp-Source: APXvYqzM3I26bKb3wrnFe0tgT6a7QNS7VGM2eEEUUuU2H4VKLgtcE0Bg1aj8IG0janwPGy/Kg+c3iOCkFYjR2Y2rhpw=
X-Received: by 2002:a0c:e6e5:: with SMTP id m5mr375068qvn.170.1571957522490;
 Thu, 24 Oct 2019 15:52:02 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:22 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 07/17] scs: add support for stack usage debugging
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155205_600717_FD44DF63 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index b9e6e225254f..a5bf7d12dc13 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -154,6 +154,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(tsk);
+	uintptr_t s = (uintptr_t)p;
+
+	while (p < end && *p)
+		p++;
+
+	return (uintptr_t)p - s;
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
+		pr_info("%s: highest shadow stack usage %lu bytes\n",
+			__func__, used);
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
 	return *scs_magic(tsk) != SCS_END_MAGIC;
@@ -168,6 +206,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_task_init(tsk);
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
