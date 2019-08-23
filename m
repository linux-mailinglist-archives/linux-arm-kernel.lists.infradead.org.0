Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381AC9B7D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 22:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNnkF/wOP4+PHPzA3Vhlse6Tqq8QlQL5PUIQyUkc4iE=; b=eE++QeUB/4UjIN
	WUnnAdoBaugsWa4m7Z8HB2Cwuf5gfiLh1qEIGyVbpR8L2ll9uPF7RdIURt89cKSN0z3t8YsbpCY0c
	DLj+zcHPjyhF+SGetWZzJcOYla8YN8749HB/NbVcon+bjQ2S1tPPH12NXunbSIMPhvCxkVmnC/qjP
	agWuYfdIgW6eIc8dBTknDHgXPD8pjXVQGpIQzku8hKcGWwAZiCAIB1QopOSuynMQkRF7lSn+VtOe6
	OIjDTsyOyHodFDPndkqHR87MCcDD4Cl8xcDTdKZWmT+qh3Bf7lLZ50vqgkkMdeABq/sDiUcozHTI5
	VuTZsG73b2IgsKNKrtog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1GRI-0001tW-Pe; Fri, 23 Aug 2019 20:45:40 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1GRB-0001t1-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 20:45:35 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 036252B2;
 Fri, 23 Aug 2019 22:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1566593120;
 bh=GXdixniZ3Ns93+fHiCSuGwQdkf5l0zSVZr1Is85+O+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DzfersEOoRJak3zOwE9B4hNyWqYQ9PM6vtwQ8r63BzQePsDhmQHZE9MpgOLoNYabS
 8uqAxfK6wU/GD/8KNMXy+5IuEBsBYfBSQNgkNFR3c+h13IaGBDYrpT6H/YqfMbqUlV
 Uab3mOaL4XvidC1ef4qZOiM83EMussD1bNDUfhMI=
Date: Fri, 23 Aug 2019 23:45:13 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v2 5/7] media: use the BIT() macro
Message-ID: <20190823204513.GF4791@pendragon.ideasonboard.com>
References: <20190823000829.GN5027@pendragon.ideasonboard.com>
 <d6c04bf604084af63fec603b4afbd72c648e0394.1566553525.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6c04bf604084af63fec603b4afbd72c648e0394.1566553525.git.mchehab+samsung@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_134533_995246_CBD5468A 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Richard Fontana <rfontana@redhat.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Bluecherry Maintainers <maintainers@bluecherrydvr.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, devel@driverdev.osuosl.org,
 linux-samsung-soc@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Andrey Utkin <andrey.utkin@corp.bluecherry.net>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Ismael Luceno <ismael@iodev.co.uk>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Benoit Parrot <bparrot@ti.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Anton Sviridenko <anton@corp.bluecherry.net>,
 Allison Randal <allison@lohutok.net>, Andy Walls <awalls@md.metrocast.net>,
 Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-renesas-soc@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mauro,

Thank you for the patch.

On Fri, Aug 23, 2019 at 06:47:30AM -0300, Mauro Carvalho Chehab wrote:
> As warned by cppcheck:
> 
> 	[drivers/media/dvb-frontends/cx24123.c:434]: (error) Shifting signed 32-bit value by 31 bits is undefined behaviour
> 	[drivers/media/pci/bt8xx/bttv-input.c:87]: (error) Shifting signed 32-bit value by 31 bits is undefined behaviour
> 	[drivers/media/pci/bt8xx/bttv-input.c:98]: (error) Shifting signed 32-bit value by 31 bits is undefined behaviour
> 			...
> 	[drivers/media/v4l2-core/v4l2-ioctl.c:1391]: (error) Shifting signed 32-bit value by 31 bits is undefined behaviour
> 
> There are lots of places where we're doing 1 << 31. That's bad,
> as, depending on the architecture, this has an undefined behavior.
> 
> The BIT() macro is already prepared to handle this, so, let's
> just switch all "1 << number" macros by BIT(number) at the header files
> with has 1 << 31.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
> 
> v2: 
>   As suggested by Laurent:
>      - Don't touch multi-bit masks
>      - remove explicit casts
> 
>  drivers/media/pci/cobalt/cobalt-driver.h      |  63 +-
>  drivers/media/pci/ivtv/ivtv-irq.h             |  28 +-
>  drivers/media/pci/mantis/mantis_reg.h         | 152 ++---
>  drivers/media/pci/solo6x10/solo6x10-regs.h    | 286 ++++-----
>  .../media/platform/am437x/am437x-vpfe_regs.h  |  26 +-
>  .../media/platform/davinci/dm644x_ccdc_regs.h |  20 +-
>  .../media/platform/exynos4-is/fimc-lite-reg.h |  80 +--
>  drivers/media/platform/exynos4-is/fimc-reg.h  | 138 +++--
>  drivers/media/platform/omap3isp/ispreg.h      | 580 +++++++++---------
>  drivers/media/platform/s3c-camif/camif-regs.h | 118 ++--
>  drivers/media/platform/tegra-cec/tegra_cec.h  |  80 +--
>  drivers/media/platform/ti-vpe/vpe_regs.h      |  94 +--
>  drivers/media/platform/vsp1/vsp1_regs.h       | 224 +++----
>  drivers/media/platform/xilinx/xilinx-vip.h    |  29 +-
>  drivers/media/radio/wl128x/fmdrv_common.h     |  88 +--
>  drivers/staging/media/ipu3/ipu3-tables.h      |   4 +-
>  16 files changed, 1011 insertions(+), 999 deletions(-)

[snip]

> diff --git a/drivers/media/platform/omap3isp/ispreg.h b/drivers/media/platform/omap3isp/ispreg.h
> index 38e2b99b3f10..4c6ebc0b74d1 100644
> --- a/drivers/media/platform/omap3isp/ispreg.h
> +++ b/drivers/media/platform/omap3isp/ispreg.h

[snip]

> @@ -1167,14 +1167,14 @@
>  #define ISPHIST_HV_INFO_MASK			0x3FFF3FFF
>  
>  #define ISPCCDC_LSC_ENABLE			1

This is a bit too, it could be replaced with BIT(0).

> -#define ISPCCDC_LSC_BUSY			(1 << 7)
> +#define ISPCCDC_LSC_BUSY			BIT(7)
>  #define ISPCCDC_LSC_GAIN_MODE_N_MASK		0x700
>  #define ISPCCDC_LSC_GAIN_MODE_N_SHIFT		8
>  #define ISPCCDC_LSC_GAIN_MODE_M_MASK		0x3800
>  #define ISPCCDC_LSC_GAIN_MODE_M_SHIFT		12
>  #define ISPCCDC_LSC_GAIN_FORMAT_MASK		0xE
>  #define ISPCCDC_LSC_GAIN_FORMAT_SHIFT		1
> -#define ISPCCDC_LSC_AFTER_REFORMATTER_MASK	(1<<6)
> +#define ISPCCDC_LSC_AFTER_REFORMATTER_MASK	BIT(6)
>  
>  #define ISPCCDC_LSC_INITIAL_X_MASK		0x3F
>  #define ISPCCDC_LSC_INITIAL_X_SHIFT		0

[snip]

With this small issue addressed,

For omap3isp, vsp1, xilinx, wl128x and ipu3,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
