Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF53AB636
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBvLNl2JCNstO0pIh3xvzYSkYVWEq+SZ+WOwUAXtwCw=; b=Svd64WX6X0bBTP
	Zf5/dcHPtMpWH2+v62BOAlxyUb0WpNeQaJszPI5Wv6jx9gor/n/BK0TaC4V9ssvGIE5pqXq2qjnJ8
	uvg31fxH5J1FShv5eopXXL/HBhBT0b8wfYRbRB6koVnA/BtnChDXWqz8bhrpEJS7FCeLqZzG5TbQS
	izYNu2NHCI5I4nrqTNE7toqbxN8LFnKULtJtofFA7imETdkwmdNaiibfV+fm9YC8kYgnUsRU/Y7F9
	NyEsmvPm3dkF2nHnfhRthiXZh2YPRxwBNVtoFZnyzdNktIBYcpVI6J9+42OHZILwqQl6GJx4RtNs0
	K2Cyd24Ovf8lrwbFueVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Bhd-0000Nr-No; Fri, 06 Sep 2019 10:42:53 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BhR-0000NA-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:42:44 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id BE71F240004;
 Fri,  6 Sep 2019 10:42:30 +0000 (UTC)
Date: Fri, 6 Sep 2019 12:42:24 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Message-ID: <20190906104224.GG21254@piout.net>
References: <20190905144849.24882-1-alexandre.belloni@bootlin.com>
 <2261eadf98584d13a490f2abd8777d4a@AcuMS.aculab.com>
 <20190906091212.GF21254@piout.net>
 <b010053340ef48dfa244ff48c8decd38@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b010053340ef48dfa244ff48c8decd38@AcuMS.aculab.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_034241_912723_E3844AFA 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "Claudiu.Beznea@microchip.com" <Claudiu.Beznea@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/09/2019 09:46:02+0000, David Laight wrote:
> From: Alexandre Belloni
> > Sent: 06 September 2019 10:12
> > On 06/09/2019 09:05:36+0000, David Laight wrote:
> > > From: Alexandre Belloni
> > > > Implement .get_multiple and .set_multiple to allow reading or setting
> > > > multiple pins simultaneously. Pins in the same bank will all be switched at
> > > > the same time, improving synchronization and performances.
> > >
> > > Actually it won't 'improve synchronisation', instead it will lead to
> > > random synchronisation errors and potential metastability if one
> > > pin is used as a clock and another as data, or if the code is reading
> > > a free-flowing counter.
> > >
> > 
> > It does improve gpio switching synchronisation when they are in the same
> > bank as it will remove the 250ns delay. Of course, if you need this
> > delay between clk and data, then the consumer driver should ensure the
> > delay is present.
> 
> With multiple requests the output pin changes will always be in the
> same order and will be separated by (say) 250ns.
> This is a guaranteed synchronisation.
> 
> If you change multiple pins with the same 'iowrite()' then the pins
> will change at approximately the same time.
> But the actual order will depend on internal device delays (which
> may depend on the actual silicon and temperature).
> You then have to take account of varying track lengths and the
> target devices input stage properties before knowing which change
> arrives first.
> The delays might be sub-nanosecond, but they matter if you are
> talking about synchronisation.
> 

And my point is that this means that your gpio consumer driver is buggy
if it doesn't do multiple requests if it requires a delay between two
pin changes.

> IIRC both SMBus and I2C now quote 0ns setup time.
> Changing both clock and data with the same IOW isn't enough to
> guarantee this.
> (In practise the I2C setup time required by a device is probably
> slightly negative (In order to support 0ns inputs) so a very small
> -ve setup will (mostly) work.)

I'm not sure what is your point exactly as this patch doesn't break any
existing use cases.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
