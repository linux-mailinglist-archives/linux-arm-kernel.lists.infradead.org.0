Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5EA1DE237
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eR+amg5frrAzAAhikvtFl7d756whGcHxliVJ3D9AI7Q=; b=tDPZViTC4j6wKG
	q8/YZ+QVQPdiapsa8vBLErNpDyOWAL/2WnDTl6qhe4NbrylEeWHeVvLaDwkQb+VdK6RHMLoKX6MdM
	Ft6yytzKXZp/llFD0Am+gXebYdnGdIFf9nJ6VnF5KRwL/qlKSQuJvv15K7m7puyDI4qxayCQtpZa3
	RkQY0DdukBS3fPcnIW9dRxG/rk5c5F6kzGGmcEJjez8xoFhZLBdrTtOtzzWcrBpzWw8s+GcoYZn2F
	/s0eJHBoRP68FsisvQG9ngrEOcuxAFwyMRtrzi7r9JUcB3PHF5ihweI5CbQH+3Q/e+ZqP/L0lR4PX
	BPIYaLanihePJFxcuXJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3CI-00057g-2X; Fri, 22 May 2020 08:38:30 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3Bb-0004qC-7k; Fri, 22 May 2020 08:37:49 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04M8bcmh118407;
 Fri, 22 May 2020 03:37:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590136658;
 bh=yF4xwwVycaty1YYtrvz7tn0azR2eb+OYgNKHjKytnkc=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=LCwSPwdXFLyyOmJwtl+CdoShpJ5fp9tEao2X9/zf2kbnHkrfB6daeZc+naZsHvv10
 kiw+7ivb0aZ9ids8iQc7RtWrDqU/qMfeuR0E1icglIzgqW8EySon+4xkhX8cnKfZl5
 zCPoF810ubD13ZCtI79ERZZo13Wjwa8lPZlnB+gI=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04M8bc0U071990
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 22 May 2020 03:37:38 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 03:37:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 03:37:38 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04M8baqV054658;
 Fri, 22 May 2020 03:37:37 -0500
Date: Fri, 22 May 2020 14:07:36 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 05/19] mtd: spi-nor: add support for DTR protocol
Message-ID: <20200522083734.hs4wmfplch7icecv@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-6-p.yadav@ti.com>
 <OFAC48157A.F337A12A-ON48258570.0021F23B-48258570.0023CB62@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFAC48157A.F337A12A-ON48258570.0021F23B-48258570.0023CB62@mxic.com.tw>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_013747_388792_BDBA40FA 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, juliensu@mxic.com.tw,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/05/20 02:30PM, masonccyang@mxic.com.tw wrote:
> 
> Hi Pratyush,
> 
> 
> > +/**
> > + * spi_nor_spimem_setup_op() - Set up common properties of a spi-mem 
> op.
> > + * @nor:      pointer to a 'struct spi_nor'
> > + * @op:         pointer to the 'struct spi_mem_op' whose properties
> > + *         need to be initialized.
> > + * @proto:      the protocol from which the properties need to be set.
> > + */
> > +void spi_nor_spimem_setup_op(const struct spi_nor *nor,
> > +              struct spi_mem_op *op,
> > +              const enum spi_nor_protocol proto)
> > +{
> > +   u8 ext;
> > +
> > +   op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(proto);
> > +
> > +   if (op->addr.nbytes)
> > +      op->addr.buswidth = spi_nor_get_protocol_addr_nbits(proto);
> > +
> > +   if (op->dummy.nbytes)
> > +      op->dummy.buswidth = spi_nor_get_protocol_addr_nbits(proto);
> > +
> > +   if (op->data.nbytes)
> > +      op->data.buswidth = spi_nor_get_protocol_data_nbits(proto);
> > +
> > +   if (spi_nor_protocol_is_dtr(proto)) {
> 
> As mentioned before that I am also patching mx25* which supports 8S-8S-8S 
> and 
> 8D-8D-8D mode.
> 
> please patch to spi_nor_protocol_is_8_8_8(proto) for 8S-8S-8S mode 
> support.

Like I said before, we should try to avoid creeping up the scope of this 
series. This series aims to add 8D support. Once this lands, I don't see 
why you can't 8S support on top. Unless we make a fundamental change 
that makes it impossible to add 8S support, it should stay as-is.

All that said, I fail to see why 8S would have any problems with this 
function. We just fill in the buswidths from the protocol, and adjust 
the op if it is DTR. So in case of 8S mode, this function as it is will 
fill in the buswidths to 8 for all phases. And it won't hit the if block 
here so this code is of no concern to 8S mode.
 
> > +      /*
> > +       * spi-mem supports mixed DTR modes, but right now we can only
> > +       * have all phases either DTR or STR. IOW, spi-mem can have
> > +       * something like 4S-4D-4D, but spi-nor can't. So, set all 4
> > +       * phases to either DTR or STR.
> > +       */
> 
>         if (spi_nor_protocol_is_8D_8D_8D(proto) {

No. The adjustments below apply to _all_ DTR ops, not just 8D-8D-8D 
ones. So in case someone wants to use 4D-4D-4D mode, they won't have to 
touch this code at all.
 
> > +      op->cmd.dtr = op->addr.dtr = op->dummy.dtr
> > +                = op->data.dtr = true;
> > +
> > +      /* 2 bytes per clock cycle in DTR mode. */
> > +      op->dummy.nbytes *= 2;
> 
>         }
> 
> > +
> > +      ext = spi_nor_get_cmd_ext(nor, op);
> > +      op->cmd.opcode = (op->cmd.opcode << 8) | ext;
> > +      op->cmd.nbytes = 2;
> > +   }
> > +}
> > +

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
