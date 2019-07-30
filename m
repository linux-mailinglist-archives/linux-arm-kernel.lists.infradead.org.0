Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20787AEE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MClcAW26wkJT79hl9isw6TTPcweWxjePxnwVsiz+V0=; b=lqdzk7QVZ9udA2
	KGkUCzFRMlEbB8YscYCr8DGOYPuH4hXglMdc66NMgKBCs7hM4zYik00fEzoy+widdNU8cOO52KMc2
	Bq/5MRnPk0hIwV38TzZ9W8GLNCX9vCcWSmg1aZpcrsS8YgECFey33BsfwRhIRq5e98cFHfBHE4I7S
	crUoZFAyPGsupebITM28iLbtZzpOd+iw2uOl2fTN1LF5dRhQ+6DYJ5ou08TqDMHHWzTh7nENjF7/s
	TF/TphGlzdEgAFZr18iqZtsI+Zn8/ym6adYWcd/A6xCcofY1g/OHkEJeeqM2W6Xn7VxZTEw3epu/N
	SrV/zisC9r+UdbnP+y6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVZp-0001rZ-TN; Tue, 30 Jul 2019 17:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVZg-0001gO-ES
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:06:10 +0000
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68A5A206E0;
 Tue, 30 Jul 2019 17:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564506367;
 bh=4s/EZAcoJfguA/Bo8YNhAMgb7OUN+R18I6hJrEQh8s0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JQmt+mrcd2TJQZ+w8XTtlXwYzUssuVo6Oc3BVg6o2sZ1vWN4zAoG6szsJ0WV1GNv6
 Y9iP2cFXoArzuIIJ/605I0/bYLv3Z0N91zBpNN80zL7jsEydZXjQQCQCCqR7h9VykF
 2heZkCq7ytm56EHJ56aojmi0QsEXEJQuDSf9H0u0=
Date: Tue, 30 Jul 2019 19:06:01 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190730170601.a7ei43wku6jsjanu@flea>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <173825848.1FZsmuHfpq@jernej-laptop>
 <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
 <2452836.v7ux4bnEjb@jernej-laptop>
 <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_100608_527473_CF1D3571 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:09:00AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Rob and Frank,
>
> Maxime and Jernej on one side and me on the other cannot agree about a
> detail in the change to the bindings here. I'm trying to objectively
> summarize the situation for you to help deciding what is the right thing
> to do here.
>
> TLDR: The sun4i pwm driver is extended to support a new variant of that
> device on the H6 SoC. Compared to the earlier supported variants
> allwinner,sun50i-h6-pwm on H6 needs to handle a reset controller and an
> additional clock.
>
> The two positions are:
>
>  - We need a new compatible because only then the driver and/or the dt
>    schema checker can check that each "allwinner,sun50i-h6-pwm" device
>    has a reset property and a "bus" clock; and the earlier variants
>    don't.

There is two topics here, really. The binding itself really must have
those properties as required.

You had an analogy before that we shouldn't really do that, since it
would be verification and that it would be similar to checking whether
the register range was right. This analogy isn't correct, a better one
would be checking that the register range exists in the first place.

Indeed, if you don't have a register range, you have no register to
write to, and that's a showstopper for any driver. I'm pretty sure we
all agree on that. But on those SoCs, like Chen-Yu said, having no
resets or clocks properties result in an equally bad result: either
any write to that device is completely ignored (missing reset), or the
system completely (and silently) locks up (missing bus clock).

We *have* to catch that somehow and not let anything like that happen.

That being said, we can't really validate that the clock pointed is
the right one, just like we can't really check that the register range
is the proper one. Or rather, we could, but it's completely
impractical and we do agree on that as well.

Having the bus clock and reset line being required however is only a
few lines in the binding though, and is very practical.

>  - The driver can be simpler and the device specific knowledge is only
>    in a single place (the dt) if the device tree is considered valid and
>    a reset property and "bus" clock is used iff it's provided in the
>    device tree without additional comparison for the compatible.

And now we have the discussion on how it's implemented in a
driver. Since it's pretty cheap to implement (only a couple of lines:
two for the if block, one for the additional field in the structure,
one for each SoC using that) and have huge benefits (not silently
locking up the system at boot), then I'd say we should go for it.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
