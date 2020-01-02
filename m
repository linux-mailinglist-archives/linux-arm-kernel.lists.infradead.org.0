Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E0C12E5C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rj0x8it/hxjeOY/gG/lm1V1y6wJbMQaC5qKxKIOMYls=; b=iKqHzsixN3rb+H
	96Y2uUUe7vjdCoSNWPmhCPowndoN8IdWGnIP6MswtZxcc1FvhavTfw2FcsL9HjUKQiJvoZIrzwRQe
	1H8mbhEs2qEU2BH9ZYJ69RZMdd0ofvNBlJoyWP41rECC0BKOnJpUX/EWSBO8nOY1s6j2hkpSI11Go
	qmsLEQ99stcVPWqR6TUnoRj3bWdoPl9W1lkQ/HqyW0fxXnx6mROYU4RcwOgPaXdBayvINtjMyT4IF
	SZr4Xqg221y/cdIJSpzjrpHREF4UVTJ3TGqHBlcCZRAB9GXjySEoGiL+h4kBMA4JE087c6GFNuRVm
	Sd4FdM+Xm3NQupQmR3Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imymU-0000ph-Na; Thu, 02 Jan 2020 11:36:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imymN-0000p5-Nn
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:36:41 +0000
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90C24217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Jan 2020 11:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577964998;
 bh=zM9MCsx/9OGUfNFPKxz5tp5JZ14pedfFKc7NWY5Lrt0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GYG18pHqDyqJXhISbE4hOqZb0+R8U9CLEgpVRTc9n7jH7NQ8oB3ao3D0JPXclOdXF
 jhtOaHFb+t3vRXgelzKJYyZPBaXXsps3xoG3u41Jj6qt0NUqBBPPqOzFxK/WvEizw7
 zYDqlB+oyYJoDm1RUpd5n8msDS72mhUE0ehGlPpM=
Received: by mail-wr1-f45.google.com with SMTP id y17so38964792wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 03:36:38 -0800 (PST)
X-Gm-Message-State: APjAAAXQxfwtf3QGDLx9F1eSu5h2bFU+X2cWSriY9YrKrbvbZeUGKACU
 Sq/jVsDAc9eQ2PGXJo1X1HDD5L00RclUsMKhRrk=
X-Google-Smtp-Source: APXvYqxfTCU4CionKBFMX77BDzhVbicdSu++uerfKitSljA+/XSf4LgB4wuOzctngS/MZNKN3Jot1JoIjWX6fRJDrHE=
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr63096150wrx.288.1577964997031; 
 Thu, 02 Jan 2020 03:36:37 -0800 (PST)
MIME-Version: 1.0
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-7-wens@kernel.org>
 <20200102113319.GJ19828@paasikivi.fi.intel.com>
In-Reply-To: <20200102113319.GJ19828@paasikivi.fi.intel.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 2 Jan 2020 19:36:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v642Ky6ztuwBs9cOxr4RLKS2q9Do+ZCUzc399z+ppCMqmg@mail.gmail.com>
Message-ID: <CAGb2v642Ky6ztuwBs9cOxr4RLKS2q9Do+ZCUzc399z+ppCMqmg@mail.gmail.com>
Subject: Re: [PATCH 06/14] media: sun4i-csi: Add support for A10 CSI1 camera
 sensor interface
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_033639_820523_8594CABC 
X-CRM114-Status: GOOD (  26.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 7:33 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Chen-Yu,
>
> Thanks for the patchset.
>
> On Mon, Dec 16, 2019 at 12:59:16AM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The A10/A20 Allwinner SoCs have two camera sensor interface blocks,
> > named CSI0 and CSI1. The two have the same register layouts with
> > slightly different features:
> >
> >   - CSI0 has an image signal processor (ISP); CSI1 doesn't
> >
> >   - CSI0 can support up to four separate channels under CCIR656;
> >     CSI1 can only support one
> >
> >   - CSI0 can support up to 16-bit wide bus with YUV422;
> >     CSI1 can support up to 24-bit wide bus with YUV444
> >
> > For now the driver doesn't support wide busses, nor CCIR656. So the
> > only relevant difference is whether a clock needs to be taken and
> > enabled for the ISP.
> >
> > Add structs to record the differences, tie them to the compatible
> > strings, and deal with the ISP clock. Support for the new CSI1
> > hardware block is added as well.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 35 ++++++++++++++++---
> >  .../platform/sunxi/sun4i-csi/sun4i_csi.h      |  2 ++
> >  2 files changed, 32 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> > index b8b07c1de2a8..be2466930a49 100644
> > --- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.c
> > @@ -29,6 +29,12 @@
> >
> >  #include "sun4i_csi.h"
> >
> > +struct sun4i_csi_traits {
> > +     unsigned int channels;
> > +     unsigned int max_width;
> > +     bool has_isp;
> > +};
> > +
> >  static const struct media_entity_operations sun4i_csi_video_entity_ops = {
> >       .link_validate = v4l2_subdev_link_validate,
> >  };
> > @@ -156,6 +162,10 @@ static int sun4i_csi_probe(struct platform_device *pdev)
> >       subdev = &csi->subdev;
> >       vdev = &csi->vdev;
> >
> > +     csi->traits = of_device_get_match_data(&pdev->dev);
> > +     if (!csi->traits)
> > +             return -EINVAL;
> > +
> >       /*
> >        * On Allwinner SoCs, some high memory bandwidth devices do DMA
> >        * directly over the memory bus (called MBUS), instead of the
> > @@ -199,10 +209,12 @@ static int sun4i_csi_probe(struct platform_device *pdev)
> >               return PTR_ERR(csi->bus_clk);
> >       }
> >
> > -     csi->isp_clk = devm_clk_get(&pdev->dev, "isp");
> > -     if (IS_ERR(csi->isp_clk)) {
> > -             dev_err(&pdev->dev, "Couldn't get our ISP clock\n");
> > -             return PTR_ERR(csi->isp_clk);
> > +     if (csi->traits->has_isp) {
> > +             csi->isp_clk = devm_clk_get(&pdev->dev, "isp");
> > +             if (IS_ERR(csi->isp_clk)) {
> > +                     dev_err(&pdev->dev, "Couldn't get our ISP clock\n");
> > +                     return PTR_ERR(csi->isp_clk);
> > +             }
> >       }
> >
> >       csi->ram_clk = devm_clk_get(&pdev->dev, "ram");
> > @@ -280,8 +292,21 @@ static int sun4i_csi_remove(struct platform_device *pdev)
> >       return 0;
> >  }
> >
> > +struct sun4i_csi_traits sun4i_a10_csi1_traits = {
> > +     .channels = 1,
> > +     .max_width = 24,
> > +     .has_isp = false,
> > +};
> > +
> > +struct sun4i_csi_traits sun7i_a20_csi0_traits = {
>
> These two should be static const, right?

You're right. I'll wait for the remaining reviews before sending v2.

ChenYu

> > +     .channels = 4,
> > +     .max_width = 16,
> > +     .has_isp = true,
> > +};
> > +
> >  static const struct of_device_id sun4i_csi_of_match[] = {
> > -     { .compatible = "allwinner,sun7i-a20-csi0" },
> > +     { .compatible = "allwinner,sun4i-a10-csi1", .data = &sun4i_a10_csi1_traits },
> > +     { .compatible = "allwinner,sun7i-a20-csi0", .data = &sun7i_a20_csi0_traits },
> >       { /* Sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, sun4i_csi_of_match);
> > diff --git a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
> > index 88d39b3554c4..0f67ff652c2e 100644
> > --- a/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
> > +++ b/drivers/media/platform/sunxi/sun4i-csi/sun4i_csi.h
> > @@ -108,6 +108,8 @@ struct sun4i_csi {
> >       /* Device resources */
> >       struct device                   *dev;
> >
> > +     const struct sun4i_csi_traits   *traits;
> > +
> >       void __iomem                    *regs;
> >       struct clk                      *bus_clk;
> >       struct clk                      *isp_clk;
>
> --
> Kind regards,
>
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
