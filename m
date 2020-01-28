Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042AE14B4BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 14:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ieerhoPVc2L5u2n+f5zj+jTG4b1aSpuCwTTEvubxRqk=; b=df/Gpd0KVlTN6C
	r7iXY2wjR4sCOBprXikyKfkfmSzJUXFnWrxReKzCYcMYmR/YzmV4PL7KpQvC2yeY3lIQFRzF8et89
	SNA5UTxHcadX0Yypqi9PPywKE89CC6/Bfz+K7hKQiyFTqdvTWzVNpOrW7XwFNenl7u1TDSzmZqOpv
	GW+ATUxmQ/PUBEYLvtHF+eHCZKE5JUYhNmVbU0grMjPB/sdWN9sR6IVjjqpN3a9VPoqghgXSHwRvE
	PqqawS30n1NTo4K6vi0dOV73SAUGDAQf+mM79q4zWlrLLRaBsYEIdp8aoOMwqodlfLvBUkvADVck2
	I3Xcn7PTN4bl5UPuqyrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQk5-0001D0-F0; Tue, 28 Jan 2020 13:17:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQju-0001BD-PR; Tue, 28 Jan 2020 13:17:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 18C54B246;
 Tue, 28 Jan 2020 13:17:07 +0000 (UTC)
In-Reply-To: <88af0fca-90d1-58ff-406d-73f185eb8b7e@gmail.com>
Date: Tue, 28 Jan 2020 13:42:21 +0100
Subject: Re: [PATCH] serial: 8250_early: Add earlycon for BCM2835 aux uart
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Matthias Brugger" <matthias.bgg@gmail.com>, "Lukas Wunner"
 <lukas@wunner.de>, <matthias.bgg@kernel.org>
Message-Id: <C07FL64L9QNN.357K7JAUOSNA2@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_051711_154996_1553582E 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 gregkh@linuxfoundation.org, jslaby@suse.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, nsaenzjulienne@suse.de, Florian
 Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun Jan 26, 2020 at 9:20 PM, Matthias Brugger wrote:
>
>
> On 26/01/2020 14:12, Lukas Wunner wrote:
> > On Sun, Jan 26, 2020 at 01:33:14PM +0100, matthias.bgg@kernel.org wrote:
> >> +#ifdef CONFIG_SERIAL_8250_CONSOLE
> >> +
> >> +static int __init early_bcm2835aux_setup(struct earlycon_device *device,
> >> +					const char *options)
> >> +{
> >> +	if (!device->port.membase)
> >> +		return -ENODEV;
> >> +
> >> +	device->port.iotype = UPIO_MEM32;
> >> +	device->port.regshift = 2;
> >> +
> >> +	return early_serial8250_setup(device, NULL);
> >> +}
> >> +
> >> +OF_EARLYCON_DECLARE(bcm2835aux, "brcm,bcm2835-aux-uart",
> >> +		    early_bcm2835aux_setup);
> >> +#endif
> > 
> > Does this really work?  I also tried to get it working recently and
> > the system just hung on boot.  Looking at it with a JTAG debugger
> > showed that the bcm2835aux registers were inaccessible because
> > the mini UART wasn't enabled in the AUXENB register.
> > 
> > Maybe if you use OF_EARLYCON_DECLARE, the firmware recognizes that
> > serial1 is set as stdout-path and performs enablement of the mini UART?
> > Or are you using U-Boot which perhaps does the enablement?
>
> Yes I'm using U-Boot which enables the console for me. My understanding
> is that
> the early console is thought as a re-use of the console the boot FW used
> for
> logging. AFAIK for example it does not enable any needed clocks but
> expects
> these to be enabled already.
>
> Looking on the source code of U-Boot [1] I don't see that the AUXENB is
> written
> somewhere, so I suppose that the FW should already has enabled the
> aux-uart.
>
> I any case if it's just to set one bit, I think we can do that in
> early_bcm2835aux_setup().
>
> [1]
> https://gitlab.denx.de/u-boot/u-boot/blob/master/drivers/serial/serial_bcm283x_mu.c
>
> > 
> > I also saw in the JTAG debugger that the uartclk member contained
> > an incorrect value, so I'd expect that it has to be set as well in
> > early_bcm2835aux_setup().
>
> In my case the clock was set by U-Boot already.

I'm testing this by booting directly from RPi4's bootloader. And it
works as long as I add this to config.txt:

enable_uart=1
gpu_freq=500

Which AFAIK blocks frequency scalin on the GPU and fixes the clock to a
point where the serial is set at 115200 bauds.

Ideally it'd be nice to be able to query the clock frequency, and
recalculate the divisors based on that. But I don't know if it's
feasible at that point in the boot process.

We could maybe leave a comment explaining what is expected from the
bootloader, given the different options around.

Regards,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
