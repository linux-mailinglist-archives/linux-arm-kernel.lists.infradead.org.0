Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A0FCEE71
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02QJg0k3XrqoIxMgps/UFY0zTYwx+9JWGDJdmyrs84A=; b=JwW5CdBxLZ9wd0
	FQsJh+Q0ipZeMccMPo7hDn/CiB3Q8xW9UyFrnIq78YusN3GCuddZC34k2QBLhjvG6XQIkz7Ecsurg
	d31NCi4ikiAJ3XP/BY655kYj0B3wrs1Eo+3IANL2gxKuws2egcHar8iNVTE4MoNGZ/i8iIy152LQD
	iibtd5ol7lXAmiCM96qw7BDNAQxThOkq8CieXwn3iDEKDz+QQF3CWYPz8A52M223RXolkwDet1dpv
	lCyKiVb7uKse2bt9Wx38vET0ct0rZUo3v1jZONR9A+TY7a9emFjYLx+s+OPc1FmSx7XLKsdMdwSyx
	/yXXK3IBAlTNYUEdxbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHaeZ-0002tU-IT; Mon, 07 Oct 2019 21:34:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHaeQ-0002st-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:34:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id i32so1689371pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 14:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BSjkDRau+gNdox3X7pHNAbU0K+agxk4/tBMFb1iKCao=;
 b=ab23GOHoPcRYJ3HnTEWquyTi7459NzB39trOtCcHOHakfrohJkbUChsngGiYM4KDyK
 vxfmdUYHLdqsNshjcH+q8e98hXss8l7HdvNfXmcZfmq6F+BkqApDKKc6PS5DwcOby/6V
 TFS0ykh514AcdP4JUMOoLl1pUci1xEoG1RUi2Jy3q8ZjvGrps5wyBZ4khqJ8pBz0SUk4
 cuVywcZEKWSp5nuTVo33oVhYH27LbkUvHuURsjZmdTiY4AepM3o4aC0FoJs9uYaVwjR7
 QDxDrx+IHpicC12wtnjUVCjjzfmGL4redMR+Bq8sY/Z99hhCkTSfVcfj4T3zuS10LJep
 jLKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BSjkDRau+gNdox3X7pHNAbU0K+agxk4/tBMFb1iKCao=;
 b=PCt2nrAuO1naD09yeOxdCaumv0fBGJzwr8BVliIELmPt4CHlFffJLoE3Lzt1NBmVC5
 R+LhnA9hWWSBB1jfpCg9Ugd/K7uAwwgPcGFQzUvcO+xk026Y9xSeeSGP++Hj5evTATD3
 6UirnbiShsWfWh1Dgdieg4SWGBj1GZgzKPAZKo0zOnH1fYDO8K0DQzaES/nSGEPS74JA
 XonaNX5ndm6B6c4DPYEx+HW8pAVlQvIFIYlMvs+09s42DrV71xZuxI/wYrdhq02pO+9z
 WsvrfAfq7Hng75WWjxGyvv7C/C2b+4eZ3Us8I0dbO3ajss50q/Z9IkPqnetUqIfd93FI
 ZFrw==
X-Gm-Message-State: APjAAAXauZo36kALaGW77lv+oOn2umxh6uBwWG/hfXYprNKjEZhH4j/m
 rjZcvU9k9LMMy4QZDgxENpl2ijyDYd9Yp3IS3nmyYQ==
X-Google-Smtp-Source: APXvYqyJ1eEkkfxEKHwxJsrKlG+h+OSiueWjtAo7aaPSl6xLlErSUZNoBFBuC9yRkYNHSyHthB/WDDPCAb+QHmGUuDY=
X-Received: by 2002:a63:2f45:: with SMTP id v66mr33356685pgv.263.1570484077649; 
 Mon, 07 Oct 2019 14:34:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
In-Reply-To: <20191007211418.30321-1-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 7 Oct 2019 14:34:26 -0700
Message-ID: <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_143442_412400_23403265 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 2:14 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> LLVM's integrated assembler fails with the following error when
> building KVM:
>
>   <inline asm>:12:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:21:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:24:2: error: unrecognized instruction mnemonic
>           NOT_AN_INSTRUCTION
>           ^
>   LLVM ERROR: Error parsing inline asm
>
> These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> which test for the existence of the callback parameter in inline
> assembly using the following expression:
>
>   " .if " __stringify(cb) " == 0\n"
>
> This works with GNU as, but isn't supported by LLVM. This change
> splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> to fix the LLVM build.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/472
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index b9f8d787eea9..324e7d5ab37e 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -35,13 +35,16 @@ void apply_alternatives_module(void *start, size_t length);
>  static inline void apply_alternatives_module(void *start, size_t length) { }
>  #endif
>
> -#define ALTINSTR_ENTRY(feature,cb)                                           \
> +#define ALTINSTR_ENTRY(feature)                                                      \
>         " .word 661b - .\n"                             /* label           */ \
> -       " .if " __stringify(cb) " == 0\n"                                     \
>         " .word 663f - .\n"                             /* new instruction */ \
> -       " .else\n"                                                            \
> +       " .hword " __stringify(feature) "\n"            /* feature bit     */ \
> +       " .byte 662b-661b\n"                            /* source len      */ \
> +       " .byte 664f-663f\n"                            /* replacement len */
> +
> +#define ALTINSTR_ENTRY_CB(feature, cb)                                       \
> +       " .word 661b - .\n"                             /* label           */ \
>         " .word " __stringify(cb) "- .\n"               /* callback */        \
> -       " .endif\n"                                                           \
>         " .hword " __stringify(feature) "\n"            /* feature bit     */ \
>         " .byte 662b-661b\n"                            /* source len      */ \
>         " .byte 664f-663f\n"                            /* replacement len */
> @@ -62,15 +65,14 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>   *
>   * Alternatives with callbacks do not generate replacement instructions.
>   */
> -#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled, cb)        \
> +#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled)    \
>         ".if "__stringify(cfg_enabled)" == 1\n"                         \
>         "661:\n\t"                                                      \
>         oldinstr "\n"                                                   \
>         "662:\n"                                                        \
>         ".pushsection .altinstructions,\"a\"\n"                         \
> -       ALTINSTR_ENTRY(feature,cb)                                      \
> +       ALTINSTR_ENTRY(feature)                                         \
>         ".popsection\n"                                                 \
> -       " .if " __stringify(cb) " == 0\n"                               \
>         ".pushsection .altinstr_replacement, \"a\"\n"                   \
>         "663:\n\t"                                                      \
>         newinstr "\n"                                                   \
> @@ -78,17 +80,25 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>         ".popsection\n\t"                                               \
>         ".org   . - (664b-663b) + (662b-661b)\n\t"                      \
>         ".org   . - (662b-661b) + (664b-663b)\n"                        \
> -       ".else\n\t"                                                     \
> +       ".endif\n"
> +
> +#define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)       \
> +       ".if "__stringify(cfg_enabled)" == 1\n"                         \
> +       "661:\n\t"                                                      \
> +       oldinstr "\n"                                                   \
> +       "662:\n"                                                        \
> +       ".pushsection .altinstructions,\"a\"\n"                         \
> +       ALTINSTR_ENTRY_CB(feature, cb)                                  \
> +       ".popsection\n"                                                 \
>         "663:\n\t"                                                      \
>         "664:\n\t"                                                      \
> -       ".endif\n"                                                      \
>         ".endif\n"
>
>  #define _ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg, ...)        \
> -       __ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg), 0)
> +       __ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg))
>
>  #define ALTERNATIVE_CB(oldinstr, cb) \
> -       __ALTERNATIVE_CFG(oldinstr, "NOT_AN_INSTRUCTION", ARM64_CB_PATCH, 1, cb)
> +       __ALTERNATIVE_CFG_CB(oldinstr, ARM64_CB_PATCH, 1, cb)
>  #else
>
>  #include <asm/assembler.h>


Should the definition of the ALTERNATIVE macro
(arch/arm64/include/asm/alternative.h#L295) also be updated in this
patch to not pass `1` as the final parameter? Otherwise with this
patch and your LSE one
(https://lore.kernel.org/lkml/20191007201452.208067-1-samitolvanen@google.com/T/#u)
I get one error on linux-next that looks related:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 arch/arm64/kvm/
...
arch/arm64/kvm/hyp/entry.S:109:87: error: too many positional arguments
 alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
((!!1) << 8)), 4, 1

               ^

Since __ALTERNATIVE_CFG now takes one less arg, with your patch?

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
