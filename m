Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75369115696
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 18:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VSpGvdEUKjxNyjxRqPfVp6/JBEzlzxgZn7q7BTM4nYg=; b=gfoPp+6hHnQJKK
	lsbqUSm7oMf5m3ToPyRiKtbQ83aNbHZ/461V53U/P1dfmCBCK5JZeBThOk/fddltetTN83XT2nsXU
	Gv4Ytjky3uIPbU6iaoWIhcGbjcu5BmirOLE9jMjNUGj1bNoeFpHA1SRObznYvoqlUZW75KTuZUt5B
	hX2jgH1VV7N+GTZLlWapiKol/rCRwRWKFhqmOUvUh57WHte4czZ+//VUQetsoutGn7t9O3ky8p288
	O3HRUUklWykXdg70hcRP/AngEU/uWVs7eIOpWMfC13FHPyB4gl5rg7GjF4ozIC7+Itr7EbkYbbofu
	Pnb6XuX4QxnNFtLP4whA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHWR-00037X-Mw; Fri, 06 Dec 2019 17:36:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHWJ-0001ei-KW
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 17:36:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I5DvSSUq8kBmzZvYKJavtYFkUBKlP3+nbcIZ+mewhp8=; b=1VwSy8ykjbEMabTB7ELm4Qgpg
 GpcDhQiyMp/9vzKyNtwmiFAntC1d4Heie8TuaYq9avhyZeeNU0qqGaf+p/rw1P0OHKRSqqr5+UkIA
 SMtxLhU9/sYY4+ygfoOz5KAf833aZ26Jt9GZATurl4FR2IXkSrW/DsOsA57a2EQ/K2ynFxbNsN4qm
 EgsAyuYIhe/bgqmREgvhrLrdMys0w+rHERM2Dm5G197Dt6gpBKDC6pynqqlpDh0oHFn0vJFlKtT7V
 LYVpY9ppSnXHkDBM0ozxzL2xusCCw6thn4HE6m3eJ2331DA5qGJrCIU2i5wRy2/9dNC29Bsbx1Z/I
 hMH7R++5Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:45226)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1idHU8-00020S-MW; Fri, 06 Dec 2019 17:33:44 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1idHU7-0000qM-If; Fri, 06 Dec 2019 17:33:43 +0000
Date: Fri, 6 Dec 2019 17:33:43 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Message-ID: <20191206173343.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_093559_832176_3D1D5BB0 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

There seems to be a problem in pinctrl land when pinctrls interact with
GPIOs.

If, for example, an I2C driver wants to attempt bus recovery, and needs
to use GPIO mode to control the I2C bus pins to do this, then one may
expect code such as found in i2c_imx_init_recovery_info() to work.

However, consider that devm_gpiod_get() may invoke
pinctrl_gpio_request(), which changes the pinmux settings independently
of the pinctrl layer.

The result is that after devm_gpiod_get() has completed, the I2C bus
pins are in GPIO mode.

One may expect:

	pinctrl_select_state(i2c_imx->pinctrl, i2c_imx->pinctrl_pins_default);

to change them back to the default state, but that would be incorrect.
The first thing that pinctrl_select_state() does is check whether

	p->state == state

which it will do, as the pinctrl layer hasn't been informed of the
change that has happened behind its back at the pinmux level.

The result is, one needs to switch the state to gpio mode, and then
back to default to ensure that the pins are muxed back to the I2C
controller while the I2C controller is supposed to be operational.

GPIO mode is only used to recover the bus when a bus hang has happened
due to a slave device holding SDA low - and the only way that can be
recovered is by toggling the SCL signal. If the controller provides no
means to do this other than switching to GPIO mode, the above is
necessary.

I spotted this while trying out this method of i2c bus recovery on a
different I2C controller.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
