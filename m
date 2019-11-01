Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EE8ECB35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpoJsssApv80R2RYBA2ooZGPrdam1lYzn7TqDfCosgs=; b=jbuHdi/ptcPbep
	RlUI5gYkIXybLOoCCFXpu42digBE1x2OqRnxluTyNH99revoM+eiJOZkrSNZDfRlxp40vDSgzhSVH
	/tE8rhXhXobDqqKe7a4W2KMIv3+Gn4H4seVsaFkLsA8tz0QtUD2+PHmSaKePKuuHvZFfhs7JSVRT6
	2+qds95+38qssmMpzAVqYHxgQPGnk9Ds+xeekqCGMhumEXH0U1y18sL2redRGFyolN8sNWX6hJAKN
	DQ75OpeRVdXyzdf3PJ3eaESFMQU8n55gEdXJXwX3NnKf20qwanpeJaqUJVwencznt8beB5cXWBcIi
	hDm9vMgZSx+3ZLl9lzIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfBo-0001iY-Ug; Fri, 01 Nov 2019 22:14:40 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9V-0007yp-O2
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:19 +0000
Received: by mail-pf1-x44a.google.com with SMTP id i6so8429035pfd.14
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=lxookr95uMT9sOw8S1HRxQFBJ0wSUMPDNTYBScBbdzA=;
 b=VqPASQjKWMJdAAeJVcDeaVBQprxOwcKwHm7RWTEH9a4e15mPmrxMbW1NmgWy95nCCG
 gTOzFuhp1ly0goL38Kzph/3B6Z/grLfH43Q8d/pdkZ/OzdVRcdb/FYfbWEa2y3Z36z+b
 aTHaRyLhmFGkSCynkV7G0QI+cwcWnjK1qpx31PYhN1zT7bAET6McDo/Y5fThXHdO9Ek7
 zYHqR539+PQJrPPLRkOE7jflC+yHuXbTJUVLQrKHrysQdsbsiJzOBJ0HDbVrb0s28p6t
 kflfPrlWaRQdM1RMKSTS9mn+78aoixWKDx0joRXcRCUOTMxiomPR6k+4etm9NwgxSA31
 215g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=lxookr95uMT9sOw8S1HRxQFBJ0wSUMPDNTYBScBbdzA=;
 b=NMItMeW6YUqGgDBE7VQ2vJ1muLoer3jEzcJsq5lW951uNH4qlPYUbkd9fSrRtOl27/
 73DL3TMuif10G2cDfPfTQI//rKychtbBdTAOwoRbSbgp1VwOo1RhESFn0avM9RM6stSh
 zx0V+sC2ZFnvRHrRoO2OfCiM1xhxUYPOkk2FTU6goo8JPR5Te0PHcJupwmdXxhBeD+v/
 AbUUeNlawyB67UyI/UBcmezpmfeIgF/ZkMcORmwEN+KOy/naDya7Il00g3IqHGMs2abM
 DUEOTZZl3tHj6e88q76tQMxS0io2md18oGfzVc98yWOr/3i6AylJoJOTq4kh5cDP9M7v
 VeLQ==
X-Gm-Message-State: APjAAAVM289oTGnQVt9fnZG+hXWW+ae3PeREnEscpkkVGG6+M2c0Sr9L
 YVupGVp7FkvaLuvsvLdPgxPrcBYOQHupknQ7/I8=
X-Google-Smtp-Source: APXvYqy5WQVZIH4BmgA2vfXXE0nLc6aKF5v7DRRaYQ9YrQPB5qUQFSJiOmM2MmnfKMB9bJuYwXz6LVby2vjMPQ9mbfI=
X-Received: by 2002:a63:d306:: with SMTP id b6mr15679209pgg.338.1572646336234; 
 Fri, 01 Nov 2019 15:12:16 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:41 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 08/17] kprobes: fix compilation without CONFIG_KRETPROBES
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151217_950863_617C854D 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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

kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
even if CONFIG_KRETPROBES is not selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
