Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A28F2AECA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kxco3MazsOWImgmWMXlB/CI+Sz4/rnet4FMY5bpTVAs=; b=cXBanIDeJQ7P0z
	hG8jrYLWUx2PQ+/+1CCinoAPnUYhBLmCmKPreYnYdowmDnUy/eSMNeqTyw2S7WtVw7Vs7TUfCqgjK
	FpmX9YMyBG+/2OrSQ5Di0053BqjpvqwElpJmItLO4u/2NinOsF6smTloMZ4OguOiTzdfl9Kw/gc0F
	RnQWHcGgupkGBg4oZ0MuRbhjGzOA16d+nfFudqyE8JUa9Jcphjzl8S+ri+tNzkE94l20xoGPhWkyB
	V+zVW+M80Mt6q/UZvuEVPnDCmCP6T5XDQbLhzou+Q8tT53rBRwvkpvmORYiqpTD4cOrBgtGY/4/9E
	kLqNe0RngIvh6VMrHNoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9G5-0001z5-Df; Mon, 27 May 2019 06:37:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9Fx-0001yf-Cj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:37:14 +0000
Received: by mail-io1-xd43.google.com with SMTP id g16so12390431iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 23:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cz7k1/aeSQ6lJUhf4TTaRHWZVKKDJPrc6XkqBmFtX7k=;
 b=V6C39yJsgqp/vjEMFFVpBIYO4PxHfZocoyIdPwbRZ0a0w5U+7nPxv26SGypFYPKA1I
 c4XyGHAwj53O81+eGxtSc0y0Dp5C4fWKpzSy3041fX5p/KygS0WlDwSg2sEy76973qO2
 3R61loH1NA7IrnRzHFw8DMTB7A1ReXdoDoJDu0fzeTDD5bbLApUFddm16iEEXA0izpAE
 Ji2HlIfo7zURW3MzEyA8Qjid9v+PeXSKCRRy0wcyijJJ2gpoAiBPcXZVphnm4r/YFZht
 8GwWGfSqdiqDpV5cS0I6QPneIHoHUrL0eY8LT6I2Dd5d0tW328A1+C1zLyr/TI7tZdLv
 IeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cz7k1/aeSQ6lJUhf4TTaRHWZVKKDJPrc6XkqBmFtX7k=;
 b=FsUx7/5X2DdxOYUiHrPYC4K3ImyDOE986uvWtOpQk0IljMwgLqaHo5af02RJXjvEVD
 tl+zg5kBZom11YMrjo9C/i4aua9yrdRDX4Vly8VsN+tzeQ0thQzVvTSwA56mIt3NpVYa
 HQZN+Tju+BVkZbzZtypnrFIf1nNMHpc3dmqAsGjLgCpHza7HU16on9PhQBvoaG9VXBrW
 8jiBVWqTqOUNOFizIDOleyAgkmtia59K1+df3oOdOx0AoNuuhQW7Galr4LbHjMJoIEqb
 H6IRYf2sMFFWK/3uIRPHnCXGMDw1QinGuOQhbgCFTU7ePWfFN5liELO398Arcd0JwX6v
 JTZw==
X-Gm-Message-State: APjAAAVC6yk+Zj22de61kK6OE4QTWK8oldlONzvxi/1OMGQ0z7LRs+h4
 XX9LtOdq5Ps4mXObayL4bnop4af5hvwtv/sGRrHg/w==
X-Google-Smtp-Source: APXvYqw2S0/3fnhssdZXUSPEvVyN98EsCdtKhEBQcJ6SoNNMaQ/TvElmw7BkQdY8sm55Mo53z3sVsDO2+OyUclDLg0s=
X-Received: by 2002:a5d:968e:: with SMTP id m14mr34583348ion.49.1558939032282; 
 Sun, 26 May 2019 23:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <1558929734-20051-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1558929734-20051-1-git-send-email-anshuman.khandual@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 27 May 2019 08:37:00 +0200
Message-ID: <CAKv+Gu-OSkPWUACCt=hzQJbbNArjYzt_nyYXit-oMOZy8t3fTQ@mail.gmail.com>
Subject: Re: [PATCH] arm64/mm: Drop BUG_ON() from [pmd|pud]_set_huge()
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_233713_429042_255C0C4B 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 May 2019 at 06:02, Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
>
> There are no callers for the functions which will pass unaligned physical
> addresses. Hence just drop these BUG_ON() checks which are not required.
>

This might change in the future, right? Should we perhaps switch to
VM_BUG_ON() instead so they get compiled out unless CONFIG_VM_DEBUG is
enabled?

> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/mm/mmu.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 22c2e4f0768f..629011c6238d 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -978,7 +978,6 @@ int pud_set_huge(pud_t *pudp, phys_addr_t phys, pgprot_t prot)
>                                    pud_val(new_pud)))
>                 return 0;
>
> -       BUG_ON(phys & ~PUD_MASK);
>         set_pud(pudp, new_pud);
>         return 1;
>  }
> @@ -992,7 +991,6 @@ int pmd_set_huge(pmd_t *pmdp, phys_addr_t phys, pgprot_t prot)
>                                    pmd_val(new_pmd)))
>                 return 0;
>
> -       BUG_ON(phys & ~PMD_MASK);
>         set_pmd(pmdp, new_pmd);
>         return 1;
>  }
> --
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
