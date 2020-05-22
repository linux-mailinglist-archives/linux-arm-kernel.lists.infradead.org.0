Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8B21DEBE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kL2lazE36eklQQiQCbHoC+qUtqC9GFoa6WJ2wQgXv8=; b=mB5gBscJn2RAQ4
	9osc+qmMxUjfB1iBBxW49mSP5k0jsr2qVG9LW8yX1Ic3WCyeWmcwhMMBCFwKfepaArAGEsFqbEcZv
	KZWHnPYic+798CoXumjIPkvyfnAWf2EnzHY3Vcnhbv1PSXsBdG1LZetFF4qM3QliP9tSUEmKEYr0Q
	cPMvWxhj68nS/MvXZfNtG8efcryXnvFTDKWqfNyAdL68yYXDGrsVkp5x2+7P0uPvakOFu9DELt4nu
	PKbtrYock2EGCvYLbdCobCKjdo0+VEfwhLatYxon8N0BbJool2nNwoZQHA03665eP273pa12rfniJ
	tUS7oR3xYtfiVesWuGLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9fb-00026N-Cd; Fri, 22 May 2020 15:33:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9fQ-00025Q-EG; Fri, 22 May 2020 15:33:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2744D2A3A00;
 Fri, 22 May 2020 16:32:58 +0100 (BST)
Date: Fri, 22 May 2020 17:32:54 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Pratyush Yadav <p.yadav@ti.com>, Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v7 02/20] spi: spi-mem: allow specifying a command's
 extension
Message-ID: <20200522173254.05316d47@collabora.com>
In-Reply-To: <20200522101301.26909-3-p.yadav@ti.com>
References: <20200522101301.26909-1-p.yadav@ti.com>
 <20200522101301.26909-3-p.yadav@ti.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083300_607658_77B0B342 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 15:42:43 +0530
Pratyush Yadav <p.yadav@ti.com> wrote:

> In xSPI mode, flashes expect 2-byte opcodes. The second byte is called
> the "command extension". There can be 3 types of extensions in xSPI:
> repeat, invert, and hex. When the extension type is "repeat", the same
> opcode is sent twice. When it is "invert", the second byte is the
> inverse of the opcode. When it is "hex" an additional opcode byte based
> is sent with the command whose value can be anything.
> 
> So, make opcode a 16-bit value and add a 'nbytes', similar to how
> multiple address widths are handled.

A slightly different version of patch 5 should go before this patch,
otherwise your series is not bisectable. By slightly different, I mean
that you should only write one byte, but put this byte in a temporary
var. Or maybe you can squash patch 5 in this one and mention why you do
so in your commit message.

> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/spi/spi-mem.c       | 5 ++++-
>  include/linux/spi/spi-mem.h | 6 +++++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
> index 93e255287ab9..29dcd1d62710 100644
> --- a/drivers/spi/spi-mem.c
> +++ b/drivers/spi/spi-mem.c
> @@ -159,6 +159,9 @@ bool spi_mem_default_supports_op(struct spi_mem *mem,
>  	if (op->cmd.dtr || op->addr.dtr || op->dummy.dtr || op->data.dtr)
>  		return false;
>  
> +	if (op->cmd.nbytes != 1)
> +		return false;
> +
>  	return true;
>  }
>  EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);
> @@ -173,7 +176,7 @@ static bool spi_mem_buswidth_is_valid(u8 buswidth)
>  
>  static int spi_mem_check_op(const struct spi_mem_op *op)
>  {
> -	if (!op->cmd.buswidth)
> +	if (!op->cmd.buswidth || !op->cmd.nbytes)
>  		return -EINVAL;
>  
>  	if ((op->addr.nbytes && !op->addr.buswidth) ||
> diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
> index e3dcb956bf61..159463cc659c 100644
> --- a/include/linux/spi/spi-mem.h
> +++ b/include/linux/spi/spi-mem.h
> @@ -17,6 +17,7 @@
>  	{							\
>  		.buswidth = __buswidth,				\
>  		.opcode = __opcode,				\
> +		.nbytes = 1,					\
>  	}
>  
>  #define SPI_MEM_OP_ADDR(__nbytes, __val, __buswidth)		\
> @@ -69,6 +70,8 @@ enum spi_mem_data_dir {
>  
>  /**
>   * struct spi_mem_op - describes a SPI memory operation
> + * @cmd.nbytes: number of opcode bytes (only 1 or 2 are valid). The opcode is
> + *		sent MSB-first.
>   * @cmd.buswidth: number of IO lines used to transmit the command
>   * @cmd.opcode: operation opcode
>   * @cmd.dtr: whether the command opcode should be sent in DTR mode or not
> @@ -94,9 +97,10 @@ enum spi_mem_data_dir {
>   */
>  struct spi_mem_op {
>  	struct {
> +		u8 nbytes;
>  		u8 buswidth;
>  		u8 dtr : 1;
> -		u8 opcode;
> +		u16 opcode;
>  	} cmd;
>  
>  	struct {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
