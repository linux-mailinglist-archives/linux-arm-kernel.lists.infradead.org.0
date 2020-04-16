Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523B91ACE05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGbW4s4XqcZGr5vgkwXKLrGMkjbfVnuYZMXVusUSFD4=; b=lhkfVSTn1m0plh
	rXRhQnAkG/zm6uQdISh++6BvjYcXLGJEs+81pi2xo392baWuf33PsrNUaLIa3fJbDLxyczUwsF3oG
	udy7caUVP7GDfFnXpbB+j7N9LK1TF5B7slk5kL3W6ZKi6DTsKOgx7Ub8wjBCcJdUx6VyEfrhbTLHO
	z5olBEgIAieo/3t10pCNreTcyXezNdOHuhp8eTmr9nhxP5NbXsHKyrVhi7HpHAcE6wNqLYIqOuAwJ
	B4LK8sb9M00WeNgwKzjBsD13UtDhui6HK1iH50JjduiGWiIWDgw3RaJQslB8eQjK/cktS7XsPBuPs
	N9d2/Rxk8eN+B393OuqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7iW-0005uL-Ty; Thu, 16 Apr 2020 16:50:20 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7i9-0005m2-CC
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:50:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YV1SAfrAwp0QaVFTYO0FSHpHPtlvDBOUkjggRuVS/W8=; b=U1chH8R3kb8KUrAc+3eJQcTwn8
 MDeJ/6p6u6fCmyrzaVmLr9Xb6n3BfYIsD259+oy6rHF4k2JzBkGCqhwGM0b6b4HKVg+dJC+TV2aK1
 YgUNOK/LU5DIofyvIIgLUhYeSZqEKS+dN67H3LP8yGRucvVgDoD+WS2eBNyQK/H6Nlao=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jP7hw-0036fC-15; Thu, 16 Apr 2020 18:49:44 +0200
Date: Thu, 16 Apr 2020 18:49:44 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416164944.GS657811@lunn.ch>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
 <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
 <20200416144231.GP657811@lunn.ch>
 <628cde2b-0e1b-4c07-4321-8b23d0b34384@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <628cde2b-0e1b-4c07-4321-8b23d0b34384@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_094957_441246_BEE8027E 
X-CRM114-Status: GOOD (  12.07  )
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
 linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
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

> > It is not really hope. It is very obvious when it is wrong, the whole
> > machine stops dead when you are missing a clock. Very simple to test.
> 
> Heh, that's still what I meant - the driver hopes that carrying on will be
> OK, and the end user is left to pick up the pieces when it isn't ;)

> Obviously that's less of an issue when said end-user is a kernel developer
> making a controlled change during SoC bringup, but perhaps more so for an
> eager inexperienced hacker cobbling together DTS fragments to convince a
> distro kernel to boot on some embedded device

Clocks are SoC level stuff, so it is in the DTSI file, not the DTS
file. An eager inexperienced hacker cobbling together DTS fragment is
not effected. Experienced kernel hackers have put together the DTSI
file and tested it. And if an eager inexperienced hacker does touch
the DTSI file, they probably deserve to get their finger burnt, and
will get a step closer to become an experience kernel hacker.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
