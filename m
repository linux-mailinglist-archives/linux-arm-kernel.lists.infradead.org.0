Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4674255977
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Av7OMK5iQrVQh12w4WAo1BDMET8uK7onIWAGLJsS8s=; b=LZTmf0W71vksW5
	6L75HDh9V6sbRG3+mrK+q5JQgnYBI3YG0L9tja+pznUaT4JE5bR6sk0PHGvg/68ZG7uqxmFXzdNxV
	RCEI0OvW0nEqU+KK5uI+69QY/AwoyS8CRNLxjCUfScnGBd4RFp4pytHDj/gbXffQZfmsfSiECI3tr
	NuIn7DtMrBV9oaq3wciRuOlqE7xBGoZRDwhEi/8Tu9IhIIGwW4x5rXlxQxK/XuFP+sXWA0yv8WKxI
	rTgbsDh85lu0Xi4ypasq/rXXJQOI7FjFQXxPguNKUSiQ6XlGQcTrLWmZUgmJBr596wpZt6J7NbZfy
	lhU0KHUriOarTUK80IKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsUa-0005fn-Fs; Tue, 25 Jun 2019 20:56:40 +0000
Received: from static.187.34.201.195.clients.your-server.de ([195.201.34.187]
 helo=sysam.it)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsUL-0005ec-V2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:56:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by sysam.it (Postfix) with ESMTP id 522653FE8F;
 Tue, 25 Jun 2019 22:56:19 +0200 (CEST)
Received: from sysam.it ([127.0.0.1])
 by localhost (mail.sysam.it [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RZOjAEBv86Q3; Tue, 25 Jun 2019 22:56:19 +0200 (CEST)
Received: from jerusalem (host105-54-dynamic.182-80-r.retail.telecomitalia.it
 [80.182.54.105]) by sysam.it (Postfix) with ESMTPSA id 6B6373FE8A;
 Tue, 25 Jun 2019 22:56:18 +0200 (CEST)
Date: Tue, 25 Jun 2019 22:56:17 +0200
From: Angelo Dureghello <angelo@sysam.it>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 0/6] add edma2 for i.mx7ulp
Message-ID: <20190625205617.GA24968@jerusalem>
References: <20190625094324.19196-1-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625094324.19196-1-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_135626_143666_47E8C3D0 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Tue, Jun 25, 2019 at 05:43:18PM +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> This patch set add new version of edma for i.mx7ulp, the main changes
> are as belows:
>  1. only one dmamux.
>  2. another clock dma_clk except dmamux clk.
>  3. 16 independent interrupts instead of only one interrupt for
>     all channels
> For the first change, need modify fsl-edma-common.c and mcf-edma,
> so create the first two patches to prepare without any function impact.
> 
> For the third change, need request single irq for every channel with
> the legacy handler. But actually 2 dma channels share one interrupt(16
> channel interrupts, but 32 channels.),ch0/ch16,ch1/ch17... For now, just
> simply request irq without IRQF_SHARED flag, since 16 channels are enough
> on i.mx7ulp whose M4 domain own some peripherals.
> 
> change from v1:
>   1. check .data of 'of_device_id' in probe instead of compatible name.
> 
> change from v2:
>   1. move the difference between edma and edma2 into driver data so that
>      no need version checking in fsl-edma.c.
> 
> change from v3:
>   1. remove duplicated 'version' and 'dmamux_nr' in 'struct fsl_edma_engine'
>      since they are included in drvdata already.
>   2. downgrade print log level.
>   3. address some minor indent issues raised by Vinod.
> 
> change from v4:
>   1. correct typo.
> 
> Robin Gong (6):
>   dmaengine: fsl-edma: add drvdata for fsl-edma
>   dmaengine: fsl-edma-common: move dmamux register to another single
>     function
>   dmaengine: fsl-edma-common: version check for v2 instead
>   dt-bindings: dma: fsl-edma: add new i.mx7ulp-edma
>   dmaengine: fsl-edma: add i.mx7ulp edma2 version support
>   ARM: dts: imx7ulp: add edma device node
> 
>  Documentation/devicetree/bindings/dma/fsl-edma.txt |  44 ++++++++-
>  arch/arm/boot/dts/imx7ulp.dtsi                     |  28 ++++++
>  drivers/dma/fsl-edma-common.c                      |  83 ++++++++++------
>  drivers/dma/fsl-edma-common.h                      |  14 ++-
>  drivers/dma/fsl-edma.c                             | 109 ++++++++++++++++++---
>  drivers/dma/mcf-edma.c                             |  11 ++-
>  6 files changed, 239 insertions(+), 50 deletions(-)
> 

I tested the patch-set on ColdFire mcf5441x (stmark2 board), all works fine.

Tested-by: Angelo Dureghello <angelo@sysam.it>


Regards,
Angelo

> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
