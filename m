Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F3C122767
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmyFVI74quzXcNoI5RsiGnagQNsRJ8y5jE4BId2r8GM=; b=ZESoecISqhik7L
	ybujd7SN4n3QcSFlevgJ4Edg+33kR7mymPVmcva1U6rQ3LNUjrJqnHihu2B4GFQ11pbICfZOmvoma
	Yntg2cQTkhCHU1xLyVBw4CPLM3JdjGyllw3KaEo7xb5P/SGemn8OeqN44pWpPBCwt7zrIDLAMSO8g
	9VF+7p0fDkGvnJ9wwjfft2qb5uValBkpImSVo06y4g0LrKiZ2e+zL7FXi5ZsPK/rASTwvHlLGuUV0
	+7nygFYx8QKi/htiy8P6U/suxx9XnDO2yMk4+ShHHcEoTKkdMohh/Yp7q83ueL7mk/IsAHdTMq7qY
	qcDOdg4IIbIjZ4ojOlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8uZ-00054m-Kk; Tue, 17 Dec 2019 09:12:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8uQ-00053w-1S
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:12:51 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ih8uD-0006zW-Mw; Tue, 17 Dec 2019 10:12:37 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ih8uC-0000Sw-Qj; Tue, 17 Dec 2019 10:12:36 +0100
Date: Tue, 17 Dec 2019 10:12:36 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191217091236.GA15806@pengutronix.de>
References: <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <AM5PR1001MB09941005A47B603805D3C53280510@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191217090034.GD31182@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217090034.GD31182@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:22 up 109 days, 21:23, 85 users,  load average: 0.87, 0.56,
 0.48
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_011250_081629_AF321450 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "joel@jms.id.au" <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-17 10:00, Marco Felsch wrote:
> On 19-12-16 16:32, Adam Thomson wrote:
> > On 16 December 2019 08:55, Marco Felsch wrote:
> > 
> > > On 19-12-12 16:51, Mark Brown wrote:
> > > > On Thu, Dec 12, 2019 at 05:21:53PM +0100, Marco Felsch wrote:
> > > >
> > > > > "... what's driving the input ..":
> > > > > Sorry I didn't get you here. What did you mean? The input is driven by
> > > > > the host. This can be any gpio line and in my case it is a gpio line
> > > > > driven by the soc-hw during a suspend operation.
> > > >
> > > > Something needs to say what that thing is, especially if it's runtime
> > > > controllable.  In your case from the point of view of software there is
> > > > actually no enable control so we shouldn't be providing an enable
> > > > operation to the framework.
> > > 
> > > The enabel control signal is always available, please check [1] table
> > > 63. There is a mux in front of the enable pin so:
> > > 
> > >              +-------------
> > >  Seq. |\     |   Regulator
> > >  GPI1 | \    |
> > >  GPI2 | | -- > Enable
> > >  GPI3 | /    |
> > >       |/     .
> > >              .
> > >              .
> > > 
> > > Adam please correct me if this is wrong.
> > 
> > Yes the register can always be configured regardless of the associated pin
> > configuration, but if say GPIO1 was configured as a GPO but a regulator was
> > configured to use GPIO1 as its GPI control mechanism, the output signal from
> > GPIO1 would be ignored, the sequencer control would not have any effect and
> > you're simply left with manual I2C control. Really we shouldn't be getting into
> > that situation though. If a GPIO is to be used as a regulator control signal
> > then it should be marked as such and I don't think we should be able to use that
> > pin for anything other than regulator control.
> 
> I see, so we have to guarantee that the requested gpio is configured as
> input. This can be done by:
> 
>   if (gpi->flags & FLAG_IS_OUT)
>   	return -EINVAL;

Sorry didn't noticed that the flags are only used internally. The
correct check must be:

	/* GPIO must be configured as input */
	if (!gpiod_get_direction(gpi)) {
		ret = -EINVAL;
		goto free;
	}

> 
> Regards,
>   Marco
> 
> > > 
> > > [1] https://www.dialog-
> > > semiconductor.com/sites/default/files/da9062_datasheet_3v6.pdf
> > > 
> > > Regards,
> > >   Marco
> > > 
> > > > _______________________________________________
> > > > linux-arm-kernel mailing list
> > > > linux-arm-kernel@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
