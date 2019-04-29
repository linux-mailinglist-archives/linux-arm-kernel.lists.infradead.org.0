Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C84E8A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBMAAI2OT3DH7GfK8T313Xf9gDWoLXnoRcDCtWeOkM8=; b=CPVLD8YecQANqn
	fsaXqx5FKPQie6+JFCd616x1zSzIklB0yMfsN7ji/QtKTuOxgxfNc9S5N2vLE27sujwwKzWswTUna
	m3LqsgrGVC77TfRnqF34HCMh8uo+1hjju7E7nbjdZj7y3sa4Sw0RLYezVdUryacin0OT7C5GQX0NR
	tYT2tmvPWl/NJbL5sMPqmUSMdSqgioKd87SKQcmaJBO4RzwYyNossxHDoy/eQZPQfaob18AAGJq+t
	laAwZ00GV5WClQVTf8nAuu6kJ2glVaNGzfaYGbyHfpZuUzxhz8p+wbnQ6rDaZvw/QT15kaZUXY9s5
	QtxR/+hfXKjwefEV3XSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9w5-0003XU-Dq; Mon, 29 Apr 2019 17:19:25 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9vx-0003Wh-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:19:19 +0000
Received: by mail-io1-xd43.google.com with SMTP id v9so9632588iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TcHWiD1mzC1uHmKop2kWHjOyjfjQjqGRJXvrFO4NZ0M=;
 b=WJtEtPJw0ligOQLTkD1wdJpW0Xya6+Usnixo6qM6RCmaVuRB6Sw6wj0oxCImo1LiSU
 19ZpSQb6bgjljTeQNsMfJ+Dkk6kINsP22ZduO9o3JEefbuBit3tCiV16cve3eLhpO5td
 V8a7R8RsMk5Yk3qj9DVxD6ISwW+9YBSsNeDXoi264fxd29BQM1fdcUVUufbMTl8f8fcE
 98rFyJ+pJy0G8gcajIbrpNypKbFgTJ7t8QCLvYVwV6WWr61DbX04g2oDc58uLlWTRWvx
 FW0GZFyaO5zbqVX6Hw+8yJxE8cYkhp3fCI/Ox3LRQ2puDTOC3dkRvSZhNkSB+oK8Tzgm
 RuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TcHWiD1mzC1uHmKop2kWHjOyjfjQjqGRJXvrFO4NZ0M=;
 b=YedW7GshH8+5JsC8XeoDGZAhwFIxpDsMveT2f3lSbK+e5cDWofUZU3qWE0XGkbyVSO
 IjZfp8JJS1S/UNVtrBhJFNSDwMOA2tkEud3y58vO9UDzjEfVfga+nxIBblX5yM4RqQ3F
 sbOEIowq/zaINnK3APJmUdueZIpLT341URnbX4ebD/f84G3dlyXEhVg4tO4uHIlscabw
 nc02YibarJfoIsSie67dlkHqwrKpF3J+Tex3u+dFczAUyfFVrL1u9BHxJI4usLGFYmtG
 Wo7xEHfFB+7kAhzEPx4rSa8qwpXy/TtX2OpLBgomGtCoZrkDljYZaVHBDcSSdwnxXQKO
 4D1w==
X-Gm-Message-State: APjAAAXnO/xi0tmM+XnWaPr0OEjzKGC4w7g/2H5XA44hjZO21WpHM6Gw
 3UTLABPLS24EfA506F1KasL8zlnBKfGwc9hdYYZWCQ==
X-Google-Smtp-Source: APXvYqwr2b6ak9dkpcvCh4y3y7IhGFDCOLPWZnc8qygdB7THWWCzrsfb52Z9YiShfN4rx8ZPHnDzMPYVrnL0fFrmwzc=
X-Received: by 2002:a6b:5910:: with SMTP id n16mr16081346iob.140.1556558356559; 
 Mon, 29 Apr 2019 10:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
 <CAOesGMg49z4Gip-bLK-h7+LSLa4Fu68r11gT2EV8E8xMCPGDxg@mail.gmail.com>
 <CAO=notwVyTqvxfYRU1XJTwzSNCUAMgYCVpXVvqaN62uSiWyYCQ@mail.gmail.com>
In-Reply-To: <CAO=notwVyTqvxfYRU1XJTwzSNCUAMgYCVpXVvqaN62uSiWyYCQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 29 Apr 2019 10:19:04 -0700
Message-ID: <CAOesGMjShorZmVeLL1nJNPVOP+vNTVzcA=arU3qW8ZUDYCtjaQ@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Patrick Venture <venture@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101917_802386_740215E7 
X-CRM114-Status: GOOD (  26.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:16 AM Patrick Venture <venture@google.com> wrote:
>
> On Mon, Apr 29, 2019 at 10:13 AM Olof Johansson <olof@lixom.net> wrote:
> >
> > On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
> > >
> > > On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > > > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > > > >
> > > > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > > > >
> > > > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > > > currently present into this folder.  These drivers are not generic part
> > > > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > > > >
> > > > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > > > >
> > > > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > > > >
> > > > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > > > Ack this version of the patchset since it changes when the soc/aspeed
> > > > > Makefile is followed.
> > > >
> > > > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > > > maintainers are free to take this.
> > > >
> > > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > >
> > > I'm totally confused. This is the second "PATCH v2" of this patch that I came
> > > across, I already applied the first.
> > >
> > > Patrick: Follow up with incremental patch in case there's any difference.
> > > Meanwhile, please keep in mind that you're adding a lot of work for people when
> > > you respin patches without following up on the previous version. Thanks!
> >
> > Not only that, but subthreads were cc:d to arm@kernel.org and some
> > were not, so I missed the overnight conversation on the topic.
> >
> > If this email thread is any indication of how the code will be
> > flowing, there's definitely need for more structure. Joel, I'm hoping
> > you'll coordinate.
>
> To be honest, this patchset thread was a bit less clear than anyone
> prefers.  I use get_maintainers to get the initial list, and so adding
> arm@ or soc@ per a request tells me that perhaps those should be
> output via that script.

The tools are working as expected, we normally don't take patches
directly to arm@kernel.org, we let them go in through platform
maintainers who then send it on to us.

> >
> > I'm with Arnd on whether the code should be in drivers/soc or not --
> > most of it likely should not.
>
> I think the misc drivers for a SoC that are a single user interface
> that is focused on the use-case that belongs to that SoC only belong
> in soc/, while if there is something we can do in common -- different
> story.  If it makes sense to just have misc/aspeed/ instead of
> soc/aspeed -- would that align more?

Those views are how the "board file hell" started on 32-bit ARM too,
so we're definitely hesitant to jump to that conclusion without
knowing more about what's actually anticipated.


Do you happen to have an estimate on what kind of drivers are
needed/anticipated?


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
