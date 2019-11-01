Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D2DECB3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PxZDuCy1Fbh5I5OXQbqM1GBASA+9neSuPBa2J+gNWU=; b=SJlLqym15uuMbB
	hy3w+V2ZLKcqalx8CXwe6E/0gQDiVj/1lEUMxWzKkrRawvjYS8rZ8vGuD+TIlWO72cIUJqhIYKMOo
	vtiab1jYlotlGGOjYfGt2qds+Nhjm4ye8nqgRBS1mRC88bA6EJhm/ekchWDzayuLwXk/lBcaHtL/D
	fnS/2mfHohvlAwlVJDgzAK/cIzGuqB+/qJEXrO9SYtRF25a+cs1/U629ai7lDayJUG1DgjMvoRwFY
	vxYjZuhmHnUTzBz7WXvgeLKX9ogsXl1qufQDCiq8b8j+xKqLfNF+oGtvTjfdYHjZaPOW3kRXo7UM+
	rIop6A7kKcivWIH9f/mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfCv-0003sg-2G; Fri, 01 Nov 2019 22:15:49 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9d-00085p-W5
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:30 +0000
Received: by mail-pf1-x44a.google.com with SMTP id r187so8429134pfc.16
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RsnQ6FRofmXv+RSRylCILajHjnEectXS/G9SmKbukAo=;
 b=o1wmzs+qUKyvyNRJXp3X9qKqVJBTuvDks2cY0wcDPQb7bIkAGC906DDkR30LW9eQqJ
 zMXXLC1USMOZgspHImZJpgDDlfNKWn8CCmJRaf8YaWLWZjkkBOjbdmCWqR0xiz2Z1E8M
 IMXajWsM2ZNytq3YJD57+AcO0W4a4BAeYhyFET+L/KsEcCvEEvcQIkNw9qARaUd3IBj+
 ++FoWxR12a+dlSA/MO5FA1lV1Ulde6ProNs5GbCiHu4RxgZbton9GSSH46BCYxqtL4td
 jIGaL3F6B2fs+2u9hLh0hFh84welR9hB0LYDeiGk0rmXfYPzPJvvptVVG6q7/+epyQDG
 9jJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RsnQ6FRofmXv+RSRylCILajHjnEectXS/G9SmKbukAo=;
 b=CEwA3j1Mvqt5hkRz2pgT1/KLt2UBfHo8XpOt50p8EaYENBP9R3ithu7BgxGo1slem1
 YPRbgOrWgStddcyYJ6Uah9xXvGN/2OtsYIlfGf7y6aKq1RqBQT7F+CdOK1JtURsDSO9n
 5vqLV6dSqoFtuTHe7px5zkdB5Ktu46ttZo2mbhuAxPux6rLZotvnwA7dlqVmmoUjH1LU
 fg/4vcb+rhbs91Doiy/IL03re8fzk9SLe0Nq8En+SpVqk0PFcYcQnYm/OufV0xfNeQPT
 g5dfChxoZZLUMRFtuxFGx3qDa35ugUATFYV/4ngHtYNjEslJ+7kCSajZaz9W/yBVr735
 FZug==
X-Gm-Message-State: APjAAAVQT576y7Cwk2xu4G156lQSTRyLLPwbN411jTV/6GwdP1YTpgOD
 P/CWTgLXaRnK1I+UZarbnR44Jb2XrKQEJmMn8eE=
X-Google-Smtp-Source: APXvYqy8xknc+AggluM5pslguFgR4jRQWMnOnFZJmuiy7zcx6A+OMKobqQMh8kuVoFD8eIIYYvO3uXQeHJhmKYfS7dA=
X-Received: by 2002:a63:8f12:: with SMTP id n18mr1357176pgd.340.1572646343780; 
 Fri, 01 Nov 2019 15:12:23 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:44 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151226_070760_529073E5 
X-CRM114-Status: GOOD (  10.63  )
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

With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
modified in ftrace_graph_caller and prepare_ftrace_return to redirect
control flow to ftrace_return_to_handler. This is incompatible with
SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e7b57a8a5531..42867174920f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -148,7 +148,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
