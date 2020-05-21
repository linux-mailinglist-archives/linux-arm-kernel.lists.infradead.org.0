Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BCB1DC87D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZXLwsEQrWsoQ1cyqlizTR9W+jaKJYzDMsW3jlhyvJA=; b=ndTv9mEGnwOvPU
	VqVPj44uymP3LIS4MLC8691rcU2ZSAFzogm0JZPmA+AdZ2J+dqPhTDBSGfl4MxmoqwN9tNDIugJ73
	yw7BD+lA0pbYOATHH8J9zBV88c5si1l2kLA94YBmiRmhEu+RG3UwdKjTWg7uzmMtipLV6eoY7Q/BO
	LqMT0162j2XGHCDTiCa+ykfAdrxbh9z69KKTohLq2lTV9muf1GF7+9kCSsXQC8yjKNQMUrry8JdOq
	AuuJ1zULfCTBArgsUejHiJTUGUCikbE5/7RYqklKYlTeTV2j/DMRUdTmy1DbbdVQ7Kj0FTNMOS8tW
	z6htgmH7Sesdvrb9X95g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgZJ-0002d6-Tl; Thu, 21 May 2020 08:28:45 +0000
Received: from twhmllg3.macronix.com ([211.75.127.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgYr-0002RQ-Av; Thu, 21 May 2020 08:28:19 +0000
Received: from twhfmlp1.macronix.com (twhfmlp1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id 04L8RljY069236;
 Thu, 21 May 2020 16:27:47 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id 1B985808C8C345E414D3;
 Thu, 21 May 2020 16:27:48 +0800 (CST)
In-Reply-To: <20200519142642.24131-2-p.yadav@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-2-p.yadav@ti.com>
To: "Pratyush Yadav" <p.yadav@ti.com>
Subject: Re: [PATCH v5 01/19] spi: spi-mem: allow specifying whether an op is
 DTR or not
MIME-Version: 1.0
X-KeepSent: 1FE36FB9:9FBEFCD6-4825856F:002D767F;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF1FE36FB9.9FBEFCD6-ON4825856F.002D767F-4825856F.002E7D42@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Thu, 21 May 2020 16:27:47 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/05/21 PM 04:27:48,
 Serialize complete at 2020/05/21 PM 04:27:48
X-MAIL: TWHMLLG3.macronix.com 04L8RljY069236
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_012817_629006_E61FDACE 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, juliensu@mxic.com.tw,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Pratyush,

Given cmd.nbytes a initial value & check it !

> 
> [PATCH v5 01/19] spi: spi-mem: allow specifying whether an op is DTR or 
not
> 
> Each phase is given a separate 'dtr' field so mixed protocols like
> 4S-4D-4D can be supported.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/spi/spi-mem.c       | 3 +++
>  include/linux/spi/spi-mem.h | 8 ++++++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
> index 9a86cc27fcc0..93e255287ab9 100644
> --- a/drivers/spi/spi-mem.c
> +++ b/drivers/spi/spi-mem.c
> @@ -156,6 +156,9 @@ bool spi_mem_default_supports_op(struct spi_mem 
*mem,
>                 op->data.dir == SPI_MEM_DATA_OUT))
>        return false;
> 
> +   if (op->cmd.dtr || op->addr.dtr || op->dummy.dtr || op->data.dtr)
> +      return false;
> +

+       if (op->cmd.nbytes != 1)
+               return false;

>     return true;
>  }
>  EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);


 static int spi_mem_check_op(const struct spi_mem_op *op)
 {
-                if (!op->cmd.buswidth)
+                if (!op->cmd.buswidth || op->cmd.nbytes < 1 || 
op->cmd.nbytes > 2)
                                 return -EINVAL;


> diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
> index af9ff2f0f1b2..e3dcb956bf61 100644
> --- a/include/linux/spi/spi-mem.h
> +++ b/include/linux/spi/spi-mem.h

#define SPI_MEM_OP_CMD(__opcode, __buswidth)                    \
         {                                                       \
                 .buswidth = __buswidth,                         \
                 .opcode = __opcode,                             \
+                .nbytes = 1,                                    \
         }



> @@ -71,9 +71,11 @@ enum spi_mem_data_dir {
>   * struct spi_mem_op - describes a SPI memory operation
>   * @cmd.buswidth: number of IO lines used to transmit the command
>   * @cmd.opcode: operation opcode
> + * @cmd.dtr: whether the command opcode should be sent in DTR mode or 
not
>   * @addr.nbytes: number of address bytes to send. Can be zero if the 
operation
>   *       does not need to send an address
>   * @addr.buswidth: number of IO lines used to transmit the address 
cycles
> + * @addr.dtr: whether the address should be sent in DTR mode or not
>   * @addr.val: address value. This value is always sent MSB first on the 
bus.
>   *         Note that only @addr.nbytes are taken into account in this
>   *         address value, so users should make sure the value fits in 
the
> @@ -81,7 +83,9 @@ enum spi_mem_data_dir {
>   * @dummy.nbytes: number of dummy bytes to send after an opcode or 
address. Can
>   *        be zero if the operation does not require dummy bytes
>   * @dummy.buswidth: number of IO lanes used to transmit the dummy bytes
> + * @dummy.dtr: whether the dummy bytes should be sent in DTR mode or 
not
>   * @data.buswidth: number of IO lanes used to send/receive the data
> + * @data.dtr: whether the data should be sent in DTR mode or not
>   * @data.dir: direction of the transfer
>   * @data.nbytes: number of data bytes to send/receive. Can be zero if 
the
>   *       operation does not involve transferring data
> @@ -91,22 +95,26 @@ enum spi_mem_data_dir {
>  struct spi_mem_op {
>     struct {
>        u8 buswidth;
> +      u8 dtr : 1;
>        u8 opcode;
>     } cmd;
> 
>     struct {
>        u8 nbytes;
>        u8 buswidth;
> +      u8 dtr : 1;
>        u64 val;
>     } addr;
> 
>     struct {
>        u8 nbytes;
>        u8 buswidth;
> +      u8 dtr : 1;
>     } dummy;
> 
>     struct {
>        u8 buswidth;
> +      u8 dtr : 1;
>        enum spi_mem_data_dir dir;
>        unsigned int nbytes;
>        union {
> -- 
> 2.26.2
> 

thanks & best regards,
Mason

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information 
and/or personal data, which is protected by applicable laws. Please be 
reminded that duplication, disclosure, distribution, or use of this e-mail 
(and/or its attachments) or any part thereof is prohibited. If you receive 
this e-mail in error, please notify us immediately and delete this mail as 
well as its attachment(s) from your system. In addition, please be 
informed that collection, processing, and/or use of personal data is 
prohibited unless expressly permitted by personal data protection laws. 
Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================



============================================================================

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information and/or personal data, which is protected by applicable laws. Please be reminded that duplication, disclosure, distribution, or use of this e-mail (and/or its attachments) or any part thereof is prohibited. If you receive this e-mail in error, please notify us immediately and delete this mail as well as its attachment(s) from your system. In addition, please be informed that collection, processing, and/or use of personal data is prohibited unless expressly permitted by personal data protection laws. Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
