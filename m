Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEDDCED6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3iUFDQYvICuFmS/VpwtpYtQLsHVW6/6W0Bu3HstGgk=; b=PaJXg8Kqg5yEvF
	5f0RmXujdOMdjV8JoA0GMo0aOZbw/JL+npq2oE+Zfoa3EgC8HT85zKffWlGDyYw48yhyb6ckrK94F
	bsL3oLlbpjxyRZeViIXCMh+UU5nkjdGRS4GAbXWzD+z5JQtsrOEUoGlmVOGVJAw9fRs4v6/CJWXNF
	vl8p3ec9zO2yce9ObypOVPhmbrE6P6uCRfxptVQ28S1V/E1EzttBksBRF7yMkX5uXlGtI/qkJCQTw
	5Si6YCFUKu7SvaBWr7mrPpB03I8QvBaq2wnO9luVPe7n/zZubGDLRMyI494jqALLGfLkJY4C7yEB6
	rG5xT8QZvtVPkhbatB9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZcZ-0004AK-In; Mon, 07 Oct 2019 20:28:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZcS-000486-0w
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 20:28:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id j11so7418619plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 13:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q1nT5pqV4UDWiGVYI8ECyB7FPfmS2/KcyZkTgCypark=;
 b=u1LrB81cC3BeMUn8kgZgo2KGKVPgUa1ovd64Kua6Kup8KfJNEO5ihdRUj1rMsFGO6c
 cm/v8YiLHDNztFDjprtB0snB3gurKB3wsBYJMn+xt76JZuRZiovDcmYul5Btd7MgkTls
 0pU5yJq8i4JXAoak2rdgqH0QjYsCRZSolJHrVc5N8Xff7aklN1nDsb9NKWbOrFToiXgL
 qaRP587UqTEK++wwFwp2TuY40KAKFB8fwATEEG2fVmfvfsosAPpF1E0qsDIsgka3TUAG
 fyQpwoQFVIoLXJaMxZ4Xs7zHZ54Ig22wxnLvWEGt0+p3FF9MkH7fZE9jKJkQmiLCeBTD
 lF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q1nT5pqV4UDWiGVYI8ECyB7FPfmS2/KcyZkTgCypark=;
 b=sIPkIIzqqZKkuCvH6p/0qDGGhEX8wfggdkT4v6zwNpaa3rKv02yaD0hgYeoGpX/I0G
 kmmwxfpa8DxsSER3Q50vuyMS+xNIhkbnHJDxwtxYKEwlbBHyTxKUe1xucLyMcX70jNqn
 sTJxwQPtc3H9rHaffvHNfySNTQbQQ98IJlIDm2ogShoSoRcerqAdtLSk73JM1oy7y5A+
 TPz4Lf3jLz0jvcxVFoSvkmufh2JDh5ziV39A7/ReHglHYMUbmuhrIHoIa7M2DYEPezCA
 3IWIKr6E7wjBGLH47P1IsBuf+O+QVfQ+y7SY29zZEhrDH/2wNUnLSUOASVtHSovptYwI
 g63g==
X-Gm-Message-State: APjAAAX4SGVk/TwurCQHYwmkuTVn5teWbeM5VOpuplGi5TSEycHETUks
 x4eTrKmZo2erNE1spcdn1gJYLu11cAmE80ovanNCWUo3BQ8=
X-Google-Smtp-Source: APXvYqxY3DBPUnmnAcFKk81tHOjOGlqpMNYPS9n45dz7GPcexxoKwFi3I/h/PeS2VzBnssGE3nxyZReyM4s5sAwdFEw=
X-Received: by 2002:a17:902:820e:: with SMTP id
 x14mr113358pln.223.1570480111571; 
 Mon, 07 Oct 2019 13:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
In-Reply-To: <20191007201452.208067-1-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 7 Oct 2019 13:28:19 -0700
Message-ID: <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_132836_091099_990DBEE1 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 1:14 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Unlike gcc, clang considers each inline assembly block to be independent
> and therefore, when using the integrated assembler for inline assembly,
> any preambles that enable features must be repeated in each block.
>
> Instead of changing all inline assembly blocks that use LSE, this change
> adds -march=armv8-a+lse to KBUILD_CFLAGS, which works with both clang
> and gcc.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks Sami, looks like this addresses:
Link: https://github.com/ClangBuiltLinux/linux/issues/671
I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996
though that quickly ran aground in some failed assertion using the
alternatives system that I don't quite yet understand.

One thing to be careful about is that blankets the entire kernel in
`+lse`, allowing LSE atomics to be selected at any point.  The
assembler directive in the header (or per inline asm block) is more
fine grained.  I'm not sure that they would be guarded by the
alternative system.  Maybe that's not an issue, but it is the reason I
tried to localize the assembler directive first.

Note that Clang really wants the target arch specified by either:
1. command line argument (as in this patch)
2. per function function attribute
3. per asm statement assembler directive

1 is the smallest incision.

> ---
>  arch/arm64/Makefile          | 2 ++
>  arch/arm64/include/asm/lse.h | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 84a3d502c5a5..7a7c0cb8ed60 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -36,6 +36,8 @@ lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
>  ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
>    ifeq ($(lseinstr),)
>  $(warning LSE atomics not supported by binutils)
> +  else
> +KBUILD_CFLAGS  += -march=armv8-a+lse
>    endif
>  endif
>
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..8603a9881529 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -14,8 +14,6 @@
>  #include <asm/atomic_lse.h>
>  #include <asm/cpucaps.h>
>
> -__asm__(".arch_extension       lse");
> -
>  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
>  extern struct static_key_false arm64_const_caps_ready;
>
> --
> 2.23.0.581.g78d2f28ef7-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007201452.208067-1-samitolvanen%40google.com.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
