Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA9A9C3F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 15:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf2i7D9hKRJhN68dA6iV1+nmDsx7a10onYIhmc+5vVE=; b=N4lQ5Wvk43UB49
	NFOLG/dLkmE8YLsot8BcE7GP4GazvChiUEkB54nhhtftWmkfaFR91l5AOVclL93HpEcKPgxDxvyOM
	RwX4PvYNdu40ia95nuVAHmvSErFPYD8fC1dnPrpJbjc7vQo+6C/62L8bpBE6gHj1w5H9ACUIbjE9D
	o/LHzF31m+8gVu9umwf1jJdWQ/gIKGEIvdcjY9YWkvRHA7AUfmp9oCRkyCTMNXbE/C8m+XVNqC+Qh
	XE/mdF+yD4mo4I0cIb3FIkoiyfMXOgkPRIjLptWus4DMCPDwZmez+8MXaMTkeSu0cBCdVN3Wdd4aK
	tl8id2EH/gx4LxhV/dSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sYo-0007QZ-55; Sun, 25 Aug 2019 13:27:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sVv-0003mw-2b; Sun, 25 Aug 2019 13:25:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so9809998pfq.12;
 Sun, 25 Aug 2019 06:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JqpgoR8V6SjsIuqoJ+8NqdaMmEPfAbLAaPv+Hcgdg84=;
 b=cOVJF79WqvqKRT3ZXzzxuLNI4rbZt4lfbP6az49c1byhyK2QahOrqbSI2dB2fZhWCC
 xJCbft2VLYrbwdzXF9jIiXUwPyokyE/gLjMn6UbplIiyUIshSRGBh09bXozM15K1nsuc
 hVqsLwo8519kPAFe9mVCqIiwt6iUC7u7wKwV7QZ33C4FGl/cd3m96WtMvKbt7c4jcDwj
 QB3okZeBtzimdK2gKfpcMlyKmkszszsFr79e3wOM8/ErGZfWwWpwQlwOhcLgo9WKQzwE
 CO6qHnCy0oV9Gt51zgP/CeciV8d7/eTmq3bR5PhIONNKkekvCWxA77q6JHkEqqoviw1X
 t/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JqpgoR8V6SjsIuqoJ+8NqdaMmEPfAbLAaPv+Hcgdg84=;
 b=iVl9SITYxt+Oj38/DL9slAY3zN/HbP6w0hHA0pwbeBdkgMJ7tsBC4HyNAxbuIMs18d
 lbSKtdqjcI4mqUEBkK2l0laRmhcYKhAjJ1n9KhsCIbLij4shS896feWCdmRdAwbPNYiX
 zASLeU5jDP+5K6bBURTHM/MNjqkYciwW0uy9XxbRCmZRzx0J5hVCWxrALpJk4yGcLlCW
 +fApc2WrlKzYTSEPqWoOzaiP3c+IsERumtGJrGltG4pu6O7wwO8q54hLNOf3mqISF2Hf
 IgDBaGsaAt2c3mhJRjPQFzAyawgSBC9QH5RnCTb5lRmnrjt6MLT6//6cn0+Wq8jzO6nX
 8aZw==
X-Gm-Message-State: APjAAAV+FWQFW/fn+//GJ+Fuk0KMMqfFG/YOFOg5zNiljJwrt3kwGc21
 lCy+PXyJpYkATvgh0S9Scr0uvX8Ad+2fxw==
X-Google-Smtp-Source: APXvYqwQzM/nOUwplTcnKi74XFc9NcY/wLN6wqU0HucyOEq0vc6nrliugvK9Jha3kK8nxmI1irB8+w==
X-Received: by 2002:a63:fb14:: with SMTP id o20mr11958817pgh.136.1566739498486; 
 Sun, 25 Aug 2019 06:24:58 -0700 (PDT)
Received: from localhost.localdomain ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id y23sm11076562pfr.86.2019.08.25.06.24.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 06:24:58 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 09/11] x86_64: add function prototype recording support
Date: Sun, 25 Aug 2019 21:23:28 +0800
Message-Id: <20190825132330.5015-10-changbin.du@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825132330.5015-1-changbin.du@gmail.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_062459_158845_661C7BB9 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-parisc@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch implements the arch_fgraph_record_params() function for x86_64
platform and deliver the return value of function to ftrace core part.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 arch/x86/Kconfig            |  1 +
 arch/x86/kernel/ftrace.c    | 84 +++++++++++++++++++++++++++++++++++--
 arch/x86/kernel/ftrace_64.S |  4 +-
 3 files changed, 85 insertions(+), 4 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 222855cc0158..34e583bfdab8 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -31,6 +31,7 @@ config X86_64
 	select NEED_DMA_MAP_STATE
 	select SWIOTLB
 	select ARCH_HAS_SYSCALL_WRAPPER
+	select HAVE_FTRACE_FUNC_PROTOTYPE
 
 config FORCE_DYNAMIC_FTRACE
 	def_bool y
diff --git a/arch/x86/kernel/ftrace.c b/arch/x86/kernel/ftrace.c
index a044734167af..fc0a062ce762 100644
--- a/arch/x86/kernel/ftrace.c
+++ b/arch/x86/kernel/ftrace.c
@@ -31,6 +31,7 @@
 #include <asm/ftrace.h>
 #include <asm/nops.h>
 #include <asm/text-patching.h>
+#include <asm-generic/dwarf.h>
 
 #ifdef CONFIG_DYNAMIC_FTRACE
 
@@ -918,7 +919,8 @@ static void *addr_from_call(void *ptr)
 }
 
 void prepare_ftrace_return(unsigned long self_addr, unsigned long *parent,
-			   unsigned long frame_pointer);
+			   unsigned long frame_pointer,
+			   struct pt_regs *pt_regs);
 
 /*
  * If the ops->trampoline was not allocated, then it probably
@@ -973,6 +975,82 @@ void arch_ftrace_trampoline_free(struct ftrace_ops *ops)
 	ops->trampoline = 0;
 }
 
+#ifdef CONFIG_FTRACE_FUNC_PROTOTYPE
+void arch_fgraph_record_params(struct ftrace_graph_ent *trace,
+			       struct func_prototype *proto,
+			       struct pt_regs *pt_regs)
+{
+	int i;
+
+	trace->nr_param = min(proto->nr_param, (uint8_t)FTRACE_MAX_FUNC_PARAMS);
+
+	for (i = 0; i < trace->nr_param; i++) {
+		struct func_param *param = &proto->params[i];
+		unsigned int sz = FTRACE_PROTOTYPE_SIZE(param->type);
+		long off = (char)param->loc[1];
+		unsigned long value = 0;
+		bool good = true;
+
+		if (sz > sizeof(value)) {
+			/* Don't record value of complex type. */
+			trace->param_types[i] = param->type;
+			trace->param_values[i] = 0;
+			continue;
+		}
+
+		switch (param->loc[0]) {
+		case DW_OP_reg1:
+			value = pt_regs->dx;
+			break;
+		case DW_OP_reg2:
+			value = pt_regs->cx;
+			break;
+		case DW_OP_reg3:
+			value = pt_regs->bx;
+			break;
+		case DW_OP_reg4:
+			value = pt_regs->si;
+			break;
+		case DW_OP_reg5:
+			value = pt_regs->di;
+			break;
+		case DW_OP_reg6:
+			value = pt_regs->bp;
+			break;
+		case DW_OP_reg8:
+			value = pt_regs->r8;
+			break;
+		case DW_OP_reg9:
+			value = pt_regs->r9;
+			break;
+		case DW_OP_fbreg:
+			if (probe_kernel_read(&value,
+					(void *)pt_regs->bp + off,
+					sz))
+				good = false;
+			break;
+		case DW_OP_breg7:
+			if (probe_kernel_read(&value,
+					(void *)pt_regs->sp + off,
+					sz))
+				good = false;
+			break;
+		default:
+			/* unexpected loc expression */
+			good = false;
+		}
+
+		trace->param_names[i] = param->name;
+		if (good) {
+			trace->param_types[i] = param->type;
+			trace->param_values[i] = value;
+		} else {
+			/* set the type to 0 so we skip it when printing. */
+			trace->param_types[i] = 0;
+		}
+	}
+}
+#endif /* CONFIG_FTRACE_FUNC_PROTOTYPE */
 #endif /* CONFIG_X86_64 */
 #endif /* CONFIG_DYNAMIC_FTRACE */
 
@@ -1017,7 +1095,7 @@ int ftrace_disable_ftrace_graph_caller(void)
  * in current thread info.
  */
 void prepare_ftrace_return(unsigned long self_addr, unsigned long *parent,
-			   unsigned long frame_pointer)
+			   unsigned long frame_pointer, struct pt_regs *pt_regs)
 {
 	unsigned long old;
 	int faulted;
@@ -1072,7 +1150,7 @@ void prepare_ftrace_return(unsigned long self_addr, unsigned long *parent,
 		return;
 	}
 
-	if (function_graph_enter(old, self_addr, frame_pointer, parent, NULL))
+	if (function_graph_enter(old, self_addr, frame_pointer, parent, pt_regs))
 		*parent = old;
 }
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
index 809d54397dba..e01d6358e859 100644
--- a/arch/x86/kernel/ftrace_64.S
+++ b/arch/x86/kernel/ftrace_64.S
@@ -289,7 +289,8 @@ ENTRY(ftrace_graph_caller)
 
 	leaq MCOUNT_REG_SIZE+8(%rsp), %rsi
 	movq $0, %rdx	/* No framepointers needed */
-	call	prepare_ftrace_return
+	movq %rsp, %rcx /* the fourth parameter */
+	call prepare_ftrace_return
 
 	restore_mcount_regs
 
@@ -304,6 +305,7 @@ ENTRY(return_to_handler)
 	movq %rax, (%rsp)
 	movq %rdx, 8(%rsp)
 	movq %rbp, %rdi
+	movq %rax, %rsi
 
 	call ftrace_return_to_handler
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
