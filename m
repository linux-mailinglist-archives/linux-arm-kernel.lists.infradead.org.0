Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F432DC409
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9isUTxgOMYE6gc5D7IC/xOCes+WRlvh56W0QJFndIk=; b=enOhVhU36TvMlV
	XJ1cpyKWoIdDJO021NfFDSI8exYlAvpfrR1HKkf1vhN64Jd7mvB6jYr9pjcWRoRgifOFqb3ecLxQ9
	tzy4cBKw4CXw+rZgK8NZ1fsJc2mLh7edKWykE4ELaNDtcj64VgeNomWfIxD7ju3F+P91rxlNT0svY
	clKbCAx4K6Afg5nag+yB+ZW7yOoVKHVbccYOTpULnd8jOGUGrJZNK79mCFOzPi1t2d/Zq7BD5hJzX
	OnX11AnMMycsPl1o5TvamcFXuJ/nEvhbiapr1kkhvcNwtzmeYaI7d1mY1AV3GMk2yz5R8jHoQcLsz
	ZSAX3eU/eFiIDQWWIC8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQZQ-0007KE-Ej; Fri, 18 Oct 2019 11:37:24 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQZG-0007Jl-FQ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:37:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id r4so4314823edy.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 04:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vfacdRIZROtgaYKyvVVlViTaU4E6jqDJejGD7tuz/+s=;
 b=TvUQBq/NsvkK0uCyK5aaB1cOiOq38Cq7pGNXyhyOMe3ai76NPGio2T0PBOiFlsDSLZ
 R1sshtOTbas68n6dMsqEFSXVaqG4IevQuXPdjVu1uEIG6biMwYUGzfYiYtAI82R/BHDQ
 93FUxB1OwxHTphdgReKffJfPJ+UwhufDFKK7AoYI7qJrCzkXl1ewHruSYOkaAv7oZQPf
 qROubUq5dNJqlQt3Jn6QT3+p36Ij8wTlbM+kF7U05qeTtXpOV+L19PUsMIm32ErniBaY
 Ed2mj1G6gOS6Tuj2Nzck3c4Gx2RKyCehPdoOBwpR1QSXzbSyeJ3MjUCkprA0q8skNpxR
 C/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vfacdRIZROtgaYKyvVVlViTaU4E6jqDJejGD7tuz/+s=;
 b=arwOFFyAjts3LnljUX372GvshYz2VTG/6FJ/2JWb6zxA/m736/CQJyHf7VDUgOBgdv
 QVdCMdWhDL5lcZL8dZvS9gDSVon5+vM8uzGKzm9F6zK4/CiLmFM8kgO+8WwCon/QZhFv
 2j2YG57rN6CBDE72N21zp9zDT68MiyzKERLvywJ/Ediz2Z6CzHE7FIM+g0gR6LY5SXNe
 bqvBhPbUxIXJI+vKOLSQ6qBz+hyp2nAoFxKbY2led9qB1+qv00CY88YZNAKroQYwOfmO
 s+gzQsxHZ/hsfdiCO3wUUbw5iWhS0tYG6ALSqC6bKMzNiiCKEmBRA4IlHSZsf6618Bz/
 lmww==
X-Gm-Message-State: APjAAAWDF9m6Lg7ftu1E9KDKXE6Vy/IYoDXmAUmarw1Sej7qwGXfyOUj
 YwODkECcFaETvNJ5BU33c4fvp5aVPRBkMs+SYXo=
X-Google-Smtp-Source: APXvYqxUlMOimXUQfuCPwVTgyEMSYOoYavmpO7+8E+tfkwKA7hFgTUZ0o1J9m28yzcNWZg5OMp9rzMEP5i8JNur5xEo=
X-Received: by 2002:a17:907:4182:: with SMTP id
 mz2mr8019392ejb.326.1571398632465; 
 Fri, 18 Oct 2019 04:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191017025058.31528-1-hslester96@gmail.com>
 <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
 <CANhBUQ2yxGbjk_DgXbip=TPT=evzA5naoJSY9t1_Ep47e9oupw@mail.gmail.com>
 <CAHp75VeLyTi=gqfNr-=Tg36yQs_fYG__iQAxAEKdks0mqsTbug@mail.gmail.com>
In-Reply-To: <CAHp75VeLyTi=gqfNr-=Tg36yQs_fYG__iQAxAEKdks0mqsTbug@mail.gmail.com>
From: Chuhong Yuan <hslester96@gmail.com>
Date: Fri, 18 Oct 2019 19:37:00 +0800
Message-ID: <CANhBUQ1CnCHiY8tkCMcXZ3DAPcfnQZgfA_Fj4qf3yYBKGg10Wg@mail.gmail.com>
Subject: Re: [PATCH] spi: pxa2xx: Add missed security checks
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_043714_539858_4DC4CCE8 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 7:14 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 1:39 PM Chuhong Yuan <hslester96@gmail.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 5:35 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> > >
> > > On Fri, Oct 18, 2019 at 8:59 AM Chuhong Yuan <hslester96@gmail.com> wrote:
> > > >
> > > > pxa2xx_spi_init_pdata misses checks for devm_clk_get and
> > > > platform_get_irq.
> > > > Add checks for them to fix the bugs.
> > > >
> > > > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > > > ---
> > > >  drivers/spi/spi-pxa2xx.c | 6 ++++++
> > > >  1 file changed, 6 insertions(+)
> > > >
> > > > diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
> > > > index bb6a14d1ab0f..2e73d75a6ac5 100644
> > > > --- a/drivers/spi/spi-pxa2xx.c
> > > > +++ b/drivers/spi/spi-pxa2xx.c
> > > > @@ -1565,7 +1565,13 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
> > > >  #endif
> > > >
> > > >         ssp->clk = devm_clk_get(&pdev->dev, NULL);
> > > > +       if (IS_ERR(ssp->clk))
> > > > +               return NULL;
> > > > +
> > > >         ssp->irq = platform_get_irq(pdev, 0);
> > > > +       if (ssp->irq < 0)
> > > > +               return NULL;
> > >
> > > I'm not sure they are mandatory for all platforms.
> > > To be on the safe side, you simple need to add _optional() to the both
> > > call along with above change.
> > >
> >
> > As I know, this is the only one in spi which does not have a check for
> > devm_clk_get.
>
> For some it still may be optional. That's why better to check it and
> mention in the commit message.
>
> > Even if add _optional(), they still may return errors and need security checks.
>
> Of course, see "along with" in my previous comment.
>

Got it. I will send version 2 in which both _optional() and security
checks will be added.

> --
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
