Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C79D1DDFEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 08:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vITpX3IU2VBzXjQwIb3u69JRWO8G7XQeLHmcwY3EnNQ=; b=iArZ+0Zkx/J+Qf
	ekSdYlcJAdnA1c8gburjUomXfv9N9dD2Y2fVqq1SQbmKrp3LLvG7Ud6OtNsP2OJsTDpy9VeRYL1Wp
	7OZfiZoBXpKTD8L0Lac3UX6n5pW7PJTIwKtR3I8zDEf09Or7kNc36R3UFuhzVjXuc49LmeWKYlYyK
	Nf2K7+Tpk/hu6i/Rl4Vwzg0llPa/Ewas1ftmBto/WonJzj7qcXvXMJG6vw1jd7ZCdKVklcyzhvQzC
	dUHFEiKVCwv2zlg8Grn9GjJZWVUf5p3zHaU8M+tQF4SwTFj2Tcr6tWGtW0RRTnKHlDdKDATGBofLf
	d9jUeZoIl7ClKpDEUKxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1Dp-00075U-9f; Fri, 22 May 2020 06:31:57 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1DP-0006t8-C9; Fri, 22 May 2020 06:31:32 +0000
Received: from twhfm1p2.macronix.com (twhfmlp2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id 04M6Uv0L024143;
 Fri, 22 May 2020 14:30:57 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id 392FE906D490C16CE7F1;
 Fri, 22 May 2020 14:30:58 +0800 (CST)
In-Reply-To: <20200519142642.24131-6-p.yadav@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-6-p.yadav@ti.com>
To: "Pratyush Yadav" <p.yadav@ti.com>
Subject: Re: [PATCH v5 05/19] mtd: spi-nor: add support for DTR protocol
MIME-Version: 1.0
X-KeepSent: AC48157A:F337A12A-48258570:0021F23B;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFAC48157A.F337A12A-ON48258570.0021F23B-48258570.0023CB62@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Fri, 22 May 2020 14:30:58 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2020/05/22 PM 02:30:58,
 Serialize complete at 2020/05/22 PM 02:30:58
X-MAIL: TWHMLLG4.macronix.com 04M6Uv0L024143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_233131_676622_28B0BCEF 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.132 listed in list.dnswl.org]
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


> +/**
> + * spi_nor_spimem_setup_op() - Set up common properties of a spi-mem 
op.
> + * @nor:      pointer to a 'struct spi_nor'
> + * @op:         pointer to the 'struct spi_mem_op' whose properties
> + *         need to be initialized.
> + * @proto:      the protocol from which the properties need to be set.
> + */
> +void spi_nor_spimem_setup_op(const struct spi_nor *nor,
> +              struct spi_mem_op *op,
> +              const enum spi_nor_protocol proto)
> +{
> +   u8 ext;
> +
> +   op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(proto);
> +
> +   if (op->addr.nbytes)
> +      op->addr.buswidth = spi_nor_get_protocol_addr_nbits(proto);
> +
> +   if (op->dummy.nbytes)
> +      op->dummy.buswidth = spi_nor_get_protocol_addr_nbits(proto);
> +
> +   if (op->data.nbytes)
> +      op->data.buswidth = spi_nor_get_protocol_data_nbits(proto);
> +
> +   if (spi_nor_protocol_is_dtr(proto)) {

As mentioned before that I am also patching mx25* which supports 8S-8S-8S 
and 
8D-8D-8D mode.

please patch to spi_nor_protocol_is_8_8_8(proto) for 8S-8S-8S mode 
support.

> +      /*
> +       * spi-mem supports mixed DTR modes, but right now we can only
> +       * have all phases either DTR or STR. IOW, spi-mem can have
> +       * something like 4S-4D-4D, but spi-nor can't. So, set all 4
> +       * phases to either DTR or STR.
> +       */

        if (spi_nor_protocol_is_8D_8D_8D(proto) {

> +      op->cmd.dtr = op->addr.dtr = op->dummy.dtr
> +                = op->data.dtr = true;
> +
> +      /* 2 bytes per clock cycle in DTR mode. */
> +      op->dummy.nbytes *= 2;

        }

> +
> +      ext = spi_nor_get_cmd_ext(nor, op);
> +      op->cmd.opcode = (op->cmd.opcode << 8) | ext;
> +      op->cmd.nbytes = 2;
> +   }
> +}
> +

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
