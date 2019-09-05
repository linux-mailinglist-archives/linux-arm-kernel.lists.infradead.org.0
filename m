Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698CCAA339
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2M8Z2hFzWSUKRW6aPlCNkge1VmiRAlgIRgJiikFFXc=; b=bBp2kUGldplQES
	hW/Nz4gWpmmLr+CY7hlUrrZzAycie5HlOpqKt742+CMrmf7QOXev4/WlqYQ4LxpceKHG0cME+lgLQ
	mynSmBAOV+Rz99ZsrwCKOdRNGMenELWb2L8kyg0spOQTIS1Q9C3fxO3aHECisek0SpQnNybjIPvK/
	6ol9s+OrLq6xxPm6ntv06TZ4VQbIdugWcDKtjSwzCQcBKac6w2KS+Stt/Urs3B0EZe0jcnYwAADqU
	2lHToCEwa9/4Bl0B9Xx85Q/jsE9oYz3K8BKB+NNiwv2ZHEottqjCmbWyEWp5phZXcoFxewikcU5xi
	9+0euyJq5Kzp1OLGdfNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qv3-0004Ju-LK; Thu, 05 Sep 2019 12:31:21 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qur-0004JB-U9; Thu, 05 Sep 2019 12:31:12 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C344ECC;
 Thu,  5 Sep 2019 14:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1567686661;
 bh=xcSubn/iQCGjwJ8OJH7HDlSa5Fjf8PeWVmKESKQ8p40=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lzOsnyIrOPL6NFMqF9UISBuYcxDt79qCl/uAKMc6YZIGIIRtLO4Uhm1U2r/qc4x3n
 WyIvsjFuGJyhKkMwwQv5vKC4/2Hw8GWFs3k7FAiC4eSD3+RDmgIdGnSmYOprlu+fmT
 IClX+wGvXOHjv4bm62vgi5T45SoZHznzXCpO7JeE=
Date: Thu, 5 Sep 2019 15:30:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Subject: Re: [RFC PATCH V2 3/4] media: platform: Add Mediatek FD driver KConfig
Message-ID: <20190905123054.GL5035@pendragon.ideasonboard.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-4-git-send-email-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562661672-22439-4-git-send-email-Jerry-Ch.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_053110_131857_53093782 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 po-yang.huang@mediatek.com, suleiman@chromium.org, shik@chromium.org,
 tfiga@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerry,

Thank you for the patch.

On Tue, Jul 09, 2019 at 04:41:11PM +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds KConfig for Mediatek Face Detection driver (FD).
> FD is embedded in Mediatek SoCs. It can provide hardware
> accelerated face detection function.
> 
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>

You can squash this patch with 4/4, there's no need to keep it separate.

> ---
>  drivers/media/platform/Kconfig            |  2 ++
>  drivers/media/platform/mtk-isp/fd/Kconfig | 17 +++++++++++++++++
>  2 files changed, 19 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
> 
> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
> index a505e9f..ae99258e 100644
> --- a/drivers/media/platform/Kconfig
> +++ b/drivers/media/platform/Kconfig
> @@ -32,6 +32,8 @@ source "drivers/media/platform/davinci/Kconfig"
>  
>  source "drivers/media/platform/omap/Kconfig"
>  
> +source "drivers/media/platform/mtk-isp/fd/Kconfig"
> +
>  config VIDEO_ASPEED
>  	tristate "Aspeed AST2400 and AST2500 Video Engine driver"
>  	depends on VIDEO_V4L2
> diff --git a/drivers/media/platform/mtk-isp/fd/Kconfig b/drivers/media/platform/mtk-isp/fd/Kconfig
> new file mode 100644
> index 0000000..0c5eaf0
> --- /dev/null
> +++ b/drivers/media/platform/mtk-isp/fd/Kconfig
> @@ -0,0 +1,17 @@
> +config VIDEO_MEDIATEK_FD
> +	bool "Mediatek face detection processing function"
> +	select DMA_SHARED_BUFFER
> +	select VIDEOBUF2_DMA_CONTIG
> +	select VIDEOBUF2_CORE
> +	select VIDEOBUF2_V4L2
> +	select VIDEOBUF2_MEMOPS
> +	select VIDEOBUF2_VMALLOC

Do you need both VIDEOBUF2_DMA_CONTIG and VIDEOBUF2_VMALLOC ? The driver
doesn't seem to make use of VIDEOBUF2_VMALLOC.

> +	select MEDIA_CONTROLLER
> +
> +	default n
> +	help
> +		Support the Face Detectioin (FD) feature.

s/Detectioin/Detection/

Maybe "... feature found in the Mediatek <list of SoCs> SoCs." ?

> +
> +		FD driver is a V4L2 memory-to-memory device driver which
> +		provides hardware accelerated face detection function,
> +		it can detect different sizes of faces in a raw image.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
