Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A7F13A829
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0HoLrgR80BIKAx3z2vwAxs4V1ucfCuWaJp4tCFSUvo=; b=MO3RCxspdDYAN7
	qmp6F3FQI4efFFYkwvvB9VaxtDbfe6BtUMjhFO7+soexG6XtoREB8dxxD+RDkUTdbzlv5M80JGntl
	MtAIyggpK7HNB8EwxMoritBWaUs6uZyKCZaEWVS/YC0Ob/NmJApV6LrxJ6vy8yEFHUrAuZmsCSjv2
	o0LSdYPwIgPae1fwhKgqZMB0IcAzy1EDx1ADZkp+x31oviZr9DEUQbw7lInMQQI8XtTY2YKZCYYrD
	yh8LyrNo+mELCOhT3EW0phXltgzqgwSR+ZJvlLK4vwEyXp4OI4JNAhDNporKj0JnIyyWuZyerBnJf
	PSDn0R+b7GfpbjtNS7bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKCQ-0003Cu-Ad; Tue, 14 Jan 2020 11:17:30 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKCC-0003CI-6P
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:17:22 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id C419540008;
 Tue, 14 Jan 2020 11:17:04 +0000 (UTC)
Date: Tue, 14 Jan 2020 12:17:04 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 4/7] dt-bindings: atmel-usart: remove wildcard
Message-ID: <20200114111704.GN3137@piout.net>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-5-git-send-email-claudiu.beznea@microchip.com>
 <20200114104237.GM3137@piout.net>
 <f3c4d460-cff6-2e14-428a-a732a6bffe38@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3c4d460-cff6-2e14-428a-a732a6bffe38@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_031717_865667_CFF4D8F6 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, devicetree@vger.kernel.org,
 richard.genoud@gmail.com, radu_nicolae.pirea@upb.ro,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-spi@vger.kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/01/2020 11:10:14+0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 14.01.2020 12:42, Alexandre Belloni wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 14/01/2020 12:23:14+0200, Claudiu Beznea wrote:
> >> Remove chip whildcard and introduce the list of compatibles instead.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >> ---
> >>  Documentation/devicetree/bindings/mfd/atmel-usart.txt | 7 +++----
> >>  1 file changed, 3 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/mfd/atmel-usart.txt b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
> >> index 699fd3c9ace8..778e8310606a 100644
> >> --- a/Documentation/devicetree/bindings/mfd/atmel-usart.txt
> >> +++ b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
> >> @@ -1,10 +1,9 @@
> >>  * Atmel Universal Synchronous Asynchronous Receiver/Transmitter (USART)
> >>
> >>  Required properties for USART:
> >> -- compatible: Should be "atmel,<chip>-usart" or "atmel,<chip>-dbgu"
> >> -  The compatible <chip> indicated will be the first SoC to support an
> >> -  additional mode or an USART new feature.
> >> -  For the dbgu UART, use "atmel,<chip>-dbgu", "atmel,<chip>-usart"
> >> +- compatible: Should be one of the following:
> >> +     - "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
> >> +     - "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"
> > 
> > All the uarts are not dbgus, so this need to be:
> > 
> >  - "atmel,at91rm9200-usart"
> >  - "atmel,at91sam9260-usart"
> >  - "atmel,at91rm9200-dbgu", "atmel,at91rm9200-usart"
> >  - "atmel,at91sam9260-dbgu", "atmel,at91sam9260-usart"
> 
> Ok!
> 
> > 
> > Also, you need to update drivers/soc/atmel/soc.c
> 
> OK. Did you refer to CIDR, EXID registers? They are at the same offsets as
> for the old products. So we can rely on old compatible for them. Is this OK?
> 

Then, what is the point of adding microchip,sam9x60-dbgu ?


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
