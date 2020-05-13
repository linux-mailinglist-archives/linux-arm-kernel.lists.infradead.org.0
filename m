Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1A91D0C13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLsSE7cAQgYRhc8qXMWWdejPcC6CeKmmSrjOEqG4hbc=; b=FVH0O2lW/m0YTd
	ULMitTEEVfn6ug4sxxCr+lDV6k+phawT96pEnTyvUoZ7QlwHh0hSDhgYciJtUV7KF2KSfeLKu5d8W
	l2jowrdHeeqOWJMuAjqoPwpWGKAn1VSJMuf8wEbm7fogI4/9Q4O6tVDe5JApKrJ3SAYrwZoGvHGVM
	y8Xs6j/FLyJ5hX9l4h7NlIa1wgHwFcwkDQfCALNbfsFJiWe0NEXzMbmd0MOwNOQYUFJh1xeRueOxJ
	kEhJJ9DJEzza/F4us09xIO6rtYAo/ay5Av+frHUDimWhYKdpBkLUZ4ce0Dyuzu3OzVTBIqq2eaeZT
	uft7MypEecSOZuKDM55g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnho-00049A-8q; Wed, 13 May 2020 09:29:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnhf-00044k-Js
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S1EKebOmxklJ89iEdCA6FkHkRp5HPs448bB2B6Evm0I=; b=Os/ZcSdgPw4delhE0F4Emd2x2
 43Y/EB85BrZZZqgPzvLWWCNhSng9hu+4jFq2etztt85v+AXIYt3rJyRl+gxbD1gt8gtq8QPa5lkoH
 xPIJdrFk8m7LziQsOkDHo2QaRJlTU9UF4VhMw9Tm7PA8UjMzqnVjj57Md4Zzy/L2xyoD6Canbai7p
 Lg7wUefFGMNd9k1eIwjzbGAy2zp8acaP2gdqwaWYXnX+AY1Cbsl6ifKKjB6JgZ0Q/ZGykbp4BNSHI
 BvIQ/fofTz4IngWTBFcVYFOTHhsiW7Z4ry/1a3eqFIpe+4oj3CO7nSR8xe4ntUFV4rzBbn6f1wPbp
 E0nJ6SkGQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:39690)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jYnhQ-00041Y-Al; Wed, 13 May 2020 10:29:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jYnhO-0007du-CI; Wed, 13 May 2020 10:29:10 +0100
Date: Wed, 13 May 2020 10:29:10 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 1/2] i2c: pxa: implement generic i2c bus recovery
Message-ID: <20200513092910.GF1551@shell.armlinux.org.uk>
References: <20200506094001.GP1551@shell.armlinux.org.uk>
 <E1jWGXX-0000Yx-UL@rmk-PC.armlinux.org.uk>
 <20200506140054.GG224913@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506140054.GG224913@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_022927_653754_78559602 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:00:54PM +0200, Andrew Lunn wrote:
> On Wed, May 06, 2020 at 10:40:31AM +0100, Russell King wrote:
> > Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  drivers/i2c/busses/i2c-pxa.c | 176 +++++++++++++++++++++++++++++++----
> >  1 file changed, 159 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
> > index 0e194d6cd1b5..da15ab2a519e 100644
> > --- a/drivers/i2c/busses/i2c-pxa.c
> > +++ b/drivers/i2c/busses/i2c-pxa.c
> > @@ -20,6 +20,7 @@
> >  #include <linux/delay.h>
> >  #include <linux/err.h>
> >  #include <linux/errno.h>
> > +#include <linux/gpio/consumer.h>
> >  #include <linux/i2c.h>
> >  #include <linux/init.h>
> >  #include <linux/interrupt.h>
> > @@ -28,6 +29,7 @@
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> > +#include <linux/pinctrl/consumer.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/platform_data/i2c-pxa.h>
> >  #include <linux/slab.h>
> > @@ -260,6 +262,11 @@ struct pxa_i2c {
> >  	bool			highmode_enter;
> >  	u32			fm_mask;
> >  	u32			hs_mask;
> > +
> > +	struct i2c_bus_recovery_info recovery;
> > +	struct pinctrl		*pinctrl;
> > +	struct pinctrl_state	*pinctrl_default;
> > +	struct pinctrl_state	*pinctrl_recovery;
> >  };
> >  
> >  #define _IBMR(i2c)	((i2c)->reg_ibmr)
> > @@ -559,13 +566,8 @@ static void i2c_pxa_set_slave(struct pxa_i2c *i2c, int errcode)
> >  #define i2c_pxa_set_slave(i2c, err)	do { } while (0)
> >  #endif
> >  
> > -static void i2c_pxa_reset(struct pxa_i2c *i2c)
> > +static void i2c_pxa_do_reset(struct pxa_i2c *i2c)
> >  {
> > -	pr_debug("Resetting I2C Controller Unit\n");
> > -
> > -	/* abort any transfer currently under way */
> > -	i2c_pxa_abort(i2c);
> > -
> >  	/* reset according to 9.8 */
> >  	writel(ICR_UR, _ICR(i2c));
> >  	writel(I2C_ISR_INIT, _ISR(i2c));
> > @@ -584,12 +586,25 @@ static void i2c_pxa_reset(struct pxa_i2c *i2c)
> >  #endif
> >  
> >  	i2c_pxa_set_slave(i2c, 0);
> > +}
> >  
> > +static void i2c_pxa_enable(struct pxa_i2c *i2c)
> > +{
> >  	/* enable unit */
> >  	writel(readl(_ICR(i2c)) | ICR_IUE, _ICR(i2c));
> >  	udelay(100);
> >  }
> >  
> > +static void i2c_pxa_reset(struct pxa_i2c *i2c)
> > +{
> > +	pr_debug("Resetting I2C Controller Unit\n");
> 
> Hi Russell
> 
> I know you are just moving code around, but maybe pr_debug() could be
> cleaned up to dev_debug()? 

Yes, but I don't want to add irrelevant changes into this; changing
the way the driver prints stuff wouldn't be part of adding recovery
support, and would likely get review comments suggesting it should
be a separate patch.

> > +	/*
> > +	 * Claiming GPIOs can change the pinmux state, which confuses the
> > +	 * pinctrl since since pinctrl's idea of the current setting is
> 
> since since
> 
> I don't know too much about this hardware, but for what it is worth,
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
