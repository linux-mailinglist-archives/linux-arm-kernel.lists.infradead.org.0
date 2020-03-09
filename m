Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836AA17DDAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKjw9Ezv/jOEN8/Pa+sC9Rc62wVv8gtU2/rAZ/gv2uA=; b=nFYZ891wVdTysu
	WsIrDQ1W9jfIu3gzHQt0y5uzSh88liyC9d002goH0pZKxHwj4J1T/7jQcfeQlN3OYU2P63Oqa30wH
	AtVCCedMLGMC+ElVs7Qfnzl+FpI3X5LE9/0DS4dAhbiPQI677f5DjsmeZdo2qCNz4i4feYQ8wVjPG
	JuNGU3HCgx6T1gX5QCDzZcXIvq376VKabiSlSaNzhRFoFYu44xUFv6XgrFzia+Bs11bI5nenlLolb
	evw0Dy+UfwQo4gvK7sqIIbZVsl8GDOwMYX2SlGTQ/KvQRPWFGneff+uOtViEvhjweXHJll2y5eOBE
	RLEV9WWf1LpfTRBdHLoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFiJ-00072U-QG; Mon, 09 Mar 2020 10:32:47 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFiA-00070x-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 10:32:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id g15so2919119otr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 03:32:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W04cd8gXdHqCmadUdyg5wxomjkoAadthvQ2P3gMSd+8=;
 b=EQ13K4ry2SLqStabmPCVyibBPvN0fgNJubrWSbYhBoTe0ePWSHNvhO5EDvnQfb8Lag
 /yVQXnfbDNquL8zfI3oUqtFvKj4y0IAOh7nJqxzdtvjMBCU4/Tq64Mclmi6C9IWR9l5B
 Nsm7+3IJHHlfHiXcmZNbVh+BD1PNQewaJbX/LGmA0UZbXBvwUIAaX/UW5/BAmNvVSTor
 kQqmmHmQ+cd0Db4GakGMx4QnJbyOfL3s3OYwlXgwaUj73q4ARPitcBogD2bOo5FRI8Nj
 heGcuRsjt/C/UCzojgCOdNCmRFQdM+xdvuE0cGZC1mXG1N38zUtW/9EfAx1/QblYOcFB
 1RLA==
X-Gm-Message-State: ANhLgQ3aQSZuBI8ycmmSRQ0aFwfeHBGyOj3sMPjBpLr9NLoSH0B8a4XA
 fcc0E8p6dx0TTpuNe69dyZCv2pflNikgo2UgIBk=
X-Google-Smtp-Source: ADFU+vuVh6fkJGhu+5hmMbyrYecsnL9gWVa5R6t/lywxheWDLQwPc4My1fEjTIzo75HPjSFXa2cg380naqShaRyyTng=
X-Received: by 2002:a9d:1708:: with SMTP id i8mr10206182ota.250.1583749957218; 
 Mon, 09 Mar 2020 03:32:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
 <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
 <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
 <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
 <CAAfSe-uZSYZopDCGxQbGBQQ5+NZK6L79P+T62nfnL9CiZka++g@mail.gmail.com>
In-Reply-To: <CAAfSe-uZSYZopDCGxQbGBQQ5+NZK6L79P+T62nfnL9CiZka++g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2020 11:32:25 +0100
Message-ID: <CAMuHMdXY5=QS4FA0T55_G=ARPs9V0NLbWwF3hd76rwO=8ahZbA@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_033238_208038_F8CF17D4 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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

Hi Chunyan,

On Mon, Mar 9, 2020 at 9:43 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> On Mon, 9 Mar 2020 at 16:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Mar 9, 2020 at 2:18 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > On Fri, 6 Mar 2020 at 20:41, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > >
> > > > > Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
> > > > > since we want them can be built-in when ARCH_SPRD is set as 'm'.
> > > >
> > > > Why would you want a serial driver for a specific platform to be builtin,
> > > > while all other platform support is modular?
> > >
> > > Oh, that's not this patch means.
> > >
> > > We just want serial driver can be builtin for any platform, so it
> >
> > What would be the benefit of the user to be able to have the SPRD serial
> > driver built-in on any platform?  AFAIU, it supports only Spreadtrum
> > platforms.
>
> Right, it does support Spreadtrum platforms only indeed.
> Like I said on the replay to patch 1/2, simply because I want serial
> driver can be builtin all the time, no matter ARCH_SPRD is m or y.

OK.

So shouldn't the dependency become

    depends on ARCH_SPRD || ARCH_SPRD=m || COMPILE_TEST

instead, to avoid asking the question when you're not building a kernel
plus modules for Spreadtrum platforms?


> > > should not depend on a config which can be set as 'm' (i.e. ARCH_SPRD)
> > > , otherwise if the config was set as 'm', the serial driver can't be
> > > selected as 'y' then.
> >
> > I ask about that as a reply to PATCH 1/2.
> >
> > > That's what I mean.
> >
> > > > > --- a/drivers/tty/serial/Kconfig
> > > > > +++ b/drivers/tty/serial/Kconfig
> > > > > @@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
> > > > >
> > > > >  config SERIAL_SPRD
> > > > >         tristate "Support for Spreadtrum serial"
> > > > > -       depends on ARCH_SPRD
> > > > >         select SERIAL_CORE
> > > > >         help
> > > > >           This enables the driver for the Spreadtrum's serial.

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
