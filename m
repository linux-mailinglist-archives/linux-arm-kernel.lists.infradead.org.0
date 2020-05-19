Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9331D9357
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZ7tV5qXhArt+3YUwC9MtAn4YR9LbJwQfItup7AjYHo=; b=H8yCIX0/oT08DT
	4K9uJX7PWpmkl31yPkSQkaVmIuvatXjF9UrI2Ok9h6Xsi+QZjq6VQmP3rLBXd4X3jAp+VgocFwoTJ
	YYTU9NigPPeQJ7gu6Mk0+ANVEo8pxtGC/ifMPdrkP3GQLNw+YByoFtl9MxHE+XWXlyw5KJtoLhyuw
	eQW1InTdJoZO4M6uHcj6BjAPpNeX8l7xPshacN3rEy/gKUaVtry++a1QBtGpeX7Ac79v9FrAm/FJt
	TQroSnxBkSYUX0s3+leOU2DgmOH0Fhjohma+Wy5d7Vu8AvHMcxs/6IyHasApKqbAc9tDdBNrGwqZk
	CxVXYbLGQHnsoHt75Bag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayZ6-0003C9-P1; Tue, 19 May 2020 09:29:36 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayYx-00039d-Hn
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589880567; x=1621416567;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LaB5Sv8zHtLu9L4Qfmtj8Pn6PDVEZl9Yco0qR/2/0m8=;
 b=d144dB9ndn/EiiRNT0RQ57cuTMmiEkQd0REeoYz6TBnoEjhOppKbSxRH
 TN3VnyP7NN4MwDlr8UHmSgB7fRxSRdUB0rh1jj6WwZ5EY23hTuVFWWshc
 E8k4qwSbo9XXMdCOnqDt8LL+p92EjtaIMTRIRyYW5n8XTngKdmfNKHsGV
 zPRWt5ojWTMtxvdVcDIfd6TPthmeVx0Jee/VkIMSEVi1aM7s7RScGk3VC
 svdY4CiUaseRwLsZmZIXlLQDEc4hbsR7GfKlgH6Hu/EmHD3ul0dQKl+2C
 ChV5hshZQPDgT8OP8GGe0z1yoIet+gIftLkEBVAYiDmqYZQgO8tQ0BX/Z w==;
IronPort-SDR: 0jSv+TvDQbzH9lV/jI9Rsy/kQWjkif90PfiWaRgHCo7c/7Z0zqfK/CJ0FFPd2hLgZpn9kIut+b
 P9e+46l0c/uTZnIWNyHevawBmLAJ+4vxvZVmh3LlmRwKWotrMV5ikDlNy4lEK1+xkR3dbJUOpF
 QuMevA6pIGc291C+AGZRCdOlQy3zLqKS9ACyLJfseLQagzO3VjDLdhoDkPz6v7wQ6lBhpDPxJy
 5o8jC8ZtRYgad7mo+/KkU4VaonnSn2bb6fY3Sd9uqm9hSCe8bC5CjCGlprzB0yMG8/Q5LVk69N
 ASk=
X-IronPort-AV: E=Sophos;i="5.73,409,1583218800"; d="scan'208";a="12818922"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 May 2020 02:29:19 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 02:29:20 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 19 May 2020 02:29:18 -0700
Date: Tue, 19 May 2020 11:29:17 +0200
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 07/10] spi: spi-dw-mchp: Add Sparx5 support
Message-ID: <20200519092917.GB24801@soft-dev15.microsemi.net>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-8-lars.povlsen@microchip.com>
 <20200514102516.GD5127@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514102516.GD5127@sirena.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_022927_639372_87FDC01A 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


[Sorry about the slight delay on getting back on this]

On 14/05/20 11:25, Mark Brown wrote:

> Date: Thu, 14 May 2020 11:25:16 +0100
> From: Mark Brown <broonie@kernel.org>
> To: Lars Povlsen <lars.povlsen@microchip.com>
> Cc: SoC Team <soc@kernel.org>, Microchip Linux Driver Support
>  <UNGLinuxDriver@microchip.com>, linux-spi@vger.kernel.org,
>  devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
>  linux-arm-kernel@lists.infradead.org, Alexandre Belloni
>  <alexandre.belloni@bootlin.com>
> Subject: Re: [PATCH 07/10] spi: spi-dw-mchp: Add Sparx5 support
> User-Agent: Mutt/1.10.1 (2018-07-13)
> 
> On Wed, May 13, 2020 at 04:00:28PM +0200, Lars Povlsen wrote:
> 
> > +static void dw_spi_mchp_set_cs_owner(struct dw_spi_mchp *dwsmchp,
> > +				     const struct dw_spi_mchp_props *props,
> > +				     u8 cs, u8 owner)
> >  {
> > +	u8 dummy = (owner == MSCC_IF_SI_OWNER_SIBM ?
> > +		    MSCC_IF_SI_OWNER_SIMC : MSCC_IF_SI_OWNER_SIBM);
> 
> Please write normal conditional statements to improve legibility.
> 

I will take your recommendation to heart.

> > +static void dw_spi_mchp_set_cs(struct spi_device *spi, bool nEnable)
> > +{
> > +	bool enable = !nEnable;	/* This keeps changing in the API... */
> 
> No, it doesn't.  The API has not changed for more than a decade.
> 

I will remove the comment.

I think the comment was related to when we got bitten by the below
change, but alas.

commit ada9e3fcc175db4538f5b5e05abf5dedf626e550
Author: Charles Keepax <ckeepax@opensource.cirrus.com>
Date:   Wed Nov 27 15:39:36 2019 +0000

    spi: dw: Correct handling of native chipselect

    This patch reverts commit 6e0a32d6f376 ("spi: dw: Fix default polarity
    of native chipselect").
    
> > +	} else if (props->ss_force_ena_off) {
> > +		if (enable) {
> > +			/* Ensure CS toggles, so start off all disabled */
> > +			regmap_write(dwsmchp->syscon, props->ss_force_val_off,
> > +				     ~0);
> 
> What's all this force_ena_off stuff about?  The controller should not be
> making decisions about management of the chip select, this will break
> users.
> 

Our controller is not using DMA, but the FIFO interface. And as the DW
controller drops CS when the FIFO runs empty, this will upset SPI
devices. The "ss_force" is something the HW designes put on top to
"override" the CS. We could of course use the GPIO's specifically to
overcome this - but the "boot" CS 0 is a builtin CS, with no
underlying GPIO.

Add to this that the HW dept decided to add *2* physical SPI busses to
the same controller. That we also need to switch between. And ensure
CS gets dropped correctly before changing tracks...

Long story, lot of grief...

> > +	if (pdev->dev.of_node) {
> > +		int i;
> > +
> > +		for (i = 0; i < dws->num_cs; i++) {
> > +			int cs_gpio = of_get_named_gpio(pdev->dev.of_node,
> > +					"cs-gpios", i);
> > +
> > +			if (cs_gpio == -EPROBE_DEFER) {
> > +				ret = cs_gpio;
> > +				goto out;
> > +			}
> > +
> > +			if (gpio_is_valid(cs_gpio)) {
> > +				ret = devm_gpio_request(&pdev->dev, cs_gpio,
> > +						dev_name(&pdev->dev));
> > +				if (ret)
> > +					goto out;
> 
> Set use_gpio_descriptors and let the core manage the GPIO.

Good suggestion, just the ticket!

And thank you very much for your time & comments.

---Lars


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
