Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD341ACD1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AETeCeq4S5SlvQLAFZo9EUgmxNqTHO+I5ZkXS/oPHFY=; b=rKI43qXt6BCZyh
	2VmgfpFCYrUjleyHsPIWIsV4fda9Y/k8YGhcJU2fmszajcMXYhl10har1Sw0ljuBovXhQgqcZwr4l
	ozKZJYwFMwnk/h68mjL11A59pMfUVy8euEm4Zg+WRbrbXWIl1RTKkYLMrdgh4B50vQ/K+/NNJob9x
	1wdD2F7hPT4Z6DPhimbSg3vo+4dtLvv8yFMJmxygGscPT5mc8WTJI1gMJxYHXU8IzlYLLrsnC8kVp
	SuXP30KwEYr9nWb5V8pb3Ls4GMtcWLUz952C+7lkcwEr0xkdPa/Jid5p2WOY5aueVWWKHZZyziGLk
	gSL0YaoLxGt+UgCNKEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP79s-0004ex-RD; Thu, 16 Apr 2020 16:14:32 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78O-0003d8-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:02 +0000
Received: by mail-pg1-x549.google.com with SMTP id r141so3492114pgr.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=v+FpjDALSMEE3YToTyyoSh5dhgN0urRtPwHsB1+RBqo=;
 b=LLB6uGgi081g4dKc+3D/4hphc5jFZuDn5l3K/Cxtfcs3/rhIPXgTzCDJ4HjatU2B34
 JY4fNmY4l5JYswvESy2IHRhqnwuSzzW+BBMx2qv9Y+i4mCamy8HON5fMlGYrckrZs0zi
 zqYykbeZ1nK8/8teogXlHD/G+fEHWxaLjwONYJdsxpHLsGV/uV6CPYJuDeVcg/JjeiqB
 SSqMbSaUnpkdFmw7gIR6KIznWHRwY5meJ2DEzQesEEI4NungE9nWx22c6EzLC3ly+4jk
 MftpYNrj0up2ZWOvkRRAr9cuASUwgpZg2ADv9LJBOB+WmvPbpOHT0hNO3fPOr3IaSvnm
 7NdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=v+FpjDALSMEE3YToTyyoSh5dhgN0urRtPwHsB1+RBqo=;
 b=i2DFS3iY2p6ZSUDbKff9iqyM4wgXvffNgWFB63FS5hxt77MRFl45YzsGDYMByHRree
 JtRfzadqPip6K2b93AXON+STVdImmIhYkOVUhYZPNMzf4d10EBL0iTUpsUbyHgUtG5XO
 WVOEgtYZx3GEAtL/WgtoW0KEMrRMmz5sb3ENeDHq3Um4bfBO/OakD2bbAZq/mnsrOGzg
 KXOYLnTHQw00RSKQI+kMzE3WpY65F9y8FvbvV0/gOriHpXK1o3YHRPE3Gf0kPStgUz3y
 jaw7Y0TrraiD6DHmemtgIAsyT5Sk7Tk2N4khq66IQvQw6NHyKGxnTae7lvXouwXSWRFQ
 wahw==
X-Gm-Message-State: AGi0PuaUTc7nQ7SMGJZfPF1vjJxBX/0/mbhtgwXfXnGOtBHGB/Az6fsP
 5ADIMm8Z2znRLtlAHz5tplN2evTxCed0WqlIH+Y=
X-Google-Smtp-Source: APiQypJFs2LuRTbNsCDtN/g/2Dzd+U0S8ccpzr5nO2MdW7DPIurrW0+QxGuzgOdLZ6sO3fXFhdLkcQx/1PSGVXyeSjg=
X-Received: by 2002:a17:90a:8989:: with SMTP id
 v9mr6124346pjn.119.1587053579583; 
 Thu, 16 Apr 2020 09:12:59 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:37 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 04/12] scs: disable when function graph tracing is enabled
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091300_990529_1D98A2D2 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
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
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
