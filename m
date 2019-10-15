Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E704D7200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmpmt0KC6y4Kda3Sdfssc3xwzjXRMTV06+r/zTlaCr8=; b=YDfZz9uTqB16GM
	cjZgmhjfohTPIXpsQAfU39OIB4OLFfd3FhSIV5Ynh/bIGIRznZHW2hHMntAACoxk0LoO/0JGNpHwZ
	CRw1XPo+q4cxeRfrnU2goVPDVJ0nvNRAkmc54TrHu5A2jZEW6q7czhULb635FjOyUWPt+PhCNW9V8
	iU2Xx77kQSMi+C2OtyVolqNr3OXBEzDUwtxez03O7EtSJ8gz3EfZNqvtt8FlCElGuCtyBOQ2zHWXO
	X+1rfeyJJAAIQ9HjGU7+yW5e+D93IJVbCOjixl9UPXiH6YKEvwOUMJr3tO87hVkdSyL7jxEcKvXjU
	TXRIMmQskGTzsuI7CYdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIza-0000Dv-IL; Tue, 15 Oct 2019 09:19:46 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIzR-0000Ch-M3
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:19:39 +0000
Received: by mail-oi1-f195.google.com with SMTP id t84so16170173oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 02:19:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+KkHVe7XiI2w+s1khaLxgYiblcensoZmhTtGUMIWDQM=;
 b=Bs2iGItOiDi5hqs94+uVau3rfodd7fAehL+t9CI4OmJ+oF9KtLQ3d4kLfLJmfGSSs8
 uTn3dy+1DLRh2Nez5TMXKLc2LSt6G+O73oHY63JWdmjPjwcHXtOQ0jDuZ2OVd2UJBv01
 mxzIVej7rV8mhe+VLA9sYL5Dw+3hL0NQDWiYXLeKnfKFTgjVtOwhd5TopUgO+Q5Bc/Jj
 QfdKpXkL9mQ2ERJaiilYIuy/itOVlOdMEwsU8q3rAwAcQEGQcQ4Pv3Q0FBYunylNVBRB
 3VblhDiZGqG42cB73TrFmSSKt9T86cjb5C3wEXSckdnHZdvOrXhT04CTFio5ac8AmgBL
 PGhw==
X-Gm-Message-State: APjAAAWpazAczMfWdXmvuI/fvFO4tjeGfmeeEBRi/UN8pC2P0ca01EM/
 DcKpkTloab+JzfKKu7oCa2gJDuZKGz54VKFJp/c=
X-Google-Smtp-Source: APXvYqzhaz8x3mX03fBf3KLgIqmj4TfpV+VGFzay1G84HHBSpuT7CjrIyNsXkaGyN3iLkkHNfGsNfQfD7tja+Ypx5Ow=
X-Received: by 2002:aca:882:: with SMTP id 124mr28234946oii.54.1571131176133; 
 Tue, 15 Oct 2019 02:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <4a877f1c7189a7c45b59a6ebfc3de607e8758949.1567434470.git.michal.simek@xilinx.com>
In-Reply-To: <4a877f1c7189a7c45b59a6ebfc3de607e8758949.1567434470.git.michal.simek@xilinx.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 15 Oct 2019 11:19:25 +0200
Message-ID: <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
Subject: Re: [PATCH] serial: core: Use cons->index for preferred console
 registration
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_021937_752532_E5C834A5 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

Hi Michal,

On Mon, Sep 2, 2019 at 4:29 PM Michal Simek <michal.simek@xilinx.com> wrote:
> The reason for this patch is xilinx_uartps driver which create one dynamic
> instance per IP with unique major and minor combinations. drv->nr is in
> this case all the time setup to 1. That means that uport->line is all the
> time setup to 0 and drv->tty_driver->name_base is doing shift in name to
> for example ttyPS3.
>
> register_console() is looping over console_cmdline array and looking for
> proper name/index combination which is in our case ttyPS/3.
> That's why every instance of driver needs to be registered with proper
> combination of name/number (ttyPS/3). Using uport->line is doing
> registration with ttyPS/0 which is wrong that's why proper console index
> should be used which is in cons->index field.
>
> Also it is visible that recording console should be done based on
> information about console not about the port but in most cases numbers are
> the same and xilinx_uartps is only one exception now.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

This is now commit 91daae03188e0dd1 ("serial: core: Use cons->index
for preferred console registration") in tty-next.

This has been bisected to break the serial console on (at least)
r8a7791/koelsch and r8a7795/h3-salvator-xs.

The line "printk: console [ttySC0] enabled" is no longer printed.
The system continues booting without any serial console output, and the
login prompt never appears on the serial console.

Reverting this commit fixes the issue.

> --- a/drivers/tty/serial/serial_core.c
> +++ b/drivers/tty/serial/serial_core.c
> @@ -2825,7 +2825,8 @@ int uart_add_one_port(struct uart_driver *drv, struct uart_port *uport)
>                 lockdep_set_class(&uport->lock, &port_lock_key);
>         }
>         if (uport->cons && uport->dev)
> -               of_console_check(uport->dev->of_node, uport->cons->name, uport->line);
> +               of_console_check(uport->dev->of_node, uport->cons->name,
> +                                uport->cons->index);
>
>         uart_configure_port(drv, state, uport);

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
