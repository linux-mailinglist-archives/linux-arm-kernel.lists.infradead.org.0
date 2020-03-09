Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6917017E252
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PGyJS348mnDwmHIA1ksdRZzo0RGHehhK3+e7cxTwQo=; b=TAYtdSRt5j/2ix
	u0GJ5RzW2v6aPE/EYDUCjjTLczGcaSrwpIeAQqcxSSfqBevOcEJ0bNhDWgSfiUkYcigNaW8RGDEvO
	DaAujCETBf87yzHTqd8wlJ0zNk6VXiwXBdmOpH+azhQSF/BOo6LY+Fce79BKdZRxIcZwmZSJ6xm7T
	AmNotCwEan/mkoj8BMIn/yT639r61TlMROOw5Q+l0+DcaRalDwQn6GXz3YrmWsa8DwRyP5kwGgU3Q
	HBaBS2liYdK9EOxWK5zEvBU1DlFylwCEBsH0ESGdxE1q4wgKO0k42GQJVGx6+q3bbySGoAY7DN+4G
	Ku9k/DKEH3uqH510uo4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ7t-0000Ql-Ix; Mon, 09 Mar 2020 14:11:25 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ7W-0000Gj-Bt
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:11:03 +0000
Received: by mail-lf1-x143.google.com with SMTP id x22so7815416lff.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 07:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1DONZyJhzIw61vc2b8VyfHEnmtSL8XmCoaWpkr0Q6yQ=;
 b=ZYDWaVXI+O+RUpYxYfXm8ia4oOLkw/O+R89i+fHtsyE7gL+aPkvQ6/74KlAZ7upBOy
 mVkW/vEl9ymGQtMH96WKfn9Hl9vP2enpx2WSUQVt5eNiOZcBSPMGvWaD1xhAx24j218x
 TssPVDmyorIu6yhB4IZASsU3vvyEwVPLv2jnnokvy9Y5/c7QhkrdURMMpyYom7hAAf83
 0+1LWvmFyikllT7rr9CQOxn7hYse57X0T2WNRzV76ixDvKlEOO/B3d2skZ4yPNRtbbPT
 BMfcq/IX+sZXcbLGV2NFlvHPnT/i864dbduIhTa+QK+inCG7Vr8hhA627LXSrkzIyzMl
 Pcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1DONZyJhzIw61vc2b8VyfHEnmtSL8XmCoaWpkr0Q6yQ=;
 b=Gey4MeBtOA0FzmUSHU871fiv1RgpEybEZumO84wNIFGAmr//jbDncV4YPRmxr20krI
 1GCjrjA8HT8NkSE9giHzxqxsQpRk6upNyRB9XHWpfoLqljHbC0rqFDhMSCkxO3rRXgU3
 guqzHIgMYHipfv4MovhCUlbOUCg6tuJZbWuJdTKPb5Wx3s/LiQ0qWVjBvVYOab+Y2y6F
 iAOGu65qe3zVagpl+wxAraK1oGy25xRx1c7folXAernfKZ37arn1PuoZLf81LWp7to7y
 AEuAIZ1GcO+rtzzpIqGlBvfCg3TfxutyO4a54ZWG/wK/c6QaFDsPd7IzQohEV7hvwD/w
 D9nw==
X-Gm-Message-State: ANhLgQ0SRYPT15LU7TIeylgroqfxL6BYiyiovqVj7Ev6f+qBVeLqtI+o
 4BqBHojwoBkX4nGJMsyBMcEJ8WDm0rLdYhou2mg=
X-Google-Smtp-Source: ADFU+vvx9Zry9HVFrw2gJwvh8jIGcVMrga/iTAAcWL9fq/CZaQKdL1vmx4qaRTpNg/N7VZXOUKv1Ct6BP9Ehy3e7OIY=
X-Received: by 2002:ac2:5328:: with SMTP id f8mr9426587lfh.47.1583763059624;
 Mon, 09 Mar 2020 07:10:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
 <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
 <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
 <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
In-Reply-To: <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
From: Orson Zhai <orsonzhai@gmail.com>
Date: Mon, 9 Mar 2020 22:10:41 +0800
Message-ID: <CA+H2tpFBDSGfwYT--G_FsaEceNJW_xBJjjiSMnhZDVhZamj_QQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_071102_403618_1CC8C0B6 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [orsonzhai[at]gmail.com]
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
Cc: kernel-team@android.com, Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,


On Mon, Mar 9, 2020 at 4:01 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
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
>
Assume there is a all-in-one common kernel binary image say arm64 for
all SoC platform and all
device drivers are built as modules from different vendors for each
specific devices.
But for serial driver it is too late to be initialized as a module if
users want to check early console log.
At this circumstance vendors prefer to set their serial driver to be
built into that all-in-one image as easy
as to only set one config instead of enabling whole platform then
disabling many out of serial.

-Orson

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
