Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7E7DCAA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIY9TmQyn09kUDn8ZM1sg6JoCGyXNHFTOEBBpA98IXY=; b=Tg5kABe7h664zw
	Tzuae0WkMXyAn9uOrtqSpgpZjyzGNRUj7T9BABrTSq/rc+iMMcpdn4QfgtXv5DXixvqB04eOZh3Dl
	DFMxbksl9cfTL3aqWOEC/l9OFrO7sRNzK1qhX+qVnem0AlaNEKtqELRhc1xuZI7MztMmOZ5HCTfJc
	eRTVXuhg+CA3FljUJfL4uKZHnDjE/UKo2WNv+OX6n3+SUvLhTlEjHlSf4/143W7RiwSNy247OjU+y
	5B13Rv+BBFaTgt+ZC/HUtTfS0WTAAKgg/Im271SIvCHRUKdLbFzRULR43icebnj1ziKqi5LICf1fO
	UXVIkrzVdy2Xc3zatBVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUtK-0004aY-UC; Fri, 18 Oct 2019 16:14:14 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqV-0001tK-Mz
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:21 +0000
Received: by mail-pf1-x449.google.com with SMTP id z13so4972552pfr.15
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=O8IkwU6sBVUF8FqvV1I5skAqoYbhLBF9oLtPiANlCGQ=;
 b=JytSfSIKC9plsUuL7Anvr6QOhk8r1uFIhvXpVGgpoIt+Pceeda3VIOzbcA7+0/BsI2
 zIOFDZDlBlALPUkKw3QeckVXjlO15PINjv6We8JOgEFa99U5KrlSx7XXOz6Nx0YB48ik
 JUIvMysSkaZBaFFzF9YCNL6v7dsTQWajujUMHj1WzB/oICg2lLsquw3Vw81wZ9YrRh+I
 eqZjR6qEmEq1xmlqn4gPhCaDAzL6Ck5jxkdyZpOLHnnw7A9jN+Xtb/99WqHJGyBIz0eH
 RHpYhCrhAeYHu1mm3FYIj4Y1yIWOuV3/oL+MaGiwsAiiSjet6tZhPh7Y20s53JxWp6Uo
 RIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=O8IkwU6sBVUF8FqvV1I5skAqoYbhLBF9oLtPiANlCGQ=;
 b=pxfXA0HUIn57jG8+T5k63GKOq2Or6r91QPCzvqNaZb2RZv1Cdm4xqMSrC+A+EYAyeT
 HK0KuElcn2wgA8P6y7cOLz3BLQSGZPBKlo6ydRG7felsTuA8KLRIF1vJK0GnwJDHGCVz
 f+PQWThzKNP9YUQT6gXIif4kRQM1jfBL/AJNX44LFTJsdq+kDtwi/UHcVBfyFmj1E/uy
 UNGjQB/O72J/DfMsRQYb5jzIYPwcEF4xAPV1Io0mfS2qkhIS7kK8cDeErpFqitN5ovCT
 UCXMHbc+tjLptFFksXLwo6pgNt+vUD+gFNurElyqfdjHIrhWZi0pxHUiyrgz/EJkm844
 /8uA==
X-Gm-Message-State: APjAAAV4ud4pJuAPJ1MPazMeb1WPpcI1odFBYjSLOsGbpgskIWKDQaBd
 8wLwbkkY2CTgOQcpmszoLLBjximDXa8lLZ4RYII=
X-Google-Smtp-Source: APXvYqxCc4imQBOuO4slIZxb1lJUVZnQFeO3XHf/hzNVQOpLbC+EVQgHSML0nT8J+/sJkR2vVeisW1XnmtFkqXhxt3k=
X-Received: by 2002:a65:68c1:: with SMTP id k1mr11253965pgt.286.1571415075496; 
 Fri, 18 Oct 2019 09:11:15 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:25 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 10/18] kprobes: fix compilation without CONFIG_KRETPROBES
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091119_776468_43367C9A 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
even if CONFIG_KRETPROBES is not selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
