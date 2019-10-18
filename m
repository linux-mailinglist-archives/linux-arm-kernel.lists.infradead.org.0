Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B809DCCDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+dZCOUsckdgPpXVoe7qICSQ/iV80jANOm1B2+AHM5E=; b=h9SVks4Qj9B9HS
	5jIE12bWkDKnnRQHxHSUWeouRtD6IVyq6rNu4+zfXcNXOY8/ySR2taV9Hvac/Y6w/6UEV5naX0FDG
	JLDLjqq1a9FeVD6wwBKjbJQnyf3uslds4qZLoXhDPDq42y+jx0BYSy2EVQRr+/vYPvxOZLtAUijaa
	PDmKIKpLx49C7i8DjL3p/JsXBygqZFI+aFQf7H5RURhIK/FETVvCoIkDgBORrqP6KsoFtU4mEO/JJ
	N08H+OeRQDGMujzl73OZRS9StrMTCXK9pZdoNFG1zTTS8Ecij/g9yWWyrKOuLCFG/s/XWjxMayH7A
	YdLVcb/ekeRCfHZVR0og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLW7O-0001jU-FY; Fri, 18 Oct 2019 17:32:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLW77-0001fV-Md
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:32:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so4283149pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LUCkDiO1QUpPk5cl+dZgUeLa1d4lsLLAG2MEy31ElWU=;
 b=Q2GrSm+Odfy9jVEDqMmfnpv1JF6tDvJ9iXYBvf5rjH3en0ATo4AgQjw2pQDojlKoaS
 9fBS4aMFJ5dZwD9OigzTjU849InPSdBgGRC+uZEt3xD+a4RKHVALWELFRgwg2SA4Hrzq
 zb2RgQ0REmeyvR9a4FeSiZ73kVsr69wvb6c31MRdP3Bvd2XsEJze6gbRaEFiobpWXpeP
 Jy5YplzkCXmKDyVKqgUBpRu2Xoxis9XWxkxStyjOq8Q2jrPByqwE/lIB22HRWbIoxhAw
 w2b9PGOjxqmyIOBybNGNqSsdSOP6Tyg2PirfWZOi7lJ8gecCO3g1JCJKWpU8SIivdJr/
 RIuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LUCkDiO1QUpPk5cl+dZgUeLa1d4lsLLAG2MEy31ElWU=;
 b=Vz6J8GEyyGIUTGcH0+9+wBgwDeTFlaEbnETuS6ianIluUetQylPZfVwh+ZiqzyZPAB
 ZKXLeGVh7fy6cvCwS5Ab5vgqB1jnXXeSGCQForLOOxqDV0VGdnmgxBkqUlmsoECWnnkB
 fHCiA8Yk22S7VNeku2r69EjkeitEoUHJJqLgJkljLHNfWvN+nnNyqjqpret/ou/BCQRT
 XuJjpImyy8S2YgUMhNTEx8nUt/0+7SGFRnDH9w7CeQtNB2omjJyGbumfyzXfK+2gs1l5
 FHWqgixICeIcynAhB2dWnsS0EV0e8LDttZHD/5p6WboQZQtZ+8cmSc7sbGUEXaku36pm
 r0Wg==
X-Gm-Message-State: APjAAAX7fxD8HwiH6VC373JrWYUur3hoY5Oi5KinEL8Bere7AkP5OXJM
 0Mp3ARh4CbKEMBcRT015Hew5qxmqr1awV0784AiTmw==
X-Google-Smtp-Source: APXvYqyiP1Zzh4FMjPyyDPFh7Wpil1drk2/6fs3Sl6Id4xkJb/P7azXpHLFJ3B/tWIF35J82NWyTkkF5okrslIJan50=
X-Received: by 2002:a63:5448:: with SMTP id e8mr11186188pgm.10.1571419951879; 
 Fri, 18 Oct 2019 10:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-6-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 18 Oct 2019 10:32:20 -0700
Message-ID: <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_103233_824772_7AA12008 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 9:11 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> Before we can start using register x18 for a special purpose (as permitted
> by the AAPCS64 ABI), we need to tell the compiler that it is off limits
> for general allocation. So tag it as 'fixed',

yep, but...

> and remove the mention from
> the LL/SC compiler flag override.

was that cut/dropped from this patch?

>
> Link: https://patchwork.kernel.org/patch/9836881/

^ Looks like it. Maybe it doesn't matter, but if sending a V2, maybe
the commit message to be updated?

> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

If sending a V2 with the above cleaned up, you may also include:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I like how this does not conditionally reserve it based on the CONFIG
for SCS.  Hopefully later patches don't wrap it, but I haven't looked
through all of them yet.

> ---
>  arch/arm64/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 2c0238ce0551..1c7b276bc7c5 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -55,7 +55,7 @@ endif
>
>  KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)     \
>                    $(compat_vdso) $(cc_has_k_constraint)
> -KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
> +KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables -ffixed-x18
>  KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)
>
> --
> 2.23.0.866.gb869b98d4c-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
