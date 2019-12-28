Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C94E12BDB3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 14:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSgEV0pf8TxVGPN0zHqOoukrX8erbZHqWYvlZj8YGgg=; b=XZl6CduLQpAoQV
	B6fEIYDRw0A3CjBnojC2HCjDPUrcH/S/Gd91iDvdUIZ16X5AHOtAY5OCl0vScR7Ll6cU6a+DDa4/m
	d0L66qeEs2VUeHM+Q3FepbphZ83GKIQ9ML0EBfQjLqcIV4sTeKqAqLi5XNL0/nukrx+RqH2SqmjeI
	a44Fm9tq8cT6bsxGUU652UvOemtx+PpJdZEuy7vsl0H0FtR3JCMzvcUFjlzSiinHwkuXof10bD0Oh
	DW8ybHcK5oRpCSFMzemrW00H6NZDwvY9jH4/BC2pWItvYWprgqcyI/1xDyz9EZEJD4SjGPmxHDT0n
	EX7B1W/9tHtNpsjNLKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilCUZ-0007it-Ka; Sat, 28 Dec 2019 13:50:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilCUO-0006Pu-QZ
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 13:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RCJmzul6XUbomXCbjxTYwriW9jA1/+w+3KTp2D3QCyw=; b=rethQCw+VAf1V48foed947eZr
 PlhqMB2wsoYmmGRB1tR2rLPNm+c8A+yp8OD3Iw0FTZam8Uwpc2N4eblDPNYxqQU2C/+OFSv8TcKsK
 JerjC3ctp4j/JibUeCBVYdSwBIXrDHW6Ildjm+hpc2dDLnFiw5ihiMjMEzUN0sDWr6am0k8C+7Hjn
 aLN+vTK0S6MASwbFGY/mg5gwGPAKOgODs6MYT7UD4S87ngS+hGC3Qd3BdKNZZSrI2kYYay3NId7iX
 8ESyKEqxBgaIMMCC20WThsuq/z8booLcmJyN1ihT0Tatd5ithZzY42NslIGRLd6yglwzHA7C3XSxO
 C+P+/EQoQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59090)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ilCSD-000868-MD; Sat, 28 Dec 2019 13:48:32 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ilCS8-0005mL-6m; Sat, 28 Dec 2019 13:48:24 +0000
Date: Sat, 28 Dec 2019 13:48:24 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Gen Zhang <blackgod016574@gmail.com>
Subject: Re: [PATCH] board-dm644x-evm: fix 2 missing-check bugs in
 evm_led_setup()
Message-ID: <20191228134824.GX25745@shell.armlinux.org.uk>
References: <20191227023921.GA21233@zhanggen-UX430UQ>
 <20191227160142.GW25745@shell.armlinux.org.uk>
 <20191228131930.GA7214@zhanggen-UX430UQ.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228131930.GA7214@zhanggen-UX430UQ.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_055044_863125_58E5790A 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bgolaszewski@baylibre.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 28, 2019 at 09:19:30PM +0800, Gen Zhang wrote:
> On Fri, Dec 27, 2019 at 04:01:42PM +0000, Russell King - ARM Linux admin wrote:
> > On Fri, Dec 27, 2019 at 10:39:21AM +0800, Gen Zhang wrote:
> > > In evm_led_setup(), the allocation result of platform_device_alloc() and 
> > > platform_device_add_data() should be checked.
> > > 
> > > Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
> > > ---
> > > diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
> > > index 9d87d4e..9cd2785 100644
> > > --- a/arch/arm/mach-davinci/board-dm644x-evm.c
> > > +++ b/arch/arm/mach-davinci/board-dm644x-evm.c
> > > @@ -352,15 +352,20 @@ evm_led_setup(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
> > >  	 * device unregistration ...
> > >  	 */
> > >  	evm_led_dev = platform_device_alloc("leds-gpio", 0);
> > > -	platform_device_add_data(evm_led_dev,
> > > +	if (!evm_led_dev)
> > > +		return -ENOMEM;
> > > +	status = platform_device_add_data(evm_led_dev,
> > >  			&evm_led_data, sizeof evm_led_data);
> > > +	if (status)
> > > +		goto err;
> > >  
> > >  	evm_led_dev->dev.parent = &client->dev;
> > >  	status = platform_device_add(evm_led_dev);
> > > -	if (status < 0) {
> > > -		platform_device_put(evm_led_dev);
> > > -		evm_led_dev = NULL;
> > > -	}
> > > +	if (status)
> > > +		goto err;
> > > +err:
> > > +	platform_device_put(evm_led_dev);
> > > +	evm_led_dev = NULL;
> > 
> > Please look again at the above change very closely. You will want to
> > send an updated patch.
> > 
> > -- 
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> > According to speedtest.net: 11.9Mbps down 500kbps up
> 
> Thanks for your reply. You mean the if (state < 0 ) to if (state) or
> anything else? Please point out directly.

This is the old everything-successful path through the code:

	platform_device_alloc()
	platform_device_add_data()
	platform_device_add()
	evm_led_dev is set to the device

This is the new everything-successful path through the code:

	platform_device_alloc()
	platform_device_add_data()
	platform_device_add()
	platform_device_put()
	evm_led_dev = NULL

And, specifically, the code sequence (I quote from your patch):

	if (status)
		goto err;
err:

is very stupid; it might as well not exist at all.

Since other code references evm_led_dev, one can assume that we do
not want it to be NULL for the success path. So, taking all this
together, your patch is very very wrong, and I also find it very
worrying too.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
