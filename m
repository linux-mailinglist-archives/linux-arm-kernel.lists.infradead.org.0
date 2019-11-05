Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3996DF0ABF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulGL7CNGoEDIkDDfpRqIXgDO1SU1vam7L8zgs2KL89w=; b=P6ycKVpYZR8nS8
	MKJm+ZRuiIJ+ijxlmvJggnFxuWOJM9qpC4dtgEeMWYQbrwyftfXTvJxQL+L6Wf8BIZkr+DZNFeHx/
	nILh9ZH30wmylvXzfnZM+GDLswYToIBKZ0V4FheXVUwK6Y5iT8kYt0KLIjuk0r1PptU3SSXnOfbRX
	cMr31z55x8JR6A4B1YdAkHcKkepHuVp7mT0VFWyCs88/AEGtvYFUwZSqfYDJY8hQAFtgH+Fpwnp6w
	1guu0cFOU1WjIVRyrQCd+viHiiCq5G2bRhByLwM7SPb0BDON+3e8rC+Ep1JHeI3yLsiJIDc160tBM
	keGJS7086F9y27vGh0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8if-0001Nn-5y; Tue, 05 Nov 2019 23:58:41 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gh-00080b-TC
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:41 +0000
Received: by mail-pf1-x449.google.com with SMTP id j2so17475732pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=m4cUlF+6BFA5FNFSy/SkP+A5WQosIpsKOuqRDiNS4Fs=;
 b=MkeBlqOT1wtRB47pSUzDXD8m2gj/abIK7oOlbgO8kye4NcSoywAeU5ZtSxATJfMS2n
 sLQRqxnA5iMAtD4OVyCqAKV61xGoMEiKHHv5WZLdZGpXH5vTzfmZlcB9JqF0UIw0+fxi
 c3v/IzYD4RKwck3PyJuzlC7Jvs44fd+x/pfQVweb8C0DMCYwaLsC3QIombbYFjvnDAcI
 6fAyLaVNPBEmDJx0XgWILXvjSQ16pLXXh8OX20eaMdKqUAUb/IPjwkwA5StaodCgnT6k
 fOX3eGQKvjofeZjc0oKfmlzFJBlDBOoEIoLe2boRm/0W+bt6Nlx8c29PhG3Gh4cKijCZ
 KWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=m4cUlF+6BFA5FNFSy/SkP+A5WQosIpsKOuqRDiNS4Fs=;
 b=Iv0utj73X0ZO/yohRUpiAP12Efy5RbZ5/99jl137YETMxpQH/bU93iQ5etkQwk/02S
 oHyx4+0XJ+ZAz0jhNVYHf3nV1P2mKrGwqMMcDoXDWW4zvzA8TRl8D4a+nNx9aULSXXhu
 submoCrA1VNwKDc8qw58HgbvUx0RjQcu+ZDHNOWz57yut+45ZULk6PCFb01eh6yn0Zvp
 xUu+WG+aR1dKfr8sVsvqB+MCdcM9IGsy0ctJI3rIAWwPjwi1KIlm1eOEOqGqi6VAtJc7
 9m2UZ1RCsoWsDZgflzBJtAt6keB+mzBQ47w4zX92ARxcudKCz6ZSBjYyNxT+hRTONY+x
 df8A==
X-Gm-Message-State: APjAAAUDB4ry+N/8uiavcAdvrshNGqxdt06Hlicb48y24OE/2N/uSgJZ
 JLYLmHJfKYmf6nYa1Pa75MNgLyIoivj/aMxpzJI=
X-Google-Smtp-Source: APXvYqym75lPAYmcFoKuMCRVIb2Z6qedUXVgqze3G/7tmrBj7VQss4UHqbqav7+LM2z+KkYxzkxHGz+pJ9MZsn3n848=
X-Received: by 2002:a63:c40e:: with SMTP id h14mr39330366pgd.254.1572998197596; 
 Tue, 05 Nov 2019 15:56:37 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:02 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 08/14] arm64: disable function graph tracing with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155640_078391_D566C590 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable the graph tracer when SCS is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..8cda176dad9a 100644
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
