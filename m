Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE48EB12D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRZHV5K58u9e1TiRgpwQDYltQ3x5rdRChqIZnCYa1lo=; b=ZkFA84XTtt1YPe
	1u9rpYGVkzd9rfmp36LLhLQSZsys0XUy/s1xTehXXR6tw6uR8jE4vt7K+oqJEhsEY3zQr8CWtVpyS
	zzJ7TuxTVWPNtogiG0jeiAxxbYWZ2oziBr1AtIxfd+oRTWt+lkBgNqYmEyaOnHvgvpIA0SdJzDhV0
	EoMGZqiGj78mSz2H1VoLnyAyoJR1K8QD9sqYVdLg6t67wNKswEcansLpgAifbaWTezd6T4q+aqEfT
	ybiWBr3xxu0xxuF0Hfav8BHA0uWg4mV31+Fi3EROg0Nrz5ur6Bgycimu2Ya3k+U5raGBoiRNhAisI
	YIUia9oGBRZgvQGa8JjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAUw-0007oy-IH; Thu, 31 Oct 2019 13:28:22 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAUl-0007oR-1e
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:28:12 +0000
Received: from pendragon.ideasonboard.com
 (lmontsouris-658-1-103-151.w92-154.abo.wanadoo.fr [92.154.14.151])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6711A320;
 Thu, 31 Oct 2019 14:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1572528489;
 bh=fyvh80DRgyI9E6PTPAl80n4Ep0JkBrHpvJt615thuBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yl2TS2xaE6HWYahAVg9MatuaPiBE5dz3WaV0c4HjBNygbm7ZCK4ayTvTy0lbm7MYm
 wuqSLpRlO1uoDDZ/XxPscACHzvqnn9knAqOCaNwVHNITY7heiPBs1BEx1vrR+DnCCr
 oz26aNCVH/kdN+hC00kxvo2HXaXg+95peRZ2iueU=
Date: Thu, 31 Oct 2019 15:28:01 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 0/2] Add IMX296 CMOS image sensor support
Message-ID: <20191031132801.GC5018@pendragon.ideasonboard.com>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191031131644.GA8917@pendragon.ideasonboard.com>
 <20191031132352.GA24273@mani>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031132352.GA24273@mani>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062811_238862_9951F3F9 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, sakari.ailus@iki.fi, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani,

On Thu, Oct 31, 2019 at 06:53:52PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Oct 31, 2019 at 03:16:44PM +0200, Laurent Pinchart wrote:
> > On Wed, Oct 30, 2019 at 03:19:00PM +0530, Manivannan Sadhasivam wrote:
> > > Hello,
> > > 
> > > This patchset adds support for IMX296 CMOS image sensor from Sony.
> > > Sensor can be programmed through I2C and 4-wire interface but the
> > > current driver only supports I2C interface. The sensor is
> > > capable of outputting frames in CSI2 format (1 Lane). In the case
> > > of sensor resolution, driver only supports 1440x1088 at 30 FPS.
> > > 
> > > The driver has been validated using Framos IMX296 module interfaced to
> > > 96Boards Dragonboard410c.
> > 
> > I've just been made aware of your work. I also worked on an IMX296
> > sensor driver in parallel, which I will post to the list. My driver
> > doesn't hardcode the resolution but computes register values at runtime,
> > so I wonder if it could be a better option. I'll post it now.
> 
> I'm fine with it. The reason the driver is simple in the first place is, that's
> how my usual workflow is. Start small and build it big ;-)
> 
> Anyway, I'm happy if your driver gets in.

My driver sometimes has trouble finding the sensor at probe time, so
I'll study and try your code too. It could be a problem specific to my
platform (I'm testing on a custom i.MX7 board).

> > > Changes in v4:
> > > 
> > > * Fixed issues related to gain settings and few misc cleanups in driver
> > > * Documented port node and removed maxItems, default prop from dt binding
> > >   as per the review
> > > 
> > > Changes in v3:
> > > 
> > > * Fixed the reference to video-interfaces.txt in binding.
> > > 
> > > Changes in v2:
> > > 
> > > * Switched to YAML binding
> > > 
> > > Manivannan Sadhasivam (2):
> > >   dt-bindings: media: i2c: Add IMX296 CMOS sensor binding
> > >   media: i2c: Add IMX296 CMOS image sensor driver
> > > 
> > >  .../devicetree/bindings/media/i2c/imx296.yaml |  94 +++
> > >  MAINTAINERS                                   |   8 +
> > >  drivers/media/i2c/Kconfig                     |  11 +
> > >  drivers/media/i2c/Makefile                    |   1 +
> > >  drivers/media/i2c/imx296.c                    | 715 ++++++++++++++++++
> > >  5 files changed, 829 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > >  create mode 100644 drivers/media/i2c/imx296.c

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
