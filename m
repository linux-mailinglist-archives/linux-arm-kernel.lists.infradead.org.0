Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DAE1AC758
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cu+Rgf5TJy1FBD1FZ2AiwdOsZ1fLnIomlJ/uX/N69QA=; b=OeGkvw5QUy7Xph
	/ppZV3GUSZAl8q2ZPkrgTnk50Ry2HHYRbbmz6oA2g/Y+EG1d2dFbNI/tRbyKBs8heZmehUvsb7pj7
	YqEXW/Nt7IiqRd2gnniKa7nckG0GwfKR0SwYeomm58twMswqCgO6iA1V9VyBpgkfr392eb8iUnJNC
	BIbQQYgev/KDSY8Wt+rT1PQg8pDFJqOqZj0n9cqcopSSc4Gpgod1g9clTh8xQg1sMUAGDcWugCArh
	2AVI24yTqRSrZD/jtuwQIC8Fx+pqdBH2aFpZNeMoBfABkr52Zoz8o7+cqVm6UJzyO/CiP2E2Vdt96
	UQM0zWgtbwYnsolToXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5uM-0005XZ-1m; Thu, 16 Apr 2020 14:54:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5u8-0005Wk-5c
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+reo/VTJ0mbrAtwez0qUHllJui2LGmUqeZZaPT2jjgk=; b=I1swcTqPXReZ6oCvu5oUeU1y3
 d/deFRuczBe4+pedkOkWyodhigLl1Ms/+hrs7CBSbxm0nOq5jrAAPHDlea8ojxzyLHGPBXC07hrLN
 c2j/N8sEMQ+E6d8dBg87isBtsUrfmjPVaHNJ3M3FdMrjbyR+Wt10umDBlUD+D0nXA9v9UxZLBy7ht
 jDQewrW/vTJSEcTpUQf0oImbJWtQWVqwko3oJSTcz7Ibh9sEcYts+np/iOJZpAfgOwBfJf8RDHqhY
 GjSCCOC4gh5436SCT1xl9gP/uGcbrIT348QH19BrYkcEOAZ1haMRyF/y56gXY00kuIZmrwPKQ6Dq9
 EfYggOTkQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50888)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jP5tq-0004lG-8i; Thu, 16 Apr 2020 15:53:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jP5to-0001yN-8z; Thu, 16 Apr 2020 15:53:52 +0100
Date: Thu, 16 Apr 2020 15:53:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416145352.GJ25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416081412.GG25745@shell.armlinux.org.uk>
 <CACRpkdYFBGvQX3i4P1+cF5ExXOSKieT6cJNPTNuKFxEhtJVEjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYFBGvQX3i4P1+cF5ExXOSKieT6cJNPTNuKFxEhtJVEjQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_075412_213141_2AB1CC44 
X-CRM114-Status: GOOD (  16.90  )
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

On Thu, Apr 16, 2020 at 02:08:36PM +0200, Linus Walleij wrote:
> On Thu, Apr 16, 2020 at 10:14 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Thu, Apr 16, 2020 at 09:51:37AM +0200, Linus Walleij wrote:
> 
> > > The gpio changes all look fine to me +/- fixes for review comments.
> >
> > I think Uwe is incorrect for his GPIO comments; the clock is only
> > optional on A8040.  We know this because A8040 has worked fine
> > without PWM support without the clock, whereas for Armada 370,
> > the driver has hard-failed if the clock is not present.
> 
> It's fine. You are running the hardware and it should work for you.
> I usually go by the IETF motto "rough consensus and running code".
> 
> > About the only change I would make is to move the check introduced
> > in patch 2 into patch 3 instead, inside the MVEBU_PWM_SOC_VARIANT_A8K
> > case, so that deferring for the clock works (which is necessary for
> > the PWM driver to be useful.)
> 
> OK let's go with this.

Well, it turns out to not be particularly nice to do that.  The best
I can come up with is:

        mvchip->clk = devm_clk_get(&pdev->dev, NULL);
        if (soc_variant->pwm && IS_ENABLED(CONFIG_PWM) &&
            mvchip->clk == ERR_PTR(-EPROBE_DEFER))
                return -EPROBE_DEFER;

Doing it in mvebu_pwm_probe() means that we have to deal with unwinding
the very complex probing (tearing down all the interrupt functionality
and GPIO stuff) which the driver currently does not do, even on failure.

Is this a shoddy driver that doesn't clean up after itself...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
