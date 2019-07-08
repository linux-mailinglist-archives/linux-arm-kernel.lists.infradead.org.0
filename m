Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0152062AA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 22:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1u6pAf+XYC4+KNFm2XDDseQBxDLImHF3RxjqqWukDE=; b=uJ4DYVTZA3e8to
	6lu0axmD4xO0ZZeROvkDPB9NQ4RkWu/rfgzVY4OGKbK4LOtwUgbVlaIZVb2tYlLbthlm+QtT0QsCp
	xuomsZjMEWh7aHL7KpZFIyemAU1xxYl0X0u8wOc9WojOoRYpZT/Injwdv1q9U5hhsM9QK4Iey3Scr
	d2qNKCOZEKEJhNxddDQyxIAXDhSBr8bhPRdfhDwiY19Pk5kLjnHZmYbZ2x+ZnrOJOX5OVU0a2eWDu
	0B79q6hx8zg3QsSNAR4VwzDZmLTnvtOtOuS09fUb8ElAIhOVwc3fvJgGzDxDKk+zv9RSiV5EYopck
	1vTY79a7VyoiKP3eS5KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkafN-0003Zs-Iy; Mon, 08 Jul 2019 20:55:17 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkafB-0003A1-W2
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 20:55:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so8146965pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 13:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3OQ0dQx7P10nSrLNC9w6ppz8v3IMRgqStNxoHDjwyqA=;
 b=VMcUEcj4pk2MTnNnVuyLOMBRvzg2v5kk2KKdmhndoED33Vc632wPL8Mvr5jZ2XwHGd
 UipZOvArKV2c3zFGzSTFh5PHr6XoXqxEraFY6ajTlvxsNsfXCt/sEvwYa4KcWlkh3HJe
 9DKynEcT71i5PXe+upcQp/QJ3YzlKNKsw5emG4c9QzmhgqXFFm0ophmf5hTZPJbuSI85
 KCSg7MIdU0hupAEXYVIQAfiBEhUrFCurgWixBiAKTWKeiFVJhmbLNga9ncCqDxf9A9pL
 BkfZIj80+kqNs51pGr8MDRZupR0eBdH9fxV9kgHAZhM8633TaN+phGYhuUWc7ydjgSJv
 m71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3OQ0dQx7P10nSrLNC9w6ppz8v3IMRgqStNxoHDjwyqA=;
 b=Qif7nL8G3bwiSgYnldPcBHizgOaPVKaXneHEsPhCR3uHP/+6pDl8PcnS5ax0SwgUVt
 Mf7+ZSrHo6aXOgS1vi98cXmp2CgTMrxwzfkBYqXbkw2D35ukOI/xmZy/RkK/iY9U8VOV
 cIxxeEEdshXj/C/Nw8pQJ/sEbE6GYJOPTbJkfWdlqSnoK7MhpMoGOBEbqBR/VnOH+vCb
 a50m8D4PPtela/uPt2nAGxG0EG8/Kzy6LaeJmIyhtJZ1J66z6tB268MviwDZh1k6uc4I
 PtPP5srItdBmJQniJfXZE4Y2YQ7e25Ph+/c85jdOF2phsN2fh9pc4dsTAeFcajfcYuTz
 PCFg==
X-Gm-Message-State: APjAAAWQwTHWjA78ASDQOt4R+07TX81g1hGmnQ9HpX7lpcSUrNshb9yN
 5bMWE9RY5RCYfu1EnE5HYCzETe5aA+onIRXPtmfwfg==
X-Google-Smtp-Source: APXvYqwRPQwqOD6HYN8d9zvMYPi3wk2exR2+51Vt7ZmZTQZFupoguZAXmfakZ/cihZb38g4RudH37csZNQQWLXbjoK8=
X-Received: by 2002:a65:5687:: with SMTP id v7mr26574802pgs.263.1562619304436; 
 Mon, 08 Jul 2019 13:55:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
In-Reply-To: <20190708203049.3484750-1-arnd@arndb.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 8 Jul 2019 13:54:53 -0700
Message-ID: <CAKwvOdnt5Gb8YSZ848s1RsMSJV37iJJWCxu84kFnV0yv35VKAg@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_135506_067445_A6FF8AC5 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 1:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> llvm gets confused by inline asm with .rep directives, which
> can lead to miscalculating the number of instructions inside it,
> and in turn lead to an overflow for relative address calculation:
>
> /tmp/cfi_cmdset_0002-539a47.s: Assembler messages:
> /tmp/cfi_cmdset_0002-539a47.s:11288: Error: bad immediate value for offset (4100)
> /tmp/cfi_cmdset_0002-539a47.s:11289: Error: bad immediate value for offset (4100)
>
> This might be fixed in future clang versions, but is not hard
> to work around by just replacing the .rep with a series of
> eight unrolled nop instructions.

Seems like this is fixable on the Clang side as well. For now, thanks
for the patch.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42539
> https://godbolt.org/z/DSM2Jy

^ prefix with Link: on both lines?
also, linking to clang trunk will become stale once the issue is
fixed.  When possible, link to a release version of clang that's not
prone to change over time.

> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/include/asm/mtd-xip.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/include/asm/mtd-xip.h b/arch/arm/include/asm/mtd-xip.h
> index dfcef0152e3d..5ad0325604e4 100644
> --- a/arch/arm/include/asm/mtd-xip.h
> +++ b/arch/arm/include/asm/mtd-xip.h
> @@ -15,6 +15,8 @@
>  #include <mach/mtd-xip.h>
>
>  /* fill instruction prefetch */
> -#define xip_iprefetch()        do { asm volatile (".rep 8; nop; .endr"); } while (0)
> +#define xip_iprefetch()        do {                                            \
> +        asm volatile ("nop; nop; nop; nop; nop; nop; nop; nop;");      \
> +} while (0)                                                            \
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
