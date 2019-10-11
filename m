Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EA2D394E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0TBGBcEKl3H3Iy5BKp6NQhUtUENYJxP6FZZD48bOgM=; b=tT+kt/jUNk5V3N
	AxXqzFPuw/cyhjpt42F3tnbgKSyvBGBbLvOY9Q+gp1sPWAISvVC7XKylJKi9vkHoLk9kyWe5rLJ5J
	X1saBkwCz50uL8rP8PNDKaheozKBtKkSnRnSU2G/dg5tsDW3KnHR4igX4IcPPWcqNw5JrBbL6Jq25
	iTTBHLYRoPqQ2lCRRZb77kHq+Fe7mxDXmvxzadhW4VM8R77GoNwjicv4S/M7PfQ5zNCBYP5W42tUa
	a/W7HHhBUiA/NJlcmFKSWD66NCvT4qMl7gm008MBIKPyCLoxMax2PiZJu8fhKPyQh0hLCxPZ39f7n
	xhGlo+nSJCHHr8F2Pnmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIoLl-0000DK-2S; Fri, 11 Oct 2019 06:24:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIoLc-0000A9-TD
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:24:22 +0000
Received: by mail-ot1-f65.google.com with SMTP id 21so7013852otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 23:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wqH28Wgy5XWdZC93SRfUsKq/9YOvOsGCUjreqzk83Gk=;
 b=A00IBXlYKk8/ggxtbJCcv9CL5tnB73gzeKSiKkWLGVRP3czR/Xb8iInDGUY5ltrVns
 YCWf4iY7JYQqhLIBoaDmKVRzI56vND9fMyH7ZztlBGwPdsXwj4ZYTrLaBnQP5d1iyb93
 qHIxpdDHfgXa+X4tfOFyjw2h1nxIUNXC0I6QU6p764sRdD9nxKR3sJomn8LgwT9Q9Vwd
 s6S0/4JlKZI4LgByMAn7txOyRpsKND7BrjwP2Ayu+AdNl3zD1b138aau/gVN1ctnzJtZ
 lTyPel7Y6SZzh2y/Wxej3cNxydYKBAx3Esa4pBsHN2bOZ6a++ho8hhwv4kMM/igmQzVB
 n2kw==
X-Gm-Message-State: APjAAAU2O/xve1EKTBHkv1ljZ9x8A6Fh7ZXqpZ/MTr1DaFwYeZRNz82f
 t22jmLFWoq3UG4e3R/eXxX8wYAC9LN/uE30qKtc=
X-Google-Smtp-Source: APXvYqwxOor4RfihqgN3JVbtlFkewd5BTf8h1xQOCtR1ReSQo5uAggV1fh25p047jHcSVf4NgTkIHSsDZwiQ7Gum/WI=
X-Received: by 2002:a05:6830:1b75:: with SMTP id
 d21mr11190915ote.145.1570775059475; 
 Thu, 10 Oct 2019 23:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191010123046.15291-1-geert+renesas@glider.be>
 <20191011073515.2933918c@canb.auug.org.au>
In-Reply-To: <20191011073515.2933918c@canb.auug.org.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 11 Oct 2019 08:24:06 +0200
Message-ID: <CAMuHMdXNQtSzGMyxF18A_yxNJt9k28M82u4TUXHS9kXOcgoMYA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Remove Simon as Renesas SoC Co-Maintainer
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_232420_941873_C002F37D 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Thu, Oct 10, 2019 at 10:35 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> On Thu, 10 Oct 2019 14:30:46 +0200 Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> > At the end of the v5.3 upstream kernel development cycle, Simon stepped
> > down from his role as Renesas SoC maintainer.
> >
> > Remove his maintainership, git repository, and branch from the
> > MAINTAINERS file, and add an entry to the CREDITS file to honor his
> > work.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> So, I will remove Simon's Renesas tree from linux-next and rename the
> renesas-geert tree to be renesas, OK?

Thanks, that's exactly what I intended to happen ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
