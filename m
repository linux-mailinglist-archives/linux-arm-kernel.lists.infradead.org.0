Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2592B1F9FF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 21:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=psVdAJ1Bf7loPXRj92a+rbsd0/bxH3Fh0W6tqhidRJc=; b=QrCJ0mJ7+JGQAJUmX3Ok2swYI
	N59bBLZMDEG9XE5p4a5nt1kyOJEtSy+cMcUDCQcs3leOdo69pkFzNCguIIEO7HJmATUAtq02wgte1
	Dt7w0LnxmOFWE3S5FcRqCyAhJ3X28LMw5q86kq/EJCTLLgd5w0yh6Mf8/GG5rk5GAX/K1dNyIxMZ1
	VxYP+dVZGGphOOvX/M5Ft8lZXASpY+NG4rNGDkOGE9RC//N8Z1CGy2zXP1roJkvTjINwEVVDL/180
	pXGiqFVbtp8w+6CNGJKHdtVfoG7HbpckfordWX+p8TcgbaJtLIl/zYxYFbHnrwtXfXv+XK8cuFr0A
	5ztbAzSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkuUr-0003QI-3a; Mon, 15 Jun 2020 19:10:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkuUT-0003Ly-97; Mon, 15 Jun 2020 19:09:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 087711FB;
 Mon, 15 Jun 2020 12:09:52 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2D9C3F6CF;
 Mon, 15 Jun 2020 12:09:49 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Lukas Wunner <lukas@wunner.de>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608114148.4bau4mdcvwgf25ut@wunner.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3d4fd3f9-9bde-90a8-bef5-9fc97cc9b363@arm.com>
Date: Mon, 15 Jun 2020 20:09:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608114148.4bau4mdcvwgf25ut@wunner.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_120953_362236_D35B335A 
X-CRM114-Status: GOOD (  20.44  )
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
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mark Brown <broonie@kernel.org>,
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

On 2020-06-08 12:41, Lukas Wunner wrote:
> On Mon, Jun 08, 2020 at 12:11:11PM +0100, Robin Murphy wrote:
>> And all in code that has at least one obvious inefficiency left on
>> the table either way.
> 
> Care to submit a patch to overcome that inefficiency?

I'll have a quick go, but without any way to measure performance impact 
(or even test for correctness) I don't fancy going too deep based purely 
on disassembly and ARM11 cycle timings.

>> This thread truly epitomises Knuth's "premature optimisation" quote... ;)
> 
> The thread came about because it can be determined at compile time
> whether the interrupt is going to be shared:

...which is exactly my point - "because it can be" is anything but proof 
that avoiding a trivial check makes enough measurable difference to 
justify putting in the effort to do so.

> On the BCM2835 (Raspberry Pi 1), CONFIG_ARCH_MULTI_V6 is set and this
> SoC doesn't have multiple bcm2835-spi instances, so no shared interrupt.
> 
> The question is how to discern BCM2836/BCM2837 (Raspberry Pi 2/3), which
> do not have multiple instances, and BCM2711 (Raspberry Pi 4) which does.

Hmm, how much relative importance does that have? On a 700MHz ARM11 it's 
obviously desirable to spend as little time in the IRQ handler as 
possible in order to have time left to do anything else, but on the 
other SoCs even if the IRQ remains permanently asserted it can still 
only consume 25% of the available CPU capacity, at which point the 
impact of 2-3 cycles either way at 1GHz+ seems pretty much immeasurable.

> The Raspberry Pi Foundation compiles BCM2711 kernels with CONFIG_ARM_LPAE=y,
> but Florian considered that kludgy as a discriminator and opted for
> runtime-detection via the compatible string instead.  If you've got
> a better idea please come forward.
> 
> Is "optimize shared IRQ support away if IS_ENABLED(CONFIG_ARCH_MULTI_V6),
> else leave it in" the best we can do?

In all honesty I'm starting to think it seriously might be :)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
