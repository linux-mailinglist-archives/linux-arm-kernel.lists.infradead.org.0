Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB531DCBC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OIpAoOzX6c1bch61sEWDUCrxbslR6rR/hT+gdCYk6A=; b=AM3FyZ2f2D59ZG
	M/ODT8Fyi47Yq8R6Y2/iaf2yl4u1lskUNnVw+G7YVVrku13rud/sarl7KmgxhJyVEhBbTgG0gmDFZ
	VIkwM6BARwa3pKTLGYTTJ/1FA1EMjMgzU3Nfr+AJwxk7ph36hqcuFWkhtsV9eOl0YspGD7PIqZnQD
	IsWs0lO81Tc9CuAv23qT/kmXFaU8vpyoUACmI8qM6HjeS4EJe/+RQSI1Il1oqlBbY4tgB+a2BLhJm
	0HLuD4D0qOEbMOX+FxXQ2m1NJkTS2Tk4CjwyiZNRpPiLP5ailKO+DgMrDxP6UDmQzCo/RZqH+47qv
	V/0On1BnWq8buEg1ODzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVM0-0007WT-6x; Fri, 18 Oct 2019 16:43:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVLj-0007VC-Kv
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:43:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id q24so3093969plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=itPDN3uOMullCrqvdWp4VHOtEiVy99lUJjyxqObTixM=;
 b=a4KqHH64Syi3Jkb+d0eVgCpN+31SnDYFhDKhObeeBYgIxsVpB28MK9tNghzsFxuX+N
 VbAKU58UasFmej23pHOk0QrDLH7oKDm4M3dk3bgCtTUWOgQmltwfMriaPvVLpxp3C0pC
 kYoPXPqJx0ajXSrYjPEgK8592+nVdo/5DSLpSz/Itc5Br1qMc82P+2UjLLk4LyZ199qw
 YdBPa6JePJa0Fd7+ocz3Fs2qom1i2u3DIw3HjxianaEOsPf5x+/L3CFK6vBNgDV9SqT3
 pgNBOC5FZlvErDViSZm4W/P+hr6vWNgjySr+vmQ1yyL5jifp07AxbcGC3bkxHitLbGMK
 lX4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=itPDN3uOMullCrqvdWp4VHOtEiVy99lUJjyxqObTixM=;
 b=abEvTQdytRwZVrhooiECmDUFnTimGV3ovlVW+NN/kWmDa8QR8d52zbgDrkEIyPlmkn
 6y7B7ZoQJZbmIhQjVX9guCjYEXGkup70ydRmIjwnkh3vJKMIVq6RqINZUkzluKZKG/QY
 HNdyXwcjSOzlZeBBji2TGUaIGypHiUYXAZDNW3BYEqJvSajD+bvpBmUlfzQJXgdFm5Cw
 ZHkwgqxVQUOwXwg7SPsOaF/fTBK7Ehk9rPtj6PtkONUbH1AlskajmtPzEfN+F7EH0amG
 XfhRnWo/jhc3hWrktGuJ58cKPJpRw9pkCW6RxMMc14TvMF/WcYBDGdostpoSO62g2GgN
 o3Sg==
X-Gm-Message-State: APjAAAXmn+QSs3xNj1sd0P4F5xHUC18vhY2hvlEEwoLzrvnw3cojEPJ9
 82YREAsL+OCvENxxPKU6Waxu0OhUk6pQZLh37b1Ctg==
X-Google-Smtp-Source: APXvYqxjABHlLirt3mzHAGsgLEpxUZMPZex/FsD7C0vJFW62s876ojGzoWlX6A4J5FwacSy764TFAtK8KXx4Wiz+QQw=
X-Received: by 2002:a17:902:9b83:: with SMTP id
 y3mr10710877plp.179.1571417011191; 
 Fri, 18 Oct 2019 09:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-2-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-2-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 18 Oct 2019 09:43:20 -0700
Message-ID: <CAKwvOd=rspmzW+v=nG=07H5XZ2OPWVbhDusYEe3k5+mZ79JvwA@mail.gmail.com>
Subject: Re: [PATCH 01/18] arm64: mm: don't use x18 in
 idmap_kpti_install_ng_mappings
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_094341_783133_9854FDC0 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Fri, Oct 18, 2019 at 9:10 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
> will result in a conflict when x18 is reserved. Use x16 and x17 instead
> where needed.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

TIL about .req/.unreq.  Seems like a nice way of marking "variable"
lifetime.  Technically, only `pte` needed to be moved to reuse
{w|x}16, but moving most the unreqs together is nicer than splitting
them apart. The usage all looks correct to me.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
>
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index a1e0592d1fbc..fdabf40a83c8 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
>         /* We're the boot CPU. Wait for the others to catch up */
>         sevl
>  1:     wfe
> -       ldaxr   w18, [flag_ptr]
> -       eor     w18, w18, num_cpus
> -       cbnz    w18, 1b
> +       ldaxr   w17, [flag_ptr]
> +       eor     w17, w17, num_cpus
> +       cbnz    w17, 1b
>
>         /* We need to walk swapper, so turn off the MMU. */
>         pre_disable_mmu_workaround
> -       mrs     x18, sctlr_el1
> -       bic     x18, x18, #SCTLR_ELx_M
> -       msr     sctlr_el1, x18
> +       mrs     x17, sctlr_el1
> +       bic     x17, x17, #SCTLR_ELx_M
> +       msr     sctlr_el1, x17
>         isb
>
>         /* Everybody is enjoying the idmap, so we can rewrite swapper. */
> @@ -281,9 +281,9 @@ skip_pgd:
>         isb
>
>         /* We're done: fire up the MMU again */
> -       mrs     x18, sctlr_el1
> -       orr     x18, x18, #SCTLR_ELx_M
> -       msr     sctlr_el1, x18
> +       mrs     x17, sctlr_el1
> +       orr     x17, x17, #SCTLR_ELx_M
> +       msr     sctlr_el1, x17
>         isb
>
>         /*
> @@ -353,46 +353,47 @@ skip_pte:
>         b.ne    do_pte
>         b       next_pmd
>
> +       .unreq  cpu
> +       .unreq  num_cpus
> +       .unreq  swapper_pa
> +       .unreq  cur_pgdp
> +       .unreq  end_pgdp
> +       .unreq  pgd
> +       .unreq  cur_pudp
> +       .unreq  end_pudp
> +       .unreq  pud
> +       .unreq  cur_pmdp
> +       .unreq  end_pmdp
> +       .unreq  pmd
> +       .unreq  cur_ptep
> +       .unreq  end_ptep
> +       .unreq  pte
> +
>         /* Secondary CPUs end up here */
>  __idmap_kpti_secondary:
>         /* Uninstall swapper before surgery begins */
> -       __idmap_cpu_set_reserved_ttbr1 x18, x17
> +       __idmap_cpu_set_reserved_ttbr1 x16, x17
>
>         /* Increment the flag to let the boot CPU we're ready */
> -1:     ldxr    w18, [flag_ptr]
> -       add     w18, w18, #1
> -       stxr    w17, w18, [flag_ptr]
> +1:     ldxr    w16, [flag_ptr]
> +       add     w16, w16, #1
> +       stxr    w17, w16, [flag_ptr]
>         cbnz    w17, 1b
>
>         /* Wait for the boot CPU to finish messing around with swapper */
>         sevl
>  1:     wfe
> -       ldxr    w18, [flag_ptr]
> -       cbnz    w18, 1b
> +       ldxr    w16, [flag_ptr]
> +       cbnz    w16, 1b
>
>         /* All done, act like nothing happened */
> -       offset_ttbr1 swapper_ttb, x18
> +       offset_ttbr1 swapper_ttb, x16
>         msr     ttbr1_el1, swapper_ttb
>         isb
>         ret
>
> -       .unreq  cpu
> -       .unreq  num_cpus
> -       .unreq  swapper_pa
>         .unreq  swapper_ttb
>         .unreq  flag_ptr
> -       .unreq  cur_pgdp
> -       .unreq  end_pgdp
> -       .unreq  pgd
> -       .unreq  cur_pudp
> -       .unreq  end_pudp
> -       .unreq  pud
> -       .unreq  cur_pmdp
> -       .unreq  end_pmdp
> -       .unreq  pmd
> -       .unreq  cur_ptep
> -       .unreq  end_ptep
> -       .unreq  pte
>  ENDPROC(idmap_kpti_install_ng_mappings)
>         .popsection
>  #endif
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
