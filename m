Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CEA17DB65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLLmWtGruLTd4kRLM6UtDLF36PWJetKllZOsI0UMj14=; b=IFzHbmNk/aHPEF
	auaVetGGoV5CbdNQddeKPrIHZ/hFH739VVt+5CDYrPOiZ+AUjYCWkxf4dWqAYi/UonCrmpL/YBoZA
	hTV+Q1mvjsEEltPiyPZJjMIA/VNU3pPIlJ1f9DwwkUsMZSw7NykXM9dkxp28LNPWPwBmFUoYEFFhD
	HXEJh2109UW6/3sUkmnXe/J5xpa6kXZrNva+/FStxBWZmSR7LBAQ+Hd9w5InBK7VSutP1ZkMcy/E+
	hRhp+QbBSWdL7WTgF3fx6QqhnYdiKO9GjLPhYxGRUJGMYsiwHeWpghg8PM6N7kBMTUvBX4BjK03GE
	iDdPcuyd+IIfz6GN95SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBE0b-0008Ei-S8; Mon, 09 Mar 2020 08:43:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBE0T-0008EE-Vr
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:43:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id v9so9879854wrf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 01:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3dyCaH2EW2/yhe02ff2ihoVbT2xLpKUPZBSJ5O6aTkg=;
 b=UlsaYbnawVwWDoz+SC65neHjnGA3JlFL/BKjzfb3XdecPlJ2q7iXUj/m/CxgL57NwA
 jkWqz4tevZEOYjaAKDASvUCxSrjr2VGEDYyqmAJT+xLeUAb7y7hFIdq6vcduvAJF1RD/
 AKgUtUptLfZUX1zAWluUCPjpqamMBz0lTYkk7hsggrYjyAKvtyFun7n0Tz6hgN/xRgr5
 DCQovat/CwPRfdWIMRfI+WLcX7mmsXk6U+2+bu+clngAvEjOx44jOhlPftJSnReNLhVK
 GYm0MQIS8hdy0fIfwcdQD8cvkgSEuiH1MD+0ro5qMKUgEBdSiJvu0rCWzztJaau7ym76
 sQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3dyCaH2EW2/yhe02ff2ihoVbT2xLpKUPZBSJ5O6aTkg=;
 b=ZY8Nge3jRJEggWux5agDfM8sIJSKHoUPPBXPaFX8LOMNs5+adGmyhIBvSUyTbobLjZ
 fM6bTHQEd0xKtJR3vWDsZF3gxKOtFFkJG+UdLZkeWOtVNuJoaU/P5gGgHc70/DpcSs2K
 NUA8ed929v8v7n+L8I4jqKJj7yEjX/78YDWpTvTHvp1XHpkLZKvdMKYKGNEE5JztALo9
 FFrbzlae3QiiTIU2/Zc/Nom2LHj2XvozQ29x2y968qUMSkoDBjigE1qq2cL+tNDvw/Kg
 QiJ8z/y/rYZFfQUvZ8kBa6DzvwUr5m3+Ruu0L9dj4Bn+tXFhgRELeEzrUCqSct2lHcMM
 md0A==
X-Gm-Message-State: ANhLgQ3sSTEhmyiC+qLROWmksypMsU8fplKC8oUK9Y36WZyZnnRjTVBL
 9Ki8iVPIkfRtZJIDJgnQ0fzurUwuKLzdutjsLcs=
X-Google-Smtp-Source: ADFU+vshR/9K1P4joj1qyXF1zngyt9MyksUpJP02ZOzlb7IUD8H4JCMFkF32Q2elfFLlWVYTyw6IrnLfB2TayQgWuk4=
X-Received: by 2002:adf:fac3:: with SMTP id a3mr19960796wrs.370.1583743404409; 
 Mon, 09 Mar 2020 01:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
 <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
 <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
 <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
In-Reply-To: <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 9 Mar 2020 16:42:48 +0800
Message-ID: <CAAfSe-uZSYZopDCGxQbGBQQ5+NZK6L79P+T62nfnL9CiZka++g@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_014326_757376_3F82B3BF 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, 9 Mar 2020 at 16:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Chunyan,
>
> On Mon, Mar 9, 2020 at 2:18 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > On Fri, 6 Mar 2020 at 20:41, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > >
> > > > Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
> > > > since we want them can be built-in when ARCH_SPRD is set as 'm'.
> > >
> > > Why would you want a serial driver for a specific platform to be builtin,
> > > while all other platform support is modular?
> >
> > Oh, that's not this patch means.
> >
> > We just want serial driver can be builtin for any platform, so it
>
> What would be the benefit of the user to be able to have the SPRD serial
> driver built-in on any platform?  AFAIU, it supports only Spreadtrum
> platforms.

Right, it does support Spreadtrum platforms only indeed.
Like I said on the replay to patch 1/2, simply because I want serial
driver can be builtin all the time, no matter ARCH_SPRD is m or y.

Regards,
Chunyan

>
> > should not depend on a config which can be set as 'm' (i.e. ARCH_SPRD)
> > , otherwise if the config was set as 'm', the serial driver can't be
> > selected as 'y' then.
>
> I ask about that as a reply to PATCH 1/2.
>
> > That's what I mean.
>
> > > > --- a/drivers/tty/serial/Kconfig
> > > > +++ b/drivers/tty/serial/Kconfig
> > > > @@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
> > > >
> > > >  config SERIAL_SPRD
> > > >         tristate "Support for Spreadtrum serial"
> > > > -       depends on ARCH_SPRD
> > > >         select SERIAL_CORE
> > > >         help
> > > >           This enables the driver for the Spreadtrum's serial.
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
