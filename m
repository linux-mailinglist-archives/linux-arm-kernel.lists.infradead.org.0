Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382DFEB55D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8n2YeW1XDafyUasxypWJNI3UNzskVxPq9Zh3X/98SNU=; b=RAke438Ktn0VmM
	M2775owswGG2FrzDMxBRSVMECswsltS8ZqQxduv++8QpIAyO2LjsH2PSJoqGFV/ka44wFDfoVHeUB
	+7KuQeetDxKA3PgTRdbdzTLTb0xCMaV9z7T86QjyghzE3iOEBKzIndyGskinbOehQ4JOFayfbYaPk
	E7F9cBpJLxcVACbSoqJbSUt5ZJawNDAb+0nNNssUXIf3QBnD56J8BhxsVzr2T6uzNpbhyeg3FUot0
	KPBaQ9LI/LZyuOuJZaMxGNwfHAev3ZGg1Bl/jOvhUCotb5rEDRuHfu9T0FTuG10qUqraU73+U3EYL
	zsDqwU2UcxnDmEaVRS2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDfb-0002TF-OB; Thu, 31 Oct 2019 16:51:41 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbP-00079D-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:17 +0000
Received: by mail-qt1-x84a.google.com with SMTP id l32so6898884qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=B4VLNzxMuvBiHcofU7yya6+NRz/joAG8uuuPQJlxTTo=;
 b=LiHsXWMw7bxtDeGEYRXpMn16nSyLdNS5lx+NSaesHfyJwbpJ9dv/hg1+masT0ktx+u
 GX0uOBJ11DAuMgxht/T5EF39gfFO9xTW1PSK4PEU0jy3aCOEqI3nPxqbXhiO3dkUpjDo
 urzDfwcuWckptE/Ao67JmdtLQrusiSCYPZDDMBcxYj/czYbCp7NNwbd7zcOwa1VvwCwl
 bCLZbQgxKTiU/SHhlKA9CxZwmprb/+rX2Rq8iGPkaL2PUwfngGsbWXLDbVI9z7gs6RBM
 TDT5FjyYB3G7P0cpX1mb1ilVQEka4Aw0h0I4BCIiujvaIlw0NIXAczBNyr3B++VVcB+3
 +Cow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=B4VLNzxMuvBiHcofU7yya6+NRz/joAG8uuuPQJlxTTo=;
 b=KcF+1qWJvdIPDzpAnJCK+a5DkbEO+GxuOHfuNBnjMvfiKMa/eIOmBklyB84+mjcZHk
 eD2QTpIYE0xF7919yGU+RjiNGZsw9ncup0U8I72UF1pQN5XXjVwM/M5w4bAdFazQq6Sh
 pPaxVG/t6Yek2P9iWbX1C2akoFYaaL88TEdYBVAszHwW6d5iXI+c8x9HQRK3pnZFuera
 ugqWcXmaKSN5MUy+F/oQQQm0QviLfCVuL+ETSlsHtx74NNG5EINHxNRTocLC87LOzuy6
 e15wQzhJ4bdU5+Widbq6/IM4sMp83hlyP3B6aP77sl/5XKDUWrxPgHMhTVtwiBxbCp/+
 v27A==
X-Gm-Message-State: APjAAAWB0AYA599JWttZgONTgSJt9YwV4QA+Fg1/hfUBGzxyragH1uSP
 77UfEB9q/VGXlXLkdra/0yNYX6hRmZsCS/8dYAY=
X-Google-Smtp-Source: APXvYqwoggK1YVUJpQXUwc7FiBvv7A/DJq1W/EwQk4BCJ6LoqoLRq9NRXAmJ6C3gzBh1eCK8VeecRlAeD8DpBndQofs=
X-Received: by 2002:ac8:22c4:: with SMTP id g4mr5716668qta.45.1572540432881;
 Thu, 31 Oct 2019 09:47:12 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:31 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 11/17] arm64: disable function graph tracing with SCS
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094715_672867_59DE19E0 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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

With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
modified in ftrace_graph_caller and prepare_ftrace_return to redirect
control flow to ftrace_return_to_handler. This is incompatible with
SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
