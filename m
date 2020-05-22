Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543D91DEF1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/fhKBtfGh38kowK9m88Ry01fK8sy9XA5a7KdIhTEss=; b=gxxEoIYBCtic0r
	DvZOGm7XJLNs2BsRZl0M9Vu3Gpefy8gOFIryK1UXfmsyGO4LcBiT5fc/GGQ6HLagp9266w66mFrfd
	99jfCYqG5mk7F2B+hxMqqh/R4tYFwRMwqB8hXLAhRkTTPEVz2p0S32ZXFZv8YA2IrLYQvPfalG76h
	t+PK9wkihJvjEkVOFgN4lsyfwBQBYXrJ1Un2bjJgeW3i4zIIFOAtQgmoaKj91M6f4IgkFJ2JuV0GO
	wFjtjSPFby8qwmY2v60/JoPEQO9YhQyfv81mDavHpC+TtDJ5Plv9qxY4sFgx0hNNa7WN3qzrRZT09
	FeL0d7lt4u2KNcAYdJ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCKb-0004lc-Bj; Fri, 22 May 2020 18:23:41 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCKB-0004bp-JJ; Fri, 22 May 2020 18:23:16 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04MIN774009732;
 Fri, 22 May 2020 13:23:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590171787;
 bh=7meOCcO9PMV0pe9bY/23KTU7Rz1Q8mk5VlyvR5wCnuc=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=pTQvFN0STMEPQPpZPpmVYr4o6kbNIsw7va17SVHSEGB2jijhOpPHCBpQpble/dVXz
 Ari1n8V9ilSNJt5irlpBbGjzlhlf9kaKRbj5xfz2Ov7Np+v2ZqFyS30huXNNr5zCtN
 qJgFGGdnVwiKmkOD1iz8fjnw6u4VW1554DId/mNw=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04MIN73n079237
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 22 May 2020 13:23:07 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 13:23:07 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 13:23:06 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04MIN6kR049061;
 Fri, 22 May 2020 13:23:06 -0500
Date: Fri, 22 May 2020 23:53:05 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 04/19] spi: spi-mem: allow specifying a command's
 extension
Message-ID: <20200522182257.wneqsmfm22farzus@ti.com>
References: <20200520163053.24357-1-p.yadav@ti.com>
 <20200520163053.24357-5-p.yadav@ti.com>
 <20200521202256.5816eb32@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521202256.5816eb32@collabora.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_112315_735525_C06E233E 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Boris,

On 21/05/20 08:22PM, Boris Brezillon wrote:
> On Wed, 20 May 2020 22:00:38 +0530
> Pratyush Yadav <p.yadav@ti.com> wrote:
> 
> As mentioned in one of my previous review, you should patch the mxic
> driver before extending the opcode field:
> 
> --->8---
> diff --git a/drivers/spi/spi-mxic.c b/drivers/spi/spi-mxic.c
> index 69491f3a515d..c3f4136a7c1d 100644
> --- a/drivers/spi/spi-mxic.c
> +++ b/drivers/spi/spi-mxic.c
> @@ -356,6 +356,7 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
>         int nio = 1, i, ret;
>         u32 ss_ctrl;
>         u8 addr[8];
> +       u8 cmd[2];

Regarding your comment about bisect-ability, how about I change this to:
  
  u8 cmd[sizeof(op->cmd.opcode)];

and put this patch before the change to 2-byte opcodes. This should also 
make it resistent to further changes in opcode size. Does that sound 
like a sane idea?
  
>         ret = mxic_spi_set_freq(mxic, mem->spi->max_speed_hz);
>         if (ret)
> @@ -393,7 +394,10 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
>         writel(readl(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_ASSERT,
>                mxic->regs + HC_CFG);
>  
> -       ret = mxic_spi_data_xfer(mxic, &op->cmd.opcode, NULL, 1);
> +       for (i = 0; i < op->cmd.nbytes; i++)
> +               cmd[i] = op->cmd.opcode >> (8 * (op->cmd.nbytes - i - 1));
> +
> +       ret = mxic_spi_data_xfer(mxic, cmd, NULL, op->cmd.nbytes);
>         if (ret)
>                 goto out;
>  

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
