Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E24EB55C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYFsq3xswrdetsAZb+BkwFJkdew52RFY8GhylD3AYMg=; b=LbZeIFsmNuxI04
	FBwYlNjcn1No9FmRwAXxFtsdxoREWGr+gKz2qV5HAOreh0C0Az/jfqdue909hvFqyFAQ2khm9jm32
	Tz38TMsnw6sLSfpMSCIKjgVD5/Cejg8OFEFt9HsvfZIHhJR93UJ8OczyGG/0hqpF9gUofSEitzNkA
	CaG/Gm/rO2GPNo2BETqAGYclZeBmZV+qKC8ZEyZJPOVJCoAdXloiFd4qpP56FUnw0TdRIhCCGON0o
	0fnLqawvu5FW45MzJMCxzWsauMHq0h75/e6J1z2eCajGiNW9B9MH38hEcmd7bhWHSI62nCd6j4fUY
	MAmpABjW9k22KLwfcxyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDfE-0002GO-Le; Thu, 31 Oct 2019 16:51:12 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbO-00076K-18
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:16 +0000
Received: by mail-pl1-x649.google.com with SMTP id g4so3083726plj.19
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9Ao7uN2sNi3wFwgEShB4rOY2NPtO1ve2nhewvDVkd70=;
 b=MFB8Vi7TeDoI2FwYG6EbbYc+LBTOUEvRqAUAKVWlm/Y9wlKU7ujBC6awj8P8GgNg15
 SHrqse6Eby/JmzTas4YOpEbcYfE5zV02IRVEzTRd+/8pcGMuY5LmXsc1LvTsYyOPQRbj
 rWB9hKuYdsKAq5u+1gwPKMLhd3aFBv9y7s34IJD7qUWZFLaH/dCyw0RXobVGkHrXVve3
 OIoYdwBvTIcedJKnwnczA/JcOUoSjLk5Niw2NS8hRSGXfbcB1RQzOd3+hhaLOuVMzDiz
 eb9NXbVSx5Tc5HE4+fuT64N6mKP3gK4YOR6cATCVdP01/rojf3F/IcVEmTxc2qVknVy3
 MHuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9Ao7uN2sNi3wFwgEShB4rOY2NPtO1ve2nhewvDVkd70=;
 b=XUAYjMTmjV+hxJFufxjzqXVCfSrd+t6aMzVyeCJk6bYf+4CGjwZKsgUOYffShr/pWl
 XnsfzOq1j6m3alk5AggjxKDjnXHinjeylgX0zU5uoefeT4UEM5PDU3csVQsaq0K5v4z5
 J8lrXKMLbguVfJsjl5FfRX1XF7mPmn5IjDvVYVP+H0crL7xcHwzmMSeeZ3ycMXhXvYgg
 nlRyxXTUBGPWiBVtNLspPinI7vkkbDDxoWeF7NjGcSl7ILZAxyWNklX1ccLXguVjQXlj
 3NPo6sr7Rc/UWQb1kxYn/BSjMrsUFZGZaCqfPe61ISxTNpA5JXZYj+kq7mVAjKJE3vTE
 tJgw==
X-Gm-Message-State: APjAAAWAoXGcQaUSAyLzJpmWnzpitcN6bWNQiM0ryKp5IGr/0lK0rnlm
 0HamzyYnLcytts+JOv2xdn4yhCUXfqgNCmxWKxM=
X-Google-Smtp-Source: APXvYqyTGY27y+fXLM2c6y9Il6TlGdGiGRpFxeY59Reh3sr0g68TeqvBad+M0W7yvXKqIy6D21VCf66mb2yA9rq9620=
X-Received: by 2002:a63:d258:: with SMTP id t24mr7711243pgi.289.1572540430252; 
 Thu, 31 Oct 2019 09:47:10 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:30 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 10/17] arm64: disable kretprobes with SCS
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094714_105598_D89838AD 
X-CRM114-Status: GOOD (  11.05  )
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible
with SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..e7b57a8a5531 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,7 +165,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
