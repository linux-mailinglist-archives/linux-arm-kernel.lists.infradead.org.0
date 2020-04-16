Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2BF1AC687
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcORDZhB6i4DjzYbCo9gEhOMj48f01FWBZr8+bVhnrQ=; b=I32/28Wbw8dS/y
	4ZVA2t9cgZvpdgzdhiZwkE4HlNbKFecqbWukjXB/JDUhVSTeuVzsdAB7aGZ579sutZcNRCoZR2o0c
	LgPk73qX1eKh+SWcXg5F4SVWcLXu8JKHOO2cLfeOL3jY0toy8gWUY5L9hsWxVrgJJcnV+WTnUg3rd
	4H7SFeVHHfCXy5Cj1wbeBh89TNDwAn/WG9SFoGdvpBwwVoocgK3NJ2qIBsT4TaC9k+TLClVJPtdK2
	LB6k94HB93WBScLxhqlAS4FQC2PKOfDQ1/RV6BioMmt6Kd8OQwBNnIfb9ZxHM6ND5NeKBxssy9erI
	Pc6nKJsnVLn1MT86fZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5hz-0005br-7L; Thu, 16 Apr 2020 14:41:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5ho-0005Tv-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:41:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tLjN/nPsRscBzXHkmgVPun+eK2xtxPpGYdMPS7Z6B9M=; b=w3aiss/S89mWYK6GKHriGLOdo
 UCj3P6LDJQougYx1COFdPAWZEQvQmq0cr7MskscE1hM0hr5uapWgBpJES4Vifk5UYcdMG9YyUPuG9
 JsW9KRlADfJ4jf6mwxtZ800Ci4EvuxDN2+mEHP/yQowVsDlyKOey3EOLmEEP065Czz2/9Gmz+sV4O
 fsKJuBbMrvuFP7/Jxb7OEtcfC0tBAImx/lNEhRxJxRWAom00aNfauVHDDsqla7UiMyFpJPNC/MJy0
 Gx1+41HDFbRWen5KQvD95/lCJSLD4eStn4EgfxIOP6qB+d+wtzX11rPi52HR4XyAt43xQ4krZ5GR7
 6UmMu9w7w==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46746)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jP5hc-0004hW-KW; Thu, 16 Apr 2020 15:41:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jP5ha-0001y9-6X; Thu, 16 Apr 2020 15:41:14 +0100
Date: Thu, 16 Apr 2020 15:41:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416144114.GI25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
 <20200416142944.GH25745@shell.armlinux.org.uk>
 <20200416143645.GN657811@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416143645.GN657811@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_074129_020976_C14546D3 
X-CRM114-Status: GOOD (  12.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-pwm@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 04:36:45PM +0200, Andrew Lunn wrote:
> > I said in the cover message "The cooling maps are experimental".
> > They work reasonably well for me with the fan I have (a noctua fan)
> > but other people may find them to be problematical, so one of the
> > reasons for sending it as RFC is to get people to test and see how
> > well it works.
> 
> Hi Russell
> 
> Maybe split the PWM parts from the cooling maps? I don't see any
> reason not to merge the PWM parts.

That's easy - the cooling maps are an entirely separate patch.
However, one thing we need to be careful of is whether someone has a
PWM fan plugged in, and whether not having any cooling maps results
in the fan stopping, as I think PWMs default to being disabled on
initialisation.

That could be a SoC-killing combination.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
