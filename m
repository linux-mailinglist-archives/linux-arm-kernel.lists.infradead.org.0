Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241EE136BFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7L1kmfuRjbC+YOe1idk4MfScbywd7D7R4ZMymg/zmM4=; b=Eb3CRMe92ewcKA
	1QrjB5wK6jt2PX/pTQLwnMMDGdTgZexYbcvyfd405tAUw87DmWIsxotF7jCiQEX5iyMqiD62VeL5X
	xka0JKI8i9WqmGKbS6J595oy5i5epbwQznq9Z9am5HCVXLQYy6aNMUnaRgTWOgsSDC+ncfgASKPWv
	FyWVFJoLuzzL56nqK1/Sco2l/Qb/9tULylTzld/ZonK9E6gd3chRoyuFmBhY+cizZzFuQIk7V+buN
	z3HrAjhpr5zZ/6EOkF4GCgSOb9I4v5evYH73VCeGTBY/JW/fxVzM7b/AbCl/wXDzVlGjqT5nzVf3Y
	u6LK7qONXKcpRli9zGxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsVL-0005JO-I4; Fri, 10 Jan 2020 11:31:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsVC-0005IQ-Px; Fri, 10 Jan 2020 11:30:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19FED1063;
 Fri, 10 Jan 2020 03:30:53 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4776C3F534;
 Fri, 10 Jan 2020 03:30:51 -0800 (PST)
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To: Mark Brown <broonie@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
 <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
 <09ddfac3-da8d-c039-92a0-d0f51dc3fea5@arm.com>
 <20200109162814.GB3702@sirena.org.uk>
 <a40baddb-cbab-d8fc-3fd9-0582f1b5b24e@arm.com>
 <20200109194930.GD3702@sirena.org.uk>
From: Steven Price <steven.price@arm.com>
Message-ID: <90993401-6896-bf95-a15a-d99c465ec12a@arm.com>
Date: Fri, 10 Jan 2020 11:30:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200109194930.GD3702@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_033054_931700_19937681 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/2020 19:49, Mark Brown wrote:
> On Thu, Jan 09, 2020 at 04:53:02PM +0000, Steven Price wrote:
>> On 09/01/2020 16:28, Mark Brown wrote:
>>> On Thu, Jan 09, 2020 at 02:14:42PM +0000, Steven Price wrote:
> 
>>>> I'm not sure if it's better, but could we just encode the list of
>>>> regulators into device tree. I'm a bit worried about special casing an
>>>> "sram" regulator given that other platforms might have a similar
>>>> situation but call the second regulator a different name.
> 
>>> Obviously the list of regulators bound on a given platform is encoded in
>>> the device tree but you shouldn't really be relying on that to figure
>>> out what to request in the driver - the driver should know what it's
>>> expecting.
> 
>> From a driver perspective we don't expect to have to worry about power
>> domains/multiple regulators - the hardware provides a bunch of power
>> registers to turn on/off various parts of the hardware and this should be
>> linked (in hardware) to a PDC which sorts it out. The GPU/PDC handles the
>> required sequencing. So it *should* be a case of turn power/clocks on and
>> go.
> 
> Ah, the well abstracted and consistent hardware with which we are all so
> fortunate to work :) .  More seriously perhaps the thing to do here is
> create a driver that provides a soft PDC and then push all the special
> case handling into that?  It can then get instantiated based on the
> compatible or perhaps represented directly in the device tree if that
> makes sense.

That makes sense to me.

>> However certain integrations may have quirks such that there are physically
>> multiple supplies. These are expected to all be turned on before using the
>> GPU. Quite how this is best represented is something I'm not sure about.
> 
> If they're always on and don't ever change then that's really easy to
> represent in the DT without involving drivers, it's when you need to
> actively manage them that it's more effort.

Sorry, I should have been more clear. They are managed as a group - so
either the entire GPU is powered off, or powered on. There's no support
in Panfrost or mali_kbase for attempting to power part of the GPU.

>>> Bear in mind that getting regulator stuff wrong can result
>>> in physical damage to the system so it pays to be careful and to
>>> consider that platform integrators have a tendency to rely on things
>>> that just happen to work but aren't a good idea or accurate
>>> representations of the system.  It's certainly *possible* to do
>>> something like that, the information is there, but I would not in any
>>> way recommend doing things that way as it's likely to not be robust.
> 
>>> The possibility that the regulator setup may vary on other platforms
>>> (which I'd expect TBH) does suggest that just requesting a bunch of
>>> supply names optionally and hoping that we got all the ones that are
>>> important on a given platform is going to lead to trouble down the line.
> 
>> Certainly if we miss a regulator the GPU isn't going to work properly (some
>> cores won't be able to power up successfully). However at the moment the
>> driver will happily do this if someone provides it with a DT which includes
>> regulators that it doesn't know about. So I'm not sure how adding special
>> case code for a SoC would help here.
> 
> I thought this SoC neeed to vary the voltage on both rails as part of
> the power management?  Things like that can lead to hardware damage if
> we go out of spec far enough for long enough - there can be requirements
> like keeping one rail a certain voltage above another or whatever.

Yes, you are correct. My concern is that a DT which specifies a new
regulator (e.g. "sram2") would be accepted by an old kernel (because it
wouldn't know to look for the new regulator) but wouldn't know to
control the regulator. It could then create a situation which puts the
board out of spec - potentially in a damaging way. Hence I'd like to
express the regulator structure in such a way that old kernels wouldn't
"half-work". Your "soft-PDC" approach would seem to fit that requirement.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
