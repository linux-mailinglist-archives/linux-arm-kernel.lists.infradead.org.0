Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2A818ADD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 09:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIiLFB3dWJkfCjKwtp6Y8u8yeRhC6tZvkwGAjoRw6vw=; b=FqDAgsn0tbeg2I
	5Tj0d+8m1iY82nS5FWN9xJPxdISn5O2lVXn9fNM9KbpIWdFIwKWihibybesD9LVdH88KvzigSps02
	C4A/34DUGRMtzxwPatgdugQJ63OEgmy+2MFKbOKT/al+wKBRRQn5Y7VyDjJ2CfbSDV84MlgJ7kyFs
	ej1pzK768BgFK5tbY4ic6pfU3f8tyE4MV3a1ERj+eT3zG/uc2pIBe+ZOxkq4Y1m3xpGRsp8RHB80U
	SZ+kXh0tlmkzBjbpHH9lGXQFUa2eV29j6cRbex/X0rA9TvVy7S26n8XiMoDSSYNZDfB5Bd+avfxLs
	lUnqCiA+ByFcZYyBlJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq6u-00061f-8b; Thu, 19 Mar 2020 08:01:00 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq6l-000618-GH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 08:00:53 +0000
Received: by mail-ot1-x344.google.com with SMTP id e9so1398311otr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 01:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cp6FuxyMS+1ByUBjPxoD3NwLVLlSPXMt0GftNsobXo8=;
 b=I+5SgItMsOfL1TEOphtTmlHHUR+fYjTYMqlVvG2hDzCjF/+QTGewomWQ4s4JZ4PwYU
 iDgen+PLOqqPh2x/L0XyjBIlfsxbIFHxe9JpxZM3oTsud3+N8WT2kXLluDnmFhEYCZym
 bRlzaVRRHsAAgaSpnQe3T8bypNY7cYLG8PFsqoUkX3cIMWUl0h77AvFdSWB+vNcQIR4u
 8NWMQaxpgj9W1sFa5at2oCirwlXQm1aOIteI/hncI31j5iwk9D0nkAV+OLJAeBH/4qgK
 6uPtqggsKQRkIOzZSxsBYr5it/M9TC7QtzyfhePhlV3yYIfq95j7nxf4Yq3Rgvux0KEp
 tdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cp6FuxyMS+1ByUBjPxoD3NwLVLlSPXMt0GftNsobXo8=;
 b=Wrx3A756Kc2aTSZsiXstWXddgcdZsv9dj5sxS7pJmBHmOcyVQEkAKDRSE2YwvKjYuG
 o/3PmTFfw+oeMX0s/B32lZ8Xp+GQd8b+cw6J6LTj0m1hFtfh2IUV8rtaBiwpHdNuLcm5
 S48C2G0jYOfolSPKA8mLsnAsbtZupC/UbZcPahuKOufC47y0ykGUeQVVj0KG09cWAXYL
 hAz5ftDV7Y8GcvR2Gi//1+TAvmLquzRFU9egQBC1B0uHHKeDYE2gi7nvy2+ncNuCPT81
 5HzxKap3ECuINhhDtEapHh6oIZ2VdLKJc4t4Mst7g+8+yteg77XjkeZNlJ8gUdu7m3Id
 TmiA==
X-Gm-Message-State: ANhLgQ0JuIlNba8KX7Xu3GgeEs+IT8yrxhpLk8zinAL62i/N7COvOw/7
 /sZcmoi1XJl5JcuyLkLbJ8dtBWxYwu96QW7wNqs=
X-Google-Smtp-Source: ADFU+vvUwftzmRRclxvvzyhLsc/9O0HFBYAoNjwm2ZtXWTEFy5i/ZJJVw6mYIkj76FgQsO8L29zPqCTxgnWSadb1+Og=
X-Received: by 2002:a9d:64cd:: with SMTP id n13mr1286943otl.274.1584604849293; 
 Thu, 19 Mar 2020 01:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212345.GM4751@pendragon.ideasonboard.com>
 <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <CA+V-a8t-rA-6AmZry63QeXN6pvGWVtcEEuHaDA1jsS-x+30oiQ@mail.gmail.com>
 <20200318232236.GJ24538@pendragon.ideasonboard.com>
In-Reply-To: <20200318232236.GJ24538@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 19 Mar 2020 08:00:22 +0000
Message-ID: <CA+V-a8uNLvPS2+sbtiOk2Ytegacf+yKc+GyMTZZdsY+Ovv5nkA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_010051_540054_B72D5CD7 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Mar 18, 2020 at 11:22 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> On Wed, Mar 18, 2020 at 10:41:57PM +0000, Lad, Prabhakar wrote:
> > On Fri, Mar 13, 2020 at 9:31 PM Prabhakar Mahadev Lad wrote:
> > > On 13 March 2020 21:24, Laurent Pinchart wrote:
> > >> On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> > >>> While testing on Renesas RZ/G2E platform, noticed the clock frequency
> > >>> to be 24242424 as a result the probe failed. However increasing the
> > >>> maximum leverage of external clock frequency to 24480000 fixes this
> > >>> issue. Since this difference is small enough and is insignificant set
> > >>> the same in the driver.
> > >>>
> > >>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >>> ---
> > >>>  drivers/media/i2c/ov5645.c | 6 ++++--
> > >>>  1 file changed, 4 insertions(+), 2 deletions(-)
> > >>>
> > >>> diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > >>> index 4fbabf3..b49359b 100644
> > >>> --- a/drivers/media/i2c/ov5645.c
> > >>> +++ b/drivers/media/i2c/ov5645.c
> > >>> @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
> > >>>  }
> > >>>
> > >>>  xclk_freq = clk_get_rate(ov5645->xclk);
> > >>> -/* external clock must be 24MHz, allow 1% tolerance */
> > >>> -if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> > >>> +/* external clock must be 24MHz, allow a minimum 1% and a
> > >> maximum of 2%
> > >>> + * tolerance
> > >>
> > >> So where do these numbers come from ? I understand that 2% is what you
> > >> need to make your clock fit in the range, but why -1%/+2% instead of -
> > >> 2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
> > >> range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
> > >> that PLL parameters depend on the clock frequency, but could they be
> > >> calculated instead of hardcoded, to avoid requiring an exact 24MHz input
> > >> frequency ?
> > >>
> > > To be honest I don't have the datasheet for ov5645, the flyer says 6-54Mhz but the
> > > logs/comment says 24Mhz.
> > >
> > Comparing to ov5640 datasheet [1] (which I am assuming might be
> > similar to ov5645),
>
> Let's assume this to be the case, I see no reason not to :-)
>
> > this change should affect the driver.
>
> How do you mean ?
>
Oops sorry for for the typo I meant shouldn't affect the driver :)

Cheers,
--Prabhakar

> > [1] https://cdn.sparkfun.com/datasheets/Sensors/LightImaging/OV5640_datasheet.pdf
> >
> > >>> + */
> > >>> +if (xclk_freq < 23760000 || xclk_freq > 24480000) {
> > >>>  dev_err(dev, "external clock frequency %u is not supported\n",
> > >>>  xclk_freq);
> > >>>  return -EINVAL;
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
