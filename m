Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540225508C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+IygMnm+5o7HICP772PJmDFbBtIE7HZuhG18xH4DDw=; b=PIloQGd4iwXMbc
	VbsYGxOOOXTiwdBtobDqQ7dxN5Ce/kFM3X2IXGX/BKmgHaWBZqR0BsRenVAxuaRHSwXUcCDMN949Q
	fQ4lwwBiRLH1bSmycy1O2n/s5odaB74bjW62ETb8ZIxduOOyxC/low1YCq7/C3JGfG+LaSRFLpKIz
	dYVDSRlWYdRqVYC80PQ27sjnp3DbbQLr/LrWBPKdYckj2EOGSUZjofdU7bZgcCqvEwnY9qBrGt1pH
	8073qVrFZCQ919tDhtE7bnZi285k62iagj2MhQ/u0WPzLE+I0AppYdniiBpoGmmMvnaVtjhxRH0hz
	ByQ6mSkS6WHF2h9txitA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflfT-0004um-SP; Tue, 25 Jun 2019 13:39:27 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflfE-0004pb-JD
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:39:14 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1C7AD4000C;
 Tue, 25 Jun 2019 13:38:59 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, alpawi@amazon.com
Subject: Re: [PATCH 0/2] pinctl: armada-37xx: fix for pins 32+
In-Reply-To: <CACRpkdYgXZzvFKyvySWnsJ2_1pA1e_VHEY-QNzNYCikMUc_WVg@mail.gmail.com>
References: <20190618160105.26343-1-alpawi@amazon.com>
 <CACRpkdYgXZzvFKyvySWnsJ2_1pA1e_VHEY-QNzNYCikMUc_WVg@mail.gmail.com>
Date: Tue, 25 Jun 2019 15:38:59 +0200
Message-ID: <871rzhlr7w.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_063912_795793_952661A8 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: Benjamin Herrenschmidt <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> On Tue, Jun 18, 2019 at 6:01 PM <alpawi@amazon.com> wrote:
>
>> From: Patrick Williams <alpawi@amazon.com>
>>
>> The 37xx GPIO config registers are only 32 bits long and
>> span 2 registers for the NB GPIO controller.  The function
>> to calculate the offset was missing the increase to the
>> config register.
>>
>> I have tested both raw gpio access and interrupts using
>> libgpiod utilities on an Espressonbin.
>>
>> The first patch is a simple rename of a function because
>> the original name implied it was doing IO itself ("update
>> reg").  This patch could be dropped if undesired.
>>
>> The second patch contains the fix for GPIOs 32+.

First you can add my
Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Then as the second patch is a fix, you should add the fix tag: "Fixes:
5715092a458c ("pinctrl: armada-37xx: Add gpio support") " as well as the
'CC: <stable@vger.kernel.org>" tags.

But your change in the first patch made this second patch more difficult
to backport.

Actually, when I wrote "_update_reg" I was thinking to the update of the
variable, whereas with a function named "_calculate_reg" I am expecting
having the result as a return of the function.

However I am not against your change, as I pointed my main concern is
about the backport of the patch to the stable branch.

Maybe you could change the order of those 2 patches?

Thanks,

Gregory

>
> This looks good overall. I am waiting for a maintainer review.
> If nothing happens in a week, poke me and I'll just apply
> the patches.
>
> Yours,
> Linus Walleij
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
