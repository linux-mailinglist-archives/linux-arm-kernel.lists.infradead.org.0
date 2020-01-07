Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862BE13206D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRzV26NdGz9/eiC1e1VdEbxQK0KD1IeK7jlSqqvEDUE=; b=uS1G8U9f+We2Dm
	xgRlAoN6Ydp4B5ZQ6xoqSS+NVyR07M0RPE1BtgG/2sD+mS7eelnsBd9WgWzkdmBypEA0ApLnUt5zQ
	BYUYPyhFnQzV/uED9AOm4tC+e64ZdzH0FdILla+YzXG6etMEgd0F/yq3Qi0g82647NaFErgt4W1Om
	p1KzUtiMo2qo/N7eBQ+TemXrp2pBB52B3as4IHQheUQS9iuXR8hF/bZO1hEj1XKJf0/ptgMKjyt6A
	7abzYPIQZTFwdW1ZpbV8L+9Zw/0QjVhX3J+FsjGZKHVfU7zTJx90io8Hx554P9mxaqu6gk8tKWJFl
	iXwCnG24CI7IFQ8BhoBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojHU-0003z5-8q; Tue, 07 Jan 2020 07:28:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojHL-0003yX-IH; Tue, 07 Jan 2020 07:27:52 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D3B02075A;
 Tue,  7 Jan 2020 07:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578382071;
 bh=P8hFPp3uFnhyZu1oBLEErxPKN0es1u5EN8j7fBkb+1k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v1dsSi51n4knQ1iqV/Uw3nGuiblGG3wE4PmUSVVxBOLzv9kys/wbELrAaBTUDiwFQ
 1DF2Pt0li7WvQAZubrHHDPKM+/TTA3HWN+KE7HGP3VJorxVc7eb/qTC4caaJvWUfm4
 t9bj9MnVwagZemwIh2+FIRjqXu7e9PYLNksf4WFg=
Date: Tue, 7 Jan 2020 08:27:48 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ivan Sistik <sistik@3ksolutions.sk>
Subject: Re: [PATCH] tty: serial: amba-pl011: added RS485 support
Message-ID: <20200107072748.GA1014453@kroah.com>
References: <20200106235203.27256-1-sistik@3ksolutions.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106235203.27256-1-sistik@3ksolutions.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_232751_648641_ACD6768A 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 12:52:03AM +0100, Ivan Sistik wrote:
> AMBA PL011 do not have hardware support for RS485. This implementation is
> for drive enable signal (DE), which switch direction of RS485 driver chip.
> This signal si drived by RTS pin. Correct multiplexor settings have to be
> provided to Device Tree. Usually it is 'ctsrts', which is used for enabling
> of HW flow control, too.
> 
> DE signal is switched by starting transmition from serial core and data
> transfer is initiated by first hrtimer if there is delay before send
> enabled.
> 
> There is missing FIFO empty interrupt in PL011. It is replaced by second
> hrtimer which is started if there are no more data in port transmit buffer.
> Notice that port transmit buffer is not the same as HW TX FIFO. Time of
> this timmer is set to char send time and it is running until fifo is empty.
> This kind of implementation cause that there can be unwanted delay of one
> timer tick before DE signal is switched. This is used to prevent data loss
> during transmit. Second timer can start first if there is delay after send
> enabled.
> 
> Signed-off-by: Ivan Sistik <sistik@3ksolutions.sk>
> ---
>  arch/arm/configs/bcm2835_defconfig |   1 +
>  drivers/tty/serial/Kconfig         |  12 +
>  drivers/tty/serial/amba-pl011.c    | 470 ++++++++++++++++++++++++++++-
>  3 files changed, 480 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
> index e9bc88937b1e..514888681913 100644
> --- a/arch/arm/configs/bcm2835_defconfig
> +++ b/arch/arm/configs/bcm2835_defconfig
> @@ -78,6 +78,7 @@ CONFIG_SERIAL_8250_SHARE_IRQ=y
>  CONFIG_SERIAL_8250_BCM2835AUX=y
>  CONFIG_SERIAL_AMBA_PL011=y
>  CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
> +CONFIG_SERIAL_AMBA_PL011_SOFT_RS485=y
>  CONFIG_SERIAL_DEV_BUS=y
>  CONFIG_TTY_PRINTK=y
>  CONFIG_I2C_CHARDEV=y
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index df8bd0c7b97d..3cecd8a75691 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -73,6 +73,18 @@ config SERIAL_AMBA_PL011_CONSOLE
>  	  your boot loader (lilo or loadlin) about how to pass options to the
>  	  kernel at boot time.)
>  
> +config SERIAL_AMBA_PL011_SOFT_RS485
> +	bool "RS485 software direction switching for ARM AMBA PL011 serial"
> +	depends on SERIAL_AMBA_PL011=y

Why "=y" here?  Shouldn't this just read:
	depends on SERIAL_AMBA_PL011?

> +	select SERIAL_CORE

Is this needed?  SERIAL_AMBA_PL011 already selects this.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
