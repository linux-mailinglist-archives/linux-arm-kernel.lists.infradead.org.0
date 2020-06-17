Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CB71FCF01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m9oP/+jg2my3DZz3PZVsVMrxGa6PTqBeEJMQuDscJlk=; b=Htvkl+D3Hs9tKP6IfCs2tp7Ho6
	MHnr2kxVY7oz/ApCfHaONI0OCpsI8wCZJ+mK0CGO7NOOrEH5KyR1DAyUw8HDYFsqQ9lZQmx7wqM57
	NdSgrclz1wi7x6kiV7loP8dYyCoD31TZW7xUzB1LR672fGGNp2Ab5SeEhvg61RzJVUXlWqs5yuuX2
	gs5/ip7IuWjpEFupQ+qwidNEdns5DLE5KDZY3EO+zbhnm1ORZ0LEijogjZ7/TX0RP+DHdVCatkyi5
	fCS52UaKyoT3O/XL1Wig2CbRlGTh4pC2hY1P4zylnUYnrN8l3YahQeAodAc66RgXj0pLRHHCflfu9
	Rs0IWKBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYba-0007Hn-3E; Wed, 17 Jun 2020 13:59:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYbO-0007Fk-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:59:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id l10so2435320wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 06:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=8bUOsv4bybXC/mQ3Hxos70tmB9QZ6NyHuFcpp79A5zQ=;
 b=Go/+9ZBYINQ9VUzlG0iy74ta2eMH67TuPQd2a+TF/sBt1oDLA9sLMJqB62Ar8RWkxk
 0sMcyp1Z7ffxSVOFPq5o3HwWy/I9Gh59I7ek3lR7TQUAdmVRbMN5vhgLZdSjm7TZVpRc
 TdGlYfUFt0+J7VmicXsaaErvjTwwzLmZuLC32D1hsM6QcsOcTG+TMIZR7FggXwksyxZy
 MHt6K4cZJCrH1l4XidjoTTls8O3VpQMIvnVQniuNSzyuG0wShjvJ5BWHOK6ct3vPBpHs
 s+8qg0dX1W7EV24+vVAci6qja8ItjS68bPV8pFuU4Ro/QYk2MddfUPU6veYTM1dyC3tC
 WiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=8bUOsv4bybXC/mQ3Hxos70tmB9QZ6NyHuFcpp79A5zQ=;
 b=NKMO3dvteLNwSEI4WqDJSKGecsOnK/yJZdJyNg90tcsgGSn83zOaZzS4dVLhRCcnm1
 Wg4PwgWwK9xZ0UFAksc9QiydM+pt8XkT+jv+GFFlYPADwhapPX7TjHkSmkWs7yChqltc
 e6eg+SYw/245qbbdEl3MdbvgPKGpF6VkFnd4SPOdLSSJk/+iX1HYl+Y8D2Iybx1i17UK
 IGZi0PrbTiGB1jXtgODy4M51l1ftogl1zGNoettTdiIwJgd8XFJxiNuZPalU/uEvAC1a
 soPCexFw03nliuh0AIGtQF2l0djwFXeAZJVBmQwmvo6IpIh13emDZPnzJ34GHoEDiK3A
 u3ag==
X-Gm-Message-State: AOAM533YEhXrOAGzZF6ysUd+mevaJjsVGtELR6s/Xp7pGX7bfdnx6RQh
 it+CKzYggALbYh0DowUnGhsQqQ==
X-Google-Smtp-Source: ABdhPJyZoDgBWJusMEybO4nVCF1jKe4N/ywOBHUQE8w7mWB2J38E0OeLsvstMXvxyC+4R8rFG2dxyA==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr8474999wrt.160.1592402377338; 
 Wed, 17 Jun 2020 06:59:37 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id y132sm610312wmb.11.2020.06.17.06.59.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 06:59:36 -0700 (PDT)
References: <20200610041329.12948-1-hhk7734@gmail.com>
 <1jo8prnk2x.fsf@starbuckisacylon.baylibre.com>
 <20200611053958.GA3687@home-desktop>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Hyeonki Hong <hhk7734@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 khilman@baylibre.com
Subject: Re: [PATCH] pinctrl: meson: fix drive strength register and bit
 calculation
In-reply-to: <20200611053958.GA3687@home-desktop>
Date: Wed, 17 Jun 2020 15:59:35 +0200
Message-ID: <1jeeqd3i9k.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_065942_182897_5D156563 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 11 Jun 2020 at 07:40, Hyeonki Hong <hhk7734@gmail.com> wrote:

> On Wed, Jun 10, 2020 at 03:09:42PM +0200, Jerome Brunet wrote:
>> 
>> On Wed 10 Jun 2020 at 06:13, hhk7734@gmail.com wrote:
>> 
>> > From: Hyeonki Hong <hhk7734@gmail.com>
>> >
>> > If a GPIO bank has greater than 16 pins, PAD_DS_REG is split into two
>> > registers. However, when register and bit were calculated, the first
>> > register defined in the bank was used, and the bit was calculated based
>> > on the first pin. This causes problems in setting the driving strength.
>> >
>> > Solved the problem by changing the bit using a mask and selecting the
>> > next register when the bit exceeds 15.
>> 
>> This fixes the case of GPIOX on g12 which goes up to 18 yes but the same
>> problem will happen again a if bank ever goes past 31 pins. In such case
>> the problem would apply to all reg types.
>> 
>> I would prefer if it was solved in a more generic fashion, like defining
>> a "stride" table with the values of each reg type. This table can common
>> to all aml SoCs for now but eventually it probably need to be SoC
>> specific.
>> 
>> This would allow to :
>> A) handle the case you are reporting in a generic (future proof) way
>> B) remove the weird "bit = bit << 1;" calc in place in the get/set of
>> the drive strengh pinconf
>
> If all amlogic SoC has same register style, I think the code below is fine.
>
> static const unsigned int meson_bit_strides[] = {
> 	0, 0, 0, 0, 0, 1, 0
> };

 the table above is the shift, not the stride.
 Maybe 'width' is a better description
 I would prefer if it was { 1, 1, 1, 1, 1, 2, 1 } and adjust the caculation

A part from this, your proposition is exactly what I meant :) Thx

>
> static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,
> 				   enum meson_reg_type reg_type,
> 				   unsigned int *reg, unsigned int *bit)
> {
> 	struct meson_reg_desc *desc = &bank->regs[reg_type];
>
> 	*bit = (desc->bit + pin - bank->first) << meson_bit_strides[reg_type];
> 	*reg = (desc->reg + (*bit / 32)) * 4;
> 	*bit &= 0x1f;
> }
>
> How about this?
>
>> >
>> > Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
>> > ---
>> >  drivers/pinctrl/meson/pinctrl-meson.c | 7 +++++++
>> >  1 file changed, 7 insertions(+)
>> >
>> > diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
>> > index bbc919bef2bf..ef66239b7df5 100644
>> > --- a/drivers/pinctrl/meson/pinctrl-meson.c
>> > +++ b/drivers/pinctrl/meson/pinctrl-meson.c
>> > @@ -98,6 +98,13 @@ static void meson_calc_reg_and_bit(struct meson_bank *bank, unsigned int pin,
>> >
>> >  	*reg = desc->reg * 4;
>> >  	*bit = desc->bit + pin - bank->first;
>> > +
>> > +	if (reg_type == REG_DS) {
>> > +		if (*bit > 15) {
>> > +			*bit &= 0xf;
>> > +			*reg += 4;
>> > +		}
>> > +	}
>> >  }
>> >
>> >  static int meson_get_groups_count(struct pinctrl_dev *pcdev)
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
