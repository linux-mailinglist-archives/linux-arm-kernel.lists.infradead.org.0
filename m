Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0882B1BA9B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uJVdZRXNXFOBCATe1myqnwYmUOJVJdiG58QAwWQ2TI=; b=o+ZzUSDcdNdg+O
	dU5j9fZSfr8vRJEnvrI3atO/e6jB0iChVKb40lSqijUvR8rUAVrjgrF8CxlDpV+ChmiBwKZ0vZeGy
	4ulDdpZoQT0qQyUTXal/OfehRTch+l+c/eySzSEdQieCQeh3YXm7W7hWqTqXsbWaU5r2fvOIwVAL3
	cTCh/UujVKtVFl1bRdj3amn/+GaxgUf8c1KqRyMcbknO2Su3FUhJPvsOy3v/fOQ4RdqEqwV14qvf3
	Jk3ZJpEfv3XEpwpRE1z6KbVCcpV9BTE7g6fbK3rTtZjl5wQ2Zhs7qhDfLrAwmdAgfZY1vUY40Y2VX
	89EjbYW34dQaDwLoWQ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6Dt-0004GX-1V; Mon, 27 Apr 2020 16:03:09 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Bj-0002Sh-IH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:01:00 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id j4so7124293ybj.20
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=s5XAabWLI2BrMJh1ovnuwgRiP/5q7kOCrh3Tv97TlA0=;
 b=aKKOaYv8P84S78HqqnTCVvsVcMXU5SuB2uvNssb9dPS+wTPsWhzH4tykYH1PsvII8g
 Jd/hsa/Mgbp25Jeg8kQqz5FruH6lUYId1eE5kTscIN8QaYWmGyGrs5QWCnBs4rAdSgXQ
 zC0Nlt1KC7ARBPh/nOWpPnDWG0rRtqwjW8jYc28CX08RgkR6SRw7KhBHzjhgOoqClVSa
 24U1Bn/ippHj5neJKtLWLh9eYKgPspBRD588z3b2ONTvZ+YfHBsPfig2qNeCQSypkVrT
 Yzp1OhGBKTNMPpcFLH0mbf95THoQkUSgEmKq+w0AYmnWxJt379tb0t0TUMJlMmHfTMKd
 cfmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=s5XAabWLI2BrMJh1ovnuwgRiP/5q7kOCrh3Tv97TlA0=;
 b=N4in53FF9dHO600aCGoL7Ifz/WeCFFJn5PAmaOe//0BgLSCLSFd1Bt6Cdo4QI9mfb3
 Ay+2JKiwYh4QmQ5WLuuwiaJljTic72/Vn2GKGGAIwtwMT6PA6Yw07zscexE4e52zMlZf
 sQguyYxD7NeGRyy59IVobzoyZeEfUXUWGXL36sgXrqbLa7waGp9LkfcHxHUeFXj4Lt9T
 Hvrfbb9MsS763CvPPZ9uzP8Fa8BF4JH+weva3iSFUGQMuUjvVX1NK0YAsUPKLRm0RGUL
 RViA5aCEgw9C3KXpb8uEZV02oIGPSKVVXk3qaNvVASqwxYQMlix6G1Mk+ypuzGCv31gc
 fTvg==
X-Gm-Message-State: AGi0PubyEWU6dZ3Rx8t7+boJKSDdmKZBuJZannYO+TJSe20R67bjeE6J
 g0vKLjOuWQx+5qht8woGky/S3VnlRikxYK2reH4=
X-Google-Smtp-Source: APiQypIC7qXsP5qbhdeCuYbEm/RDRXHOxeiSr4jdV4m9YjAk4hfpiSrYO6gGIVT/CP156YV9CFT4O6s/Zh/4ptwP/o4=
X-Received: by 2002:a25:abed:: with SMTP id v100mr3797424ybi.96.1588003251771; 
 Mon, 27 Apr 2020 09:00:51 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:14 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 08/12] arm64: vdso: disable Shadow Call Stack
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
X-CRM114-CacheID: sfid-20200427_090055_619072_1F0BB866 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
