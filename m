Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567731F9E81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Jz3uN0RQYYKwlAXL4J72vLOZuPajkiowqTwlcLvTJ8=; b=imUayh8gaE1kHXc05eO0cYDJh
	ICOjZDqGmsufQbmFsQkR8ZqtlhCLLFSFo6LRcluGwME4/Fb7/PYTuxCn9v9Wd5aj1e6UBSqs3mzH9
	F/18DpQnKMxlDI76/WKPObEOIQCvXgWJxlWXfPGB8ZZPRDmux54OEtbx/GswI/Oaa9kDsCjUVgh+b
	NtmkWLq+M7HzufXpL613Qluv2GxFNmZjPoVxn77Xoj8MFO1XqZwCxctTTlwDr6PYY6eJCoh9zo2km
	YRwTDMN7j8L7a5Wizfinr2pflsEIlGP1A7H3dM+Jj+jd3f2WGQTY9a/YQwtIYRAjHVQ+iHtCO8nMx
	lxFfJqSIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksyA-0008Es-L7; Mon, 15 Jun 2020 17:32:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksxn-00082V-2X; Mon, 15 Jun 2020 17:32:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B79C1F1;
 Mon, 15 Jun 2020 10:32:02 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E3FC3F73C;
 Mon, 15 Jun 2020 10:32:00 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Florian Fainelli <f.fainelli@gmail.com>, Mark Brown <broonie@kernel.org>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608112840.GC4593@sirena.org.uk>
 <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
 <20200615170031.GA4447@sirena.org.uk>
 <692bc94e-d574-e07a-d834-c0d569e87bba@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2f354ed0-9fb7-59ea-ddd1-78703d9c818e@arm.com>
Date: Mon, 15 Jun 2020 18:31:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <692bc94e-d574-e07a-d834-c0d569e87bba@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_103203_160403_D6E3A1F8 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-15 18:04, Florian Fainelli wrote:
> 
> 
> On 6/15/2020 10:00 AM, Mark Brown wrote:
>> On Mon, Jun 15, 2020 at 09:34:58AM -0700, Florian Fainelli wrote:
>>
>>> OK, so this has been dropped for spi/for-next right? How do we move from
>>> there?
>>
>> Well, I actually have it queued up for applying so unless I pull it
>> before my scripts get that far through the stuff I queued over the merge
>> window it'll go in (I dropped it due to it not being a bugfix).  If it
>> were me I'd go with the two instruction hit from checking the flag TBH
>> but otherwise I guess __always_inline should work for compilers that
>> misoptimize.  None of this is getting in the way of the framework so if
>> everyone involved in the driver is happy to spend time optimising it
>> and dealing with the fragility then it's fine by me.
> 
> OK, how about I send you an increment patch (would a fixup be okay?)
> that adds __always_inline since we know from this thread that some
> compilers may mis-optimize the function inlining?

Now that I've been inclined to go and look up the documentation, are we 
sure this so-very-contentious check is even correct? From my reading of 
things we're checking whether the RXR interrupt function is *enabled*, 
which still says nothing about whether either condition for the 
interrupt being *asserted* is true (RXR = 1 or DONE = 1). Thus if more 
than one SPI instance is active at once we could still end up trying to 
service an IRQ on a controller that didn't raise it.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
