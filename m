Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6A7DCA9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3VjykywLg8FkA69773ai9PGawr78jZxdadDrDdtfaU=; b=D/OWUZc7l8f8T4
	rfTr9yJ/viP3BCXGQxFceSkKxDxKohZo5nQPcwxzN+PCFpqDhbAJwCVPT9oDksw+eyc/maRd5rC1g
	4l5RPzle3RmOOnc/0mE+MKTJMm7gh2JSQ3cM+H+BiLfYYPWFXghRL65q9aI8hbCoHoN97ZulcTnRk
	lveOplhojcV/IkP4u1qOaYRxkdZg41WuDYFEjehpB+YV4wWpS5CQwjkmjlSNMAFP57CnudW/6jTUC
	KcGxtSNzCWyV19oXtLkVpO2rpZuLawjkWrauOn4sXMZGhlmvk+WP4hyJNaUhzZlpzeQyaUGiYYBYr
	sIogO2DavPcvm5KxDlfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUsn-00042p-LB; Fri, 18 Oct 2019 16:13:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqR-0001s1-Ub
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 16:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:From:Subject:
 References:Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+oBtFp6IQZ5946CFExp5BXllfwypP5AUtOYhvu+6eDg=; b=omhYD5xW/ih8KBnWMjhg2WkWy
 hE/U8JsWj+jLPOCV+zPTBCr6NzDp2A67mVB4zs6dFKFKsADwRbQKSzVHIXV6hyIH6HsMOBmDK9QXu
 29cTzfUQV+8VcG/TugF9EdXDSWLmpEhU6j4fjYDQhZh3zQZeI7lduqTTuQacpZCedvl05qaXLI5c2
 OHp2exMt4gEWeCVfVEBmDpcH7aN52a+REAB/DJKC+paCdC7HTzKD5Z7j5UsTB+/o053kplPcfgkI/
 xJyy/A8ubqU6uKlSW175hfAG5x0c816qE6fL6TOYfUbf5ZpzwcshSc/aIekUc9B21n8IHAYySEHGD
 bibYmCHng==;
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqq-0004Lp-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:42 +0000
Received: by mail-pf1-x44a.google.com with SMTP id a2so4971116pfo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+oBtFp6IQZ5946CFExp5BXllfwypP5AUtOYhvu+6eDg=;
 b=uErhWC3lFP8THQ9YjycpXkAl85COCd6lh+RqxQAfdCNUSVTiEfspc2alvbCgArV2fu
 ls4p2vGwJ3M8+8dC+pxUbBcocxnmbIOx1oZI7haycpR/idqzr0yRfNB9QU0r3L0Ad+LB
 AODIdu+bBRBco2jvuX999sV5JPTfKSeK6DQgqagm1V48qwgIQ9QQo3kPVBNgSxrwUzDc
 J7z1g1ZIddJjuwZ9NXT+KTuZuEnEru2YIfSdVRPO6N1MNFiWgJDAJs9A6AicwQY5z5mf
 Ozj1xQ9RCTG/l6zakh/4DEHsBfg5zP3zC8lFWduaZXJzlKOfJV8siLAxWkKPzGoNNYpY
 BIXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+oBtFp6IQZ5946CFExp5BXllfwypP5AUtOYhvu+6eDg=;
 b=dYhVWLcjv4MNulWPZOc+lL9z4cfFXSq72rc4oli5v9KvW/U3M6B4ZhQGfZ3O835TxW
 C38IiLS65v3Jc1GfcToS1VNxd5++SB/zjO9dq0+C9WTHwhIWBS8CQNJtP3FQ4lRyWaQ3
 MKZkb1gTbDcVaPpV2kL6tgCGhC6AxwbSCr/JWyJd5otvWWaK6brA3OZnzzQHLNEGRkZ9
 CxkP4nCwIigUeaGyCw77sxKYEelHcLgTrcxpMjTO5EH8+eMPpQAMvCUp8oIK6+efEA0m
 8Byh8yNy7x41VI8PU9AhNvZsaSuYQ3oRjzddcrISwOjrq/tY3IXiPMHnutFs2qFVqFa4
 6k0Q==
X-Gm-Message-State: APjAAAUgMolb2IdqcE4KxfS6B3Eby/bG0IzF8L2Do0jtGNT+Js/yNo1n
 vZ2Y9b8TY73ojekaYDl6opQcur4xW9qYuNLohcM=
X-Google-Smtp-Source: APXvYqxHqmmpD11MJRO6yuoyBvltYKFWJkQq7UxJVT4qvc6swUR9mDIPTvziXaDvcDGhe+mECq8Qr7PX0sGP/3daZE0=
X-Received: by 2002:a63:7845:: with SMTP id t66mr10836733pgc.31.1571415070584; 
 Fri, 18 Oct 2019 09:11:10 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:23 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 08/18] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_171141_014005_B8ED8463 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
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
index 0e3cba49ea1a..1ec5c5a8dfae 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -161,6 +161,44 @@ int scs_prepare(struct task_struct *tsk, int node)
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
@@ -175,6 +213,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_task_init(tsk);
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
