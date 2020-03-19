Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE11D18ADCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6O35N5BNPVpMlfLW6evILPP2J8ooLnW7nJqjyV1aBoc=; b=cIpVDQQSHmhUw4
	Wn97t1l6GE5bXpsTmX8Z9nTSsVsn/Gg/vU29/WUomOSbQ4wBceykon/49ZK/RVYrlaKyu9HSPA9lH
	d6bkKtp7ypFBQQJ3cbM7SERwzZFJ0kYuNWEsXZpVGjsDgWmqdbq9EQ228hj8bE58jz2jKliGLOX8N
	OHp8fYdtxlIWlQB4kY3PbhnAyTg5HSJhotjyjtmAwQbw4UiYObG9xn2vKBQJLdAHCm/6L6h+fS4Ea
	+LattEuQWa7yfXHaxLAdMEh1ubn+rRACb7IR9BXCNw/SeCf8Q1CMLBPTdjBC2qe0I0ovGI9hROXf5
	jS/mKezBTuGxLU6kb3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq5e-0004Qs-JT; Thu, 19 Mar 2020 07:59:42 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq5V-0004QU-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 07:59:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id t28so1435062ott.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 00:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WGuLoQf5u7HUV1s6V0PJEh7hCfVde9pwvIQPGZyYQTI=;
 b=qZiDLa46teEuK2rajTRflr18qRzuR5NndOEGPXvlr179Ju8VL/Ofce4AkeFhLh9nip
 ZzanXJjbrpiMXdwMWwWbxtH6/xd5p3Rv2zLp8hHz6SnTxoue1HQImJyWAsjDRlcy6dEK
 OBVEwGw4iaSkXk4HJGaaK9vwv4zP+n2f+wSY7yFNmP3x5iCylUTqJexNG2NZfBgmqzq3
 OmDZAmbmwEA8ihQmQ/pSd/MfRj5GbxMmFGYUGA2vOAmPbsufKqiTdB2PuCwb0Vp780PU
 uPYuF2pPCfvFi/xs4a7AXzUHO5T2amrQ8OYt+3U0k7qlidGY9rL7k+JHNi0ogA4hdsZy
 2s+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WGuLoQf5u7HUV1s6V0PJEh7hCfVde9pwvIQPGZyYQTI=;
 b=dFb6KsH6R3gC387qzNSzr+1SRGSViWpA985Ry7T/amf14qY6329SOZPo7PDHHx8ONI
 lL4+nFdQUj3yuJCxGf9gfEEQx+FOm8oEFgob9kwzxobRIGkjnBqMFk63QOfNjOGuCv6E
 d7+U+xWtf9F4oHAu2ejBNZ6GGFYd2nKm/qDmwBjSK/9WJmgJSCw3+Fb0fPiEibr71f4Y
 25kN/KGE7cu9YDR2xHvjRuSJA0fvodApoKTso5i8XVTUoPWu/GUnfi/AmDCCI2/ClBGh
 QB8/OwfbS18tUEA2vq5sFR3BLiD1qSLVRGiZq1rKgBg34kneKvslcRers4v3f9MyGujy
 Fneg==
X-Gm-Message-State: ANhLgQ2cSuIGG/fhkvRMl0rcWwtQtnh+dAXdDOX8+BS05H4Sr7rTeBZH
 zZha0YaTDaFUB3kCc4G5GIT4EAkfuSyUivgEK+4=
X-Google-Smtp-Source: ADFU+vuIIIHNA4ZO912/LtdlGvI64BbtmJSEPBlpDdMaqv4OGgHNQe3VeUMReQ1HsRfr1TuzQnePy7S0Yf9T2aZ2n6A=
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr1287571otl.325.1584604772313; 
 Thu, 19 Mar 2020 00:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212345.GM4751@pendragon.ideasonboard.com>
 <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
 <20200318231856.GI24538@pendragon.ideasonboard.com>
In-Reply-To: <20200318231856.GI24538@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 19 Mar 2020 07:59:06 +0000
Message-ID: <CA+V-a8sUscZPW0xWANnkQQHwXobR-ABZc2RzfGr+0uumV6V+tQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_005933_224868_D8E09088 
X-CRM114-Status: GOOD (  28.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

On Wed, Mar 18, 2020 at 11:19 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> On Fri, Mar 13, 2020 at 09:31:25PM +0000, Prabhakar Mahadev Lad wrote:
> > On 13 March 2020 21:24, Laurent Pinchart wrote:
> > > On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> > > > While testing on Renesas RZ/G2E platform, noticed the clock frequency
> > > > to be 24242424 as a result the probe failed. However increasing the
> > > > maximum leverage of external clock frequency to 24480000 fixes this
> > > > issue. Since this difference is small enough and is insignificant set
> > > > the same in the driver.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > ---
> > > >  drivers/media/i2c/ov5645.c | 6 ++++--
> > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > > > index 4fbabf3..b49359b 100644
> > > > --- a/drivers/media/i2c/ov5645.c
> > > > +++ b/drivers/media/i2c/ov5645.c
> > > > @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
> > > >  }
> > > >
> > > >  xclk_freq = clk_get_rate(ov5645->xclk);
> > > > -/* external clock must be 24MHz, allow 1% tolerance */
> > > > -if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> > > > +/* external clock must be 24MHz, allow a minimum 1% and a maximum of 2%
> > > > + * tolerance
> > >
> > > So where do these numbers come from ? I understand that 2% is what you
> > > need to make your clock fit in the range, but why -1%/+2% instead of -
> > > 2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
> > > range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
> > > that PLL parameters depend on the clock frequency, but could they be
> > > calculated instead of hardcoded, to avoid requiring an exact 24MHz input
> > > frequency ?
> >
> > To be honest I don't have the datasheet for ov5645, the flyer says 6-54Mhz but the
> > logs/comment says 24Mhz.
>
> The OV5645 clock topology is fairly complex, with two PLLs and different
> set of output dividers. It however shouldn't be impossible to calculate
> the PLL configuration in the driver, but would require some dedication,
> and is probably not worth it.
>
> I've discussed the matter with Sakari, and we concluded that this is
> just a sanity check. We advise increasing the tolerance by a bigger
> amount to avoid patching this for every new board (completely
> arbitrarily, +/- 5%), and turning the fatal error into a dev_warn,
> dropping the return -EINVAL statement.
>
Thank you for looking into this. I'll update the patch accordingly.

Cheers,
--Prabhakar

> > > > + */
> > > > +if (xclk_freq < 23760000 || xclk_freq > 24480000) {
> > > >  dev_err(dev, "external clock frequency %u is not supported\n",
> > > >  xclk_freq);
> > > >  return -EINVAL;
>
> --
> Regards,
>
> Laurent Pinchart
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
