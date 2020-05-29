Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655691E7BFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 13:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/7mUHp8Dy3Zwb0+wFfAFzVRdO5vdWZc8TTnb2UmZN8=; b=RDpOzYEiLgVpyN
	wt7t32vy+wBLBlv2g++/GcnGMMKLI6DxmnPP3FYxvGlqadDtZ1GY20iXfh+7zdZNC4d3NPJTX6Ck3
	uWoBokmlY9dKMHUvo4DhfIyFAUjBG2xzvIC2QhQ/oSmVEZB0edtUd0dQSyL6oW+DCw7/v6/p3YpsN
	w+rOJp4mxe8ce3m4LbdoaQ/F+WLJY+di5dPOilngEGuWr0G1Fg3bsnn7+J7R3hK40398b0qj+BZEy
	SmV4Fa9TfXbI9tCvyD8XrW4FNz88QJ/w+BxGo8u5S//V6RbNdh9TzBARMI4c0XEBMZyXCpvoJk9cq
	CQ6ctfFF4dMFlEhCOdkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedHX-0007Xz-CY; Fri, 29 May 2020 11:34:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedHL-0007XS-RT; Fri, 29 May 2020 11:34:25 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD6AC2074D;
 Fri, 29 May 2020 11:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590752062;
 bh=qiIfDGRDhLmCmqfNyI9oCVYYxVukeiaDUPgdXqd2ttw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H99J23gA4rUUloXkwCU9gOqfAo95n70m/qWqJloLlyJ0MNKEGihGSXfdDyjUpjIjC
 kGkXIYDKyZhyx8oP7VXbe3l+gh3iZnjGJ5WnXvxQ/ho4LQsN7SXqxtnnA364gJC4Fe
 m/xFXsGiVaJaMfRFzJUjlISByDDGOeSPPILrP7lY=
Date: Fri, 29 May 2020 13:34:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Subject: Re: [PATCH 1/1] tty: serial: owl: Initialize lock before registering
 port
Message-ID: <20200529113419.GA1631227@kroah.com>
References: <89f6393934fc6d493f8b9e87c1a6e916642b6a18.1590749143.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89f6393934fc6d493f8b9e87c1a6e916642b6a18.1590749143.git.cristian.ciocaltea@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_043423_928749_22E75656 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 02:06:47PM +0300, Cristian Ciocaltea wrote:
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
> 
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
>  	owl_uart_ports[pdev->id] = owl_port;
>  	platform_set_drvdata(pdev, owl_port);
>  
> +	spin_lock_init(&owl_port->port.lock);
> +
>  	ret = uart_add_one_port(&owl_uart_driver, &owl_port->port);
>  	if (ret)
>  		owl_uart_ports[pdev->id] = NULL;

Ugh, another one :(

Thanks for this, will queue this up now.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
