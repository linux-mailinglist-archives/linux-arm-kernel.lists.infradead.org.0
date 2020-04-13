Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4701A654C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADvSU2QbVCOW2EMGEx2iCw2HpjPd40dnk8rqxFFHwl8=; b=TQ+Ac/NHX7Vvws
	iY+mR74/fkzvbgdOKvVOXCSNYjEwmRMfXVcxfyaFNgf2buINgYkqPIxOFcAPxQb3V5o8/d2d4jYmc
	skkBHQVK09ZmVkkwDoiJQ1kRKw4UBy7+ryUiIO2PHgNnBixFZPMk27P8tFm0DF4O93u8I45x/guHL
	7My++5VGALGkrv/srsZzHwL4y5U9p4luIxvssmiyHlcLm23ayy+/4S0FDgok/9+ESyTTAUWskuJgQ
	sg835pGd95XfOB7rKOOQ5jSViA200l+SjfVSvDlydH3zo0S9l+nZ85Cjdzh7pug4vPVLPWM0gle9g
	oK5neewvDlQFQ4hLS4Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwXF-0003Qv-2I; Mon, 13 Apr 2020 10:41:49 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwX7-0003Pa-UO
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:41:43 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EF8DB200005;
 Mon, 13 Apr 2020 10:41:32 +0000 (UTC)
Date: Mon, 13 Apr 2020 12:41:32 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 5/5] rtc: at91sam9: add microchip,sam9x60-rtt
Message-ID: <20200413104132.GD3628@piout.net>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-6-git-send-email-claudiu.beznea@microchip.com>
 <20200410174113.GZ3628@piout.net>
 <fa6366a0-e1a7-a7b3-e743-2517437b2b3d@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa6366a0-e1a7-a7b3-e743-2517437b2b3d@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_034142_115148_12D2C445 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/04/2020 08:50:02+0000, Claudiu.Beznea@microchip.com wrote:
> part of 1/5 is still necessary.
> 

indeed.

> Regarding the fallback to "atmel,at91sam9260-rtt" I am aware of that. I
> chose this approach because this IP is a bit different than the one with
> "atmel,at91sam9260-rtt" compatible, meaning it has a features that the old
> one has not. I'm talking about [1] which I cannot see on a SAM9G45 [2]
> where RTT IP uses "atmel,at91sam9260-rtt" as compatible.
> 
> Is true it may be necessary in the future when new features may be
> implemented. Taking this into account, would you like to get rid of the new
> compatible in code and keep it only in device tree?
> 

What I said is not that the new compatible is not necessary at all but
that it can be avoided in the aic code.

> [1]
> http://ww1.microchip.com/downloads/en/DeviceDoc/SAM9X60-Data-Sheet-DS60001579B.pdf#_OPENTOPIC_TOC_PROCESSING_d137e64502
> [2]
> http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-6438-32-bit-ARM926-Embedded-Microprocessor-SAM9G45_Datasheet.pdf
> 
> > 
> > I think 2/5 may be useful in the future but as far as the aic fixup
> > is concerned, both IPs are identical.
> > 
> >>  - reg: should encode the memory region of the RTT controller
> >>  - interrupts: rtt alarm/event interrupt
> >>  - clocks: should contain the 32 KHz slow clk that will drive the RTT block.
> >> --
> >> 2.7.4
> >>
> > 
> > --
> > Alexandre Belloni, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
