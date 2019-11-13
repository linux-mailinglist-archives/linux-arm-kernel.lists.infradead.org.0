Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA389FAFDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 12:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pS4czZDzdM88pjbc74NYzLJnbNHj33JyZS/OCW6LLoM=; b=q0v4LMDbfsHx39
	utTbAxzsgMitRnstumQognnrZDzxX7c1VLrlGKe/2qbIF4C7HK+MxvGr5zO4o8nz6NSoEZuB4eE+A
	a/THS58EmkQfGy9kNv1+dOkRSc8iT/1shuzBUM1h+dUln3ofgFHdJUF1QodOwPvf3p3wc1zlV85vH
	xEoIhtdJDBsTqZkW8R25EACC7fPZ+60Qfw7i/swxQ9MO+un3/J0LkpXbO1CCKggqDG9ECaonPtpPN
	0TqRGsJtVx2XP5txZMT3jhofocb2BvzBe+pBOxNsB6HLhaN8sxgB/Kjx9BaiexuBlD0HzMSsCLU1v
	s+/qcdbfkdWnMrBSWzeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUr2C-00040f-6F; Wed, 13 Nov 2019 11:42:04 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUr1r-0003Nd-B8
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 11:41:45 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id xADBfG9s007712
 for <linux-arm-kernel@lists.infradead.org>; Wed, 13 Nov 2019 20:41:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xADBfG9s007712
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1573645277;
 bh=J6rJT8P5SnuQtYPsxB/K65h5d3rtBJCHsFkTNmOyQlQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jg5JN1kyvIRVl+wnxWLogXC8ILKa+IPKGO3oktS6ZUotAb3IrHuk4Cd8D0jRpS+Z/
 nn4aw7dZ1b0YnJJ7AiKHjQ2t/Cu60ALE0Dh9E3WfRj2CTKfY0JUzC8ZchaQv0FppaG
 Fwy+yVGWbgh8TTCt820j9oWM9oW/tdMhKvpLE05p+HEk4CY8OYLGlPFutee/2rSxRW
 uBKiz4+K20hREfUyGRaxCJ8Ox9HxaPzJ3CDeJjbRXdUn34oD9JR64StlSm4xVn3BV0
 M49dIKUVvlEoFbtYI68+5VwbIlJ9NPgm31QO5fibO43FyIEoowXPOyocKhEDAk9wjx
 bZL9tMKtNoJnQ==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id k19so471027vke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 03:41:17 -0800 (PST)
X-Gm-Message-State: APjAAAVu9xv0UJpGudMMSGapKdoPQvlImuh4fI/3U6Xzc9RHisybAE3M
 ksZY3PGEexDgFLaUxohp49INCiGSGETluVxblUA=
X-Google-Smtp-Source: APXvYqxqblFCrOJg10zfx2WK5ReUHCOH5foJoWAQQv3PyYkLJdqhdmg4TbDz/1KDQB+Qui2LDB57vmmLTKCspKoZrlo=
X-Received: by 2002:a1f:4192:: with SMTP id o140mr1284724vka.26.1573645275987; 
 Wed, 13 Nov 2019 03:41:15 -0800 (PST)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
In-Reply-To: <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 13 Nov 2019 20:40:39 +0900
X-Gmail-Original-Message-ID: <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
Message-ID: <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_034143_770751_5C960843 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Arnd,
>
> On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > Without the frame pointer enabled, return_address() is an inline
> > function and does not need to be exported, as shown by this warning:
> >
> > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> >
> > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Thanks for your patch!
>
> Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> > --- a/arch/arm/kernel/return_address.c
> > +++ b/arch/arm/kernel/return_address.c
> > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> >                 return NULL;
> >  }
> >
>
> Checkpatch doesn't like the empty line above:
>
> WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
>
> > +EXPORT_SYMBOL_GPL(return_address);
> > +
> >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> >
> > -EXPORT_SYMBOL_GPL(return_address);
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds



What has happened to this patch?

I still see this warning.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
