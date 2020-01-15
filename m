Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3732113BB6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvHHuIW5Y0XWyPPIvXZ7gIVZoydbaNFozF2IzkyIwpk=; b=Hfpd7SUjr5xflm
	gCjIGtgu4g5kMU7F/G/HTZ7Cf0ZZluOETNgJipJwXKOEEseMfod9hbOukvyAuXF+AjTqPYh1PWkiI
	1wDPp6OloaKacSpA4CO+KEnvFivsJl5scR5+JkUby1xuOtDOtnDpZRkNwWFzhgsTC/FBpmOy7fsc/
	awBeT5RsLlucCxI5zyC+s9XMxlzmqcopE9nopT9xeuV9x2MeEkxofYBwDlvVha9G0/uBpXjfpotph
	XsiiXpzNTJgGWLPabqunYwBsM3XzNAwsPDdrgGoqwhNJHgYiE8im47IzRbzuw4nA2imAIam/CtKdb
	NjpKlCbc+kPbAX1Ezc3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireHi-0003fY-5Q; Wed, 15 Jan 2020 08:44:18 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireGd-0002sp-Mg; Wed, 15 Jan 2020 08:43:16 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 71552E0008;
 Wed, 15 Jan 2020 08:43:00 +0000 (UTC)
Date: Wed, 15 Jan 2020 09:43:00 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 10/17] dt-bindings: atmel-smc: add microchip,sam9x60-smc
Message-ID: <20200115084300.GU3137@piout.net>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-11-git-send-email-claudiu.beznea@microchip.com>
 <20200114095538.GJ3137@piout.net> <20200115080053.GC325@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115080053.GC325@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_004311_893332_86C7652F 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, vigneshr@ti.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, pmeerw@pmeerw.net,
 miquel.raynal@bootlin.com, linux-rtc@vger.kernel.org, lars@metafoo.de,
 richard@nod.at, ludovic.desroches@microchip.com, wg@grandegger.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, linux-spi@vger.kernel.org, vkoul@kernel.org,
 knaack.h@gmx.de, dmaengine@vger.kernel.org, eugen.hristev@microchip.com,
 Claudiu Beznea <claudiu.beznea@microchip.com>, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/01/2020 08:00:53+0000, Lee Jones wrote:
> On Tue, 14 Jan 2020, Alexandre Belloni wrote:
> 
> > On 10/01/2020 18:18:02+0200, Claudiu Beznea wrote:
> > > Add microchip,sam9x60-smc to DT bindings documentation.
> > > 
> > > Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> > > ---
> > >  Documentation/devicetree/bindings/mfd/atmel-smc.txt | 1 +
> > >  1 file changed, 1 insertion(+)
> > Applied, thanks.
> 
> Remind me why you are applying this patch please?
> 

Because the last patch of the series has a soft dependency on this
patch. I can remove it from the at91 and let you apply it if you think
this is necessary.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
