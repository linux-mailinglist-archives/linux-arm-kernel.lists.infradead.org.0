Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F2818A878
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GacbWv+yrajDdmVwvf8YEv6QrREeMtOcU9MM2KsbXE=; b=irceAicoZQoCHk
	bv5epyrK3Zsx443IP4Vj9yQe3VFeFlErENRMA/JnYhYCwSm8NZsOdYHoAW9TCU6NFkla21X0ViafE
	iCgLcqak0QqIXFQl72svSVaml5xVg3xRCbznD0ije9QAyOsXo8NWj0+KrhrCov9S4KFPNe7BOouFv
	nFazYmmrNfy2pDRYnkpfm+Rlak3fjPQzEvTKBMmM2k26eIj4QjM+VUo+jq9aQALf3TwUlA+qo4oNJ
	TZQqQmK7ealJSKi5j9p49Mat1t6CUvAZlE7yo103nEQpynzqnQRgtFmpfC0x2bUuBkxx841Bc/qlO
	Q5bZxSPlB8/0VWM1WYVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhOn-0007iO-6q; Wed, 18 Mar 2020 22:42:53 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhOK-0007WL-LB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:42:27 +0000
Received: by mail-ot1-x342.google.com with SMTP id i12so409349otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 15:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xmDtlPZZt6AhkIa9RNZ63X94d3qxtY/pBeuqTxtM6B8=;
 b=b7nNzbOXPtnvlE3gG1PJ0B6/TDG5+2bsj66N8oWRaWt+djk+gNRA8ueaW1TI6ofTIi
 Dv3DBijbD4E6cWOZT9jT7J2AjcCLp7qxEdmfvs35qp8VSBkLgeuD7+FdXReOQHsFlulT
 tFICkBCaM3fwRoF8rlvtkXP6Jgt0PQIxVv0vzYdfigRS+BQVKMCSxh9/JIDU4vpW7wTk
 Lv+O5O31N0BTBOeJVK60H5HnMazVMh1LWfXvZisI5fNIw4fuM8B9IM0DWcgt2K6npEJS
 MenqtwxHDFLS3kjlniGTDeld7jBtod/fnDZiAm6H9yD9AvqFuY6Pz+akI9ujCi6cNBKo
 Sc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xmDtlPZZt6AhkIa9RNZ63X94d3qxtY/pBeuqTxtM6B8=;
 b=pqa1PCP3pgHWYyszqyBBYXFjhSKZg9GJ1IYA8zXJrS3zQStsVhKIMzygMqf3IBoS8z
 xY4C89cjRhh2jzm3p1vEtLY2hNrsfEsenSv1EoS+9/DpzAAU5TIgkDEakOGFpqaLJl7z
 /RI9jMypIlssh3c04OAmGG0Sk3kp8nAQJlyB55KN4FybAiAh+jGLD14FJO9Ijmf6Kerx
 Zi1VGwsJpcXW0vT2A7MrQq2cXJ0Y4rUcuE0IeB4rO0ZamxD07yem+3nd5mmmD1aWJuP1
 wK76FuLLFZq6QacYh8dPn8Vfq3CbhwtnGJg7PLGOf5jFIf8IMgXi5hlt13oszEf69P+E
 W8AQ==
X-Gm-Message-State: ANhLgQ2YZr+s4z215PyDey1cDbDAx29Ui+o5dFoqzMbJ+FFP+TmIohSL
 1lkN+MbUVerTdluficVI36Ro86iSyNEsHoLEFfw=
X-Google-Smtp-Source: ADFU+vsvjgAClOIMqrGGIb7SpXqS1gb1iFF33qVcEpJgyK0wGZvK+9LgyP8Z7Vpzi0hvGvTCOziEP0Qb1UkSCWhgSCQ=
X-Received: by 2002:a9d:6ac6:: with SMTP id m6mr6155284otq.198.1584571343441; 
 Wed, 18 Mar 2020 15:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212345.GM4751@pendragon.ideasonboard.com>
 <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
In-Reply-To: <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 18 Mar 2020 22:41:57 +0000
Message-ID: <CA+V-a8t-rA-6AmZry63QeXN6pvGWVtcEEuHaDA1jsS-x+30oiQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_154224_707496_0CC821D4 
X-CRM114-Status: GOOD (  26.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Fri, Mar 13, 2020 at 9:31 PM Prabhakar Mahadev Lad
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
>
> Hi Laurent,
>
> Thank you for the review.
>
> > -----Original Message-----
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Sent: 13 March 2020 21:24
> > To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Cc: Mauro Carvalho Chehab <mchehab@kernel.org>; Shawn Guo
> > <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> > Pengutronix Kernel Team <kernel@pengutronix.de>; Rob Herring
> > <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Sakari
> > Ailus <sakari.ailus@linux.intel.com>; NXP Linux Team <linux-imx@nxp.com>;
> > Magnus Damm <magnus.damm@gmail.com>; Ezequiel Garcia
> > <ezequiel@collabora.com>; Geert Uytterhoeven <geert@linux-m68k.org>;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-renesas-
> > soc@vger.kernel.org; Fabio Estevam <festevam@gmail.com>; linux-
> > media@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> > Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
> > external clock frequency to 24480000
> >
> > Hi Prabhakar,
> >
> > Thank you for the patch.
> >
> > On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> > > While testing on Renesas RZ/G2E platform, noticed the clock frequency
> > > to be 24242424 as a result the probe failed. However increasing the
> > > maximum leverage of external clock frequency to 24480000 fixes this
> > > issue. Since this difference is small enough and is insignificant set
> > > the same in the driver.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> > lad.rj@bp.renesas.com>
> > > ---
> > >  drivers/media/i2c/ov5645.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > > index 4fbabf3..b49359b 100644
> > > --- a/drivers/media/i2c/ov5645.c
> > > +++ b/drivers/media/i2c/ov5645.c
> > > @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
> > >  }
> > >
> > >  xclk_freq = clk_get_rate(ov5645->xclk);
> > > -/* external clock must be 24MHz, allow 1% tolerance */
> > > -if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> > > +/* external clock must be 24MHz, allow a minimum 1% and a
> > maximum of 2%
> > > + * tolerance
> >
> > So where do these numbers come from ? I understand that 2% is what you
> > need to make your clock fit in the range, but why -1%/+2% instead of -
> > 2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
> > range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
> > that PLL parameters depend on the clock frequency, but could they be
> > calculated instead of hardcoded, to avoid requiring an exact 24MHz input
> > frequency ?
> >
> To be honest I don't have the datasheet for ov5645, the flyer says 6-54Mhz but the
> logs/comment says 24Mhz.
>
Comparing to ov5640 datasheet [1] (which I am assuming might be
similar to ov5645), this change should affect the driver.

[1] https://cdn.sparkfun.com/datasheets/Sensors/LightImaging/OV5640_datasheet.pdf

Cheers,
--Prabhakar

> Cheers,
> --Prabhakar
>
> > > + */
> > > +if (xclk_freq < 23760000 || xclk_freq > 24480000) {
> > >  dev_err(dev, "external clock frequency %u is not
> > supported\n",
> > >  xclk_freq);
> > >  return -EINVAL;
> >
> > --
> > Regards,
> >
> > Laurent Pinchart
>
>
> Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, 40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldorf, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WEEE reg. no.: DE 14978647
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
