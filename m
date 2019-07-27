Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE4C77940
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fh79j8N/7Y67YfYiogK6+jgTnVCkdTf3bwRA7aLJkVo=; b=QzOcqm41sCjsmg
	p0YxBXhby/GLGdZTknOL57YDLpHEEJslQFGOW8KJJR2fV0teYF4SD0ecGUgoAN99L3RgmEo66ictn
	bUl3uAioDd//DrDdxJ9uDdy5iqO6NIQzJl6+1u87ETF6xaSvjF4R6UmPNpiVmU3dZHMjGtzmfo25E
	dNqL5eVCetFk+HTF52nDApp6ccJTjxVic/Goqp0/9CUn6IExqnuth1CkiFOZF6Q8kETdXm+d1Oebb
	Xf1efOq22+i4AvTEKGT4Cs/MRjHVBlTVBOX5n3hMe0fLpjFJymcsHwF6a/2uS8IlzJ2TvHL8UxKd1
	Fef8LiAbmksCyqJQv7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNgY-00088t-83; Sat, 27 Jul 2019 14:28:34 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNfi-00081K-Jl
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:27:48 +0000
Received: by mail-ed1-f68.google.com with SMTP id x19so49692077eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 07:27:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P5LMz+F5HmGiI0OaPOZ+zlAMKqfMWikw1NmVc9ZxKJI=;
 b=ID/om/Yc87DaIq2QvBdoOR3t4nC9m84oZbo+BnrBTArDUVT4LTnoQGYWRM9sW9cqzq
 +amvf9LG3pBtyv9EJ6eP1/GG5b3i2BOmteRJoY4uqhsmf4J1q0YdraXyPq23IIQFFNOh
 U/BVkyybg2yIfunCpakPQojyu7sJRQxBlMc/OZwhUuds5CevMzF09L9WNfDCgzTNuCkU
 DWySmlTdJ2+D4r6eQ8iS9R0B/2lYXFypCABSfQcP4apCejOK88Hd3CBubmHk58nHmWBC
 3P2uK0fzOI2nudrLezR9eUPwLAHM8ceJuPVH1murZXBF2acrJfMD46ir/EDNI2R9wwiG
 TZmg==
X-Gm-Message-State: APjAAAUn1XlZCrZwjBY+lINzyzYm0myR6Qu0W0BIzVt4IIrXinVmJfgp
 /DLIii1/wzqz/wcvwmznNSe2+M3cOoU=
X-Google-Smtp-Source: APXvYqwdS01ckzMUQjiZ5ZWeih1h3/SZxGu9CAhvneUxpGTNZmy7yxD8wJc5OazpY0bAI/nFGc7PXQ==
X-Received: by 2002:a50:fd0c:: with SMTP id i12mr90479499eds.55.1564237658001; 
 Sat, 27 Jul 2019 07:27:38 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id c53sm14961492ede.84.2019.07.27.07.27.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 07:27:36 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id a15so50208722wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 07:27:36 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr88536023wmc.25.1564237656507; 
 Sat, 27 Jul 2019 07:27:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
 <20190727104628.jsdvpxvcpzru75v5@flea.home>
In-Reply-To: <20190727104628.jsdvpxvcpzru75v5@flea.home>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 27 Jul 2019 22:27:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v67h3Y1rhCSF-MTmVBOEnbWZKvvFg5DzGUWPqcxLcv-6tg@mail.gmail.com>
Message-ID: <CAGb2v67h3Y1rhCSF-MTmVBOEnbWZKvvFg5DzGUWPqcxLcv-6tg@mail.gmail.com>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_072743_926870_F3D18D3F 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 6:46 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Fri, Jul 26, 2019 at 08:40:42PM +0200, Jernej Skrabec wrote:
> > H6 PWM core needs bus clock to be enabled in order to work.
> >
> > Add a quirk for it.
> >
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> >  drivers/pwm/pwm-sun4i.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > index 1b7be8fbde86..7d3ac3f2dc3f 100644
> > --- a/drivers/pwm/pwm-sun4i.c
> > +++ b/drivers/pwm/pwm-sun4i.c
> > @@ -72,6 +72,7 @@ static const u32 prescaler_table[] = {
> >  };
> >
> >  struct sun4i_pwm_data {
> > +     bool has_bus_clock;
> >       bool has_prescaler_bypass;
> >       bool has_reset;
> >       unsigned int npwm;
> > @@ -79,6 +80,7 @@ struct sun4i_pwm_data {
> >
> >  struct sun4i_pwm_chip {
> >       struct pwm_chip chip;
> > +     struct clk *bus_clk;
> >       struct clk *clk;
> >       struct reset_control *rst;
> >       void __iomem *base;
> > @@ -382,6 +384,16 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
> >               reset_control_deassert(pwm->rst);
> >       }
> >
> > +     if (pwm->data->has_bus_clock) {
> > +             pwm->bus_clk = devm_clk_get(&pdev->dev, "bus");
> > +             if (IS_ERR(pwm->bus_clk)) {
> > +                     ret = PTR_ERR(pwm->bus_clk);
> > +                     goto err_bus;
> > +             }
> > +
> > +             clk_prepare_enable(pwm->bus_clk);
> > +     }
> > +
>
> The patch itself looks fine, but you should clarify which clock is
> being used by the old driver.
>
> My guess is that the "new" clock is actually the mod one, while the
> old one was both the clock of the register interface (bus) and the
> clock of the PWM generation logic (mod).

The H6 datasheet explicitly states:

    The clock source of PWM is OSC24M. The PWM is on APB1 Bus. Ensure
    that open APB1 Bus gating and de-assert reset signal when accessed
    to the PWM.

Older datasheets do not have anything about bus gating or resets. However
with slightly newer ones that have a system bus tree diagram, we can see
that PWM is on APB1 (or APB0/APBS for R_PWM). We can assume there is no
bus gate and thus it is directly attached to APB1, and that we never
modeled this part.

So the new clock is definitely the bus gate. You might want to introduce
a patch renaming sun4i_pwm_data.clk to sun4i_pwm_data.mod_clk before this
one.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
