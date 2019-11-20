Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39A210376C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swmhcRr2JrqOn32WwVSq3xVDBXryG52wwoSZ6GYTjpM=; b=VNRt1T2nxxRo/3
	byzohKXFB7GA7346y5c5M290tVhBLF4ZQiDU75yKpxbGwbeR+6I7hmzYm/hHYmz9fST+AbiDFg7GL
	WWJtYCmi89re/ofblCjUMlRr+ILW/q5ZVPXrg+n1INjW2TUlPlV0I6aFLJ+r3cXzVoSJGS/0RYBGh
	9D8xzjEYsprDAkPsv++XvW9P0xEDrnHlzNxlhZz8I7L54go0QmurrzsH6+ig1Gqp3edVZrbUFbpf7
	ZUV/teUrPfQ0umDn6lJhNg7fGctxJb7ujSZBCeb9D7k7EP3hqBOpC5tc8t2BB4hORIvO1SkBCNoP0
	C5y5ocq7CZctOiNRV+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNA4-0004i1-Qp; Wed, 20 Nov 2019 10:24:36 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXN9r-0004fS-GR
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 10:24:26 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id xAKAO68e024258
 for <linux-arm-kernel@lists.infradead.org>; Wed, 20 Nov 2019 19:24:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xAKAO68e024258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1574245447;
 bh=sud4ysXnXZF3asFVBLXhGnpMiB6/B6ueZh7o5lhc5tc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rs6UtqC6NIuZI8H8e2N6qeO4lK+RoLzEBSnuYrf+m9jFGK/+YnINoGHdLw8+x23s/
 NFQbiyzU42Wgewplbal5DPGFVBUoiWTLfX0LTEAvmkJTzS2p9Qu+gBNuS/o4HSrpby
 rR0NfzUTC8zHJM8ndImAYyx43caAYPg3VGmGeBCG9TcQPc+gmiX73zAKnZMjlpKgVN
 CcWBp0kzrfpoC6REgWzuN1l/cRPYlJucFYokfVUKvekaNFE5Mi/CBjoHyinESKn5St
 uZxOO+ug6p9rz4Gf/c5HePJogmzHRpoqmEHzs3zqUAUY2GzTzd9JD3olYM4k9m7YS1
 8HVxCybRMx9MA==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id k15so16502062vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 02:24:06 -0800 (PST)
X-Gm-Message-State: APjAAAUxZBTZjNZLismp/343r8uCmGUA7PAhZZdRv5TRiHKJTZaD+aj6
 jIjHF9/RtG4qRwnXrMAAP0QGvZAfhN25bbA8TTI=
X-Google-Smtp-Source: APXvYqztHD5lJDgQ1BPFn0ixrl2PD1pbikc8gAA5xmMDFjugjhOEebJ8jmWBCxqAtTuHYl48HspSNNtru3VHyCh0d7k=
X-Received: by 2002:a67:d31b:: with SMTP id a27mr1059750vsj.215.1574245445545; 
 Wed, 20 Nov 2019 02:24:05 -0800 (PST)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
 <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
 <20191113170058.GP25745@shell.armlinux.org.uk>
 <CAK7LNARiQnc+A0j4ORC-M8ZcbtDYdRF7tU1Zv8Lbst-g8dqmVQ@mail.gmail.com>
 <20191120090744.GH25745@shell.armlinux.org.uk>
 <CAK7LNARMjaCe8spDPMAKdViUN+uUycYL9LSCXumcR8DNDNKaPA@mail.gmail.com>
 <20191120095111.GI25745@shell.armlinux.org.uk>
 <20191120100737.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20191120100737.GL25745@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 20 Nov 2019 19:23:29 +0900
X-Gmail-Original-Message-ID: <CAK7LNARZ=EAfai2y66pyMnNrCp+Szw51R+M15kxA+m2ToXftow@mail.gmail.com>
Message-ID: <CAK7LNARZ=EAfai2y66pyMnNrCp+Szw51R+M15kxA+m2ToXftow@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_022423_771864_22A71B46 
X-CRM114-Status: GOOD (  28.37  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
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

On Wed, Nov 20, 2019 at 7:07 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 20, 2019 at 09:51:11AM +0000, Russell King - ARM Linux admin wrote:
> > On Wed, Nov 20, 2019 at 06:42:52PM +0900, Masahiro Yamada wrote:
> > > Hi Russell,
> > >
> > >
> > > On Wed, Nov 20, 2019 at 6:07 PM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Wed, Nov 20, 2019 at 06:02:13PM +0900, Masahiro Yamada wrote:
> > > > > Hi Arnd,
> > > > >
> > > > >
> > > > >
> > > > > On Thu, Nov 14, 2019 at 2:01 AM Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > > > >
> > > > > > On Wed, Nov 13, 2019 at 02:15:00PM +0100, Geert Uytterhoeven wrote:
> > > > > > > Hi Russell,
> > > > > > >
> > > > > > > On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
> > > > > > > <linux@armlinux.org.uk> wrote:
> > > > > > > > On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > > > > > > > > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > > > > > Without the frame pointer enabled, return_address() is an inline
> > > > > > > > > > > function and does not need to be exported, as shown by this warning:
> > > > > > > > > > >
> > > > > > > > > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > > > > > > > > >
> > > > > > > > > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > > > > > > > > >
> > > > > > > > > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > > > > >
> > > > > > > > > > Thanks for your patch!
> > > > > > > > > >
> > > > > > > > > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > > > > > >
> > > > > > > > > > > --- a/arch/arm/kernel/return_address.c
> > > > > > > > > > > +++ b/arch/arm/kernel/return_address.c
> > > > > > > > > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > > > > > > > > >                 return NULL;
> > > > > > > > > > >  }
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > Checkpatch doesn't like the empty line above:
> > > > > > > > > >
> > > > > > > > > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > > > > > > > > >
> > > > > > > > > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > > > > > > > > +
> > > > > > > > > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > > > > > > > > >
> > > > > > > > > > > -EXPORT_SYMBOL_GPL(return_address);
> > > > > > >
> > > > > > > > > What has happened to this patch?
> > > > > > > > >
> > > > > > > > > I still see this warning.
> > > > > > > >
> > > > > > > > Simple - it got merged, it caused build regressions, it got dropped.
> > > > > > > > A new version is pending me doing another round of patch merging.
> > > > > > >
> > > > > > > I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?
> > > > > >
> > > > > > I don't keep track of who did what, sorry.
> > > > >
> > > > >
> > > > > Arnd,
> > > > >
> > > > > I believe this patch is the correct fix.
> > > > > Could you please put it into Russell's patch tracker?
> > > > > (patches@arm.linux.org.uk)
> > > >
> > > > Is there something wrong with:
> > > >
> > > > fb033c95c94c ARM: 8918/2: only build return_address() if needed
> > > >
> > > > I haven't seen any build issues with that.
> > >
> > >
> > > Sorry, I had not checked Ben's patch because you said
> > > "Simple - it got merged, it caused build regressions, it got dropped."
> >
> > That was 8918/1.  Ben fixed his patch, and submitted an updated
> > version.
> >
> > > Yup, I've checked it right now,
> > > and it looks good to me.
> > >
> > > But, I do not see that commit in the latest linux-next
> > > (next-20191120).
> > >
> > > Could you really apply it if you have not.
> >
> > It was applied last Friday and was pushed out there and then.
> >
> > $ git ls-remote zeniv | grep for-next
> > 022eb8ae8b5ee8c5c813923c69b5ebb1e9612c4c        refs/heads/for-next
> > $ git lg for-next
> > 022eb8ae8b5e ARM: 8938/1: kernel: initialize broadcast hrtimer based
> > clock event device
> > ...
> > fb033c95c94c ARM: 8918/2: only build return_address() if needed
> >
> > I've no idea why linux-next doesn't have it.
>
> Okay, apparently linux-next _does_ have it:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/arch/arm/kernel/Makefile
>
> so I think you're confused.


My brain was corrupted.

It was my mis-operation of git. I now see it.




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
