Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F84D5832
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 23:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHTDwQPYujjgsKmLTywOXcLUCGF1YcO2FwA1iko/ni8=; b=P4eK4tYA959en5
	d5r9RBUxCqbZ9PUbYpo38Gd+y9Aic6hl2YOLibs8dvRiuEncYfw3MOqdnw8F3JJCmOO6z7qWCIOdf
	/U5W8BNq564Ooq5hetO1NOlYFGesuEeOkRN4NiwQoGtJ/AcULcRN3DO59yMLLo+r5k4I8JZcWJLep
	WF4aIKjAK/yYUGeV4nhqML+nnLollF5Im1XcKDsrHPJ+odCHDzLpXqhxwkqBT+0a4cRCHyNrD16b7
	2ZgrG9f60bcPYxBa1vFvTRzfwQrO9ZT963M+NZ4pyG6876zHr5OYnHfYhXkC8srtcfS0rp6oMKg3v
	INEfFg0JGY4wx7l55Qkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJl10-0006pS-GD; Sun, 13 Oct 2019 21:02:58 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJl0r-0006n7-LP
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 21:02:51 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E94EE8011F;
 Mon, 14 Oct 2019 10:02:35 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571000555;
 bh=aTyDQx9xSa+g9n9I5ovNf7kTdG/X4cEbtfakvmWPRvI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=QCY1k3xnbMrq6iEXOGpaStm2wCIvQqooEyXNcbgzawxjRzR/+nZWoW1EVug6Sak81
 +p/IH3cOJa3lDdAbSo+ZIvDMYC2ZAQIcWHmmXyKmGkjFsEJQEEGpRCZArVKsyisa9k
 SoxiEfspKPsK0r6/uYIINh1fsoVNYl+55wxzGfYUdoJdJYAW5b8Z13AvQF+vmyzF/8
 FYCHkcTrWt2tTP6C2RdafXAZyq3vjuoZqcHYvnQ8gXFg8T9gxQ8Sdx8X2i/lE6Ot6p
 1YpLWs0gw+wHCnaQKDrstc4YY3Mu2vqUDDDdkHHQrGEaTlcvTxyXjjnn6vYP5VhPNZ
 pALbp6svuulAw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5da390eb0000>; Mon, 14 Oct 2019 10:02:35 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Mon, 14 Oct 2019 10:02:35 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 14 Oct 2019 10:02:35 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "maz@kernel.org" <maz@kernel.org>, "scott.branden@broadcom.com"
 <scott.branden@broadcom.com>, "geert@linux-m68k.org" <geert@linux-m68k.org>
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
Thread-Topic: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
Thread-Index: AQHVeX3zc8UV+9y5lE6TCaRj1KlYYqdN9V8AgAAMPQCAAJXSAIAJrrkA
Date: Sun, 13 Oct 2019 21:02:34 +0000
Message-ID: <1f29cade7a0405c33b8e76ea6a21939f6116371a.camel@alliedtelesis.co.nz>
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
 <CAMuHMdV7syxxtnHEcgFBrf5DLo-M_71tZFWHHQ6kTO=2A1eVhg@mail.gmail.com>
 <86blutdlap.wl-maz@kernel.org>
 <44510e8c-4e9b-603f-2c26-19db9121d68c@broadcom.com>
In-Reply-To: <44510e8c-4e9b-603f-2c26-19db9121d68c@broadcom.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:94ca:f8ed:f039:abe3]
Content-ID: <51B1B091E91BEC42B9FC58CC7D24ED0E@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_140250_222475_D6D1C709 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "rayagonda.kokatanur@broadcom.com" <rayagonda.kokatanur@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "li.jin@broadcom.com" <li.jin@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi LinusW, Scott, Geert, MarcZ,

On Mon, 2019-10-07 at 10:10 -0700, Scott Branden wrote:
> 
> On 2019-10-07 1:14 a.m., Marc Zyngier wrote:
> > On Mon, 07 Oct 2019 08:30:50 +0100,
> > Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > Hi Chris,
> > > 
> > > CC MarcZ
> > > 
> > > On Thu, Oct 3, 2019 at 2:03 AM Chris Packham
> > > <chris.packham@alliedtelesis.co.nz> wrote:
> > > > Use the dev_name(dev) for the irqc->name so that we get unique names
> > > > when we have multiple instances of this driver.
> > > > 
> > > > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > > 
> > > A while ago, Marc Zyngier pointed out that the irq_chip .name field
> > > should contain the device's class name, not the instance's name.
> > > Hence the current code is correct?
> > 
> > Thanks Geert for looping me in. The main reasons why I oppose this
> > kind of "let's show as much information as we can in /proc/interrupts"
> > are:
> > 
> > - It clutters the output badly: the formatting of this file, which is
> >    bad enough when you have a small number of CPUs, becomes unreadable
> >    when you have a large number of them *and* stupidly long strings
> >    that only make sense on a given platform.
> > 
> > - Like it or not, /proc is ABI. We don't change things randomly there
> >    without a good reason, and debugging isn't one of them.
> > 
> > - Debug information belongs to debugfs, where we already have plenty
> >    of stuff (see CONFIG_GENERIC_IRQ_DEBUGFS). I'd rather we improve
> >    this infrastructure if needed, rather than add platform specific
> >    hacks.
> > 
> > </rant>
> > 
> > Thanks,
> > 
> > 	M.
> 
> Thanks Marc/Geert.  Sounds like we should drop patch 2 from series.

Sorry for not responding earlier (I was on vacation for a week). I'm
fine with dropping this patch.

> > 
> > > See also "[PATCH 0/4] irqchip: renesas: Use proper irq_chip name and parent"
> > > (https://lore.kernel.org/lkml/20190607095858.10028-1-geert+renesas@glider.be/)
> > > Note that the irqchip patches in that series have been applied; the gpio
> > > patches haven't been applied yet.
> > > 
> > > > --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> > > > +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> > > > @@ -858,7 +858,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
> > > >                  struct gpio_irq_chip *girq;
> > > > 
> > > >                  irqc = &chip->irqchip;
> > > > -               irqc->name = "bcm-iproc-gpio";
> > > > +               irqc->name = dev_name(dev);
> > > >                  irqc->irq_ack = iproc_gpio_irq_ack;
> > > >                  irqc->irq_mask = iproc_gpio_irq_mask;
> > > >                  irqc->irq_unmask = iproc_gpio_irq_unmask;
> > > 
> > > Gr{oetje,eeting}s,
> > > 
> > >                          Geert
> > > 
> > > -- 
> > > Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> > > 
> > > In personal conversations with technical people, I call myself a hacker. But
> > > when I'm talking to journalists I just say "programmer" or something like that.
> > >                                  -- Linus Torvalds
> > > 
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
