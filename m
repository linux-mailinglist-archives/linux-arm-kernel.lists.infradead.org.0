Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5A4E70C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwfW4wJgyVUsVswBQo9KVqf0esT3Ysww2Za1GH0D/9k=; b=JNprBFQ48uJvM7
	EO8glIbCfjb12bGkVDMvZzATS8i6maTxvqskL8CJ41DllgEWsz27WPzNwGw/+cgodYfUW0Sx/WJUV
	Ji4/ASb7rUS05xwBsA54gQQ6AwanK3CGU7PnkCxFb6/5HaL1EIccXUiGXxPVQ9g5T5hBo4Vg0C4X8
	voYHcFOKhNKWXPLCJVLEJcdVsNld2O1yIq2Zg7ME8aQoKiC3DmhzZAaPEUx4ofdRf5gpaTAMtVEng
	xrsfZLLl5jPlLaPKT8p5Ff2lj2j9LjhkcMQDVN/umcuQ9GQKrEBAdVGhNW5bcfcZuy80pGxrZplrP
	og0SOQwCgKLNoskvoOMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3ZD-0006bX-Ng; Mon, 28 Oct 2019 11:52:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3Y9-0005s0-3l; Mon, 28 Oct 2019 11:51:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9SBojvA027216;
 Mon, 28 Oct 2019 06:50:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572263446;
 bh=jv9WgwLJhbx+vhz2gcFuPdEfy6XQxWXyLONyfY3NIXY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ve07LNiFspaL3s+gTrd4zsTOxb66vwnfZx5Ty2fbs4hPgORrXKtIC4cnEjy0Acxzk
 4HpvmBEU71ym4M3jrzjk8hED3gKLo8Hi8wZ8eXYrx6IDgxm5oLOLUwdRyGowVg0fvT
 R1u4LUJ2vArieaYpmcCYLcGZS5BiOp1YtBNJ/slQ=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9SBojji126595;
 Mon, 28 Oct 2019 06:50:45 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 28
 Oct 2019 06:50:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 28 Oct 2019 06:50:45 -0500
Received: from [10.250.147.141] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9SBofoR119917;
 Mon, 28 Oct 2019 06:50:42 -0500
Subject: Re: [PATCH 3/3] mtd: spi-nor: Add support for w25q256jw
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, <robh+dt@kernel.org>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-4-manivannan.sadhasivam@linaro.org>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <bf435b43-f118-f3cb-73ed-5fa67905c4aa@ti.com>
Date: Mon, 28 Oct 2019 17:20:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024144235.3182-4-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_045105_270481_12E10E1A 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, David Woodhouse <dwmw2@infradead.org>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-mtd@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 24/10/19 8:12 PM, Manivannan Sadhasivam wrote:
> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> supports dual/quad I/O mode with 512 blocks of memory organized in
> 4KB sectors. 

512 blocks of memory organized into 64KB sector, right? In additional
flash also supports 4KB small sector.

Regards
Vignesh

> The device has been validated using Thor96 board.


> Cc: Marek Vasut <marek.vasut@gmail.com>
> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> Cc: David Woodhouse <dwmw2@infradead.org>
> Cc: Brian Norris <computersforpeace@gmail.com>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: linux-mtd@lists.infradead.org
> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> [Mani: cleaned up for upstream]
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 1d8621d43160..2c25b371d9f0 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2482,6 +2482,8 @@ static const struct flash_info spi_nor_ids[] = {
>  	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
>  			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> +	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
> +			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
>  			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
