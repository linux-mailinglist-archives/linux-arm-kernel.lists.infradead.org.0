Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B291EF98E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QWdw/hk0lPaB5sDIMzW2L7gLdyHgf+a+KJ2wY6+aUT4=; b=LrH3PF/YVf79NFSg7znuIeKRi
	K+P78ixFrA1litD9Xhu8wtjyjpBI+onk/mq5Z0DITN5POE8eElmcGWSgL5yf15mMXFxfxlLgwigez
	NCTfpY2uAY/8inUD/aAELqsOtcNEbRnSvor2qtPWX9h5XGpFIOJdTRHqE6VTYvJZUqTOCVvPb3gtC
	KuCbZEkb4Vhw8QGBuaQWOjewxjGMvqKnIJQKYkayno2coI2T+bhEN6nQKV1Q/EUj3EV154WGtKb+B
	0nX7QlJEQYzL+dS3PRh1pgHv+QTArinMuh0rvbJKShPxaMyoBFXJR2wdPp0fSi086SIcaYjU0oEhC
	SvMoCGxiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCgZ-0008Rc-Sa; Fri, 05 Jun 2020 13:47:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCgT-0008R0-2g; Fri, 05 Jun 2020 13:46:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E77131B;
 Fri,  5 Jun 2020 06:46:56 -0700 (PDT)
Received: from [10.57.10.23] (unknown [10.57.10.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E0C83F305;
 Fri,  5 Jun 2020 06:46:53 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Mark Brown <broonie@kernel.org>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
Date: Fri, 5 Jun 2020 14:46:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200605132037.GF5413@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_064657_163305_2A59B8DC 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, lukas@wunner.de,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-05 14:20, Mark Brown wrote:
> On Fri, Jun 05, 2020 at 12:34:36PM +0100, Robin Murphy wrote:
>> On 2020-06-04 22:28, Florian Fainelli wrote:
> 
>>> For the BCM2835 case which is deemed performance critical, we would like
>>> to continue using an interrupt handler which does not have the extra
>>> comparison on BCM2835_SPI_CS_INTR.
> 
>> FWIW, if I'm reading the patch correctly, then with sensible codegen that
>> "overhead" should amount to a bit test on a live register plus a not-taken
>> conditional branch - according to the 1176 TRM that should add up to a
>> whopping 2 cycles. If that's really significant then I'd have to wonder
>> whether you want to be at the mercy of the whole generic IRQ stack at all,
>> and should perhaps consider using FIQ instead.
> 
> Yes, and indeed the compiler does seem to manage that.  It *is* non-zero
> overhead though.

True, but so's the existing level of pointer-chasing indirection that 
with some straightforward refactoring could be taken right out of the 
critical path and confined to just the conditional complete() call. 
That's the kind of thing leaving me unconvinced that this is code where 
every single cycle counts ;)

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
