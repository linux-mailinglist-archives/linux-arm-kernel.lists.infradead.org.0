Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D339919FA7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de23mVD6hHNKJH8PlbzKtbg/V2sfiwLxnoEOh4Nl+EI=; b=i2TKxnUSccNW71
	sy97IsU0BwTqT3iJFFK/qFY83UqDnl/ZoksXAwORP+48YfHf9VBJXTRH465neye0jK4/oirT8y2SR
	+Qxwhv2LkwenqsPRMHble1sAg5H6skL+5FdNT7D9EgUw5ENwOLYGCImeXS1/CJ0J4TSVnI8yI5jQg
	yI/Oo88V0KYakkr7TTL9uPa0oTf7U2ojc2tz8X6XFkzmPErvyRcC0pkmZ64lumbwOoEkkifk2MeEZ
	II9TUw713dO6XuNlmUgnT/22v69JMOkaB97bHieNUUEOCavIlAMJR39d5Cj77HioUWBtxEDElp2g8
	LF07Niij/uxZzqvATWhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUpy-000507-7v; Mon, 06 Apr 2020 16:43:02 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUoh-00041O-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:41:45 +0000
Received: by mail-pg1-x54a.google.com with SMTP id o18so3728927pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9QG25IWAvZkbAzL22nhTW74bT1ay/PnpyS4BHMHWGZk=;
 b=Et7gqyUD+/vBdaTxuXGtUp/T61DuoxfIWoFaBtN3Pan+9c6mJeAvmtTBqFUxV+t/h4
 LN0HQT9+KjSaqn7Mixerv+7k7S7BD4mkDsLs/o8wZMIjVa09HJA7KFSGB/TtuXU7FvlL
 6uPHdyBl7z3cK9g1xF6YKJ4HL90gk6SiklDTGe+TeqWBho/vNNZIxuxtDhoiNjjP56EE
 VSD6bCJZy8gm1psKtCCT8FCp/6jDu2WpsQ5TdwxuxinTh/gByzaJiThF8xLLt1HhDfgN
 opEo0Vvbom6U7ovVNJ2IYajd7Ohq17yrtIacfoTmqzq2KcnP242dGSb7nqvNQr4W2sOL
 fQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9QG25IWAvZkbAzL22nhTW74bT1ay/PnpyS4BHMHWGZk=;
 b=UQIc0vzZoMyMoXQp7xEGjHyGknkc9fEEAWum5qseDPWezEGk1tIc+yARLybeL75+5A
 53VnYarnTpGKZ37sY/6DUrboTHncM1xU2LIZlFcmrzw4upho+cWUATdgsfonqjrwT4lY
 /kR4kEUu3exSGnOghvFTrB7NYyMhf0/gULgs+lWVIXGZAjmdTKG9jQ0H12OD7ibw4ex8
 6TTyLYkKKL+zMbQ0S0L/1I8VkYfAlMCdYuxq39vA7shULEs839O5IUw5IoMFIICcT3m+
 JRozLq/eNjZ1HvchQ1e5bTyk6u33dGTMV6uENMz86aTPCpL6GWRU2PQNTU3S14drrf1X
 8GZA==
X-Gm-Message-State: AGi0Pua8axM4/+Hl9mXPJmiSaLeDyaHVWB0lx7BRSjZoOU+IC/i1ykJW
 qpP2neZjVhEJql5G3q5aC8kWS+cD6ZKR0ssNZFE=
X-Google-Smtp-Source: APiQypKOUCwdutCrbx5jsB7oXvfPBtLmcNStpAuGEoVRC2rwC/xHSN2ipZVV7C3tJFoLyJ5tV7qmBNnr17/luexyr1s=
X-Received: by 2002:a17:90a:1b4f:: with SMTP id
 q73mr169352pjq.188.1586191301528; 
 Mon, 06 Apr 2020 09:41:41 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:13 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 04/12] scs: disable when function graph tracing is enabled
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094143_456239_9F389405 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
index 691a552c2cc3..c53cb9025ad2 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
