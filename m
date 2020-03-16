Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B251867E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NkiFFisj5c4j1P1CpvSigaJXpo3AyDtdZn5pB0oRAM=; b=F9oIApN1EJNuEZ
	tb/rMSulX14txBuabbicO8UskPH5UVHDvkWhizvsYqLaV2ufhfFXdQ0eZNNk7RtnPjc3HjM4h41vc
	cwAHXYkYOMNBMadX5EJGxqzgc8T0k8MiLeRr0MWe3XEebdKJQPdGf2VcRR2MUQug85dIY/PLSPjNi
	BsLk6NOfUeqvzmX6O8p6Q9emgRdAlqySsEtYb18wxKGr1Il/IiesraPGmqcjG6zQkThhOqaM94ye/
	Ccmin69tKQX7JsRqGryLwo8asrUZ7LDd0tlDUkkjsRarIvEZ/OlUsgoTtR52Yy3OA+eIlEZgKdimH
	9cx6BpSKf28/XOzD87KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDm4d-00047Q-Dw; Mon, 16 Mar 2020 09:30:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDm4N-0003yH-H6; Mon, 16 Mar 2020 09:30:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7D59C28DE96;
 Mon, 16 Mar 2020 09:29:56 +0000 (GMT)
Date: Mon, 16 Mar 2020 10:29:53 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 24/25] mtd: spi-nor: Drop the MFR definitions
Message-ID: <20200316102953.3f656d67@collabora.com>
In-Reply-To: <20200313194130.342251-25-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
 <20200313194130.342251-25-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_022959_701348_F46C61DB 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, richard@nod.at,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Mar 2020 19:42:52 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Cross manufacturer code is unlikely and discouraged, get rid of the
> MFR definitions.
> 
> Suggested-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/core.c  |  2 --
>  include/linux/mtd/spi-nor.h | 17 -----------------
>  2 files changed, 19 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index baee58fd8b04..b07e66f10995 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -40,8 +40,6 @@
>  
>  #define SPI_NOR_MAX_ADDR_WIDTH	4
>  
> -#define JEDEC_MFR(info)        ((info)->id[0])
> -
>  /**
>   * spi_nor_spimem_bounce() - check if a bounce buffer is needed for the data
>   *                           transfer
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index bf37bfc68797..2f7725525460 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -11,23 +11,6 @@
>  #include <linux/mtd/mtd.h>
>  #include <linux/spi/spi-mem.h>
>  
> -/*
> - * Manufacturer IDs
> - *
> - * The first byte returned from the flash after sending opcode SPINOR_OP_RDID.
> - * Sometimes these are the same as CFI IDs, but sometimes they aren't.
> - */
> -#define SNOR_MFR_ATMEL		CFI_MFR_ATMEL
> -#define SNOR_MFR_GIGADEVICE	0xc8
> -#define SNOR_MFR_INTEL		CFI_MFR_INTEL
> -#define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
> -#define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
> -#define SNOR_MFR_ISSI		CFI_MFR_PMC
> -#define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
> -#define SNOR_MFR_SPANSION	CFI_MFR_AMD
> -#define SNOR_MFR_SST		CFI_MFR_SST
> -#define SNOR_MFR_WINBOND	0xef /* Also used by some Spansion */
> -
>  /*
>   * Note on opcode nomenclature: some opcodes have a format like
>   * SPINOR_OP_FUNCTION{4,}_x_y_z. The numbers x, y, and z stand for the number


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
