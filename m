Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD04716661B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:19:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT22VpDFG8i9Mb8aubCz0Kt6HveIYEHrSokRSV+P72I=; b=k77UyK67COy6EX
	lH/ZTaKIpF04hrKMdTLYbyUZmxXDoGh5AeT8VoMnwDXQByircHFFk08aLbKfv7/ZZy2IDUta0xhYY
	pr1q4MmgI41dmvj0AedwXtiN9eDz3YgFhIBS69Nv+Q5QYZYhntklDVK9o0w9Xyh59EYNT3p/0KyM8
	gb7vBUKsv547+A9rCh55f+kPRohtzQ7VKv4PpjD4y3pzkM2/AYVwwWdICgNbJ4llQ7SyphJzb5fjp
	KqHQyAaWAk5+g7a07x2gCTKV3tWYCLVF9zz24h0hoouikHGpViQqxhhxB4RtDw9rsAX34i9Xmh/FL
	WSgDo7VhwV8wrZT4NIWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qQG-00047u-E6; Thu, 20 Feb 2020 18:19:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qPy-00040x-Ox
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1KiLvVtdTJR08lV/a34E5gQuMJ2KUL9LQ6F89vXsum0=; b=zp9UMwZdckhNFcCl8erkEJXK9
 5tIcna2TJdIQFd8JU2hRRsOEpFKGz1GqKM3w270neVuhiPBlCj1GWZWMo2nTIrv93zEEJx9mc1ttu
 uX8XzuYd0PLXSF3hLiVSnkwIxGPcn3xSb16zAi6rB/oeotzKathridIKV8n97g1XVePisctZn1T4e
 sFQxPBEo1xZUZzmNgGDUfSAcWtQv1jGefwoAgkq2JYfy+Xh5EBzaXtOnW7cLbQDSzYwWn/tOHjai4
 y9egWVNm5mfDx9Q9E/xinXsAbyY/5iYRuU/QNxuUJm0UsP2whRIwz8+moZn21m/SDqiPYBomi140F
 y3fiTvylw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54628)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j4qPq-0004se-4M; Thu, 20 Feb 2020 18:19:14 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j4qPo-0002jJ-1o; Thu, 20 Feb 2020 18:19:12 +0000
Date: Thu, 20 Feb 2020 18:19:12 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [REGRESSION] gpio hogging fails with pinctrl gpio drivers
Message-ID: <20200220181911.GD25745@shell.armlinux.org.uk>
References: <20200206173247.GX25745@shell.armlinux.org.uk>
 <CACRpkdbzjBnaeXJg3XvZ6G2FdtQQa0u7MPy9bgN-uo-F1vSpbQ@mail.gmail.com>
 <CAHQ1cqFeMKrb-MxnifVJXfGciQH8wsjS1dSSeTTc0R06jLT+Cw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFeMKrb-MxnifVJXfGciQH8wsjS1dSSeTTc0R06jLT+Cw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_101922_829149_F44F7D06 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Peter Rosin <peda@axentia.se>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 09:28:14AM -0800, Andrey Smirnov wrote:
> On Thu, Feb 20, 2020 at 12:18 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Thu, Feb 6, 2020 at 6:33 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> >
> > > It seems that sometime between 4.20 and 5.5, something has broken the
> > > ability to specify gpio-hogs in DT for GPIOs that are written around
> > > pinctrl drivers.
> > (explanation that makes perfect sense)
> > > Consequently, adding a gpio-hog to DT for this driver results in the
> > > driver endlessly returning -EPROBE_DEFER.
> >
> > I suspect this is sx150x-specific and suspect these two commits:
> >
> > 1a1d39e1b8dd pinctrl: sx150x: Register pinctrl before adding the gpiochip
> > b930151e5b55 pinctrl: sx150x: Add a static gpio/pinctrl pin range mapping
> >
> > I suppose people weren't using hogs very much with the sx150x and
> > it didn't turn up in testing so far.
> >
> > I don't think for example pinctrl-stmfx.c has this problem, as it registers
> > the pin ranges from the device tree as part of the core code.
> > But other drivers calling gpiochip_add_pin_range() may be experiencing
> > this.
> >
> > Peter/Andrey, do you have some idea? Have you tested this usecase (hogs)
> > with the sx150x?
> >
> 
> Haven't done any GPIO hogging on sx150x, unfortunately. My use-cases were:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/vf610-zii-dev-rev-c.dts
> 
> and
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> 
> which didn't have any hogs so far (there's a chance Russell is using
> the former for his experiments, so maybe that'll change). I don't any
> useful input on this regression, sorry. I do have Rev C. board readily
> available, so I can provide Tested-by's if I am CC'd on fixes.

The ZII dev rev C is where I had the hog as a means of kicking the
88x3310 PHY out of reset.

I've now converted it to a proper MDIO bus-level reset, so I no
longer have the hog, and I no longer care about the regression - but
that's not to say it shouldn't be fixed, as the code is wrong.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
