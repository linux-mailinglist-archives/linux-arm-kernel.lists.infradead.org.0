Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DBC6F32B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 14:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GALaBtgBFaq+VlzdCcOklnB8EGx5V094mNGOCtLOQMM=; b=ND/87nei3LxyVq
	+nQYIgcbA49Kgrj+V43Xvx+UgGxNfGAnyiwmveZtbrnOxaWbgGCuwvqQZi5Z8+6oYbMaDks5fKMfv
	xN7bcOg0TnFqSUNuDQQWS8PyePF+Zs7KkbDstHmnQJRmG/c5l6dkFoNM+BoQEoWeoqlSc6P91Sawt
	iUGn06AuyEmrMp+dSJ78tFzJmNUFXufcjDMwVC6BtUKtTOTnRpMkR9KKx7ZDfYcMmFU8OGfxdMtgt
	avI71fncquL6LSJJSqdY7F2lINlavxXvCfUj/gRjp/aUUd6yIAuEswaIg2Z2fdR7N3K1fDgITWw63
	FoWJOOrVNkSZW6pzTOUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpAiS-00080f-Ls; Sun, 21 Jul 2019 12:13:24 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpAiG-00080F-AQ
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 12:13:14 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x6LCCv4e011977
 for <linux-arm-kernel@lists.infradead.org>; Sun, 21 Jul 2019 21:12:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x6LCCv4e011977
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563711178;
 bh=MIA0+vFVf3mUGGa03CY80enR4qM7bzkzR410L3fu3TE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=q5QL+RHFEViaW/mMvaiRLzKjwSgbDFxpOxs/RfKREU7HS8r89mC2Bz7zMjVOaXyXn
 tcMALk0yb+puadsgO9+2y8TVFyRAZ4y0mLCm+cBkvl+tEprAF+7gkmzX8cgn+OYJeS
 I1sV136C7Hgcgdk00LjWZBn14Xab9lSJwKzufWhEcHDnSMGrjPKmc/uqG/kmhYCRn2
 Dqx/mXqAwm5ImwYiX1+4i1CnHusTEZf3G3ZNGaVd588g98vmsQtltf0TjPbzdezDYY
 4Z8PoTYL21ClgrHmq3rlcy3Q8zuOy8BZK6I88MDOCTGWAha5Y0Q+Ir4P3N1cLKJpK0
 DzewVIvkwKM3A==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id v20so14286848uao.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 05:12:58 -0700 (PDT)
X-Gm-Message-State: APjAAAVNT2HaHJnNhjSggceGh66jM35kwGhvGuz+XKdwZtL0aYgMRvLO
 wZe5IvickheD5XXIfUFv1BsQH3PMsfH4CpFxYVA=
X-Google-Smtp-Source: APXvYqxuBnjaSyRpGv3ZxRVy/hU0ZW6/IruER15xQdcM9a/uJ7XwnfPu3iofGBzVr2dqeJUH5StCwXqmj4pJ02ZB0yo=
X-Received: by 2002:a9f:2265:: with SMTP id 92mr25208724uad.121.1563711177169; 
 Sun, 21 Jul 2019 05:12:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
 <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
 <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
In-Reply-To: <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 21 Jul 2019 21:12:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
Message-ID: <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_051312_610034_BEE5456D 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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
Cc: DTML <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 6:10 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, Jul 21, 2019 at 5:45 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> > On Sat, Jul 20, 2019 at 10:55 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Sat, Jul 20, 2019 at 5:26 AM Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
> > > > So, what shall we do?
> > > >
> > > > Drop the board-file support? Or, keep it
> > > > in case somebody is still using their board-files
> > > > in downstream?
> >>
> > > For this file, all boards got converted to DT, and the old setup
> > > code removed in commit ebc278f15759 ("ARM: mvebu: remove static
> > > LED setup for netxbig boards"), four years ago, so it's a fairly
> > > easy decision to make it DT only.
> >
> > I see another case, which is difficult
> > to make a decision.
> >
> > For example, drivers/spi/spi-tle62x0.c
> >
> > This driver supports only board-file, but the board-file
> > is not found in upstream.
> >
> > Unless I am terribly missing something,
> > there is no one who passes tle62x0_pdata
> > to this driver.
> >
> > $ git grep tle62x0_pdata
> > drivers/spi/spi-tle62x0.c:      struct tle62x0_pdata *pdata;
> > include/linux/spi/tle62x0.h:struct tle62x0_pdata {
> >
> > But, removing board-file support
> > makes this driver completely useless...
>
> Adding Ben Dooks to Cc.
>
> I suspect this driver is completely obsolete and should be removed.
>
> For some reason, it's not an SPI controller driver like all the other
> files in that directory, but implements low-level access to the state
> of a particular SPI device.
>
> However, there should not really be a low-level driver for it that
> just exports the pins to user space. It should either be a gpiolib
> driver to let other drivers talk to the pins, or a high-level driver that
> exposes the intended functionality (watchdog, regulator, ...)
> to those respective subsystems.
>
>        Arnd


Another example that I have no idea
how it works:

drivers/net/hamradio/yam.c

yam_ioctl() reads data from user-space,
but the data structures for ioctl are
defined in include/linux/yam.h

This header is not exported to user-space
since it is outside of the uapi directory.

I dug the git history, but it has never
exported to user-space in the past.

I do not know how user-space programs can
pass-in data to the kernel.

If we want to fix this, we could move it
to include/uapi/linux/yam.h

But, if nobody has reported any problem about this,
it might be a good proof that nobody is using this driver.

Maybe, can we simply drop odd drivers??


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
