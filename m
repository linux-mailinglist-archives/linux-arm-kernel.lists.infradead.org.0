Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0F41AC3E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2T5aT2ZYsdUD65wqEv2vTAWepzr6eQ75wUqRZv2shJo=; b=C9+0Ove9olF6iT
	jp322evNKFVGvbxyRCL2eLpjWCByVwFqQmycxVgwLHxO9JcQEN29cWv/SV9M2wFgrLioaTNEK98oX
	p/64LqxGeIcdmwmBy+rF7+YXjnFICyg5b9eRhe23lBKV+ejPwAumnCQzDtHw3yPCC6G5t9PA2LTR0
	fqvCSNwhgJQlCk9LEzRpeV7vCa5Ogx5gEJAMIyfI4B4iVfdRUbl5V9Mo9F9ULdFGsgslhq09Ts8Ow
	DoItjkDiLpk6++Ts0GpLK1I82zAw/G1JT12Hj9QAyAS75TWFlOxK5TihuIRmTdYxvAxmaWpZIYrhe
	PXEAVP3EX6bRh0tL/ljA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4uu-0000Nx-Fx; Thu, 16 Apr 2020 13:50:56 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4un-0000NN-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EF/f9myVVbgrLxXwzUMzNnUxGooj5hG2873Zghg3qio=; b=f5c9A4Fn3ySTK1wzQTyIowkDaW
 o2L99bBr1lFDYtL4BfBJGLRkjJyMo2p4ZrbupRO58aeykvzS/cr/UeCXY+d23IiSHcp6i7CeihRhq
 jZli5GjTIUplIniSlLGL4h7pv3GwqBpq82wY+p3xcMk7emkYyilPwPjrq7EfOWM4IAck=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jP4ud-0034yA-Ey; Thu, 16 Apr 2020 15:50:39 +0200
Date: Thu, 16 Apr 2020 15:50:39 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416135039.GL657811@lunn.ch>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_065049_163014_16BD8F88 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-pwm@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
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
> 
> Could the MVEBU maintainers provide some feedback?

Hi Linus

I took a quick look at this when it was first posted. I also wrote the
PWM support in this driver. The hardware is mostly a GPIO driver, but
it has some basic PWM facilities. It is not possible to cleanly split
it into two drivers, which is why it has the current structure. And
the PWM maintainers ask that the PWM parts be listed in MAINTAINERS as
such, so they got to know about any changes.

Clocking with Marvell devices has always been interesting. Core IP
like this gets reused between different generations of SoCs. The
original Orion5x had no clock control at all. Latter SoCs have had
more and more complex clock trees. So care has to be taken to not
change old behaviour when adding support for new clocks. So Russell
2/6 patch looks good to me, and Uwe request could break on some
SoCs. It would need testing on a lot of SoCs, with and without PWM
support. 

I assume Russell will at some point repost without the RFC tag. At
that point i will take a second look and add Reviewed-by.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
