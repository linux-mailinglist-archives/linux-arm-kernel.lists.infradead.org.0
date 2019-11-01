Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87D0ECB37
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhsdEGLG1WjYd1F1gI3KUetOtPvYMBYXvZKv/omyacM=; b=hqtdT2ruWy7gY+
	GUvfC29QPekI9UrElTfhQoUQHEEhUJv+2p12hKGO/PEvwk6L/B6WoePS7oP4GCprjli1La407h5Cf
	lln0aqA+3FuH/3FXwxkZ0eTwYmmzH+iNfIVq9wv8J9pg6Vlu+yZvhwN6ewgoJeTrGoyVuWCY8PWV6
	noFeXR5m9GHbkUZ4qddP11vE2bOIMY8mykCyRSCDcbOG0dDTbAWepqxdPTqbYkhmhDJb2uWgI++jc
	AyI2WKGUYml7rtdtBERLE1lT4euwQ1KLbdp5mBcXVAmoo9SIYOI9rXTh1sZMkEgT0PNblz1lTo9En
	s1c4QpssTaqFG/hp95xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfC3-0001u5-T0; Fri, 01 Nov 2019 22:14:55 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9Y-00081H-Oi
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:22 +0000
Received: by mail-pl1-x64a.google.com with SMTP id p14so7168657plq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=YuceP/m4Sv7I7vrWsOPJ1pSb3CxvhwOwQ1OQoGSTS4o=;
 b=oC92Xyk4xx4OFjCywUW0xRGLKJPopJyks6H3DIWfvMcqM41QRHY8A6HpLSO2oO1inw
 7nVZsYb0ejRziH+5dLCL9D9wKeQQKeMEb1VUrkYc1cMPvyFcm3It+tNXG+Hwcj7gshxb
 6nHSjR+gi4hodQFSJLJDhZIR1+Kzve8eUQ6q7dVUcbIISZ2N2+mSkGwMJQvydH28gjMd
 oRMh4SmcetuL5E9614gPeg7eJPENTgrxaRMgcD0aWe9YQNHjd9wnZeZVxQ0kRl59z7of
 8623sjz/SPs/pQv7SS4ugqqYKNBb1daNI8KHgf/+dBsRhEhkLc4Q35KQzw9rmfiSpNPD
 e0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=YuceP/m4Sv7I7vrWsOPJ1pSb3CxvhwOwQ1OQoGSTS4o=;
 b=ltHgV7aGUDYSdJYqiyWxgJU99vc+cqgONydll7i0Bul+XT3IAoizVhWMgESk5YBqfk
 T3UCoezJG+uGA1QXLKQtKZiw/DBB3FCwfly2wq0pa0RU4L6foIgDPAEVF5jv4czKlnjB
 8MLeicS8Y3va6ntJ9NhYbkFNPKxdKWRM4OPNMcLoPORWrFUQM1I+LJpLiwciau5xiOyP
 whv5238ILHM3tm5gt+SttCDRKx6ErcbWDH6kWt+yRMzheZN92ydvgf9vbBnQNEh/exQJ
 gBjLek8lzd6ihjH/5UG2INHHw+ApuBoWzqJC9yUNCfBwEfcVhnSrnG5CdeQbll7qZjs/
 HGsA==
X-Gm-Message-State: APjAAAXLiDfLZG8Zd5Q05pBV9GbnkxXimvdj0QmSFavvW4TMw3fwqUW3
 Tyvgnl6VctOymJsuEs8TY8yyYCoXTGCygA7DY8s=
X-Google-Smtp-Source: APXvYqyESI1nj79EQYAfPNp7QT9azRRC93peb8wyxMPp245spxyPTFrWPJ4dhblj2gZ8cJDr8g3hFVKQrrU1shqGWxs=
X-Received: by 2002:a63:2b8e:: with SMTP id r136mr2674046pgr.103.1572646338730; 
 Fri, 01 Nov 2019 15:12:18 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:42 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 09/17] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151220_820834_E02685CB 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
