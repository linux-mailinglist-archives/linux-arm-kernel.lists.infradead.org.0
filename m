Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC241C7259
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UaEEkQN5Kr3jLw2x219Uffr0oAVLQP/ZKEoAF1woeY=; b=c1o0Zo2wo+E3oP
	ENDdDVmohjbwyPNkSdgv53jL8UU0vyksV3oyH0x6lCp/2ezh3W57JOMr3A4RZOR6OoWVCCGxe2GaD
	TeSCbs8RLk3PRT536hiA+EY87JZX1iv59hjrheEzkDXxlqcgDkVLJbcJ4n+yioCCHjAGUX8F1wl2/
	0BI2wjfRNlgEcnqvctn16OgfxuJ8oGpK6oNJxgCXS4qVOCQINiDs+SBOa5F84qqYx9LrV7SpX8VXX
	SU0Uu7rFle1ZhGboTy4/IqB/kgIwjTbv7zDVAfZGzvxv4NHaueq3dvAyZySiPzgok9XJ1YwkkFrb/
	jXnBUy7uZ5zpuj/wol2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKbj-0007lo-EL; Wed, 06 May 2020 14:01:07 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKbb-0007kt-NH
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 14:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sb+91cRUqctrQDuRfc/AByV+/UWxszvXrjsevRQrhv4=; b=0Q+tEQnsus3iTyVs3ZcR1dknGX
 qEHB8ZuETn5ygPjcB2R+UdZMB5YzTQnHzgQ4gEcDez7IlrS8PH5lWv9JS7d4pxHxowjDUGk5GXUjH
 btDWhbeIsmiQzYdUKY6IERNicTQ995gVQVNQB2N37r/IyBrQr9u74Vd43qdAwJQH7xG0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jWKbW-0015kK-7J; Wed, 06 May 2020 16:00:54 +0200
Date: Wed, 6 May 2020 16:00:54 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 1/2] i2c: pxa: implement generic i2c bus recovery
Message-ID: <20200506140054.GG224913@lunn.ch>
References: <20200506094001.GP1551@shell.armlinux.org.uk>
 <E1jWGXX-0000Yx-UL@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jWGXX-0000Yx-UL@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_070059_760794_8D2CDBCE 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, May 06, 2020 at 10:40:31AM +0100, Russell King wrote:
> Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/i2c/busses/i2c-pxa.c | 176 +++++++++++++++++++++++++++++++----
>  1 file changed, 159 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
> index 0e194d6cd1b5..da15ab2a519e 100644
> --- a/drivers/i2c/busses/i2c-pxa.c
> +++ b/drivers/i2c/busses/i2c-pxa.c
> @@ -20,6 +20,7 @@
>  #include <linux/delay.h>
>  #include <linux/err.h>
>  #include <linux/errno.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
>  #include <linux/init.h>
>  #include <linux/interrupt.h>
> @@ -28,6 +29,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/platform_data/i2c-pxa.h>
>  #include <linux/slab.h>
> @@ -260,6 +262,11 @@ struct pxa_i2c {
>  	bool			highmode_enter;
>  	u32			fm_mask;
>  	u32			hs_mask;
> +
> +	struct i2c_bus_recovery_info recovery;
> +	struct pinctrl		*pinctrl;
> +	struct pinctrl_state	*pinctrl_default;
> +	struct pinctrl_state	*pinctrl_recovery;
>  };
>  
>  #define _IBMR(i2c)	((i2c)->reg_ibmr)
> @@ -559,13 +566,8 @@ static void i2c_pxa_set_slave(struct pxa_i2c *i2c, int errcode)
>  #define i2c_pxa_set_slave(i2c, err)	do { } while (0)
>  #endif
>  
> -static void i2c_pxa_reset(struct pxa_i2c *i2c)
> +static void i2c_pxa_do_reset(struct pxa_i2c *i2c)
>  {
> -	pr_debug("Resetting I2C Controller Unit\n");
> -
> -	/* abort any transfer currently under way */
> -	i2c_pxa_abort(i2c);
> -
>  	/* reset according to 9.8 */
>  	writel(ICR_UR, _ICR(i2c));
>  	writel(I2C_ISR_INIT, _ISR(i2c));
> @@ -584,12 +586,25 @@ static void i2c_pxa_reset(struct pxa_i2c *i2c)
>  #endif
>  
>  	i2c_pxa_set_slave(i2c, 0);
> +}
>  
> +static void i2c_pxa_enable(struct pxa_i2c *i2c)
> +{
>  	/* enable unit */
>  	writel(readl(_ICR(i2c)) | ICR_IUE, _ICR(i2c));
>  	udelay(100);
>  }
>  
> +static void i2c_pxa_reset(struct pxa_i2c *i2c)
> +{
> +	pr_debug("Resetting I2C Controller Unit\n");

Hi Russell

I know you are just moving code around, but maybe pr_debug() could be
cleaned up to dev_debug()? 

> +	/*
> +	 * Claiming GPIOs can change the pinmux state, which confuses the
> +	 * pinctrl since since pinctrl's idea of the current setting is

since since

I don't know too much about this hardware, but for what it is worth,

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
