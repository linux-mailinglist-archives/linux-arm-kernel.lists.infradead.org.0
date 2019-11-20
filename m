Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA531036E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 10:44:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tO4FvaBD+Jkwh0LT7hKRRR74IjrSNtUs8XMTSXsIRjY=; b=Zdqp6x8kPoR402
	SOIaPJDV5zBTKhhoysZlwLhVu0l0SBtJRJQfoGIOP1bWsQaScbrpdRqRgr3n2BxkwVLPyK1N9FPlP
	pD1G2Njb2mwfg6wgi94mBY4jj9ade6QENV5iKq8tnsuLYRjQOrCAPM7jYBr0Jdc3IL2MTpJDSfs2Z
	ObQoyKYZ6aK4Uv3KIVQswG+vRDVHlj6LQFTwTUK8VqCj28Zgzj9vFDy178U5v1WD7E3lbqKDviIS4
	YlCxNtEYxX6imylEKflW5N4lmxfSEv2YR3C3vfjm7DGeADwSCnx4qwAYEWGzvvvNcFWbrmq0WDT7V
	1lfSM3SmZKuVFlAI25ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMWn-0007GS-8F; Wed, 20 Nov 2019 09:44:01 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMWc-0007Aa-8z
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 09:43:53 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id xAK9hTe4006963
 for <linux-arm-kernel@lists.infradead.org>; Wed, 20 Nov 2019 18:43:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com xAK9hTe4006963
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1574243010;
 bh=gaeqdtznjjafg+M5Fz5ihzkuP1zCT1Ut14Jc/U3kO0k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XULbgrv5bAU/hwre0092fkHZT1E1/voN+/IkerXZNfbhu2pzTE7f60xDllS2iY0V4
 8jBnWGI/vsZ9Df54OKBDQ9hMRutr54N1BdeHJwajUQD1cjEjBe4oDxgzIOTBqaTRY1
 NiZeQ/b19cWhjOtu/6k7Bn0ascxp8CgVZGQ+mNvXHDoWuEMATCNTr3ql2LSAp0kGOs
 8OU0O8AmYZnotBjY5SMYRMPUTQ42wqrFqpuTZnjitieZspbAXDYlNIo1slmAjeZyou
 Z4vblX/K2lumxtQSMk5FeCPBSDdm3tQS5j4bZThBKW9kBYK1CD2GdBtyJHjXWT/wXv
 5mOD6Lspz3Vlg==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id c25so16417635vsp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 01:43:29 -0800 (PST)
X-Gm-Message-State: APjAAAUs2VuI+x8PYUxugoURPanXueWNoOt/uz3AY67gwFl+yz8kqQ+N
 c77lHibc86Pr/JJT8MYLxEEwOWqL3R4WZCTwG7Y=
X-Google-Smtp-Source: APXvYqydF4O542U4LQETZ4wHBOQur8BMF1qbkuAzzOgrIMLs4fbi4o6BnIuLJQm4CI1YMqKWZQIgo1eUGiIKHyX2trE=
X-Received: by 2002:a05:6102:726:: with SMTP id
 u6mr884537vsg.179.1574243008839; 
 Wed, 20 Nov 2019 01:43:28 -0800 (PST)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
 <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
 <20191113170058.GP25745@shell.armlinux.org.uk>
 <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
 <20191120090744.GH25745@shell.armlinux.org.uk>
In-Reply-To: <20191120090744.GH25745@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 20 Nov 2019 18:42:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNARMjaCe8spDPMAKdViUN+uUycYL9LSCXumcR8DNDNKaPA@mail.gmail.com>
Message-ID: <CAK7LNARMjaCe8spDPMAKdViUN+uUycYL9LSCXumcR8DNDNKaPA@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_014350_547066_1CE917D9 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,


On Wed, Nov 20, 2019 at 6:07 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 06:02:13PM +0900, Masahiro Yamada wrote:
> > Hi Arnd,
> >
> >
> >
> > On Thu, Nov 14, 2019 at 2:01 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Wed, Nov 13, 2019 at 02:15:00PM +0100, Geert Uytterhoeven wrote:
> > > > Hi Russell,
> > > >
> > > > On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > > On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > > > > > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > > Without the frame pointer enabled, return_address() is an inline
> > > > > > > > function and does not need to be exported, as shown by this warning:
> > > > > > > >
> > > > > > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > > > > >
> > > > > > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > > > > > >
> > > > > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > >
> > > > > > > Thanks for your patch!
> > > > > > >
> > > > > > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > > >
> > > > > > > > --- a/arch/arm/kernel/return_address.c
> > > > > > > > +++ b/arch/arm/kernel/return_address.c
> > > > > > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > > > > > >                 return NULL;
> > > > > > > >  }
> > > > > > > >
> > > > > > >
> > > > > > > Checkpatch doesn't like the empty line above:
> > > > > > >
> > > > > > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > > > > > >
> > > > > > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > > > > > +
> > > > > > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > > > > > >
> > > > > > > > -EXPORT_SYMBOL_GPL(return_address);
> > > >
> > > > > > What has happened to this patch?
> > > > > >
> > > > > > I still see this warning.
> > > > >
> > > > > Simple - it got merged, it caused build regressions, it got dropped.
> > > > > A new version is pending me doing another round of patch merging.
> > > >
> > > > I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?
> > >
> > > I don't keep track of who did what, sorry.
> >
> >
> > Arnd,
> >
> > I believe this patch is the correct fix.
> > Could you please put it into Russell's patch tracker?
> > (patches@arm.linux.org.uk)
>
> Is there something wrong with:
>
> fb033c95c94c ARM: 8918/2: only build return_address() if needed
>
> I haven't seen any build issues with that.


Sorry, I had not checked Ben's patch because you said
"Simple - it got merged, it caused build regressions, it got dropped."


Yup, I've checked it right now,
and it looks good to me.

But, I do not see that commit in the latest linux-next
(next-20191120).

Could you really apply it if you have not.

Thanks!



--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
