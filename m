Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2E0E3FBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ege3k4QB7nCGNS1Bzyj1/OpbvJHevT6lTTAZm9orang=; b=h1ZQilro7iVMJS
	d+dWTzkOyyeIP6Kfa3unE1F+pJK1nMxenfPGaO1PmGej7Y0K6IEvrS2G9mtqv0h7RK94dcJflw8YX
	8/PYdriNL6uNeshFbGEkaBSiJA7Q8PWZbeu0RNWV7uAktFS4K1i/BN8zJrfHBWGo5fW+ssG4B4FGj
	3uRKfxfFFwRn6CrXfqSMncTTqk1aTXqQhG53mNg2c7CSdy+0HvgncJg4uUrny34FhARFKj3LoJOGG
	Eb1TGnkwt/4/Lb/rjDy8oY8E7VCCfBaTzt9naax7nC5JhVu5tIZ/Zog/4vpasu2gOuDGf0XC033O0
	Eq1BPNnfMPiHmKEWKS5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNlzd-00042l-58; Thu, 24 Oct 2019 22:54:09 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxf-0002ZP-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:09 +0000
Received: by mail-pl1-x649.google.com with SMTP id j9so169843plk.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ut7YUpLvWAiZLonPATqZ5OL9tOEZJcNF7+tDsNdHEWU=;
 b=Yue9uHjmOjCVuztIQPd86DzimLWI+fR6hTvdgEK/61gESlizanN/A26bP9cX7dKHQZ
 oLJaaihwQeZ8TJTaC/aUcwdebnAqYL1UA2240obxSIMDp+j8AnFncQVqEMSmDWOZyolB
 ZdO6BTWxOJWZJrdCoEIXzyAMbQCBE/lBQOUYz7LfURQr9FE/nOgK5wI5aA/YpCOOoAKs
 ulfAhIsP7AvmLnNWY84oHIXlg/HfyhUjn7orwuaGMA3KCGHEhcJBj/YnjJpM4c+XXuZ0
 YSvScvKza86L+Kajd8Kd/l8lRkcS8nw1BRebOUAsJOMUPyf3RTIJKK6kMU656U4CuO/+
 09vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ut7YUpLvWAiZLonPATqZ5OL9tOEZJcNF7+tDsNdHEWU=;
 b=XYRjzPlErETFly7c+DKifM6utBEjGDhYQ0iLf2W0qdwKYm0T9hLwkzsP4JRGQGcVse
 JwTSA2uullQ3C97qDosx2hGl5/Sikq91RJCWjY3wLbD107ALO3tkDtr3Q1EvSrgOIz9x
 SIco7MgE+Zd25RMoB+SaQtobCi13ekHSAxyQcpCvUqA8JqE+JvsoOBFIRYEdcMV1pIv6
 YIBC0GUKc8/2XpHz3MMzp4ny8sNSvDGfIeixfT0bPVuM9AW1JcRAv+gz0ikKXIpcRob0
 EaEoZQAK0nd9ti5hnSl7Zc6ZfdTMbvwOgHfqJDNcmZ3ewNknwgDMdCmNRf9TcuHJY5OT
 e9NQ==
X-Gm-Message-State: APjAAAVxrwyHiJnxC6uEpUh687FIwpJjPta65gFrGA//iiD69cKrLX5n
 +i+M9uX1sqiXyeRBKFVyGIuWOXMzkjg3foDidIQ=
X-Google-Smtp-Source: APXvYqyIrzZDUZW/ai1FBaSFozXCzV2dy/HKURTLyrbV1w3X+deCMyV91eFC953B77j0GjtVKG+bkdsaiwl8eZ9vJk4=
X-Received: by 2002:a63:495b:: with SMTP id y27mr505887pgk.438.1571957526087; 
 Thu, 24 Oct 2019 15:52:06 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:23 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 08/17] kprobes: fix compilation without CONFIG_KRETPROBES
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155207_881900_CF7E9E0B 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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
