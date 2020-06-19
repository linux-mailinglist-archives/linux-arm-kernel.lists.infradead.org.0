Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B4620007C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 05:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvB/7iCCYYQMOcgcXDIFrlNF7A2FIZO3KpH+OnnITZQ=; b=aJotyPkBxdCQVx
	UNYL0RH7bNpFxksQeyWb1qRdTkZ+p03INYyzXvNn+STEncO1+Kb7dDOYeIBbsjIvyJpf0dej0Fc3l
	qS0PU5cvszx4TMsdWpnSyvBI963m/pqtsaIC20GhUbU3YGNil8+RSTv4YhwfNjwnYyT1smguYI24a
	x6tBjTaRmMH0byn5P3GH6y3KgC81T95lTDGsmEFcoph1wtqZq9n9qep89RLU/z8o4jRK1FsrDiq2l
	uczdHQF6c3iyl8geL+C2gKr541sAijTcWJtkYRPXwpPRG0rgnEHnifhRtUfrjthbQfAZLW+L9yoxC
	cGUbm/5fPAkSPsFSU80w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm7Jo-0000LZ-L5; Fri, 19 Jun 2020 03:03:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm7Jf-0000L1-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 03:03:44 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 323E62088E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 03:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592535822;
 bh=cKmkcpfwXu1EEI1wr7eaNKoi2kDhEga2lWfhy3FeS4U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iPpKgB/117h3Y6qYN+jag1kQRFU7Sl9dl/4pWbUk0ct8ldUZD+/4PxSfo+rAbJWlH
 m4k4zuL0YLAxx4WDNSwZp4MJtinDuBUGlCcFOamlv/9KvkGw0tgSydY9CgiyyG7rUi
 wa3229W8qrw8OGIm8qgdDy3QglaO8gZga9tJmCOk=
Received: by mail-lj1-f172.google.com with SMTP id 9so9754114ljv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 20:03:42 -0700 (PDT)
X-Gm-Message-State: AOAM533WDPJ6j45xrcjdwEb9SF+pbwOxICEGv/5tetAOgSedYKzEWUOa
 l+/SSQ2RLwvsPM4Ki5bMZAMqWeLpT9WvkLTRmds=
X-Google-Smtp-Source: ABdhPJwUS3CfyyNgp9baw02jk9HY+mRQomJJpWTbnU+aTkCqWgtcVr2+ACHYLw+MGcZtosKAdMsANaqnzNV2zgw9sJI=
X-Received: by 2002:a2e:9eca:: with SMTP id h10mr708200ljk.273.1592535820451; 
 Thu, 18 Jun 2020 20:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
 <20200618100704.GC954398@dell>
In-Reply-To: <20200618100704.GC954398@dell>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 19 Jun 2020 11:03:28 +0800
X-Gmail-Original-Message-ID: <CAGb2v67GJUzomptOzzvafcQ-wAqrJvNNeEZsY7gVQ_kByqBT8w@mail.gmail.com>
Message-ID: <CAGb2v67GJUzomptOzzvafcQ-wAqrJvNNeEZsY7gVQ_kByqBT8w@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_200343_507575_C49EE1FD 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 gregkh <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, michael@walle.cc,
 Mark Brown <broonie@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 6:07 PM Lee Jones <lee.jones@linaro.org> wrote:
>
> On Thu, 18 Jun 2020, Arnd Bergmann wrote:
>
> > On Thu, Jun 18, 2020 at 10:03 AM Lee Jones <lee.jones@linaro.org> wrote:
> > >
> > > The existing SYSCON implementation only supports MMIO (memory mapped)
> > > accesses, facilitated by Regmap.  This extends support for registers
> > > held behind I2C busses.
> > >
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> >
> > The implementation looks fine to me, but can you explain how this is going to
> > be used, and what the advantage is over open-coding the devm_regmap_init_i2c()
> > in each driver that would use this?
>
> Does Regmap let you register/initialise an I2C address more than once?
>
> When I attempt it, I get:
>
> [    0.522988] i2c i2c-0: Failed to register i2c client tmp105 at 0x32 (-16)
> [    0.523341] i2c i2c-0: of_i2c: Failure registering /bus@4000000/motherboard/iofpga@7,00000000/i2c@16000/temp@32
> [    0.523691] i2c i2c-0: Failed to create I2C device for /bus@4000000/motherboard/iofpga@7,00000000/i2c@16000/temp@32
>
> > Is this about using proper locking through the regmap framework for
> > shared i2c clients, or to reduce memory consumption when lots of drivers
> > access the same regmap?
>
> All of those things are valid.
>
> My use-case is regarding MFDs sharing an I2C interfaced address space
> with their children.

Is that an issue with the standard mfd + regmap pattern?

For the AXP20x PMICs, we register the regmap in the parent mfd driver [1],
and store that in dev_data for child drivers to fetch [2]. You could
easily just fetch the regmap with dev_get_regmap() and a pointer to the
parent device.

> > My impression of the existing syscon code is that the main value-add over
> > other ways of doing the same is the syscon_regmap_lookup_by_phandle()
> > interface that gives other drivers a much simpler way of getting the
> > regmap just based on the DT node. Are you planning to add something
> > like that here as well? An ideal driver interface might allow
> > syscon_regmap_lookup_by_phandle() to work for both mmio and i2c
> > based syscons, or additional ones as well, but implementing this would
> > be rather tricky when the i2c core is a loadable module.

The current MMIO syscon is decoupled from the DM, and there is no way
for drivers to export or register a syscon, meaning I have to open code
syscon_regmap_lookup_by_phandle() [3] if I want to only expose certain
registers and not the full address range, or if I want to share the
regmap with the existing driver (for locking purposes), or both [4].
Maybe there's room for improvement here? The same applies to the new
I2C case, and likely any other future syscon variants.

IMHO people are getting it wrong if they have both a syscon and a driver
for the same device.

> I expect the API would be expanded to cover other use-cases.  This is
> a bare bones implementation which has been kept as atomic as possible
> for ease of review.

Regards
ChenYu

[1] https://elixir.bootlin.com/linux/latest/source/drivers/mfd/axp20x-i2c.c#L43
[2] https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/pinctrl-axp209.c#L433
[3] https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c#L1093
[4] https://elixir.bootlin.com/linux/latest/source/drivers/clk/sunxi-ng/ccu-sun8i-r40.c#L1333

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
