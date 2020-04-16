Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CC51AC5DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTcZTMHz/DB5/4pC/iiu8wkafRkcPsD0qsr/6qFCtUc=; b=IOd0tl9KAEpY9/
	6puHMssclZTdNfAnXxIacAGhbK5ZjeTUh7zOP3/KSAKU7vO9bsc6dvIDTBSQYJMlkvC620tzPsewT
	rkiuMZQnlJN+sUnDzvsIXDl5UZUjBQcRepmGtRcjqNrZayF9kAiWWzcr02x69gO80xXGYVOA1ueP4
	p1I3U+EKKIrMHKdX+2rdXTkX1QzcF93lYsw8S2nz5iEKuiXyRN1hWhOFn3noIYvDWL3jMSAR4PsQZ
	/H+0WmVu0K3H4j50cGA9zzovJoIZUWuUyENj0eTAfFUKOfUSfnIL8uHBFBkiiCZRAppdzM7G3PRhv
	3CY1LPV4Nor2oFp5Ofog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5Wz-00043p-PV; Thu, 16 Apr 2020 14:30:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5Wp-000213-Ck
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KneQJooGNroMsnVhWpDNmOJcUpQzDw2TtA1XPoL0v94=; b=gpjzjvJ1SeNwiy64EvyosJQ8U
 XL1D/lWSZEPz8nh71eZGnsa8wJymRu0HxttL22t1hKWPT7wk33UPO3X8aXHE9hIFE++kTF7+9U1yx
 5jos7uFLFpiJyBwnjhrVHtWiiRzTpNHcxdGxfXopk8ecSU1y/osTb+cDOjx5VsHQtCp5ZOoCeruaz
 libTRH86hFC6aupenZGdh7F2wIR9PRVNJPI+6mwdVGTOuvMJdO86X4GdYe2NDH71WRYjqoFOK9htC
 XUAFco+ZR7JcPv1WXl9Ua6kNpoRcSWfo18uyeZ7fC7pmBX/6y2RMFmaO8TwQRRSD2RZ8WzoL+WyUW
 SarV3nEjg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:39222)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jP5WX-0004dh-LL; Thu, 16 Apr 2020 15:29:49 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jP5WS-0001x6-Nr; Thu, 16 Apr 2020 15:29:44 +0100
Date: Thu, 16 Apr 2020 15:29:44 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416142944.GH25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416135039.GL657811@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_073007_876446_DA6C49CC 
X-CRM114-Status: GOOD (  22.62  )
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

On Thu, Apr 16, 2020 at 03:50:39PM +0200, Andrew Lunn wrote:
> On Thu, Apr 16, 2020 at 09:51:37AM +0200, Linus Walleij wrote:
> > On Sun, Mar 29, 2020 at 12:46 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > 
> > > This series adds support for the fan PWM output on the Clearfog GT8K
> > > platform, and can potentially be extended to the Macchiatobin.
> > 
> > The gpio changes all look fine to me +/- fixes for review comments.
> > 
> > Could the MVEBU maintainers provide some feedback?
> 
> Hi Linus
> 
> I took a quick look at this when it was first posted. I also wrote the
> PWM support in this driver. The hardware is mostly a GPIO driver, but
> it has some basic PWM facilities. It is not possible to cleanly split
> it into two drivers, which is why it has the current structure. And
> the PWM maintainers ask that the PWM parts be listed in MAINTAINERS as
> such, so they got to know about any changes.
> 
> Clocking with Marvell devices has always been interesting. Core IP
> like this gets reused between different generations of SoCs. The
> original Orion5x had no clock control at all. Latter SoCs have had
> more and more complex clock trees. So care has to be taken to not
> change old behaviour when adding support for new clocks. So Russell
> 2/6 patch looks good to me, and Uwe request could break on some
> SoCs. It would need testing on a lot of SoCs, with and without PWM
> support. 
> 
> I assume Russell will at some point repost without the RFC tag. At
> that point i will take a second look and add Reviewed-by.

I said in the cover message "The cooling maps are experimental".
They work reasonably well for me with the fan I have (a noctua fan)
but other people may find them to be problematical, so one of the
reasons for sending it as RFC is to get people to test and see how
well it works.

I may have had greater success getting people to test if I'd added
maps for the Macchiatobin, but that wasn't my target system. That's
relatively easy to do - it's the same pin as on the gt8k, so merely
putting the same DT changes onto Macchiatobin would allow testing
with those settings.

Whether that's correct for my Macchiatobin server setup is an
entirely separate problem - where the fan PWM controls front panel
fans and there's a bigger fanless heatsink on the Armada 8040 (as
per the first revision of the Macchiatobin boards).  As the boards
ship without a PWM controllable fan, it would be of limited use.

So, really, I think the DT configuration of the PWM parameters is
"for the user" and not actually for mainline kernels - which
brings with it the problems of understanding control systems,
stability of such systems, feedback, and how to configure the
thermal subsystem... which is not easy.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
