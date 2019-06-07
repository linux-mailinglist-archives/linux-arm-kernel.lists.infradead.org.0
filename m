Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7514B39400
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3n5BmRagbgyyd4wgoBsnSX6jeSKDztTo3XPwH70A92E=; b=lzzrAI8jq6fW2d
	9pwmHSI+soNwKqRSVbEkpblQY+bJELGJnVKYy7FdgXBEr2WNzVN8qU0D9KqnL2bdB+eDYpyg+VLnt
	0ZD6o9JHjOp2CycNd27sc/lBDMc1yRwVL4Hs2s8S7JbXTVUeuxPp2DKmSt2No/Jbp6l0i4VuHAblF
	iA40BZsCJw/y/SK0myFG1GzN/XOFanr3CV7vp/pjbJ+Q/Z0kkVKJInG8THrOoQVGyUdjKuApyehpZ
	fllbKDO6nBx5OWpSvNRxHEo6E3ClInufR534g4DVa+ZLBSWIN7PyTQ8ZqL/gYNFx38r4Rlk4yfzb2
	Yah3c2XwaVAKm0M2D5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJJN-0007av-Fb; Fri, 07 Jun 2019 18:09:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJJE-0007a1-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 18:09:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so1644559pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 11:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/3m639ul9fLGHczHyKn0H1zZg+5SVSXXo1Nl+CYKby4=;
 b=PzFmnwe5R9+tXehwIXZM6y8FoShB+B2G5A0MZe7+0cyb/EOpN+t4FPLENdAFQiY4vp
 snMFvVlNDWgHWDB2eUSQIPp1jPpux+sTG071CiSoW9pKxLK4lCyinxlVC7k40V6c7NyM
 z5pTl9+LJCEFZIC3Qz7jsfCfXo3GXCw4hr6fH/Of0zai00v9lD1BaHATpmLQ9qqU0zRI
 HEJWGafkIT/mIu9OHFbD7peMSgFffJJnzRTXUZh94uyM4rRLf4WGCbHpAYNJSgv6Pp+D
 fd+lIHwpViriTTXjPu1DqDEtndYAxhmI9tO3EsjbdeUbHvIlHX+VrJDGetgrOd1J7w40
 Dz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/3m639ul9fLGHczHyKn0H1zZg+5SVSXXo1Nl+CYKby4=;
 b=GvHwQ9kiI48lT5UyMdwhmdUpfNOnVjBeo+v9cvvnwLTmAj+tFwK2ZA9cMNfxD4DOus
 oMzK9AFPtMe2h1/com7APykJ0MLoOoJJ2ckApCqT8mnBeA8oJIPASHsqFuiaXy5wIkyD
 BXLxXHERy9vCci+DPhFcRO/CAy7v5hwQ+DCMDRsJkRBCVT3vnEkdbrVaCmUxei+9U+fd
 Q7TibEW5kfwPr+WaDVPMauilbY0iiPLbXwOvyZHGDGfbye9S9IOWNRacuGJ3aSHL2a7X
 fbMAja9cZs6cNAa9d8rTXl4Vk1ANzUcwU6T+RoiA7RwF2ldYI7T3tDh6SgWY+nHV9nFL
 Zlsw==
X-Gm-Message-State: APjAAAX1nQcqJQwFwmeqL2mqGgjdD0+vXRsXRc3m9h1yLZx6mOdVG3+2
 nm4kAbNPEzbhPLLOBUXRQH6lgQ==
X-Google-Smtp-Source: APXvYqzt5gwdXKwtn7ZORpYSN5ZFetcAiXsBwVaXb6cj35kEgitwNjg1kWrl11fOzV9tGYSsCfKnXw==
X-Received: by 2002:a62:3287:: with SMTP id y129mr4134583pfy.251.1559930986308; 
 Fri, 07 Jun 2019 11:09:46 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id l44sm6897224pje.29.2019.06.07.11.09.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 11:09:45 -0700 (PDT)
Date: Fri, 7 Jun 2019 11:10:30 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Message-ID: <20190607181030.GX22737@tuxbook-pro>
References: <20190607082901.6491-1-lee.jones@linaro.org>
 <20190607082901.6491-3-lee.jones@linaro.org>
 <CAKv+Gu-1QhX-9aNhFJauc9NVe6ceQQueE8Kd14031XJ-2yaupA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-1QhX-9aNhFJauc9NVe6ceQQueE8Kd14031XJ-2yaupA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_110948_960074_CF4E8D31 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 07 Jun 04:10 PDT 2019, Ard Biesheuvel wrote:

> On Fri, 7 Jun 2019 at 10:29, Lee Jones <lee.jones@linaro.org> wrote:
> >
> > When booting MSM based platforms with Device Tree or some ACPI
> > implementations, it is possible to provide a list of reserved pins
> > via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
> > However some ACPI tables are not populated with this information,
> > thus it has to come from a knowledgable device driver instead.
> >
> > Here we provide the MSM common driver with additional support to
> > parse this informtion and correctly populate the widely used
> > 'valid_mask'.
> >
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> 
> I'm not sure if this is the correct approach. Presumably, on ACPI
> systems, all the pinctl stuff is already set up by the firmware, and
> so we shouldn't touch *any* pins unless they have been requested
> explicitly. Is there any way we can support this in the current
> framework?
> 

The only reason why we do this (at least the initial reason) is because
gpiolib will read the current state of all GPIOs during initialization.

But due to the sensitive nature of the application using these pins
Linux is prohibited from touching the associated GPIO/pinmux/pinconf
registers - resulting in a security violation if we allow gpiolib to
touch them.


When it comes to pinmux/pinconf those are only poked explicitly and
those seems to be described in PEP nodes, such as:

	Package (0x02)
	{
	    "TLMMGPIO",
	    Package (0x06)
	    {
		0x2C,
		One,
		Zero,
		One,
		Zero,
		Zero
	    }
	},

So the pinctrl-sdm845/msm drivers gives us GPIOs, but for pinconf and
pinmux there's a need for something very different from what we're used
to.

Regards,
Bjorn

> > ---
> >  drivers/pinctrl/qcom/pinctrl-msm.c | 18 ++++++++++++++++++
> >  drivers/pinctrl/qcom/pinctrl-msm.h |  1 +
> >  2 files changed, 19 insertions(+)
> >
> > diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
> > index ee8119879c4c..3ac740b36508 100644
> > --- a/drivers/pinctrl/qcom/pinctrl-msm.c
> > +++ b/drivers/pinctrl/qcom/pinctrl-msm.c
> > @@ -607,8 +607,23 @@ static int msm_gpio_init_valid_mask(struct gpio_chip *chip)
> >         int ret;
> >         unsigned int len, i;
> >         unsigned int max_gpios = pctrl->soc->ngpios;
> > +       const int *reserved = pctrl->soc->reserved_gpios;
> >         u16 *tmp;
> >
> > +       /* Driver provided reserved list overrides DT and ACPI */
> > +       if (reserved) {
> > +               bitmap_fill(chip->valid_mask, max_gpios);
> > +               for (i = 0; reserved[i] >= 0; i++) {
> > +                       if (i >= max_gpios || reserved[i] >= max_gpios) {
> > +                               dev_err(pctrl->dev, "invalid list of reserved GPIOs\n");
> > +                               return -EINVAL;
> > +                       }
> > +                       clear_bit(reserved[i], chip->valid_mask);
> > +               }
> > +
> > +               return 0;
> > +       }
> > +
> >         /* The number of GPIOs in the ACPI tables */
> >         len = ret = device_property_read_u16_array(pctrl->dev, "gpios", NULL,
> >                                                    0);
> > @@ -964,6 +979,9 @@ static void msm_gpio_irq_handler(struct irq_desc *desc)
> >
> >  static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
> >  {
> > +       if (pctrl->soc->reserved_gpios)
> > +               return true;
> > +
> >         return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
> >  }
> >
> > diff --git a/drivers/pinctrl/qcom/pinctrl-msm.h b/drivers/pinctrl/qcom/pinctrl-msm.h
> > index c12048e54a6f..23b93ae92269 100644
> > --- a/drivers/pinctrl/qcom/pinctrl-msm.h
> > +++ b/drivers/pinctrl/qcom/pinctrl-msm.h
> > @@ -121,6 +121,7 @@ struct msm_pinctrl_soc_data {
> >         bool pull_no_keeper;
> >         const char *const *tiles;
> >         unsigned int ntiles;
> > +       const int *reserved_gpios;
> >  };
> >
> >  extern const struct dev_pm_ops msm_pinctrl_dev_pm_ops;
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
