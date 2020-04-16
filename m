Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCE21ABAF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWnnM1bkSvxwc0zK7Zoos3Ed3JiE8Ad51TFZBLvECwM=; b=BDoLBoFKeiqgj+
	uYrphO+XhkITKKUfknAnGWb/YtVIiCltsHAbPCWCZgg8/841zBqmJFCU0DM+A4mA8wco1tIbzXbMX
	U6y0CSPwZdUWMyK/JPWM1oeC31U5mmUEVvW/mhkgDH+fNl+LJKUfEJTVyGgNt5AfgjyAd9Upvebff
	GqF1lghs9rY3vdDOVRB8Qym2QysVsZysx0zYY+6fUfjtwqcYFXm2XO7+ShT0ykS8S5tj6LDQuD7zE
	yeXVgFbidqCsrtAy5u751uxCLAQPmTZQzevr3Yuk87vzPH25AfbxbFg+Ndm4NStY4mPRMpekbDTIw
	i2V5+lJWbx/La4JeUG1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzhv-0008PP-Pk; Thu, 16 Apr 2020 08:17:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzhm-0004UR-FS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NjYUdscMr8BaeoNcnHcYpQBshGUG0JgGuU3QPR1001w=; b=o5lXupT2LUZ5OIFK4GBNu2G6f
 /EI8EyVDRS6NaOjhrnWfDJ0xpp+LwunxE5ZBYwKhTpOQZJAhTOM96Cveo66Ltlq+Nfz1SdRQ4/upx
 o1cie7KTQRyztj6raLPJFc7BVaYkOU2Fgh1A8Y1yQ3HKKPG4vAD+eAUoF4qLfS2k+NlOqzn5JyG/b
 se88rxXKYSfC5BucBApRUMCOqVZsCj+aykVqsOO3w/grc/VdV9TyqFVWQfc/HPg3wLwfc/VEZTjRD
 H0Io9G88lwrglVnhRp9GBEDZpO1rjN5rTnrzaYOkGscU78ReF3GhZRNhYyU//Zzmh6L3v7MPeX/OY
 Xxnk3I9gg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46634)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jOzfN-0002yS-LH; Thu, 16 Apr 2020 09:14:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jOzf2-0001kT-Qs; Thu, 16 Apr 2020 09:14:12 +0100
Date: Thu, 16 Apr 2020 09:14:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416081412.GG25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_011702_681790_E224694F 
X-CRM114-Status: GOOD (  17.32  )
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
 Jason Cooper <jason@lakedaemon.net>, linux-pwm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 09:51:37AM +0200, Linus Walleij wrote:
> On Sun, Mar 29, 2020 at 12:46 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> 
> > This series adds support for the fan PWM output on the Clearfog GT8K
> > platform, and can potentially be extended to the Macchiatobin.
> 
> The gpio changes all look fine to me +/- fixes for review comments.

I think Uwe is incorrect for his GPIO comments; the clock is only
optional on A8040.  We know this because A8040 has worked fine
without PWM support without the clock, whereas for Armada 370,
the driver has hard-failed if the clock is not present.

So, on Armada 370, I preserve this behaviour.  I also preserve the
behaviour that on Armada 8040, we don't fail the driver if the
clock is not present so that booting a newer kernel with older DT
still works (which is a requirement.)  In that case, the driver
today still tries to get the clock but never checks the result of
getting the clock (which doesn't exist in current DT files.)

So no, I'm not going to fix Uwe's comments and potentially introduce
regressions into this GPIO driver; I gave up trying to argue the
point with Uwe, and I'm at the point of not giving a damn about this
patch set if I'm to intentionally introduce regressions based on
review comments.

About the only change I would make is to move the check introduced
in patch 2 into patch 3 instead, inside the MVEBU_PWM_SOC_VARIANT_A8K
case, so that deferring for the clock works (which is necessary for
the PWM driver to be useful.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
