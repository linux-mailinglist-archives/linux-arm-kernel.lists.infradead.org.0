Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1831DD5E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 20:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbiKHAgJaeMmwiSVykA0hSehE4SHSqg1ozkDLBcrcxs=; b=s8kbLgcuXd3QNn
	xkA1HhfdeauxQ3ZWNQ3CvtzH7K0/0J2SbR+9lo/iPlrk2PsJXnjZz7gFCJF77Yqu8E5e39okxRI0m
	gnhRvdJwftTr8Cb5Cq0ZfWaqBWLfnKj/NwzIg3iQa916vtIiMK3m5hK40BPQoScIV0723QHHlxtX7
	5owJi27mGYC1S9KEJn6Cn9HssheTzme2BNhw+5VdnyTg6lWaNdzjFrbk1Mpat5hluERfJvvjnmLnz
	RdpFTah1lcV+a3FMW4WcexE1StGdG88+r5i8k7u5QSOm5hS+EKXAzWY7fkgONYq63Vww1/I1vHYAl
	w8j2fP13/dBTvNhfLzCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpqc-0000fy-Tj; Thu, 21 May 2020 18:23:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpqS-0000ej-T0; Thu, 21 May 2020 18:23:07 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6C8F62A366B;
 Thu, 21 May 2020 19:23:01 +0100 (BST)
Date: Thu, 21 May 2020 20:22:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v6 04/19] spi: spi-mem: allow specifying a command's
 extension
Message-ID: <20200521202256.5816eb32@collabora.com>
In-Reply-To: <20200520163053.24357-5-p.yadav@ti.com>
References: <20200520163053.24357-1-p.yadav@ti.com>
 <20200520163053.24357-5-p.yadav@ti.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_112305_068070_E4F64303 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
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

On Wed, 20 May 2020 22:00:38 +0530
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
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  include/linux/spi/spi-mem.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
> index e3dcb956bf61..731bb64c6ba6 100644
> --- a/include/linux/spi/spi-mem.h
> +++ b/include/linux/spi/spi-mem.h
> @@ -69,6 +69,8 @@ enum spi_mem_data_dir {
>  
>  /**
>   * struct spi_mem_op - describes a SPI memory operation
> + * @cmd.nbytes: number of opcode bytes (only 1 or 2 are valid). The opcode is
> + *		sent MSB-first.
>   * @cmd.buswidth: number of IO lines used to transmit the command
>   * @cmd.opcode: operation opcode
>   * @cmd.dtr: whether the command opcode should be sent in DTR mode or not
> @@ -94,9 +96,10 @@ enum spi_mem_data_dir {
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

As mentioned in one of my previous review, you should patch the mxic
driver before extending the opcode field:

--->8---
diff --git a/drivers/spi/spi-mxic.c b/drivers/spi/spi-mxic.c
index 69491f3a515d..c3f4136a7c1d 100644
--- a/drivers/spi/spi-mxic.c
+++ b/drivers/spi/spi-mxic.c
@@ -356,6 +356,7 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
        int nio = 1, i, ret;
        u32 ss_ctrl;
        u8 addr[8];
+       u8 cmd[2];
 
        ret = mxic_spi_set_freq(mxic, mem->spi->max_speed_hz);
        if (ret)
@@ -393,7 +394,10 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
        writel(readl(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_ASSERT,
               mxic->regs + HC_CFG);
 
-       ret = mxic_spi_data_xfer(mxic, &op->cmd.opcode, NULL, 1);
+       for (i = 0; i < op->cmd.nbytes; i++)
+               cmd[i] = op->cmd.opcode >> (8 * (op->cmd.nbytes - i - 1));
+
+       ret = mxic_spi_data_xfer(mxic, cmd, NULL, op->cmd.nbytes);
        if (ret)
                goto out;
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
