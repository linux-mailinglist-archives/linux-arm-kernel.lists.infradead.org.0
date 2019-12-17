Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BDB122B88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNeg0d57Ng/S2ySWPik7X+tqbT9lns/68semk2+2WEU=; b=Vi/fQ+uFIMs0X0
	AGhUzyLWnn/MnIZKqlBXcYfjHzgKH8OVBqnaNqaHhfQQ3GLUbt4YhQ/BNoIYypt75XUYoOgOb44in
	+QMk2tOlXk+NP51WuVzJqbu737Mnc+qqGNSSeqJCznxiObLJ3dooWW2LTp+oFl+OBGzheek5ukVpj
	G8fM65rj7UK4bPO2BLQiq2sbEx5QezYg/mISw8S1wyyYLnNSLmkO4zHc4MIpbuXer7MSprEuvZJ2p
	uDDlTEE0TNT7fCJUzMz3z7NTmAk4r58tpexUl5+xda9FSyoxgyN9JoUQnpdfOHHCr8Po6rgCMgRxJ
	M95SpBAuSY6a3stsfbKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihC0w-0006gu-Bm; Tue, 17 Dec 2019 12:31:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihC0m-0006fM-OO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:31:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ihC0V-0005OG-Hy; Tue, 17 Dec 2019 13:31:19 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ihC0S-0006OI-I9; Tue, 17 Dec 2019 13:31:16 +0100
Date: Tue, 17 Dec 2019 13:31:16 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191217123116.GB29666@pengutronix.de>
References: <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <AM5PR1001MB09941005A47B603805D3C53280510@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191217090034.GD31182@pengutronix.de>
 <AM5PR1001MB099460B2D291644F088707BA80500@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR1001MB099460B2D291644F088707BA80500@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:21:27 up 110 days, 35 min, 93 users,  load average: 0.98, 1.01,
 1.03
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_043136_792882_0E162322 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 Mark Brown <broonie@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-17 09:53, Adam Thomson wrote:
> On 17 December 2019 09:01, Marco Felsch wrote:
> 
> > > > The enabel control signal is always available, please check [1] table
> > > > 63. There is a mux in front of the enable pin so:
> > > >
> > > >              +-------------
> > > >  Seq. |\     |   Regulator
> > > >  GPI1 | \    |
> > > >  GPI2 | | -- > Enable
> > > >  GPI3 | /    |
> > > >       |/     .
> > > >              .
> > > >              .
> > > >
> > > > Adam please correct me if this is wrong.
> > >
> > > Yes the register can always be configured regardless of the associated pin
> > > configuration, but if say GPIO1 was configured as a GPO but a regulator was
> > > configured to use GPIO1 as its GPI control mechanism, the output signal from
> > > GPIO1 would be ignored, the sequencer control would not have any effect and
> > > you're simply left with manual I2C control. Really we shouldn't be getting into
> > > that situation though. If a GPIO is to be used as a regulator control signal
> > > then it should be marked as such and I don't think we should be able to use that
> > > pin for anything other than regulator control.
> > 
> > I see, so we have to guarantee that the requested gpio is configured as
> > input. This can be done by:
> 
> This is one of the reasons I thought this was better suited to being done in the
> pinctrl/pinmux side. If you configure the GPIO as for regulator control then
> the code can automatically configure the GPIO for input. That doesn't then need
> to be in the regulator driver.

I still don't prefer that way.. pls check my arguments I already made
and I don't wanna repeat it again.

> But yes we wouldn't really want to configure a regulator to be controlled via a
> GPI when it's configured as a GPO as it makes no sense.

Okay, so the check is all we need to hardening the driver against wrong
usage :)

Regards,
  Marco

> 
> > 
> >   if (gpi->flags & FLAG_IS_OUT)
> >   	return -EINVAL;
> > 
> > Regards,
> >   Marco
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
