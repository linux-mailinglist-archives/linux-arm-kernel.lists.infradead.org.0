Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82AAD721B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txs2SpZ6Tir+HPUF7OAQQi/zmZRMTsncRfPffhjdDX4=; b=GqXUheoMsowBlR
	2kLn/O6MRvvBRPzMv1dSJQaAj4Z9BeXmA6mBn4V0BtytAXyo8toaI6wiwUe5C872hNsHB1NK+TmYL
	g1Xe6nyZk+wGz5SRpEhhEpvRsrTbiINQ4SSyxwncvaaDBYBKZaCOfJLFw6mncgvjnyVlSz+lIx+a2
	ERHwM9WkNeUgZgj/8RkxLSD95uuIMC3PXT0N2FfUZGKoDpR1dunogESfnvJt9OMsrLpwY4j4HjCRf
	8YVhSukBHq9sAEgfwo+VK5hgudBUNQlE/1LwGOYrFgIH69F5LGoohXnajB942iqzXBn210tHQmkBB
	4Z4V47qZE4LeleGgcShA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJ2C-0002wE-SY; Tue, 15 Oct 2019 09:22:28 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJ1h-0002gQ-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:22:00 +0000
Received: by mail-oi1-f196.google.com with SMTP id w65so16178606oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 02:21:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PtZh1eDtsmQe32hnrI0UGHtD+cjDd+0nCV/54zTIuBk=;
 b=XhybtLQCJn7Bbsv8iWkxPmMH54hJnrSytjwu5ifFUGIMhG1PoEUMRE+O8iXFu+UpO3
 qye45dnZXaN+VnZaGYLmPLcSBz4c5y/d6soAsocwcTtn3MP1N5MXAX+zKR0FfMZfRSs4
 WR1mvEvcUeWMdwDDrj1pXWX1AgeHfS+o+udyY44FUG4ndh1J8GkW58Goxzepdf+TPyyL
 AuhxTIQOp0h54pz9EDKHMmL6cGGO1VzU2WELzoDSN6wA4W8JvTv/pTXexhhXKsyUBmUV
 sj35GQFIbaBkQYC+QGZvvc7IjpASlpHSU1WFcg/80nqndIehn7ZutUmokaNB22qzM2WG
 KY8A==
X-Gm-Message-State: APjAAAWAuJSDUxXJzO/L3E6aEtW4D/GvfQjYNwLxLA+f0DX+Q2p1ZpJp
 edZBU/ceNVnitIqlpqMiw+19H/0yV1DzedLlRGk=
X-Google-Smtp-Source: APXvYqw0gXgXjRpDJpbD6WQpA/u9qvGHCsZIlT5z2CnJru+kAxXX/OPiETm/V4VjDweqAIamotwbSKqQbEw73JKBUCk=
X-Received: by 2002:a05:6808:3b4:: with SMTP id
 n20mr17701290oie.131.1571131316044; 
 Tue, 15 Oct 2019 02:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <4a877f1c7189a7c45b59a6ebfc3de607e8758949.1567434470.git.michal.simek@xilinx.com>
 <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
In-Reply-To: <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 15 Oct 2019 11:21:44 +0200
Message-ID: <CAMuHMdUN0GNWd7+zqRhXz7Uinnojx-bK+LW6Q_Q75yBNuUycxw@mail.gmail.com>
Subject: Re: [PATCH] serial: core: Use cons->index for preferred console
 registration
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_022157_410112_7D4A2446 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 11:19 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Mon, Sep 2, 2019 at 4:29 PM Michal Simek <michal.simek@xilinx.com> wrote:
> > The reason for this patch is xilinx_uartps driver which create one dynamic
> > instance per IP with unique major and minor combinations. drv->nr is in
> > this case all the time setup to 1. That means that uport->line is all the
> > time setup to 0 and drv->tty_driver->name_base is doing shift in name to
> > for example ttyPS3.
> >
> > register_console() is looping over console_cmdline array and looking for
> > proper name/index combination which is in our case ttyPS/3.
> > That's why every instance of driver needs to be registered with proper
> > combination of name/number (ttyPS/3). Using uport->line is doing
> > registration with ttyPS/0 which is wrong that's why proper console index
> > should be used which is in cons->index field.
> >
> > Also it is visible that recording console should be done based on
> > information about console not about the port but in most cases numbers are
> > the same and xilinx_uartps is only one exception now.
> >
> > Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>
> This is now commit 91daae03188e0dd1 ("serial: core: Use cons->index
> for preferred console registration") in tty-next.
>
> This has been bisected to break the serial console on (at least)
> r8a7791/koelsch and r8a7795/h3-salvator-xs.
>
> The line "printk: console [ttySC0] enabled" is no longer printed.

s/is no longer printed/no longer appears in the kernel log/, of course.

> The system continues booting without any serial console output, and the
> login prompt never appears on the serial console.

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
