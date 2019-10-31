Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86E3EB559
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ege3k4QB7nCGNS1Bzyj1/OpbvJHevT6lTTAZm9orang=; b=AVIM0x4/qHDm3E
	AeWLMytxvhQ5aDt4w+2OrqsqKr4EGt+xnxPyKG7bH9sV2B6oaaEVpqOsFAbzBi9Pr/HRBaGD/yK8G
	gpRtCINdhOwq+dH9pZhHOnjmD7ty8wAgIc33fYp8KRdb5ioezrg8O+6fZYEjJkcOBZhtzZvpRG95z
	z3XKG/stsp2+kXNay3f2pgz92dqaV2I5/HOJpuMOanKFqKNsCOt7R8M95N9GwEEGahfQZKVUzUjGj
	Shhk2O1cQvVCjF+KR7GOld7cTwK4iH2Oh6g3jDv0XaI9lYfAT7jxEa9ZJH/EEwKvHcXBxJ/HIK0qA
	6CRAh+5tAmmTMf39IPrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDeS-0000Zc-A9; Thu, 31 Oct 2019 16:50:24 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbH-0006zg-8W
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:08 +0000
Received: by mail-pg1-x54a.google.com with SMTP id p24so2084064pgi.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ut7YUpLvWAiZLonPATqZ5OL9tOEZJcNF7+tDsNdHEWU=;
 b=Ghjlrkb1pnfNur1PCuCrGu3KmSL84JUhV/VRyXQlGUkgpAsmk5kMXvp57Mk7EYOtSq
 L/8VDDHfXZ3KUDC1xcym7naR9TXkHtFoyXvddQwvFISLnm28nEJXtrhVKjiDWc99o+wm
 bIXKaCoHuKC2xbc2hbdVG9x55NXltyby/oVTLxiYMqg5L3AXj+Jse9QRq7ocqCtz8Woo
 EwpS6ecvA2GO0JpKJUVbqL7jZeQw+99QXy+fwi9BAQMGs5rPs+dkXDB42GUWcoOq+vfR
 K9Q0cwMWNIBZXS43c69SS1vt9YQQD9Wr2zCStwQNshudap8C/A8PTXXPpqKAD3KVELa9
 kr2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ut7YUpLvWAiZLonPATqZ5OL9tOEZJcNF7+tDsNdHEWU=;
 b=CfJ1Q6JLElI6Iw7Ymu8NjNnvzKpXxbPuTr9U45g1sS5fdZQHCSaUVlVfyiYlRBen9N
 LxuaJdSbzRwlRE54eP1swff1jTY+sDxfYCPgtV3/mn+hNa59TGaTzsI3132Trlh8TSzn
 ctktRoQsXDhMt7hmox0Bwa5SqPXLLMALeSiKkdwNUiPDUK2yvnZxF50+93GjInBcpWC2
 WmAX+X33RwcjWbJO4Grft359MpnsNaO/STwqiZftKCYSsLqjSAjDeIg4m66AfFYZebHs
 6yO5JYXm+nw3wbWL40R5ZMohPDFe1GaHugKxKwYtrVM4jLfUVdZ4JZEaL6fwBlfS0Qtq
 +phg==
X-Gm-Message-State: APjAAAWkX3ujiaESLcgIQ/sJ0YWWsTn6yZ8VTovyCDGf3EJ8SUZw7yEP
 6NeRix4VdIEBTKeW0whg1VUAb5IqppxPB0GcAl4=
X-Google-Smtp-Source: APXvYqymaacyz4eRHwtAvxRw6d3+sUW8PqKg+fCQUsJPaPuhQFDN545Kov10eZWMR0T+MDCojgj91Rt4gt/RgGRC9ik=
X-Received: by 2002:a63:151:: with SMTP id 78mr7160557pgb.95.1572540425150;
 Thu, 31 Oct 2019 09:47:05 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:28 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 08/17] kprobes: fix compilation without CONFIG_KRETPROBES
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094707_342306_79AECB64 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
even if CONFIG_KRETPROBES is not selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 kernel/kprobes.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 53534aa258a6..b5e20a4669b8 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
 	return (unsigned long)entry;
 }
 
+bool __weak arch_kprobe_on_func_entry(unsigned long offset)
+{
+	return !offset;
+}
+
+bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
+{
+	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
+
+	if (IS_ERR(kp_addr))
+		return false;
+
+	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
+						!arch_kprobe_on_func_entry(offset))
+		return false;
+
+	return true;
+}
+
 #ifdef CONFIG_KRETPROBES
 /*
  * This kprobe pre_handler is registered with every kretprobe. When probe
@@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(pre_handler_kretprobe);
 
-bool __weak arch_kprobe_on_func_entry(unsigned long offset)
-{
-	return !offset;
-}
-
-bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
-{
-	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
-
-	if (IS_ERR(kp_addr))
-		return false;
-
-	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
-						!arch_kprobe_on_func_entry(offset))
-		return false;
-
-	return true;
-}
-
 int register_kretprobe(struct kretprobe *rp)
 {
 	int ret = 0;
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
