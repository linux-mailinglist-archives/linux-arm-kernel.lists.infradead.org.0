Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEA73B58D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRWsUgvZG7az7Kjv+QpmffMRtwID2fKUd+/zdmcLuJE=; b=T+76ygyVvlx3/k
	E5JFUOmFNw218CSX7PR2e7Ggv9qKeTJ+BUFwzFtiNL6em8+nzNQg/PVLlvm3pr5gUv4QZuf9eDnEi
	250dETqbiTp96ZBsT+NjffA05am/NbBD6/tUUVJukpAnFIrcptL3si8XGLfn4V4fXrnh4B4UImJhS
	Y0U2iWw8usEOEt5qQUBwmcljccKeZgBAaEgcoNuiYWfAR6Q/Vk3RS8fGYftll6qfD+qoafr+zXszY
	SVHEgDeoIDbfVE/lr7YuX6dMjCvO1fpfTuiW/ID/7S/B3+fDTc/Z2Xs57n5TDo+M/fFF9bAA7y6BK
	O77UEOT2gBzqKY+xXw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJtH-0005T1-6f; Mon, 10 Jun 2019 12:59:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJsr-0005Nw-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:58:47 +0000
Received: from localhost (unknown [122.167.93.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E91820859;
 Mon, 10 Jun 2019 12:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560171524;
 bh=ori1GFesj1z5JPxLlfpKYaJLocajgiy9syaphmuaIwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GnWLKFhA5w0ZZr8qk8930e1Mxl1MClV2NU90ZUGw1xN1H1olHZ1Zuds0d/1CcT0sU
 uKoklkGofDHQKG9rXaEggUhFaLjU90713fBXOcPyevwLPc7pgNOq0FiDDJJzPeRsiS
 38x557aSB/KmmgqA1uJHj15FMIsdHkMZoIhKlDt8=
Date: Mon, 10 Jun 2019 18:25:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v5 15/15] dmaengine: imx-sdma: add uart rom script
Message-ID: <20190610125534.GQ9160@vkoul-mobl.Dlink>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-16-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610081753.11422-16-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055845_567376_A99A5BCF 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 will.deacon@arm.com, linux-imx@nxp.com, linux-spi@vger.kernel.org,
 robh+dt@kernel.org, broonie@kernel.org, kernel@pengutronix.de,
 u.kleine-koenig@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-06-19, 16:17, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> For the compatibility of NXP internal legacy kernel before 4.19 which
> is based on uart ram script and upstreaming kernel based on uart rom
> script, add both uart ram/rom script in latest sdma firmware. By default
> uart rom script used.
> Besides, add two multi-fifo scripts for SAI/PDM on i.mx8m/8mm and add
> back qspi script miss for v4(i.mx7d/8m/8mm family, but v3 is for i.mx6).
> 
> rom script:
> 	uart_2_mcu_addr
> 	uartsh_2_mcu_addr /* through spba bus */
> ram script:
> 	uart_2_mcu_ram_addr
> 	uartsh_2_mcu_ram_addr /* through spba bus */
> 
> Please get latest sdma firmware from the below and put them into the path
> (/lib/firmware/imx/sdma/):
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
> /tree/imx/sdma

How does this work with folks have older firmware?

> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  drivers/dma/imx-sdma.c                     |  4 ++--
>  include/linux/platform_data/dma-imx-sdma.h | 10 ++++++++--
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index f7c150d..deea9aa 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -1733,8 +1733,8 @@ static void sdma_issue_pending(struct dma_chan *chan)
>  
>  #define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1	34
>  #define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V2	38
> -#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3	41
> -#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4	42
> +#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3	45
> +#define SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V4	46
>  
>  static void sdma_add_scripts(struct sdma_engine *sdma,
>  		const struct sdma_script_start_addrs *addr)
> diff --git a/include/linux/platform_data/dma-imx-sdma.h b/include/linux/platform_data/dma-imx-sdma.h
> index f794fee..e12d2e8 100644
> --- a/include/linux/platform_data/dma-imx-sdma.h
> +++ b/include/linux/platform_data/dma-imx-sdma.h
> @@ -20,12 +20,12 @@ struct sdma_script_start_addrs {
>  	s32 per_2_firi_addr;
>  	s32 mcu_2_firi_addr;
>  	s32 uart_2_per_addr;
> -	s32 uart_2_mcu_addr;
> +	s32 uart_2_mcu_ram_addr;
>  	s32 per_2_app_addr;
>  	s32 mcu_2_app_addr;
>  	s32 per_2_per_addr;
>  	s32 uartsh_2_per_addr;
> -	s32 uartsh_2_mcu_addr;
> +	s32 uartsh_2_mcu_ram_addr;
>  	s32 per_2_shp_addr;
>  	s32 mcu_2_shp_addr;
>  	s32 ata_2_mcu_addr;
> @@ -52,7 +52,13 @@ struct sdma_script_start_addrs {
>  	s32 zcanfd_2_mcu_addr;
>  	s32 zqspi_2_mcu_addr;
>  	s32 mcu_2_ecspi_addr;
> +	s32 mcu_2_sai_addr;
> +	s32 sai_2_mcu_addr;
> +	s32 uart_2_mcu_addr;
> +	s32 uartsh_2_mcu_addr;
>  	/* End of v3 array */
> +	s32 mcu_2_zqspi_addr;
> +	/* End of v4 array */
>  };
>  
>  /**
> -- 
> 2.7.4

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
