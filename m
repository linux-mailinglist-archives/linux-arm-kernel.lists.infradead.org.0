Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ADD16ECD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojM4H/G6kFWNXkJs031jbRvAkQnTHpz0c6emLeQmCLs=; b=ic7hstph3ZQymc
	Sbxhk4IMfdILM+q+Ty01rm2p6wUCDJMdFsR0jVwk3QFWG8zv1Wi1Ruf2fKfnt/DJ8EHvjDjdFH5OI
	U009X+oitsNCW3eUrJ1RbAAwdh2rwW+g+NfiOpWIUKI3oeHhOhCWglo7//kxwyDv66lBTQc5FV4S8
	00diwDrrT7P0qfV2yryqLEyZ+VA9IxKXCRupaty5F+bQiZpz2hF/tAoqIUbg+FArDNHu1msLlpHoS
	ONN03eZ8eYJNBVtBnvHauY/KxIVQfIG+UcrAh2J2KcOjkCcR9a5UQUH6pqH0dsOe8GKxzTTx0FAHG
	1irLTrkwi4CsAJCPSUNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eD0-0003e5-L4; Tue, 25 Feb 2020 17:41:26 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBb-0001Sh-P2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:40:01 +0000
Received: by mail-qk1-x749.google.com with SMTP id z124so15874500qkd.20
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=euAiLk7SvDA/PnGZzpLLTI9flOv+YzdznFtW1y3XFgk=;
 b=rcZDangcxdPLQ8c/UeSJooK9TmmcaDC40GzTyXoR+zBGLCamuGVic+lOltfCliyqYp
 Qy8x3/XWiF5TB8IYJLOgBrOoaX/kfXC+FQpjknL3PmAvzLsHKIG8DFoA74qXXIQXcNUZ
 0OPMc9Q6heNg+Um6Kgciy/F5zEx8rAtsKgU3ZM7obRhY5/2A+Kk5A2CEjGk/5z4KifOG
 9Z6jS9mj4n9vzgOcBl5JrDZVyk1nzFBi2cDuhhMmE7njtr4mtFSRw2VEqaau0AxfNwT+
 T7LcR9LbC/GlbWKawMf7nnsCnVxQ4M+uxzYY1Vt1qL5/aWpfYaqxMkUArMyYV5gLmZTm
 3Obg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=euAiLk7SvDA/PnGZzpLLTI9flOv+YzdznFtW1y3XFgk=;
 b=RlJYX4ruovIpW+BszJE7e1BFEX95TVImyBohqcQZZQkBW3kviZdSaTuNzu1wmwBrjX
 pknNX+VA44dQZPdKOFuCe+aEU5UWJC6Z5SMSa4Nfwzoy+2isi1h0hnLX0cPue8FxhKKo
 vaaAj+v7Dy+pVh/Ojf9tq+gI0/GS+4tZKnxUtXF2tc+rdFHQ5KgJ1O63imG3ctvVVCmp
 YdJnXnrfwfxrMKhg/wzr2COFoeo6pbpm6pq/LjTJq/Hi1J5dV1qM2LAWXv4KC00MweDH
 S37AWMSTg5W+knod6yjXfxeOqFxXu97U15mkomrTnUaKX9TrU+/6aIp2//EiPacpm34P
 N5ug==
X-Gm-Message-State: APjAAAWk1Syie64/ThBpRTdG6ueAEcgxC5ZC+OdvpoCtLBTF41pAG8Ha
 wUI1kDJv+AW5deKW+st2D9k/5HFyhnYiioHDp+c=
X-Google-Smtp-Source: APXvYqxlqJxQl5BI1MzivwW+BHpAHu+yoCC0b4OSIv8tWhwsj+eyaqOdONKRweH1H/aDrmbR0wf2esPZBfRljhjv3g8=
X-Received: by 2002:ac8:3aa6:: with SMTP id x35mr39983775qte.38.1582652397221; 
 Tue, 25 Feb 2020 09:39:57 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:25 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 04/12] scs: disable when function graph tracing is enabled
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_093959_849472_59572A55 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

With SCS the return address is taken from the shadow stack and the
value in the frame record has no effect. The mcount based graph tracer
hooks returns by modifying frame records on the (regular) stack, and
thus is not compatible. The patchable-function-entry graph tracer
used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
to the shadow stack, and is compatible.

Modifying the mcount based graph tracer to work with SCS would require
a mechanism to determine the corresponding slot on the shadow stack
(and to pass this through the ftrace infrastructure), and we expect
that everyone will eventually move to the patchable-function-entry
based graph tracer anyway, so for now let's disable SCS when the
mcount-based graph tracer is enabled.

SCS and patchable-function-entry are both supported from LLVM 10.x.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index a67fa78c92e7..d53ade0950a5 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -535,6 +535,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
