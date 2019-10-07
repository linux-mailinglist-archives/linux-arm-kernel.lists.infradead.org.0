Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008FCCDCF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 10:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzGrjjxiK8XfzvseldaxLF6SNaEpq5BIDr2K9U7HXd0=; b=XlcHyZS3evLpxt
	t5M3+417O/mwFGv3pmrJwDWw3bBo/7aZ7VXMJcZMCVFgwjVo/nhUcjPwVmXIKjFFsDUyU/dy3dB8Y
	o7/iX9INvl+Lf6X9NBW0rLaphfGItN2xG6ppc7Qg2Vz29/DRW3HnisStzpghSdWXqGW8Igubkdjan
	5o/nfYLDWM8TUXnDx1CXXNqZ7pfb9Sz1U6PO97mVIvfKEubFP19cdBj90ixjivr+Xt1rbpmGd9vHF
	Vsk9JsVZoLC0zLOf07T1P1dw3cqGHE8F/YTF72GBzDT1ES0hsXfDtCRYHntuiVl+lVcTdkR+IQBW1
	LdOBjEW0UeSdft+pCMOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOAQ-0001Sh-R5; Mon, 07 Oct 2019 08:14:54 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOAI-0001Rv-VA
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 08:14:48 +0000
Received: from [82.98.7.229] (helo=big-swifty.misterjones.org)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iHOAB-00052F-KV; Mon, 07 Oct 2019 10:14:39 +0200
Date: Mon, 07 Oct 2019 09:14:38 +0100
Message-ID: <86blutdlap.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
In-Reply-To: <CAMuHMdV7syxxtnHEcgFBrf5DLo-M_71tZFWHHQ6kTO=2A1eVhg@mail.gmail.com>
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
 <CAMuHMdV7syxxtnHEcgFBrf5DLo-M_71tZFWHHQ6kTO=2A1eVhg@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 82.98.7.229
X-SA-Exim-Rcpt-To: geert@linux-m68k.org, chris.packham@alliedtelesis.co.nz,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, rayagonda.kokatanur@broadcom.com,
 li.jin@broadcom.com, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_011447_150378_065762A6 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Scott Branden <sbranden@broadcom.com>, rayagonda.kokatanur@broadcom.com,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list@broadcom.com, li.jin@broadcom.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 07 Oct 2019 08:30:50 +0100,
Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> 
> Hi Chris,
> 
> CC MarcZ
> 
> On Thu, Oct 3, 2019 at 2:03 AM Chris Packham
> <chris.packham@alliedtelesis.co.nz> wrote:
> > Use the dev_name(dev) for the irqc->name so that we get unique names
> > when we have multiple instances of this driver.
> >
> > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> 
> A while ago, Marc Zyngier pointed out that the irq_chip .name field
> should contain the device's class name, not the instance's name.
> Hence the current code is correct?

Thanks Geert for looping me in. The main reasons why I oppose this
kind of "let's show as much information as we can in /proc/interrupts"
are:

- It clutters the output badly: the formatting of this file, which is
  bad enough when you have a small number of CPUs, becomes unreadable
  when you have a large number of them *and* stupidly long strings
  that only make sense on a given platform.

- Like it or not, /proc is ABI. We don't change things randomly there
  without a good reason, and debugging isn't one of them.

- Debug information belongs to debugfs, where we already have plenty
  of stuff (see CONFIG_GENERIC_IRQ_DEBUGFS). I'd rather we improve
  this infrastructure if needed, rather than add platform specific
  hacks.

</rant>

Thanks,

	M.

> 
> See also "[PATCH 0/4] irqchip: renesas: Use proper irq_chip name and parent"
> (https://lore.kernel.org/lkml/20190607095858.10028-1-geert+renesas@glider.be/)
> Note that the irqchip patches in that series have been applied; the gpio
> patches haven't been applied yet.
> 
> > --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> > +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> > @@ -858,7 +858,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
> >                 struct gpio_irq_chip *girq;
> >
> >                 irqc = &chip->irqchip;
> > -               irqc->name = "bcm-iproc-gpio";
> > +               irqc->name = dev_name(dev);
> >                 irqc->irq_ack = iproc_gpio_irq_ack;
> >                 irqc->irq_mask = iproc_gpio_irq_mask;
> >                 irqc->irq_unmask = iproc_gpio_irq_unmask;
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> 

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
