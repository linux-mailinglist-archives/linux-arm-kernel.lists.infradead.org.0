Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5359ADA5F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RG+jkyVAx3R/bLVvMnU3atzY6t/79XseslVkfBtFOn0=; b=n4tBvfLrnnzOkh
	jfvdFvDpFtT3HK1/2+kKZngSTYs+A4QIMctel2/AhN5sL07LQIEYuboIOl+fUaqCKSyG6KN2i2ezB
	dLbSkqHCn+v4wMWIhjsjX2pjpkQq0wjADWH8ygXLUf3J5W0x3sF15bZfABS/kNNk/EOVtkBDFvp5s
	YVbucT2JVNIDQkqoYWL4laJ1woEGnvblGR1WG3jKPW6wiEyRmlcVw9q88j76F2REVdWBxSj5OsrJL
	Mi0ZEqYay25haVPsyF0GCzrVyXKFPYnERo2Cm3Nrj0FVBZGAQy8ZqGNWrrjsoqoGvCEd9A7HT29qr
	qo9JGJ/uYFy1Kcgk7Cvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzs4-0007Rq-Mm; Thu, 17 Oct 2019 07:06:52 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzrv-0007R5-7f
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:06:44 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="221031393"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2019 00:06:40 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1iKzrr-0008G3-03; Thu, 17 Oct 2019 10:06:39 +0300
Date: Thu, 17 Oct 2019 10:06:38 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
Message-ID: <20191017070638.GB32742@smile.fi.intel.com>
References: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
 <20191017064426.30814-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017064426.30814-1-daniel.vetter@ffwll.ch>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_000643_318622_D551A2C0 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Mark Brown <broonie@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 08:44:26AM +0200, Daniel Vetter wrote:
> In DMA mode we have a maximum transfer size, past that the driver
> falls back to PIO (see the check at the top of pxa2xx_spi_transfer_one).
> Falling back to PIO for big transfers defeats the point of a dma engine,
> hence set the max transfer size to inform spi clients that they need
> to do something smarter.
> =

> This was uncovered by the drm_mipi_dbi spi panel code, which does
> large spi transfers, but stopped splitting them after:
> =

> commit e143364b4c1774f68e923a5a0bb0fca28ac25888
> Author: Noralf Tr=F8nnes <noralf@tronnes.org>
> Date:   Fri Jul 19 17:59:10 2019 +0200
> =

>     drm/tinydrm: Remove tinydrm_spi_max_transfer_size()
> =

> After this commit the code relied on the spi core to split transfers
> into max dma-able blocks, which also papered over the PIO fallback issue.
> =

> Fix this by setting the overall max transfer size to the DMA limit,
> but only when the controller runs in DMA mode.
> =


Thank you, Daniel!

> Fixes: e143364b4c17 ("drm/tinydrm: Remove tinydrm_spi_max_transfer_size()=
")
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> Cc: Andy Shevchenko <andriy.shevchenko@intel.com>
> Reported-and-tested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Cc: Daniel Mack <daniel@zonque.org>
> Cc: Haojian Zhuang <haojian.zhuang@gmail.com>
> Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> --
> v2: Brown paper bag edition, it needs to be a function ...
> ---
>  drivers/spi/spi-pxa2xx.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
> index bb6a14d1ab0f..068c21037679 100644
> --- a/drivers/spi/spi-pxa2xx.c
> +++ b/drivers/spi/spi-pxa2xx.c
> @@ -1602,6 +1602,11 @@ static int pxa2xx_spi_fw_translate_cs(struct spi_c=
ontroller *controller,
>  	return cs;
>  }
>  =

> +static size_t pxa2xx_spi_max_dma_transfer_size(struct spi_device *spi)
> +{
> +	return MAX_DMA_LEN;
> +}
> +
>  static int pxa2xx_spi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
> @@ -1707,6 +1712,8 @@ static int pxa2xx_spi_probe(struct platform_device =
*pdev)
>  		} else {
>  			controller->can_dma =3D pxa2xx_spi_can_dma;
>  			controller->max_dma_len =3D MAX_DMA_LEN;
> +			controller->max_transfer_size =3D
> +				pxa2xx_spi_max_dma_transfer_size;
>  		}
>  	}
>  =

> -- =

> 2.23.0
> =


-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
