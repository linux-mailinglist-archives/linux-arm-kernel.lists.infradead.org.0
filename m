Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D854C43C64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fmEvVctS7xTvaQBSQ97AyaQ3BDvF12rJe+4IRSwZas=; b=DQZoL1q1eWBQ+G
	4VNSzN4EXHvXphpCTCTouPW7gVMDXqIApFgKkMx5cpX7vV1Eo28/6d3M06pfX9tSU69wOiQja17t8
	69r6JdTdg/eAWQlpAa3NelE5mO5Od25aVN4vt5UFo68KKOgqYGXnDfz1ezkPC9noCJpjS71jW5s1f
	00wG5/1DXWU9Mnz1JOYbqsUm9e7H0ITrq//UnYaMUwkd2ZSIxn5RPGxnGFylOIuFS0VUFDkCgNckJ
	8ZgQl42p+3mfXMeCu4a5Vyk7+ZnthOApLd6ZyQnVKmORMZGmcK5EhF3lwJrmOxwpxZGWw6wgehs++
	XgYKbsSF8Ix4rs6m+lXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRlR-0006y5-Pr; Thu, 13 Jun 2019 15:35:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRlA-0006xC-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:35:29 +0000
Received: by mail-io1-xd43.google.com with SMTP id r185so17850619iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 08:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aF7WfJBqic6Edz88lRv/0CL+oI9ZSIdnX+8VgBOn3LM=;
 b=YFFG03ILxrBxA6EZc7HJyHTcZQG8lYtS0piFG6RoKFTL9WaRyzxFvfEfAYIJhj/ftv
 9ExuTCWv50qCckQUHlJWT2UsUYTEATiFrwqXse8mop93NQaSCaMjFPtYLHL53CS1iBdu
 FSSVPGtnBTxP4GW8ocS4dqqaF8GUvpBrzW2/4wt80dCCxcvClhxqJh5SbP92pc3pYdQl
 jlJmooBJcmedVvhBjo+Q5iscUzsWXs4DECS3/+7zXE3IHqrut20IQRp4C0HcFKIYAcT7
 4RLMs3kfUprhpOWBGSDxx6PuB5IH+dkxMni5cJQm3aX/POi0LH+cq45V7JYf6aWa4T1L
 TnxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aF7WfJBqic6Edz88lRv/0CL+oI9ZSIdnX+8VgBOn3LM=;
 b=sLwsvpK2ZuVrw3JByJI2iwmfthAbRj7XUSEiKKJJOC1hmEpLv3t75tvMStynO9z7KB
 B6qii/OLsKfqu7XhMs+f3JgECnVpUtU/i8Zle4F2y26ZasLutM6fO/L1bMgJxQQ6RfFM
 rpBPpj6krco/XyZi4gCIdCMfuFhUAEXnvMyxatmda3Dav1z6/C7DNneIx9c468vNypiH
 zluWGWtm9gJkfpD3ezd8WgldRZZ4fXb4GN6fak6XQrZkC9rdTvm9B0In+aDbbQ3BCn7D
 B7iyII5pM8/+/rPaEnk0iMyUZQkvMjwn7BHw8agkIBYGP8i1mHo4Jmmz+RlnaURDJEtq
 J0Lg==
X-Gm-Message-State: APjAAAVg+wJxNHdutAG2V+rmbV8WUv9dyfR6OrpLnoVmgrBhhOJ3tPpS
 qpFt0fPUl4GJB5T2MCe2+VXvUxVHlk/AKmEIjx8=
X-Google-Smtp-Source: APXvYqzEXd8Sr1aUseL+zTWDc5Ak4NVxezALw+LIg0QIm0xSXFjXqsm8USdWkhi9CiqHsaqRen64MfMyW8gnwFYF5X4=
X-Received: by 2002:a5d:9047:: with SMTP id v7mr36860549ioq.18.1560440127125; 
 Thu, 13 Jun 2019 08:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <20190527122752.uc7q6zkjti3zag4q@flea>
 <CAEExFWtxEB67Pv-8x4ry=tZcJjOD6Kxydq_YB73Gox25VmQn7A@mail.gmail.com>
 <20190612154325.m6z7xsxlpdq4wkxv@flea>
In-Reply-To: <20190612154325.m6z7xsxlpdq4wkxv@flea>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 13 Jun 2019 23:35:15 +0800
Message-ID: <CAEExFWskAsNquULKBLtBFUOosNpks8L6aUhw-+cF=oZ0aghAtQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_083528_094888_C64F3770 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 9:26 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Fri, Jun 07, 2019 at 09:34:44PM +0800, Frank Lee wrote:
> > On Mon, May 27, 2019 at 8:27 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > +     ret = devm_request_threaded_irq(dev, irq, NULL,
> > > > +                                     tmdev->chip->irq_thread,
> > > > +                                     IRQF_ONESHOT, "ths", tmdev);
> > > > +     if (ret)
> > > > +             return ret;
> > >
> > > Is there any particular reason to use a threaded interrupt?
> >
> > Just to improve real-time.
>
> What do you mean by real-time here? If anything, that will increase
> the latency of the interrupts here.
>
> And in preempt-rt, regular top-half interrupts will be forced into a
> threaded interrupt anyway.
>
> > > > +static int sun8i_ths_remove(struct platform_device *pdev)
> > > > +{
> > > > +     struct ths_device *tmdev = platform_get_drvdata(pdev);
> > > > +
> > > > +     clk_disable_unprepare(tmdev->bus_clk);
> > >
> > > I know that we discussed that already, but I'm not sure why you switch
> > > back to a regular call to regmap_init_mmio, while regmap_init_mmio_clk
> > > will take care of enabling and disabling the bus clock for you?
> >
> > It seems that regmap_init_mmio_clk just get clk and prepare clk
> > but no enable.
>
> At init time, yes. But it will enable it only when you access the
> registers, which is what you want anyway.

But after accessing the register, it turns the clock off, which
affects the ad conversion and the occurrence of the interrupt.

In addition, when resuming from suspend, we need to enable
the clock, so I think it is necessary to have a clock pointer.

Yangtao

>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
