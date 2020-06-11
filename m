Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC01F6150
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 07:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CX7pdr0BaUfL6qUi9xJFPWI0drfkNhaxWUe6o4yChyE=; b=FtB798+nqWkqXv
	o3Ba8FumsQJLfECYj4ywGvLHvXuI7P4QxVwJFmn/RLzDrB/VszxbPbqekVV0pjGw3UFaCEBlUl8kZ
	HISzW1WDhBKISD/zbYXO/jfHGfp532kumO04cZNtG82QDVdHFxDRoQOjB2UyrVWaPvRCDUqY265gW
	8E14dVqyHDWdVB3OYKR/XPk1enbjlnLSyElK7E5HfPqWqgfHbvmvBMopjvzzjkjKD5xQXbHCmfD5X
	7Y0HjXciTYjNP2KV03W9jpryBGgULyS/nOc6sJoAUcfOlh9Eg3MBxsdQ/H28GpGp5OgLW8VBMWJnX
	bqLjUtpfd0jDeWIUbG5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFwo-0000b2-Ca; Thu, 11 Jun 2020 05:40:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFwc-0007v1-Lv; Thu, 11 Jun 2020 05:40:08 +0000
Received: by mail-pl1-x643.google.com with SMTP id k1so1801159pls.2;
 Wed, 10 Jun 2020 22:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N3UrA+L6fKKCkym6ASMJYc2jRNYVOVnvVJE5werYGnw=;
 b=d+nqjy+4dUFQIg+J7rUYD67mgnGPhyWqgBudPF6w+rSZlq/KfbJbVmdiKBinBCNo4e
 XqihGj7fGfpJUr9AKyRJuZsSPS4jAIVsR1RaqVH2ri3bGI96f1OqmAExijXBGJQFjeVZ
 5mDhEDzq4LQr9cpcqVVEZY2AhNa09dLlmdJtwIyyFwDLmBV+8JEU9VCN/CExVS6JJDH3
 p3rfO81wkPJOcva7I/m0r0SqGwAFOmvPF8pmNAgkn/TWFTgGlKhzeiuHYBhLFEs9fknD
 mH9D1QR0KZ8xgTFHImkXGpHF/YYlRi8ZUCQtZfZ9atnvpBYBI2w4YgNs+7KES9d0Hf3K
 gxGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N3UrA+L6fKKCkym6ASMJYc2jRNYVOVnvVJE5werYGnw=;
 b=Ypvvlg1HJSpXNRQML9c73wTYJbY5Y0mOR1WmMVZ1yhEjbpv39lQiWs6DdVARe4/4SN
 +bBUHWyz5i4CHSfsF86CtIcD5IxTUMMYUV9ckXqX7JPvo4Sjanx+vuWIDkDdLQVy6ywc
 Gkqi3WlKR8WmwDSekX9KrIxU/zKzolzwkkHHPwE00mflJqhY1URoKqRej0lAT+gX7gMN
 ytLy4mO2/dBKDPa/UluUt1ciYmugg/gb0Lf5J8Ima3uiJy86+1l/sozpIwlBlX+ys6nX
 T9WFpD2+xhT1x9Bv+lUKL+VUG7UvpX0gyXXqBGlQmKyp8wHbOMewhHbUGUITTKI2rCNH
 C7+w==
X-Gm-Message-State: AOAM531xjL+PWqitm0ZT7pG0DYQXg2ws9lRnWV/fqRS2MfYr+c2amPcy
 mP9ji7OiHU2YDyLr2xwKBEA=
X-Google-Smtp-Source: ABdhPJy15V32sZVFTROxJJwV3ePEVFwMYm9dYGuNHyquDslsLMT4bbOHF9vhKYSZ75x5MpfJBaampg==
X-Received: by 2002:a17:902:9346:: with SMTP id
 g6mr5772701plp.19.1591854005732; 
 Wed, 10 Jun 2020 22:40:05 -0700 (PDT)
Received: from home-desktop ([114.204.138.55])
 by smtp.gmail.com with ESMTPSA id s1sm1392337pjp.14.2020.06.10.22.40.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jun 2020 22:40:04 -0700 (PDT)
Date: Thu, 11 Jun 2020 14:40:00 +0900
From: Hyeonki Hong <hhk7734@gmail.com>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, khilman@baylibre.com
Subject: [PATCH] pinctrl: meson: fix drive strength register and bit
 calculation
Message-ID: <20200611053958.GA3687@home-desktop>
References: <20200610041329.12948-1-hhk7734@gmail.com>
 <1jo8prnk2x.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1jo8prnk2x.fsf@starbuckisacylon.baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_224006_743493_6CB687A0 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hhk7734[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hhk7734[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 03:09:42PM +0200, Jerome Brunet wrote:
> 
> On Wed 10 Jun 2020 at 06:13, hhk7734@gmail.com wrote:
> 
> > From: Hyeonki Hong <hhk7734@gmail.com>
> >
> > If a GPIO bank has greater than 16 pins, PAD_DS_REG is split into two
> > registers. However, when register and bit were calculated, the first
> > register defined in the bank was used, and the bit was calculated based
> > on the first pin. This causes problems in setting the driving strength.
> >
> > Solved the problem by changing the bit using a mask and selecting the
> > next register when the bit exceeds 15.
> 
> This fixes the case of GPIOX on g12 which goes up to 18 yes but the same
> problem will happen again a if bank ever goes past 31 pins. In such case
> the problem would apply to all reg types.
> 
> I would prefer if it was solved in a more generic fashion, like defining
> a "stride" table with the values of each reg type. This table can common
> to all aml SoCs for now but eventually it probably need to be SoC
> specific.
> 
> This would allow to :
> A) handle the case you are reporting in a generic (future proof) way
> B) remove the weird "bit = bit << 1;" calc in place in the get/set of
> the drive strengh pinconf

If all amlogic SoC has same register style, I think the code below is fine.

static const unsigned int meson_bit_strides[] = {
	0, 0, 0, 0, 0, 1, 0
};

static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,
				   enum meson_reg_type reg_type,
				   unsigned int *reg, unsigned int *bit)
{
	struct meson_reg_desc *desc = &bank->regs[reg_type];

	*bit = (desc->bit + pin - bank->first) << meson_bit_strides[reg_type];
	*reg = (desc->reg + (*bit / 32)) * 4;
	*bit &= 0x1f;
}

How about this?

> >
> > Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
> > ---
> >  drivers/pinctrl/meson/pinctrl-meson.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
> > index bbc919bef2bf..ef66239b7df5 100644
> > --- a/drivers/pinctrl/meson/pinctrl-meson.c
> > +++ b/drivers/pinctrl/meson/pinctrl-meson.c
> > @@ -98,6 +98,13 @@ static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,
> >
> >  	*reg = desc->reg * 4;
> >  	*bit = desc->bit + pin - bank->first;
> > +
> > +	if (reg_type == REG_DS) {
> > +		if (*bit > 15) {
> > +			*bit &= 0xf;
> > +			*reg += 4;
> > +		}
> > +	}
> >  }
> >
> >  static int meson_get_groups_count(struct pinctrl_dev *pcdev)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
