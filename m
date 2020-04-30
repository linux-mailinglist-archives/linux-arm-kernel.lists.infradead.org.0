Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F26E1BFBA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORP4WbWquYrF2+muGlq1Bg/oXcm8cml1B6o3Beo9GGM=; b=JqauQb9Wbac2gk
	I4DZ14UwMbPsolHsB9kfmQcGzo5DRYW8kkJzJ5vc3FM5lc30JPV2ZRJQc0lmL5BFNr4uVJ/T3C0MJ
	4GyH2DhJTNRg5z4cUag37352Sw9kpJ5NhnJ045ECAJFn7CQ0B7b1k00LWYUBjh36HZAM7FnAl2Ld4
	BbzrkuDWNO3+WUcaLs4tOgEj6x6G5GkArS0hKYPXDfR7508Ielb7+BXPPI0oaW2OsUVMIvi3QQj6E
	y8AjtOSyTCB7Qv3h6iojapdgSZwuSiKQWanHbK4M0057C1PNZ7BG48WmM7WstMokxOZktWLePgMr/
	xxkmf76f7hRKtRqNqJdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9kM-0003bq-63; Thu, 30 Apr 2020 14:01:02 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9k3-0003Ws-KP
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:00:46 +0000
Received: by mail-oi1-f195.google.com with SMTP id j16so5266023oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:00:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4SqKDcgFBHx1L7Er/7o6lUHlh3wWzthDwvJZwo5hrJU=;
 b=cngkAM4JZWP1XnAhF0K/omRFReM+Zxv7SEUi1ZlzX3ETg/evkryrLX/qd8k5ftaNds
 HxiUHtHyxO9ZmiAyplqKGxdno6kMkXHP7t+Ly+YRSGmRf96cwvU+/B5xJLcdup9OOyvc
 /96A99F+WnRqHCFNdv53T/hmnD71JeEvMoHMw+gFhLvdLtRwIlXCcCWlYnKISUVC+ZUL
 rO62s4F0Yg15O6l09gLcWBocITZUdZKg+vushgrFEzYEz+WFeOMphGgSfJbXAw01gu+7
 HJqSC2DczPu9PLNP4PMlevYgorfwbqMda3018FPvMyl8I5+B19DyQR9xU/A1ZUANA3+K
 RoRw==
X-Gm-Message-State: AGi0Pua4+33PuT5Wv4x6RrEhGK8nNp/qR+4vv8h1gz5bYDJlrOTrG+Uo
 oAA/rCIAWaVL2/IMr9VbEhFfv0I=
X-Google-Smtp-Source: APiQypK+NEro6nmq5Ju0kr11u0dYdZk562OwLmfEc6Rdsg37blDy9Pox4kBxZ7K1FWgojRgFDGj0HA==
X-Received: by 2002:aca:d684:: with SMTP id n126mr1810974oig.173.1588255242401; 
 Thu, 30 Apr 2020 07:00:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h137sm2698oib.33.2020.04.30.07.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:00:41 -0700 (PDT)
Received: (nullmailer pid 20979 invoked by uid 1000);
 Thu, 30 Apr 2020 14:00:40 -0000
Date: Thu, 30 Apr 2020 09:00:40 -0500
From: Rob Herring <robh@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent
 and clocksource support
Message-ID: <20200430140040.GA8363@bogus>
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-3-tony@atomide.com>
 <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
 <20200427143144.GQ37466@atomide.com>
 <29f39839-b3ed-cac3-1dea-c137286320b1@linaro.org>
 <20200427152329.GR37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427152329.GR37466@atomide.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070043_667074_9125BE0C 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 08:23:29AM -0700, Tony Lindgren wrote:
> * Daniel Lezcano <daniel.lezcano@linaro.org> [200427 15:03]:
> > On 27/04/2020 16:31, Tony Lindgren wrote:
> > > Hi,
> > > 
> > > * Daniel Lezcano <daniel.lezcano@linaro.org> [200427 09:19]:
> > >> On 17/04/2020 18:55, Tony Lindgren wrote:
> > >>> --- a/Documentation/devicetree/bindings/timer/ti,timer.txt
> > >>> +++ b/Documentation/devicetree/bindings/timer/ti,timer.txt
> > >>> @@ -14,6 +14,8 @@ Required properties:
> > >>>  			ti,omap5430-timer (applicable to OMAP543x devices)
> > >>>  			ti,am335x-timer	(applicable to AM335x devices)
> > >>>  			ti,am335x-timer-1ms (applicable to AM335x devices)
> > >>> +			ti,dmtimer-clockevent (when used as for clockevent)
> > >>> +			ti,dmtimer-clocksource (when used as for clocksource)
> > >>
> > >> Please, submit a separate patch for this.
> > >>
> > >> Before you resend as is, this will be nacked as clocksource / clockevent
> > >> is not a hardware description but a Linux thing.
> > >>
> > >> Finding a way to characterize that from the DT is an endless discussion
> > >> since years, so I suggest to use a single property for the timer eg
> > >> <ti,dmtimer> and initialize the clocksource and the clockevent in the
> > >> driver.
> > > 
> > > Hmm good point. We still need to specify which timer is a clocksource
> > > and which one a clockevent somehow.
> > > 
> > > Maybe we could have a generic properties like the clock framework such as:
> > > 
> > > assigned-system-clocksource
> > > assigned-system-clockevent
> > 
> > I think that will be the same problem :/
> 
> Seems like other SoCs have the same issue too with multiple timers
> to configure.
> 
> > Is it possible to check the interrupt for the clockevent ? A timer node
> > with the interrrupt is the clockevent, without it is a clocksource.
> 
> OK let's try that. So the configuration would become then:
> 
> compatible = "ti,dmtimer;	/* reserved for system timers */
> /delete-property/interrupts;	/* ok so it's a clocksource */
> /delete-property/interrupts-extended;

That's not really what was meant.

Let's say you have N timers. Either every timer is exactly the same and 
the OS can just assign them however it wants or there is some difference 
in the h/w making certain timer better for certain functions. Describe 
that difference. It could be clock rate, number of counter bits, always 
on, secure mode access only, has or doesn't have output compare or input 
capture, etc.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
