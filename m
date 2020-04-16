Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E291ACDDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTBue8HcMVWEdmU5rw6n/gQt0OzZYNO7M86DEoyAQ50=; b=p5RXU7rky36YwE
	NwZ+s5IVpOabJ0YCJsCuwgDWVqGY1amKui0PsGtLXeEK94plbwYwqAplK75+szMJ/hvJ5PoykYK5w
	NLZ7dUctAwnEM68FMxLQXdES76qT+rgaadHmkQFZdMap5fSoxTmRbhqZVEpGZo4lT5rF/0LFeCkYU
	RDmrnZ3a6A4GVwOHV9CtjKCTRMsKwMVjQurOxowGo+QOifDQyCeWjt0FKbthJod4RTTS9YjNHXRoq
	jHlI1H21dL06kh4SkDbIOuoVZuF8uzoUGt8M3G7gk07jRjavk98bi4srcbwxs+ka9w1hm3zeto5SC
	WPkPuGsS30LOc5WAK0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7X1-0007cv-JR; Thu, 16 Apr 2020 16:38:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7Wt-0007c6-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c7EKIziO2LGfaFlRmTCfb2Sj+sRd/y/yZ4AR3gH5/YU=; b=a0FFXBLTAzcdGuplfONhR7yH5
 qRwE7+TAkFXqPhFd59G4XpRmvw7y9SIixBFIRkyMzCsERthWhph59Pd0MHRwr7qC8dE4iAjq/dehF
 zoduhsoGtH0ezKCosx8NaHDplop5RJHc7oIqwpFtPnFOY+IJEignKR5Gt/mwW/H5mW6+ybNy34YI5
 MtqJZ68Bpi7Y4hrrmAQ3XRkyIMIlWmjd1lK0ICJAJZhpx4QwNNwG0YCPbElDyOc6qfA3G8pSEVj3B
 YZaYydhSUpLlEKtYRy0Cny3/9FRjWfxZ8EBwk/JtsToP1RmpoF2VWAX4l2X+22527pf8Kl2Fmp+ff
 6d/WIlAgQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50924)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jP7WS-0005GP-L7; Thu, 16 Apr 2020 17:37:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jP7WO-00021r-Hf; Thu, 16 Apr 2020 17:37:48 +0100
Date: Thu, 16 Apr 2020 17:37:48 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416163748.GL25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
 <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
 <20200416145517.GK25745@shell.armlinux.org.uk>
 <010ccb32-42f1-cc32-0527-e608fc91a879@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <010ccb32-42f1-cc32-0527-e608fc91a879@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_093819_343008_7567C364 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-pwm@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 04:55:44PM +0100, Robin Murphy wrote:
> On 2020-04-16 3:55 pm, Russell King - ARM Linux admin wrote:
> > On Thu, Apr 16, 2020 at 03:37:40PM +0100, Robin Murphy wrote:
> > > On 2020-04-16 2:50 pm, Andrew Lunn wrote:
> > > [...]
> > > > Clocking with Marvell devices has always been interesting. Core IP
> > > > like this gets reused between different generations of SoCs. The
> > > > original Orion5x had no clock control at all. Latter SoCs have had
> > > > more and more complex clock trees. So care has to be taken to not
> > > > change old behaviour when adding support for new clocks.
> > > 
> > > FWIW, that sounds like a good argument for encoding the clock requirements
> > > of each variant in the of_match_data, so the driver doesn't have to simply
> > > trust the DT and hope.
> > 
> > Please read my patches.  This is exactly what I'm doing.  I'm preserving
> > as closely as possible the current driver behaviour while adding support
> > for the Armada 8040 PWM while keeping compatibility with older DT.
> > 
> > And I'm doing that by keying off the match data, exactly as you're
> > suggesting above.
> 
> AFAICS you're encoding the *PWM capability* in the match data and using that
> to extend the existing behaviour, which comprises using soc_variant to maybe
> treat the stashed error code as fatal somewhere else much later if
> CONFIG_PWM happens to be enabled, and is subtle enough that at least two
> reviewers overlooked or failed to make sense of it.
> 
> Compare and contrast with how self-contained and obvious this is:
> 
> -	mvchip->clk = devm_clk_get(&pdev->dev, NULL);
> -	/* Not all SoCs require a clock.*/
> -	if (!IS_ERR(mvchip->clk))
> -		clk_prepare_enable(mvchip->clk);
> 
> +	/* Not all SoCs require a clock.*/
> +	if (data->needs_clock)
> +		mvchip->clk = devm_clk_get(&pdev->dev, NULL);
> +		if (IS_ERR(mvchip->clk))
> +			return PTR_ERR(mvchip_clk);
> +		clk_prepare_enable(mvchip->clk);
> +	}
> 
> If achieving the same end result by very different and roundabout means
> constitutes "exactly the same thing", does me having written this email mean
> that my house is exactly the same as the Arm office and someone else will be
> along to clean the kitchen shortly? Here's hoping... :D

What if we have a platform where DT mentions the clock, and relies
on it being enabled as per how the driver is coded today?  I don't
know if that's true or not, I don't have the hardware to test.

So, while we can make improvements as you describe above, it's
dangerous to do so because we don't have the information to know
whether what's being proposed is correct or not.  Hence, it's safer
to do the minimum amount of changes, and not do gratuitous potential
regression causing cleanups as you're suggesting.

If we want to clean up the driver in potentially regression causing
ways, that can be done at a later date.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
