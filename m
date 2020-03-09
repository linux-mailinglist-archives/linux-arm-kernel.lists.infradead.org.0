Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB59817DA24
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dk1UNDw0rSmIdyBSGEMBOZnXCkZTpYbZQOTgYRJpZIw=; b=KrHOb/uoma6bxI
	hwddhmE+fPYQqtxjeT5n6a6Ep9alENzLSJ7vSpfhzaxPhPoAvLjzCK93jl7snmVXp/Qg81ImE8n1/
	xJy42y3d4kP0/yI4/O4SQDoljo4Ul3xXQe7fb1QaCq8JfBwWR4yE8a6C+95oG/sjuVsYrdr3fKbTz
	kRFCF3JGPxuBwW3DCkh+leCjfYz6SWp1siqeU9bfHRYwihaGWZX7xwEmIhuDoA0u357al7vfQPMBk
	mCmnFLaBYyPuQJrwlNK82smzUAdgfYNKiK9cegofKtB8PqnYwpDyHvOfZDOwxgB1ADRLxAfVqN+op
	01ohE97r9v2+UnzmA7/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDLm-0006wj-Bp; Mon, 09 Mar 2020 08:01:22 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDLe-0006vy-0Z
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:01:15 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so8635865otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 01:01:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5KNQrDe0l6oCFPtPg6ftsB3rjrTR1HyU2LsJupipGE8=;
 b=NfXj5DhAXr90wsOiBoHBtOihPFk8hXD5BUlyx23uinVf1AbauRkuSvVD/7mfZ1Wb3U
 A+fNohrQTF63Fitx/MHJrMz/J7sGh20SLY+9EjttiE/JHHXcedVzMIzXf5i69yRTARK3
 io2VAPbKPqx4ezwGFzYgvIHd7jWEsJjEglUYwtayqrDMrt/CwxXjgWk3dp/PwKezW9Wo
 gSv/TdfZ/itTrFEGJKP3frA/Z89ofMf612xNWU/1bV1CAsdNgBq9sEnWaYDoDrDz+1Gt
 ad5ndmDQWi6ohNPPpQ8VzSCsNwW5QWo9m0sEM+MeTY/hRjBp+D1BJjBayF6eF+AJK+o+
 CDug==
X-Gm-Message-State: ANhLgQ0UHeBVcrK6d6kIo8FtxQED8WW4V+2BQRa6zWSkkfW4CEMnlLsV
 PWIU43T5mAhZ4o51Y0eW5H/83gIQZyzVrxrgGqw=
X-Google-Smtp-Source: ADFU+vsDTCa3jjZ1zeDrCbvPHrDJy5j6vGE23gbOBny//ko/4PRaNwTR9xHABVzOcF6wEE35AvzQODCVrLJwiijRM9I=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr12090100otk.145.1583740871801; 
 Mon, 09 Mar 2020 01:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <20200305103228.9686-2-zhang.lyra@gmail.com>
 <CAMuHMdU-gAhupHotQTHAZfopkGF_jQc-VrVxb24caw_BfzWd6g@mail.gmail.com>
 <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
In-Reply-To: <CAAfSe-sonfA=6x9uvQXaHniQaXR8hWZa4uOcWxoo+Z_XT9QNhw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2020 09:01:00 +0100
Message-ID: <CAMuHMdUBkS+pPyPid2K=40jaTOSnAE_L-vJP5knmyVr8Fr5_hg@mail.gmail.com>
Subject: Re: [PATCH 2/2] tty: serial: make SERIAL_SPRD not depend on ARCH_SPRD
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_010114_058693_48346922 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Mar 9, 2020 at 2:18 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> On Fri, 6 Mar 2020 at 20:41, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > >
> > > Remove the dependency with ARCH_SPRD from sprd serial/console Kconfig-s,
> > > since we want them can be built-in when ARCH_SPRD is set as 'm'.
> >
> > Why would you want a serial driver for a specific platform to be builtin,
> > while all other platform support is modular?
>
> Oh, that's not this patch means.
>
> We just want serial driver can be builtin for any platform, so it

What would be the benefit of the user to be able to have the SPRD serial
driver built-in on any platform?  AFAIU, it supports only Spreadtrum
platforms.

> should not depend on a config which can be set as 'm' (i.e. ARCH_SPRD)
> , otherwise if the config was set as 'm', the serial driver can't be
> selected as 'y' then.

I ask about that as a reply to PATCH 1/2.

> That's what I mean.

> > > --- a/drivers/tty/serial/Kconfig
> > > +++ b/drivers/tty/serial/Kconfig
> > > @@ -1452,7 +1452,6 @@ config SERIAL_MEN_Z135
> > >
> > >  config SERIAL_SPRD
> > >         tristate "Support for Spreadtrum serial"
> > > -       depends on ARCH_SPRD
> > >         select SERIAL_CORE
> > >         help
> > >           This enables the driver for the Spreadtrum's serial.

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
