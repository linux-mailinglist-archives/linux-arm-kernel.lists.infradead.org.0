Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC326136F88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H1c0/zO0d8lI8x1vJbDtM5klueilbzO+TCVGjvOidA=; b=m8BSEjJPTtTgR/
	P/6Yi87NoZikVrYq7Yf3NRmy5qoPh98Lvt6D7OsMXOmTrqHHQ4Y1B6t8LA0JpIdWfJP/Ojo5r68zN
	goOPfZeEtOZVWtLVC8lqSZPkq3TYR8he9lUjaUot5b2pZBzYngdfouFjyoKgvUfisVt6qOt4OH6Pj
	4pJFl+OWCz0M7z8ZAXhYwRShUe5U4H4hzz7o/Lhj8Q+NFOn0Jqok8FyiC8KR3UJahLVbP5A5dXlUv
	KjwAB6FWwkJ0iDIXfDrIlttDXDz0PmRX9fCjydHfufrn7EZCt6Le/k/Rgcbou/zYEPlUVxHJoFWdG
	O32fYAdBAv410ChdK1aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvLN-0001iz-3r; Fri, 10 Jan 2020 14:32:57 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvL9-0001hL-Lc; Fri, 10 Jan 2020 14:32:49 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id EFC75240002;
 Fri, 10 Jan 2020 14:32:38 +0000 (UTC)
Date: Fri, 10 Jan 2020 15:32:38 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 03/16] dt-bindings: atmel-tcb: add microchip,<chip>-tcb
Message-ID: <20200110143238.GG1027187@piout.net>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
 <1578488123-26127-4-git-send-email-claudiu.beznea@microchip.com>
 <20200110134001.GD1027187@piout.net>
 <da99fbce-8341-19d2-12c9-144564d70726@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da99fbce-8341-19d2-12c9-144564d70726@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_063247_835034_3109EFD8 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, vigneshr@ti.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, pmeerw@pmeerw.net,
 miquel.raynal@bootlin.com, lee.jones@linaro.org, linux-rtc@vger.kernel.org,
 lars@metafoo.de, richard@nod.at, Ludovic.Desroches@microchip.com,
 wg@grandegger.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Tudor.Ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, netdev@vger.kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, broonie@kernel.org, knaack.h@gmx.de,
 dmaengine@vger.kernel.org, Eugen.Hristev@microchip.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/01/2020 14:29:27+0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 10.01.2020 15:40, Alexandre Belloni wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 08/01/2020 14:55:10+0200, Claudiu Beznea wrote:
> >> Add microchip,<chip>-tcb to DT bindings documentation. This is for
> >> microchip,sam9x60-tcb.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >> ---
> >>  Documentation/devicetree/bindings/mfd/atmel-tcb.txt | 5 +++--
> >>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
> >> index c4a83e364cb6..e1713e41f6e0 100644
> >> --- a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
> >> +++ b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
> >> @@ -1,6 +1,7 @@
> >>  * Device tree bindings for Atmel Timer Counter Blocks
> >> -- compatible: Should be "atmel,<chip>-tcb", "simple-mfd", "syscon".
> >> -  <chip> can be "at91rm9200" or "at91sam9x5"
> >> +- compatible: Should be "atmel,<chip>-tcb", "microchip,<chip>-tcb",
> >> +  "simple-mfd", "syscon".
> >> +  <chip> can be "at91rm9200", "at91sam9x5" or "sam9x60"
> > 
> > atmel,sam9x60-tcb, microchip,at91rm9200-tcb and microchip,at91sam9x5-tcb
> > are not allowed and the documentation should reflect that.
> 
> OK! I'll double check it.
> 
> > 
> > It would probably be easier to do that on top of the yaml conversion
> > here:
> > https://lore.kernel.org/lkml/20191009224006.5021-2-alexandre.belloni@bootlin.com/
> 
> I don't see this integrated in next-20200110. Am I looking at the wrong branch?
> 

I had a few comments and I need to resend.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
