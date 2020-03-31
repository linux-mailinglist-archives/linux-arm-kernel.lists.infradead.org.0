Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987E5199BA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CN1gPQX+D792NJuKU/C2mvrNX+p+0tHNnis/kVtVmrc=; b=C6kqDpxgb2H1oD
	HA89xi0eTd326XrRA/vsiKfKwNHsNh6PL61pnlGjOvrlKKWklD7j58vJ3t3oylTwXNWJBgniQwYWJ
	mw9B1itpkSPMSU3GCVIGfiEILzGK67+woKcGAvmzNoG/xkA0bQoNcw5vdA8cfcvxhBgZp6rhyVIqY
	Q5mr2CoakQafhtkxk4FFFe7NnDMv5swuxmp6p1DNGVihSFPMWZxrSawSwLsiW7fAVO3WoG+V/znH/
	FHXGUFaFX6R+z9LMoeEHgNcpBnp4ryNhs7lgDTN4qXdCtVh20iYtKg/mrwr/cTY9WpRDjv9zo7EzW
	qkf5tc8ccfI7pYrY1WGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJoP-0005Lo-Oz; Tue, 31 Mar 2020 16:32:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJnp-00057Q-47; Tue, 31 Mar 2020 16:31:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hv6tdROsUKjoPlghcXJi//RBriycBiL+BmGXoFIrQow=; b=N1B7PfbTlZjKdvOtDE55cvKcpl
 fxaeNYu09vPTuPiSLvkQC6t/a3KjISCguoGWS6MaiRIG4EfvdJ4n2fWgtOprgGoXdBOPPuP9Ze24S
 SbAZ/2HsW6O48zRqzWHQ9RdzMPB4bKyOZb7ROzRn6Cm+xSWTISNdAQU1beML7eyKHUEbT5Z96KSpW
 YRwAXGSh8UL/SVjlDhIb0kKt1hS+cUSWurjr8dYQIFOSZ8JmrFY4nlLIk2qlrVU9AdIhriBiUlcRA
 nzyJiTTEdWuqz84MMGhpThJIo5HbjmmtD6ai9l6+vg0N7RG6yp+AsebcblDHM8/fbXQNhgccQMKjf
 gfb3mC5g==;
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFfV-0007ib-KG; Tue, 31 Mar 2020 12:07:00 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 48EC2999;
 Tue, 31 Mar 2020 14:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585656374;
 bh=69F3Pbiv9NcehylvgReg9/hZmis3+hOaFKpfy24Zhfc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EDnZFwMSX6B1MAbo4SLShhCUSk2/aILvoHny22bKbM+hh8EFTvMJEKCqoc947DNlI
 cd7/2YAwBoMiO+OjQIOxjOWEQq2bdqzc3PtKvgJaYvwe1Zhl2gDKfYZqNJse19rBQi
 m00KG2h9ROrQGam6ohaXURbZOZ+fdBV/r2dl7WNA=
Date: Tue, 31 Mar 2020 15:06:08 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Message-ID: <20200331120608.GB4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_130657_908220_A4896248 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mauro,

Thank you for the patch.

On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> Most of media Kconfig/Makefile files already has SPDX,
> but there are a few ones still missing. Add it to them.

I think it's a good idea to state the license of each source file, the
patch looks fine to me. I've however been thinking about licenses for
build system files recently, and I'll hijack this thread a bit to ask a
question :-)

For a project like the Linux kernel, and especially for subsystems that
are covered by a single license, the choice is easy, we can apply the
same license to the build files. However, for a project that contains
components covered by different licenses (such as, for instance, an LGPL
library, a GPL application and a BSD plugin), how should the license
covering the build system files be selected ? I searched a bit for
guidance on this topic, and couldn't find much.

> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/media/dvb-frontends/Kconfig             | 2 ++
>  drivers/media/mc/Kconfig                        | 2 ++
>  drivers/media/platform/sunxi/Kconfig            | 2 ++
>  drivers/media/platform/sunxi/Makefile           | 2 ++
>  drivers/media/platform/sunxi/sun4i-csi/Kconfig  | 2 ++
>  drivers/media/platform/sunxi/sun4i-csi/Makefile | 2 ++
>  drivers/staging/media/hantro/Makefile           | 2 ++
>  drivers/staging/media/rkisp1/Makefile           | 2 ++
>  8 files changed, 16 insertions(+)
> 
> diff --git a/drivers/media/dvb-frontends/Kconfig b/drivers/media/dvb-frontends/Kconfig
> index 1f45808d94da..aa24506257b3 100644
> --- a/drivers/media/dvb-frontends/Kconfig
> +++ b/drivers/media/dvb-frontends/Kconfig
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  if MEDIA_DIGITAL_TV_SUPPORT
>  
>  comment "DVB Frontend drivers hidden by 'Autoselect ancillary drivers'"
> diff --git a/drivers/media/mc/Kconfig b/drivers/media/mc/Kconfig
> index 3b9795cfcb36..0c5c52f14c64 100644
> --- a/drivers/media/mc/Kconfig
> +++ b/drivers/media/mc/Kconfig
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  #
>  # Media controller
>  #	Selectable only for webcam/grabbers, as other drivers don't use it
> diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
> index 71808e93ac2e..7151cc249afa 100644
> --- a/drivers/media/platform/sunxi/Kconfig
> +++ b/drivers/media/platform/sunxi/Kconfig
> @@ -1,2 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
>  source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
> diff --git a/drivers/media/platform/sunxi/Makefile b/drivers/media/platform/sunxi/Makefile
> index ff0993f70dc3..fc537c9f5ca9 100644
> --- a/drivers/media/platform/sunxi/Makefile
> +++ b/drivers/media/platform/sunxi/Makefile
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  obj-y		+= sun4i-csi/
>  obj-y		+= sun6i-csi/
>  obj-y		+= sun8i-di/
> diff --git a/drivers/media/platform/sunxi/sun4i-csi/Kconfig b/drivers/media/platform/sunxi/sun4i-csi/Kconfig
> index e86e29b6a603..93b4e82a2655 100644
> --- a/drivers/media/platform/sunxi/sun4i-csi/Kconfig
> +++ b/drivers/media/platform/sunxi/sun4i-csi/Kconfig
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  config VIDEO_SUN4I_CSI
>  	tristate "Allwinner A10 CMOS Sensor Interface Support"
>  	depends on VIDEO_V4L2 && COMMON_CLK && VIDEO_V4L2_SUBDEV_API && HAS_DMA
> diff --git a/drivers/media/platform/sunxi/sun4i-csi/Makefile b/drivers/media/platform/sunxi/sun4i-csi/Makefile
> index 7c790a57f5ee..5062b006d63e 100644
> --- a/drivers/media/platform/sunxi/sun4i-csi/Makefile
> +++ b/drivers/media/platform/sunxi/sun4i-csi/Makefile
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  sun4i-csi-y += sun4i_csi.o
>  sun4i-csi-y += sun4i_dma.o
>  sun4i-csi-y += sun4i_v4l2.o
> diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
> index 68c29a9c4946..743ce08eb184 100644
> --- a/drivers/staging/media/hantro/Makefile
> +++ b/drivers/staging/media/hantro/Makefile
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  obj-$(CONFIG_VIDEO_HANTRO) += hantro-vpu.o
>  
>  hantro-vpu-y += \
> diff --git a/drivers/staging/media/rkisp1/Makefile b/drivers/staging/media/rkisp1/Makefile
> index 69ca59c7ef34..ab32a77db8f7 100644
> --- a/drivers/staging/media/rkisp1/Makefile
> +++ b/drivers/staging/media/rkisp1/Makefile
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
>  obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
>  rockchip-isp1-objs += 	rkisp1-capture.o \
>  			rkisp1-common.o \

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
