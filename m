Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF9AE926
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRKGAO8jiaoEw7rpkd4vFuw9lkVQTh6OxahZOcfDuF0=; b=Gb0dEoBJAQ8O/W
	RgdG5mDYI1n28jsKAFNJXqhfYaA3VL+8PvJ4jdoSv05bbRD0aEnCQPuMNHQPIzSIPuLwxSHNUFLpM
	ooIgXME8xihFUDuI6ZKB1wejRpf/6vYHTfMA2mkyNhwcNn+l5YCgOYlpON7iH7DoHVHmvV0lYOoqi
	iQp5wuilD4C/xVCDYFwTgTY16vdfDinBie4hT8B0tgQeDWSKSH2Qf7QHdTMgKAwRytNwvti1fp+Da
	3YHd5Oy9xUnDfjENUeTydI9ZD9dM/JBRPpymA/Eqs2OxyX2Ghdh6e4MC/nmiJzdgNwbkrRxtgR16H
	6jC+Rc264xVQ36iowtSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA9a-0001oH-4y; Mon, 29 Apr 2019 17:33:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA9S-0001nS-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:33:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id y13so5646815pfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zpbyIVAlhMbRdeAB1M3cn6Wkwo9TF52AlNw1cUUTqHY=;
 b=vch2kdmhm3l/dYckKUYwTvyy6uXkMyZ9o3lJstXxJLuYnD3TbLEy3yWlSDh0vKuwif
 Kf3mGYGdG2QKV02tpYo0oG0vO8JNt2F9ZFLumLfRWLRu21hlnPQe9ewIidI/KUGZfDH8
 chQPhoRQgf7tS+IC+9XCrZ81Me0OjI762s90xxvqBvoi1g/GTsKSdHa2JyVk0JvbAUKx
 kr2ArBxjThj4+xSh8X/91M+uhfjGs1fAPcvHBex1n8hYIz9Ck9xbIyFCTWKa57hw0ZYW
 nU0iHKd57k3x2C8Z0I5rRs4gFqm1k0c8tfNQX+FbjDAFH0hA/y+0iJzwzY5RKb2CXuKs
 FpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zpbyIVAlhMbRdeAB1M3cn6Wkwo9TF52AlNw1cUUTqHY=;
 b=TocqP7hyetB2+y4CzhT1KnD2XoZcKcYU45xhO5IxH5sqUymJFquQ1VfiG0g1pL5Qfp
 0ok625y7mBgFAxSHin+2vjczDQFNKG+nRuKMrF7u8xvWThmerHymTR0VkJsRO1rIAc/T
 sH+rrEblxN05gqarOslVhtIwZQ3xvEOPO/CQwUVrlslNRWSS5/fUAov+LnSE7kVrCfEa
 MtoCjC6Dgddb/ImNILVPwfoDk5gpnNgKDJYia7NAdGUj4hKkkMvmP7OZgw6OebtPYOOf
 AT6K8kjF2qEFB7BHUll0KiLt1/8VZfDLORyoU4k23VK0ImpUh2w0m4Ny/KRe4VVmAXNt
 LZ8A==
X-Gm-Message-State: APjAAAVkw/q5CPSXlRqXxKs1PsFJi0WeikFEYmxoAoZqVxNp85iPrNl3
 Fo90zQWgZHbk+BiKhkiPHYRLRtf33SoJFL49zfjmDw==
X-Google-Smtp-Source: APXvYqyhzVkgB0sNyP0pJLGAsn93Af3fptKn4jl6xD7tGPX4gYaGIpx/DliKHjfrKnMpDxgiLG5/DVCAaTylqLuA5Wo=
X-Received: by 2002:a63:c702:: with SMTP id n2mr21510100pgg.255.1556559190626; 
 Mon, 29 Apr 2019 10:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190426130015.GA12483@archlinux-i9>
 <20190426190603.5982-1-linux@rasmusvillemoes.dk>
In-Reply-To: <20190426190603.5982-1-linux@rasmusvillemoes.dk>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 29 Apr 2019 10:32:59 -0700
Message-ID: <CAKwvOd=Qzs8gAenS6-GkiSmrwxwJA7wChJ6FUE5+=LPAj4XSfQ@mail.gmail.com>
Subject: Re: [PATCH 11/10] arm64: unbreak DYNAMIC_DEBUG=y build with clang
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103314_564657_531255D7 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Jason Baron <jbaron@akamai.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 12:06 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> Current versions of clang does not like the %c modifier in inline
> assembly for targets other than x86, so any DYNAMIC_DEBUG=y build
> fails on arm64. A fix is likely to land in 9.0 (see
> https://github.com/ClangBuiltLinux/linux/issues/456), but unbreak the
> build for older versions.
>
> Fixes: arm64: select DYNAMIC_DEBUG_RELATIVE_POINTERS
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
> Andrew, please apply and/or fold into 9/10.
>
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index d0871d523d5d..315992e33b17 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -83,7 +83,7 @@ config ARM64
>         select CRC32
>         select DCACHE_WORD_ACCESS
>         select DMA_DIRECT_REMAP
> -       select DYNAMIC_DEBUG_RELATIVE_POINTERS
> +       select DYNAMIC_DEBUG_RELATIVE_POINTERS if CC_IS_GCC || CLANG_VERSION >= 90000

I just landed the fix for this in Clang, I think around the time you
sent the patch.  Should ship in Clang 9.  Thanks for unbreaking our
build.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>         select EDAC_SUPPORT
>         select FRAME_POINTER
>         select GENERIC_ALLOCATOR
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
