Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3A817EE12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 02:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUR9kZT1/ZrbzwWY85o6d9gJIFkLYOdo64TvJ7NHOvM=; b=nB0zlHql5PR537
	2LqCEs611o4xmsO4mfKzwN9SPjAQH/0BwoFcbHGg4/mwCTWP/jZHncfEriPPlHKw9DiQ+yJRjWyAq
	wfmrIDbHjSbfHYiGaHW4UtssOqVOI9BYkDp8FA4D3PSYA/uYf9PxODWOPZ8OYFkeoD0VpykYSP3ef
	tl5yh1DESb4QPeajx13qXHTSMstKUHZkK/PsBxYnMxq+Ng6EZ8Y2Bo8Vm+wH4BmoXJS3IR3imo3EX
	LTumAopZ2euIhMHTsDBbHRpoWd4gFq0MpYrlsgBmQIZex8l0Hir3CyBP5wHNqwJKC/amwg3eJv/0b
	NUfrKTQQYMGDe3hQ9RCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBTt8-0000n2-Qe; Tue, 10 Mar 2020 01:40:54 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBTsy-0000mD-RE
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 01:40:46 +0000
Received: by mail-ot1-x341.google.com with SMTP id b3so11672337otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 18:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rJK9U08Zj+HB08iS4A3NIowl4Auq1x6GFauaG9Dpfhk=;
 b=MI3LsZw7vyE6zL2uUE5LNkRK6WONYZlKKzhm0UBGoazAzjL5rgnpIak9QpxbIdTEu3
 xprwESHPBO8RKvGFDltAcR3+uL19Mz9JYzO5Sb3zXVDZMm8kzgUM8eAgWhHajSe8kG/4
 soH9S/H5s2OkD/6rz3g3rjkLzvvGE2znJLj7gZeMbcWzk5CRht9yLYlG7xgYGWetING2
 641vh+q8gpYOZ38KEASNyzZ9SJugm/1QlgZkz17eF+AOFUPfZwI1lOS+Mhc4WuFlMcSJ
 Z4NsaM0Uv+8Ft4og3yBFYgOBclYQbt2aXLLwu7isUwxC5Zz5aS6XyRg2eaPTDjpBqSIN
 ePYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rJK9U08Zj+HB08iS4A3NIowl4Auq1x6GFauaG9Dpfhk=;
 b=ovO8u05xnMrNXwosXl8EPApE75fZMbPwIMP9Dhj7ZIgE0PuF5aqGo0fx3aZNR/G8HW
 D0rzPa4RrcxLZ66ioMBQuQ+zYcWlfQG0EVRY+14xYp2ZePKfrBRonYaMzNYlCyqWrxoY
 UcmC/J+oFXSZWftJkGAM7WwyU4MgLKatSTdbSmaobsvaDPGs/x2HJsD8YXovpXZs/Z/L
 P9gkc3IssK2AKLtfZLrZKJKmpdVbrhxM/ogjlFlSZqdhONAtKg5RHy6OITEM4m/gb5aw
 /G13H4m8/4pamJig2TKnuQSTmU5urXDO3yztCxFjKWbFd92N40vs0zOYZXG349wb+9yl
 tx+A==
X-Gm-Message-State: ANhLgQ2faSaokBe+XKoLF2p83lE9s9b46ppks+svLUYBbC71yYxFsyDJ
 Yo3q06QkdYLRnHCOq08s53I=
X-Google-Smtp-Source: ADFU+vtI8p9Wnmx7w1A1sqX5hE4kdrervhf+WzPWCjCVoJywvvUUUffkcME7Ef2y7dQnPQxGY6M8Dg==
X-Received: by 2002:a9d:4d8f:: with SMTP id u15mr15193747otk.261.1583804441415; 
 Mon, 09 Mar 2020 18:40:41 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id k21sm2096097otn.58.2020.03.09.18.40.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Mar 2020 18:40:40 -0700 (PDT)
Date: Mon, 9 Mar 2020 18:40:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 20/20] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200310014039.GA12211@ubuntu-m2-xlarge-x86>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <20200306133242.26279-21-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306133242.26279-21-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_184044_908831_1C0325A7 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 01:32:42PM +0000, Vincenzo Frascino wrote:
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/kernel/vdso32/Makefile | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 04df57b43cb1..650cfc5757eb 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
>  
>  # Same as cc-*option, but using CC_COMPAT instead of CC
>  ifeq ($(CONFIG_CC_IS_CLANG), y)
> -CC_COMPAT ?= $(CC)
> +COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
> +COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
> +
> +CLANG_CC_COMPAT := $(CC)
> +CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> +CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> +CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
> +ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> +CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> +endif
> +
> +CC_COMPAT ?= $(CLANG_CC_COMPAT)
>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
>  endif
> -- 
> 2.25.1
> 
If CC_COMPAT is ever specified on the command line as clang (maybe by
some unsuspecting user), we'd loose all of the above flags. Maybe it
would be better to build a set of COMPAT_CLANG_FLAGS and append them to
CC_COMPAT, maybe like below?

Regardless, the current approach works in my testing with clang 9.0.1
and master (clang 11.0.0). This patch specifically is:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

==================================================================================

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 650cfc5757eb..df5145fab287 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -13,15 +13,16 @@ ifeq ($(CONFIG_CC_IS_CLANG), y)
 COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
 COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
 
-CLANG_CC_COMPAT := $(CC)
-CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
-CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
-CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
+COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
+COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
+COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
 ifneq ($(COMPAT_GCC_TOOLCHAIN),)
-CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
+COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
 endif
 
-CC_COMPAT ?= $(CLANG_CC_COMPAT)
+CC_COMPAT ?= $(CC)
+CC_COMPAT += $(COMPAT_CLANG_FLAGS)
+
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
 endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
