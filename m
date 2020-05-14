Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700EF1D383C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe0Q1zUJlUrnZCCeValqAGuXF970woOO/81LGSA90H8=; b=Zmlh0oh8SvXJ2n
	BojmOUPcpOicD3eJChzdJdCDEAu4WBkZTrnkoIV3E7AA25dzhFRvTsU06Izz+CHa5AcQhYGM4GZ4J
	MULLlWB3SRWk9RbatfN5Hpb37irkGAppR4xDOxkGwa3o16t2cifQluOHs+rEayNWYj6FGfO6i7lHR
	BMPmTVPQooO8tyompow6yjF/DfsB4XrChdfJUortMIH7cwj07o7Brdmy0yTlHIT9lWJEEjfO2oEL1
	iJLL+ZBuyN0piXOJsLh+enYl055a6KupkfbIjCShb9BvtE3F6UEnZ5Wb58lVy+PRY22gjV1OROSMS
	wdpFPuPVAMaQbIwredAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHhV-0000Hs-59; Thu, 14 May 2020 17:31:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHWV-0007zP-9k
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 17:19:59 +0000
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B244206F1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589476793;
 bh=xiQH/YuI5jLPCUJjA0dkhlj3Vt/Rrb4EHGS5/TdBx4g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=D+UCioPPZzGmo7X/p67Q3FludFt/QvqCpii04XZtYJi7I9mubT0+jQELoa3CoqKIP
 5Nz+wk2KHGk65PLAlyproRBntYaG6inPWFsitV/1Zxj9Adbok0Z2+ittsFATtSRjdf
 prZjiMTn3+3Lt91J5hw+M3c6F+lo++UtBpRa812Q=
Received: by mail-io1-f45.google.com with SMTP id w25so1394046iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 10:19:53 -0700 (PDT)
X-Gm-Message-State: AGi0PuZHF7O8a3wZKGqeVog7glRxba/jNSRrepQI/Sn2+2ivFWr74Fjl
 UWLGcQl303ZZN8ldJDDaS2sKUHJP+d79H7VgsWg=
X-Google-Smtp-Source: ABdhPJwIrw6c5FcRt385wXBaNdBL1bL1CAZ+9+4/SuCTtIdbh3Iel5MkTc+90KjRysnIJwRN92To8cSjWCURZMN2osg=
X-Received: by 2002:a02:c48b:: with SMTP id t11mr5307726jam.71.1589476792733; 
 Thu, 14 May 2020 10:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200514135737.309146-1-linus.walleij@linaro.org>
In-Reply-To: <20200514135737.309146-1-linus.walleij@linaro.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 14 May 2020 19:19:41 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFe_ZEEp3xU4+CKqng0dW2SF8G50EdKOiyu7htB1_-TWw@mail.gmail.com>
Message-ID: <CAMj1kXFe_ZEEp3xU4+CKqng0dW2SF8G50EdKOiyu7htB1_-TWw@mail.gmail.com>
Subject: Re: [PATCH] ARM: mm: make act_mm() respect THREAD_SIZE_ORDER
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101955_403511_67D08031 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 15:59, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Recent work with KASan exposed the folling hard-coded bitmask
> in arch/arm/mm/proc-macros.S:
>
>   bic     \rd, sp, #8128
>   bic     \rd, \rd, #63
>
> This forms the bitmask 0x1FFF that is coinciding with
> (PAGE_SIZE << THREAD_SIZE_ORDER) - 1, this code was assuming
> that THREAD_SIZE is always 8K (8192).
>
> As KASan was increasing THREAD_SIZE_ORDER to 2, I ran into
> this bug.
>
> Fix it by this little oneline suggested by Ard:
>
>   bic     \rd, sp, #(4095 << THREAD_SIZE_ORDER) & ~63
>

Perhaps

(THREAD_SIZE - 1) & ~63

is a bit cleaner here?



> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> I'm sending this as a separate preparatory fix as it is
> a nice fix in its own right. I am now testing KASan on
> ARMv4 and ARMv5 and with some minimal busybox userspace
> it is quite possible to run it on even really small
> devices like the Gemini-based routers and NAS from
> D-Link.
> ---
>  arch/arm/mm/proc-macros.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
> index 5461d589a1e2..ba100b2d0ac2 100644
> --- a/arch/arm/mm/proc-macros.S
> +++ b/arch/arm/mm/proc-macros.S
> @@ -30,7 +30,7 @@
>   * act_mm - get current->active_mm
>   */
>         .macro  act_mm, rd
> -       bic     \rd, sp, #8128
> +       bic     \rd, sp, #(4095 << THREAD_SIZE_ORDER) & ~63
>         bic     \rd, \rd, #63
>         ldr     \rd, [\rd, #TI_TASK]
>         .if (TSK_ACTIVE_MM > IMM12_MASK)
> --
> 2.25.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
