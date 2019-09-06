Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C203DAB4B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 11:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMe/zMFEnHSP9F2w3oomd6khf0gBJdkae4Pp8cIE4ks=; b=VJi8oVIb+CzvcT
	YRiKskgrUxqtPEhFFR0AWQMu3Si+rxVuIqwD7yPk1JKYlfnat+ltMLisFHa+O3sS+mQHKwGwJLtXw
	1bw4ySnZ0QUh+FueOja9Z6B4d+goa1x2DZbesW6Xt15h21PbEOiZTkRpl1aHjDJgtPW5VbA2XmPMX
	l0VvinZOQQVEHBrZWUA01Jnw2c/ZBjQRm2y2pLgDd43ijcebfU+p93ILwkualcwYQxpgMe8xwYNTq
	K/vDJzcnItS1FNW5dh2ODZYYBakOOzKCn4HGhbdLTL14baU7WXnrItaOoDbW7nEsmBk9S+KwqvPMJ
	UPDGhblkJdskKkqVsD9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6AIo-0007Xo-6m; Fri, 06 Sep 2019 09:13:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6AIZ-0007WQ-Mu
 for linux-arm-kernel@bombadil.infradead.org; Fri, 06 Sep 2019 09:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5r3EoEHrDZYccZzI15G7Xl9Rdy3Rap5VBXbSb8ZX0VQ=; b=xzlpG57XKVaGvasuu2PttgEiE
 s8LWmzYAmvBtG3XnHTHFSLXOI1AhH4rqTmjKvcp5Vp8dxjXcufu4OJHRp+qz31fIjFhhUHjLuKeVK
 YWYfRojLlwgFys1Ucpf1eVrqEOdGG9TmZi2HJG2XematyvLBnrJXK284zb00SX9XtJATmGorZBaml
 T1CnOAwF/65KawrMVlAeED3obR5F75fW7F2J0o9Gwl4vvZ+yDU2jyjTZgfD3bpulajTE1S9/3+EYA
 ZgcRh47VdS6k7x00rPvOPf4BH2waUheTGRPvQKh3Ps+7Jerd7OSvxv0L5yjMK9caycizC8TzkCqd8
 y/rUWz1lg==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6AIV-0004Mz-6L
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 09:12:52 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 768CD6000B;
 Fri,  6 Sep 2019 09:12:17 +0000 (UTC)
Date: Fri, 6 Sep 2019 11:12:12 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Message-ID: <20190906091212.GF21254@piout.net>
References: <20190905144849.24882-1-alexandre.belloni@bootlin.com>
 <2261eadf98584d13a490f2abd8777d4a@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2261eadf98584d13a490f2abd8777d4a@AcuMS.aculab.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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

On 06/09/2019 09:05:36+0000, David Laight wrote:
> From: Alexandre Belloni
> > Implement .get_multiple and .set_multiple to allow reading or setting
> > multiple pins simultaneously. Pins in the same bank will all be switched at
> > the same time, improving synchronization and performances.
> 
> Actually it won't 'improve synchronisation', instead it will lead to
> random synchronisation errors and potential metastability if one
> pin is used as a clock and another as data, or if the code is reading
> a free-flowing counter.
> 

It does improve gpio switching synchronisation when they are in the same
bank as it will remove the 250ns delay. Of course, if you need this
delay between clk and data, then the consumer driver should ensure the
delay is present.

> It will improve performance though.
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
