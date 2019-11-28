Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4DD10C2B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 04:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfDUuie3WqQEsBd+WPkteBi4qiYXh97MwuauZdHSs0Q=; b=B3rlIWHfLWcas7
	DaFnIz6U83IpoV5DaLv8dxry53MTjmllMdQ3NVnl/Yv1q84i90Pg3YDr8e9bmHYaYwAavaKl23/tx
	Q0TCljVAGGYCUeqWPPQiXXH53tXAHj3A8TDy9EFKioKRYfMsNyskUAq7Jsjho/lvg+bSP1+yX89ZC
	/rstBHkJWr5TuaZiJqv3TL+uQeAV8zPo+exm8QWN3C6E3noAZHhk2JxdZBBJusHGJo/dU9VxFkTUZ
	DI07LMo8Pe/wWuhOacwdrSz+qsNiaefWx+0m9i+ZFFSXmLewGN6JSlpSSLcmr0hP629LSpiIrkeuN
	Kmu0h/PsBNYjJIU/eqBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaA97-0001iV-R3; Thu, 28 Nov 2019 03:07:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaA8z-0001hT-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 03:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574910414; bh=s0u7Q5tCoSp3oxGSwaQ6izZaVYzIABS3Gf4oK5gp2yU=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=EJ6mTm1/QSIj38AlCpaIu9dxOOeQ2Z1nlrGPfD1zFEvciSHY1yBzlpO3QM1y9NjgR
 KS5/RS7PPDNcmYlcu/biPoRkj1E95jMk6VJZmGT79Gty4wlY7WVBmgMlTHaeQNWnrB
 OQOLgbyXx+HWhDpWjzfGcHLi/22e1f+rGS2+4F2E=
Date: Thu, 28 Nov 2019 04:06:53 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Yong <yong.deng@magewell.com>
Subject: Re: [linux-sunxi] [PATCH] media: sun6i-csi: Fix incorrect
 HSYNC/VSYNC/PCLK polarity configuration
Message-ID: <20191128030653.5fhcolvib6tzf4zc@core.my.home>
Mail-Followup-To: Yong <yong.deng@magewell.com>, linux-sunxi@googlegroups.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191128020259.1338188-1-megous@megous.com>
 <20191128102608.035cbb996c8681a6fb035336@magewell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128102608.035cbb996c8681a6fb035336@magewell.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_190701_865258_BC5A231A 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:CSI DRIVERS FOR ALLWINNER V3s" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Nov 28, 2019 at 10:26:08AM +0800, Yong wrote:
> Hi Ondrej,
> 
> This has been discussed.
> And Maxime sent a patch for this: 
> https://www.mail-archive.com/linux-media@vger.kernel.org/msg127149.html

Thanks for pointing to the previous patch. But that patch doesn't make any
sense, and breaks things for me, and doesn't even match BSP code, which 
has no such reversal, and works fine with about 30 cam drivers.

Also how do you explain my findings?

My camera is sending correct signals, verified by looking at them actually (see
below), and CSI is not receiving the image. I have to flip HSYNC/VSYNC to be
oposite of that what CSI driver expects and I get a noisy image and if I fix
PCLK polarity too, the noise goes away, which means now I'm also sampling when
the data are stable and not when they're changing.

Here: (output from my cam, that I configured to have VSYNC ACTIVE LOW, HSYNC
ACTIVE LOW) And the signal is clearly that, as you can see yourself:

  https://megous.com/dl/tmp/98df81b7ed0126ec.png

The above signals are received with CSI driver configured with
V4L2_MBUS_VSYNC_ACTIVE_HIGH V4L2_MBUS_HSYNC_ACTIVE_HIGH. So CSI driver is
clearly wrong.

I think this is pretty clear the driver is buggy. At least for A83T SoC.

I'm not sure what Maxime found out, but he should probably re-check his
findings. Maxime, can you comment on this?

regards,
	o.

> On Thu, 28 Nov 2019 03:02:59 +0100
> Ondrej Jirman <megous@megous.com> wrote:
> 
> > This was discovered by writing a new camera driver and wondering, why
> > hsync/vsync polarity setting behaves in reverse to what would be
> > expected. Verified by looking at the actual signals and the SoC
> > user manual.
> > 
> > Fixes: 5cc7522d8965 ("media: sun6i: Add support for Allwinner CSI V3s")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > index f17e5550602d..98bbcca59a90 100644
> > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > @@ -417,12 +417,12 @@ static void sun6i_csi_setup_bus(struct sun6i_csi_dev *sdev)
> >  		if (flags & V4L2_MBUS_FIELD_EVEN_LOW)
> >  			cfg |= CSI_IF_CFG_FIELD_POSITIVE;
> >  
> > -		if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
> > +		if (flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
> >  			cfg |= CSI_IF_CFG_VREF_POL_POSITIVE;
> > -		if (flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
> > +		if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
> >  			cfg |= CSI_IF_CFG_HREF_POL_POSITIVE;
> >  
> > -		if (flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> > +		if (flags & V4L2_MBUS_PCLK_SAMPLE_FALLING)
> >  			cfg |= CSI_IF_CFG_CLK_POL_FALLING_EDGE;
> >  		break;
> >  	case V4L2_MBUS_BT656:
> > -- 
> > 2.24.0
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20191128020259.1338188-1-megous%40megous.com.
> 
> 
> Thanks,
> Yong

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
