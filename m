Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62311E7C0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GeT98ZwXc7FUNZJubaiGUkvA8LoeYGToJPfJWy/Xrs=; b=f7kZNb3lZLCD3H
	asU9C1CslsPh6PHbrZ1PiVxrllhxXYVvAJXWBrs9kpSUTwxmJlGiM922xxnYwC0QHSGNzZ/Zln1fF
	X0K9l3IS8Jm375btQWfuU/ahXLTL5qLv9T2eW0b2J9Lr3G8EDz9wrBozcRrdXhlFBwY6U4NBkPEnc
	GP/t4sBXjE7uKh0slIIWn2NRdg3E5sJpEpA3MTnLuTswFtZchNrP+KY3PN0IcduUJM2WsHQCXBoQL
	7wSlq/Hsia8rTU7tmjafJ3rzh2LqzyuglGk318JIGiVZCxQtfAgu3brU0M6sTyvdmq95MaAP41zhX
	FZWUc8YI5KuLQz0+6Sjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedIO-0001n2-Cn; Fri, 29 May 2020 11:35:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedIF-0001lz-JE; Fri, 29 May 2020 11:35:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id n18so1277306pfa.2;
 Fri, 29 May 2020 04:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A/8AVUJdvOiynNLDMUmFl6p6jEKrS4pLsMpfZjizUzo=;
 b=QGTigm0CR/xtCjAF6zk31bpGzHMwMEhvL6+EkHBzHlQTYEfY4EiVx7eQSPmWi0ApPl
 xUquAByYBHSVw7efJZhPDaJJd4v3j7jVpN6AgJedKtZhugIEnqWVW/ETA6rkhdWlv18z
 4dZNT1eBj1j6/ajGMynBde/egjpPh3ocCWxSKjt8WHByAebN4whWF5R4yiALOKeAXh8Z
 kdEcH+fF3Kug2xI0QgKcxmEft7p++KTVBpMTl1BuhVTUYwEOO3wYjYdJzyIbIF0nzLLm
 AUl0yb8OmmG6VO+Yb4AfWeIBCMIoAPlogQP5M/8q651hZtg+hZWcx5L0PQ1GxJB7FAWm
 66gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A/8AVUJdvOiynNLDMUmFl6p6jEKrS4pLsMpfZjizUzo=;
 b=UYz4sgIu5wL4b8eo/zdeiz+Z+d62UtPmzsBtumVm0q8/WMS0qnfGf72pHJnReib46l
 F2Zt3Kj66fT2kvXjfyaMA9ALUu9O9KhzmnhOcfl9LWzzu959hpaxYDEY+Qtt0m2rTSKX
 zBx64AB3GZf4lMIuVyYtkk3rcKi+nQESUkS/k4ksvQ73GnDBXSMUf0AUIYjf2zamlMDc
 wm5lFJCgCXQgwliiWLImHECtJwKNTNdsapY2AZceHg0eZcLbXv8TzOCiQaV3vYAz49D/
 Pq06UaIulPuM2J/oH/axdrMEcJ66xzmK30LUO/qb8KLzl7VHzWhi97dSZZM+gNX4YYLo
 uK0A==
X-Gm-Message-State: AOAM530lpsBiRauXbSFsJntdlAZbJZDywY2pmBikym4hyDLcBD6a9ewq
 /mHQZ5p59tOc1xtrSiDoLN4xJBboH8m0F07bJ0c=
X-Google-Smtp-Source: ABdhPJzYg1wP5drwVOQXE/AqhepEFdY0IS9y17Jl1ma8d1oEIchfTEfggGDsztl/Yq0qVt+/oxT0++TDbK1cOrN36ao=
X-Received: by 2002:a63:545a:: with SMTP id e26mr7770326pgm.4.1590752117594;
 Fri, 29 May 2020 04:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <89f6393934fc6d493f8b9e87c1a6e916642b6a18.1590749143.git.cristian.ciocaltea@gmail.com>
In-Reply-To: <89f6393934fc6d493f8b9e87c1a6e916642b6a18.1590749143.git.cristian.ciocaltea@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 29 May 2020 14:35:05 +0300
Message-ID: <CAHp75Vf8xJ2yX-11JsTDnRvZQOK+16aePcB1AUzq=5oO-mFCGQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] tty: serial: owl: Initialize lock before registering
 port
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_043519_635265_034F7BFB 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 2:09 PM Cristian Ciocaltea
<cristian.ciocaltea@gmail.com> wrote:
>
> Running a lockdep-enabled kernel leads to the following splat when
> probing the owl-uart driver:
>
> [    1.271784] b0124000.serial: ttyOWL2 at MMIO 0xb0124000 (irq = 22, base_baud = 1500000) is a owl-uart
> [    1.281226] INFO: trying to register non-static key.
> [    1.286179] the code is fine but needs lockdep annotation.
> [    1.291648] turning off the locking correctness validator.
> [    1.297125] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc7+ #70
> [    1.303462] Hardware name: Generic DT based system
> [    1.308268] [<80111d3c>] (unwind_backtrace) from [<8010c9b8>] (show_stack+0x10/0x14)
> [    1.316003] [<8010c9b8>] (show_stack) from [<805016b4>] (dump_stack+0xb4/0xe0)
> [    1.323218] [<805016b4>] (dump_stack) from [<80182dec>] (register_lock_class+0x25c/0x8f4)
> [    1.331391] [<80182dec>] (register_lock_class) from [<8017ee34>] (__lock_acquire+0xb4/0x2ee4)
> [    1.339901] [<8017ee34>] (__lock_acquire) from [<8018291c>] (lock_acquire+0x424/0x4c8)
> [    1.347813] [<8018291c>] (lock_acquire) from [<808597b0>] (_raw_spin_lock_irqsave+0x54/0x68)
> [    1.356242] [<808597b0>] (_raw_spin_lock_irqsave) from [<80582e94>] (uart_add_one_port+0x384/0x510)
> [    1.365276] [<80582e94>] (uart_add_one_port) from [<8058b4d0>] (owl_uart_probe+0x1bc/0x248)
> [    1.373621] [<8058b4d0>] (owl_uart_probe) from [<8059c0e4>] (platform_drv_probe+0x48/0x94)
> [    1.381874] [<8059c0e4>] (platform_drv_probe) from [<805997c4>] (really_probe+0x200/0x470)
> [    1.390123] [<805997c4>] (really_probe) from [<80599c80>] (driver_probe_device+0x16c/0x1bc)
> [    1.398461] [<80599c80>] (driver_probe_device) from [<80599f18>] (device_driver_attach+0x44/0x60)
> [    1.407317] [<80599f18>] (device_driver_attach) from [<8059a078>] (__driver_attach+0x144/0x14c)
> [    1.416000] [<8059a078>] (__driver_attach) from [<805978ac>] (bus_for_each_dev+0x5c/0xb4)
> [    1.424162] [<805978ac>] (bus_for_each_dev) from [<8059896c>] (bus_add_driver+0x118/0x204)
> [    1.432410] [<8059896c>] (bus_add_driver) from [<8059ae6c>] (driver_register+0xbc/0xf8)
> [    1.440405] [<8059ae6c>] (driver_register) from [<80c1fd24>] (owl_uart_init+0x20/0x40)
> [    1.448313] [<80c1fd24>] (owl_uart_init) from [<801021d8>] (do_one_initcall+0x184/0x3a4)
> [    1.456399] [<801021d8>] (do_one_initcall) from [<80c01100>] (kernel_init_freeable+0x264/0x2e4)
> [    1.465085] [<80c01100>] (kernel_init_freeable) from [<80850a88>] (kernel_init+0x8/0x110)
> [    1.473249] [<80850a88>] (kernel_init) from [<80100114>] (ret_from_fork+0x14/0x20)
> [    1.480800] Exception stack(0xee8bdfb0 to 0xee8bdff8)
> [    1.485841] dfa0:                                     00000000 00000000 00000000 00000000
> [    1.494002] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> [    1.502162] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
> [    1.508914] printk: console [ttyOWL2] enabled
>
> The locking issue occurs in uart_configure_port() when trying to
> guard the call to set_mctrl().
>
> uart_add_one_port() should normally initialize the spinlock via
> uart_port_spin_lock_init(), but it never happens because the port is
> detected as a console and, as a consequence, the spinlock is expected
> to be already initialized.
>
> The commit a3cb39d258ef
> ("serial: core: Allow detach and attach serial device for console")
> changed the lock initialization logic to assume the spinlock is
> initialized even if the console is not enabled.
>
> Therefore, initialize the lock explicitly in owl_uart_probe(), before
> attempting to invoke uart_add_one_port().

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
You are faster than me, thanks!

> Fixes: a3cb39d258ef ("serial: core: Allow detach and attach serial device for console")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> ---
>  drivers/tty/serial/owl-uart.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/tty/serial/owl-uart.c b/drivers/tty/serial/owl-uart.c
> index c149f8c30007..c2fa2f15d50a 100644
> --- a/drivers/tty/serial/owl-uart.c
> +++ b/drivers/tty/serial/owl-uart.c
> @@ -705,6 +705,8 @@ static int owl_uart_probe(struct platform_device *pdev)
>         owl_uart_ports[pdev->id] = owl_port;
>         platform_set_drvdata(pdev, owl_port);
>
> +       spin_lock_init(&owl_port->port.lock);
> +
>         ret = uart_add_one_port(&owl_uart_driver, &owl_port->port);
>         if (ret)
>                 owl_uart_ports[pdev->id] = NULL;
> --
> 2.26.2
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
