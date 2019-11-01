Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178F3ECB32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laVY+pxokHIUVlCpyho9t2hkqHdeJJBmH//J3vGTIGI=; b=sLNiC42hgAx/b4
	NofGu5kLRHoMG2GYDDt+S5Pt6UbM0/kFr96aEPdb6/N3vbKWmZ4Q/X0C6yGcumuKBQy3T7wWtZHWB
	hNs+SdztHctvnrCn2eRBnbmYBAuX4ZBzQfOTFDTOFoEd+jt4n6kzas1I3U6ghlM9kIdwGOeuwFhKB
	RKtDciYGfOhLLkT/z4APpb/3FaLVJUMoW4uGl5Rm1Dh7bzjfC7dBdkEa1KaT1z2Avl6llVwZwINTD
	98QXGG/3/h2csPvSSnOUXl4ytoJCfu7D15HOn6/zfR1LmgREyCDBbVIS+pqSP56dS0BO0Ct6gwPbP
	r4mxTOX2DWjnhsNgka5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfBb-0001Qy-PE; Fri, 01 Nov 2019 22:14:27 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9T-0007vm-Hv
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:17 +0000
Received: by mail-pf1-x449.google.com with SMTP id i6so8428963pfd.14
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bw/qAOzuJX7ixoBqz2PQ7jd7OYMX5ZXLMotdDh+Bihs=;
 b=TUOCiu9gLsLFy3Xp5OD9ee3T44RBZ9XBgIe7yt7CvNj98C6CBu9wAFiKO2vk8DcyhT
 Ji59uJo30gvV4E1Mc6+k9TAjV16C8IiKMXK7G0oVHeV/PAz2/fCEaRJcdINYSGhgESYR
 uoDTe09Jv1qncBGnVBU6OT6bb8ZxBNJKvMf1wcI0ooElnCm2FCe3Y7+zQ6a97/j39xPN
 Mu+yrOgb1hl2vY4VIkbI6qMmyB8qwY3HwJfeslpY+sqKd7Pkx4hNMy+qAjpsXmuINSXH
 Hbqb76hzhJWPhHLLM3oT+0GxKRDzWsCq1m6N3+XuHnyEuX9+4K1XJa7mKQznVdZHeHhv
 741g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bw/qAOzuJX7ixoBqz2PQ7jd7OYMX5ZXLMotdDh+Bihs=;
 b=pjYTul+rQIaFJSSr5VaWtI6Fjezsy/MZCZZ0IjLcGgeNENdRs7LjttJDiYk/3ha6j/
 j1l4URg3vXWPqf403xNuH07qnNTTn99nVt3yL4fcZBe5PvwhSyFYdyJMMKJbnqnT8n4n
 QEPDV++EtEprbJf+/7xP5pKz3lGGNrEg2/2ttvhz8jJVz1DWmDlxXGmahtH4hLWm0es6
 p0BQE8UPMSNgMPuPjlXga6C3eyMO0eyvUUoWpfBR/SnSxNwSO0rK20pyEaunijxMOWrx
 laHbJvyI/lrbQommQEiwvesg653UFGjhwOqi3R/NMIGOfQc0A/4BaiEZd0arT++Xl+gr
 Q6hA==
X-Gm-Message-State: APjAAAVA5I00YE7f8sE9m+mH0XKxLeWUy72KAVRkKdaMy4SfGjVwLA4h
 CRHB8Qtk/pq9gF3AeX7PCGaPrkMtkSobIrFPkbI=
X-Google-Smtp-Source: APXvYqx5AqsiV5gsrjTxTPakMbZqpZkpOWKFfa4kZ0m+C6pXJ6/DO3wHTK1s5AzNd4GAvsVbgqAkyBlJLNLHZ9Ye4kg=
X-Received: by 2002:a63:5762:: with SMTP id h34mr16176849pgm.235.1572646333610; 
 Fri, 01 Nov 2019 15:12:13 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:40 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 07/17] scs: add support for stack usage debugging
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151215_638350_39209C08 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 7780fc4e29ac..67c43af627d1 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
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
@@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
