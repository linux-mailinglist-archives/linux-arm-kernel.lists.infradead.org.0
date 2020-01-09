Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CED135EBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6AI5cj9rysm9kai2v1lmXr8O7fTa2SyXsGX651NKYQQ=; b=Ju0FYW6OmQnZEVkad9MwADC2E
	lin563WyDpGIwb7lK6WQ5A48RABklDveCmJjePgtnrgTw9GtiEcLCuugdFIPKw5nyWlSI1DzEM0zO
	MAtDY92mgAa2S1W+/egF1dEpGyB6FVEAJpJQlRqAl13Afi3avRzQHGqh+EADa++cxEl/TmxAuhrAh
	QTuQN2X8lfY9oBv4JavHUfkLb+t1E/G7sKjlajiiIr6smkUa8qRuPfct0MwtWhjnmaUJloYBpk8O1
	zFjbl1BLVxulBTIqp6wNuUw0FbkR2PW8ksvXCS0pMjJhnRaKLf/w/kyxaLwfdkARE6jgiMKMXjHZQ
	xuNljVAHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipb3c-0001el-3j; Thu, 09 Jan 2020 16:53:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipb3U-0001eI-Cj; Thu, 09 Jan 2020 16:53:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4EBE1FB;
 Thu,  9 Jan 2020 08:53:07 -0800 (PST)
Received: from [10.1.38.29] (e122027.cambridge.arm.com [10.1.38.29])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D45A3F703;
 Thu,  9 Jan 2020 08:53:04 -0800 (PST)
Subject: Re: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator
 for the GPU
To: Mark Brown <broonie@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-5-drinkcat@chromium.org>
 <20200108132302.GA3817@sirena.org.uk>
 <CANMq1KBo8ND+YDHaCw3yZZ0RUr69-NSUcVbqu38DuZvHUB-LFw@mail.gmail.com>
 <09ddfac3-da8d-c039-92a0-d0f51dc3fea5@arm.com>
 <20200109162814.GB3702@sirena.org.uk>
From: Steven Price <steven.price@arm.com>
Message-ID: <a40baddb-cbab-d8fc-3fd9-0582f1b5b24e@arm.com>
Date: Thu, 9 Jan 2020 16:53:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200109162814.GB3702@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_085308_518947_2B80410C 
X-CRM114-Status: GOOD (  28.99  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/2020 16:28, Mark Brown wrote:
> On Thu, Jan 09, 2020 at 02:14:42PM +0000, Steven Price wrote:
>> On 08/01/2020 22:52, Nicolas Boichat wrote:
> 
>>> That'd be a bit awkward to match, though... Currently all bifrost
>>> share the same compatible "arm,mali-bifrost", and it'd seem
>>> weird/wrong to match "mediatek,mt8183-mali" in this driver? I have no
>>> idea if any other Mali implementation will require a second regulator,
>>> but with the MT8183 we do need it, see below.
> 
> This doesn't sound particularly hard, just new.  Plenty of other devices
> have quirks done based on the SoC they're in or the IP revision, this
> would just be another of those quirks.
> 
>>> Well if devfreq was working (see patch 7
>>> https://patchwork.kernel.org/patch/11322851/ for a partial
>>> implementation), it would adjust both mali and sram regulators, see
>>> the OPP table in patch 2
>>> (https://patchwork.kernel.org/patch/11322825/): SRAM voltage needs to
>>> be increased for frequencies >=698Mhz.
> 
>>> Now if you have some better idea how to implement this, I'm all ears!
> 
> Set a flag based on the compatible, then base runtime decisions off
> that.
> 
>> I'm not sure if it's better, but could we just encode the list of
>> regulators into device tree. I'm a bit worried about special casing an
>> "sram" regulator given that other platforms might have a similar
>> situation but call the second regulator a different name.
> 
> Obviously the list of regulators bound on a given platform is encoded in
> the device tree but you shouldn't really be relying on that to figure
> out what to request in the driver - the driver should know what it's
> expecting. 

 From a driver perspective we don't expect to have to worry about power 
domains/multiple regulators - the hardware provides a bunch of power 
registers to turn on/off various parts of the hardware and this should 
be linked (in hardware) to a PDC which sorts it out. The GPU/PDC handles 
the required sequencing. So it *should* be a case of turn power/clocks 
on and go.

However certain integrations may have quirks such that there are 
physically multiple supplies. These are expected to all be turned on 
before using the GPU. Quite how this is best represented is something 
I'm not sure about.

> Bear in mind that getting regulator stuff wrong can result
> in physical damage to the system so it pays to be careful and to
> consider that platform integrators have a tendency to rely on things
> that just happen to work but aren't a good idea or accurate
> representations of the system.  It's certainly *possible* to do
> something like that, the information is there, but I would not in any
> way recommend doing things that way as it's likely to not be robust.
> 
> The possibility that the regulator setup may vary on other platforms
> (which I'd expect TBH) does suggest that just requesting a bunch of
> supply names optionally and hoping that we got all the ones that are
> important on a given platform is going to lead to trouble down the line.

Certainly if we miss a regulator the GPU isn't going to work properly 
(some cores won't be able to power up successfully). However at the 
moment the driver will happily do this if someone provides it with a DT 
which includes regulators that it doesn't know about. So I'm not sure 
how adding special case code for a SoC would help here.

> Steve, please fix your mail client to word wrap within paragraphs at
> something substantially less than 80 columns.  Doing this makes your
> messages much easier to read and reply to.

Sorry about that - I switched to my laptop to escape the noisy work 
going on outside the office, and apparently that was misconfigured. 
Hopefully fixed now, thanks for letting me know!

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
