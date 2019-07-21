Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CCB6F165
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 05:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Tgr7mxgX9Qa9XQDxsPOaFI472dfrUCWX3PQDhSeU/o=; b=IMwiY2m6f9Uk4i
	ufqM9zUKOZSfbKFyiyF/74ScSCKh+mfZ2EeUjOe7hGX024WlMqJifAJ/T9dDSXoPM3QctKg3PYXZY
	cqBLrcXvNrzVbf46irECP/XzZAHDd0VHqHynSWeuVj35o5l5bIy3pfTHOsGHsY/BE/FYriHpWaiHw
	fQMG7p8+cpCt6HVem7m7dzlGwn5FM1W1rQAdMZa+GrwRHBMMNycyvTqdeQ2X5qBXVhWhvg4mg8OKv
	wgpNipSjLcidWdQ+eyJMKXSxSN11UMRAY2FVsPOIKxjo5Z0GyLJvxkM++0gXpg5nmIy9vUHHDUyPU
	fZtAfmOu7IJKpKBFSpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp2nf-0006Hv-Nl; Sun, 21 Jul 2019 03:46:15 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp2nR-0006HS-QL
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 03:46:03 +0000
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x6L3jTba007895
 for <linux-arm-kernel@lists.infradead.org>; Sun, 21 Jul 2019 12:45:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x6L3jTba007895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563680730;
 bh=+i1P1EOzIYuFKSpLhOGGexoKtgfai1r9bg5dNGXa6F0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rWZqNizHxDGhLXiH5RLEM1t/LUAvsgmp8EZk2jKss2AVNYPU4fdHNbMwigsoLYMLs
 UZE0/gzjudBE3rzE/Qh1bAbbpWMWEBhqyxX07k+ibiY0tTJQtkLW5cZ0Drmt9Um1Mi
 +W1GvIBSh8z6IG/egE0QRACea1V6Ej3N06iCH29ThBUqz+5siQ63qPpIm7qQUdBIly
 NaJ1C47+JSnH+6eArNrZ3vK40VJWjRfNyGrrP+SfXCyvkbDp8BYoqSrMQAym9DMf8s
 3Z5FWGq6CI5Pqv2Zwz+2nXV3vKgrK14OVX41zB8MGi8vl8Jmv28l9R5CefDW9rghK+
 Fyh6qQNdBFl2g==
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id m23so24026174vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 20:45:30 -0700 (PDT)
X-Gm-Message-State: APjAAAWvUK9tgjhvPpuwNQmfcmU1UPQ26JkiMg+QnIl7fa80nlrLuhyl
 CxFTltU1I3KzBLVIkg+NGolGj8Km4VNHkgY7K5Y=
X-Google-Smtp-Source: APXvYqyXn4LIVIGhGfe4GQcWn8jAhDg5lBZ7sWrCxxc9wSyaVu8Ptfm6hbnzjFDumV0Hyo1hL7V34uRrK01YyrMzJ7Y=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr15137391vsd.215.1563680729320; 
 Sat, 20 Jul 2019 20:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 21 Jul 2019 12:44:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
Message-ID: <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_204602_075536_EDD59629 
X-CRM114-Status: GOOD (  13.75  )
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Sat, Jul 20, 2019 at 10:55 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sat, Jul 20, 2019 at 5:26 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > masahiro@grover:~/ref/linux$ git grep netxbig_led_platform_data
> > drivers/leds/leds-netxbig.c:                          struct
> > netxbig_led_platform_data *pdata,
> > drivers/leds/leds-netxbig.c:                                 struct
> > netxbig_led_platform_data *pdata)
> > drivers/leds/leds-netxbig.c:                      struct
> > netxbig_led_platform_data *pdata)
> > drivers/leds/leds-netxbig.c:    struct netxbig_led_platform_data
> > *pdata = dev_get_platdata(&pdev->dev);
> > include/linux/platform_data/leds-kirkwood-netxbig.h:struct
> > netxbig_led_platform_data {
> >
> >
> >
> > So, what shall we do?
> >
> > Drop the board-file support? Or, keep it
> > in case somebody is still using their board-files
> > in downstream?
>
> Generally speaking, I'd remove the board file support in another
> case like this, but it's worth looking at when it was last used and by
> what.
>
> For this file, all boards got converted to DT, and the old setup
> code removed in commit ebc278f15759 ("ARM: mvebu: remove static
> LED setup for netxbig boards"), four years ago, so it's a fairly
> easy decision to make it DT only.


Thanks.

I see another case, which is difficult
to make a decision.

For example, drivers/spi/spi-tle62x0.c

This driver supports only board-file, but the board-file
is not found in upstream.

Unless I am terribly missing something,
there is no one who passes tle62x0_pdata
to this driver.

$ git grep tle62x0_pdata
drivers/spi/spi-tle62x0.c:      struct tle62x0_pdata *pdata;
include/linux/spi/tle62x0.h:struct tle62x0_pdata {

But, removing board-file support
makes this driver completely useless...


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
