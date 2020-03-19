Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B163F18C3E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 00:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoKkt63MQuaVlrIheTRw6y+3lk0ZlIbNC4zP1vnXJCk=; b=OfQ7ovqXMFc8SR
	7FZgx5Nmmmz2YeTp4yQokr+4FUwAFerAw8BAidhgeIiyA1FOWMSLDsDBXJU7ZqwU3M05RZr5rgfeR
	2LXVTJLVgIyyie5b1zCi4sAXGbHMWTHVzro/ZHgDdpNo5hmEF5TZatJs/zDm932Envo6MFg6yAbCx
	uVDtPPZZDnEzPjO2tZXZRC11OH31m2zM1M8IprWoe/pUISZ45YUADTz94Q5U9MwUUerv3+CuTib8j
	s7sw6PsLGfpD3QV8jQc1ytajND4jgcXX/V84n2Vonfq0QYK/Ojp4L4ggxVYIG4beErCstDYY3vCmJ
	zGCVtRU8ZEV4GvC5oECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF4pn-0002vM-U1; Thu, 19 Mar 2020 23:44:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF4pe-0002uy-17
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 23:44:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id r3so1724603pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 16:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R0+TGEcl33aqQZuHdJpZvB8paDQF2GsWepjBb7GJLN0=;
 b=g01y/QG6zB8hIiuj4wDvdx12dB7i4g2oOiN2aFecZXwj8QAY5tVLL5iH3uhtkQGtIN
 jqOlFcSJx7THcCtImBOQp1HaO+lNQ+y4mrfz+L5YbFg1WV7xn/VHwnxKtcCyGnPAI4bQ
 QoFNLnT5RQOyW5H2iDh8lvr24e7GmW0icEfczV6Zm/Y3OHI1HS+67AZVEl3sVe2+9o8G
 WZqBAoaIyte3bSpt/ez2IaL5dP6H0eBBqL0SyclRJw5tJzQ14gmaCmbRp2u5Y+YSbZs1
 xq1BRnFqNQxqpvsjMirdME/B+it8upp2FMVE2cmR091yQWxNavqNHwWL+gVz4ovunboZ
 lCiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R0+TGEcl33aqQZuHdJpZvB8paDQF2GsWepjBb7GJLN0=;
 b=LdQF8zX569JTG4dlrajfsxur/LG+/98H8acbjIKqz68yFlGJLuc1TxmlHTUyyhh6bK
 ZCrUh21+MVsWq+z5ZfemUUxjAMQreGvsopOnk5BtzB9HjN06dJ8olWoJfZDCTkADoi07
 1mlwFyBOk0Ug7e1RmF6cFRrvB4ump9Ts0+5lbXgH9XDey9g7JiHq9PP0zQpIRdx9ndv8
 Ytt5JBycjI33yl/Bh+U9w4bMIrobccC5bHNdvwBNo3OcFaa1ppnph0Lcuj3+067v/YEf
 Qc+I67PX83n7WHkjzGgQzcxwEYWwMDFrQiljkzF/6m4mFi418YRgqVWQ4IlwCetXCyxg
 fppA==
X-Gm-Message-State: ANhLgQ33xI6oNFe51kVrxcwGDyM4NhTexLaDy4ztn+6UH3AtDyGSFPRf
 /sksmEGL7WtW7MRXWnOTI7xx/IlJ+9jZrtYADeh1LA==
X-Google-Smtp-Source: ADFU+vtliPn0Z54RcDzNcvaqRpfR5R9aZU+uGpjGhHuUBhqLn7elEClsTACLZUjB8MWlbn/itDALZ2t4CjWaipi5Fng=
X-Received: by 2002:a17:902:820a:: with SMTP id
 x10mr2291998pln.179.1584661448715; 
 Thu, 19 Mar 2020 16:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200319214530.2046-1-ilie.halip@gmail.com>
In-Reply-To: <20200319214530.2046-1-ilie.halip@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 19 Mar 2020 16:43:56 -0700
Message-ID: <CAKwvOdneL8F_ZHBAzyb+VoJ+Z1FZp0VW8asGTu=g39TrouqAgA@mail.gmail.com>
Subject: Re: [PATCH] arm64: alternative: fix build with clang integrated
 assembler
To: Ilie Halip <ilie.halip@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_164410_097733_5E163377 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sami Tolvanen <samitolvanen@google.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 2:45 PM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> Building an arm64 defconfig with clang's integrated assembler, this error
> occurs:
>     <instantiation>:2:2: error: unrecognized instruction mnemonic
>      _ASM_EXTABLE 9999b, 9f
>      ^
>     arch/arm64/mm/cache.S:50:1: note: while in macro instantiation
>     user_alt 9f, "dc cvau, x4", "dc civac, x4", 0
>     ^
>
> While GNU as seems fine with case-sensitive macro instantiations, clang
> doesn't, so use the actual macro name (_asm_extable) as in the rest of
> the file.
>
> Also checked that the generated assembly matches the GCC output.
>
> Fixes: 290622efc76e ("arm64: fix "dc cvau" cache operation on errata-affected core")
> Link: https://github.com/ClangBuiltLinux/linux/issues/924
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> ---
>  arch/arm64/include/asm/alternative.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index 324e7d5ab37e..5e5dc05d63a0 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -221,7 +221,7 @@ alternative_endif
>
>  .macro user_alt, label, oldinstr, newinstr, cond
>  9999:  alternative_insn "\oldinstr", "\newinstr", \cond
> -       _ASM_EXTABLE 9999b, \label
> +       _asm_extable 9999b, \label
>  .endm

Testing a -next defconfig build, if I apply this, apply fixes for
https://github.com/ClangBuiltLinux/linux/issues/913, then disable
CONFIG_KVM, I can assemble (with Clang's integrated assembler) and
boot an aarch64 kernel.  I think that's a first for Clang.  Wow.

For CONFIG_KVM, I see:
arch/arm64/kvm/hyp/entry.S:112:87: error: too many positional arguments
 alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
((!!1) << 8)), 4, 1

               ^
which also uses `alternative_insn`, but not `user_alt`, so another bug
for us to look into, filed:
https://github.com/ClangBuiltLinux/linux/issues/939

Looks like `_asm_extable` itself is a macro, defined in
arch/arm64/include/asm/assembler.h on line 125.  It's probably easy to
fix this in clang, but from a consistency with the rest of the file
(arch/arm64/include/asm/alternative.h) this patch should be accepted.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Should be easy to fix in Clang, too. Filed:
https://bugs.llvm.org/show_bug.cgi?id=45257
Thanks for the patch!

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
