Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F681EA06A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwdQqrzJWciL2N/rlu7jKfnZOiyZWytPaPaIC1EKp40=; b=nqGKZEdev9gqDP
	z4eedn4WE/cQipeXtvgLsdrtrnVzWleLxzEqdTpW/PLTIbrbKATvbQN74/TV5BkUJxtks0sIldndw
	c+4RbZvhAvUkTlSgXZDYmeJrVnmZOzdEa875kD8uKBcbyVK9iZmHNRSKqSwVjMd6NbnwbnbrlYnGj
	/zeyH1qpvMBDSO8YkqBIUbEB9MVOwgZGWWf7ieWqx71liw+5M1Q0y/V8wnvS4kSiMlaL8Hj+dvK+j
	08q+jZgqZeoUDh7RWxNurquqGvuF/05vLPv0F0jBPs1kIJYUmN8ggv7/0QlqQCrpQLd8FjfTSfhbi
	7Lnd2aFh5LbFH3sxk3nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgHz-0001po-5Y; Mon, 01 Jun 2020 08:59:23 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgHs-0001cl-0q; Mon, 01 Jun 2020 08:59:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0518wsLQ099629;
 Mon, 1 Jun 2020 03:58:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591001934;
 bh=lGlyZcBPTfIHV1CPcNrc05ZOhHwMY7+8yiwU4k+Xhg0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=m5Qq5qb7OFtWluux14ydZvYIB+t2mYHHOthas1jkOapNLeJlaFRvONQYEkz26llr9
 EFGeFBlqJEAHl4OeX/VV2UTqZi5O9lrZ5mjMMnXcpcxzL+ItRg7yv/dVP7HVzsLlgO
 BOIF2Pr24g5StH8GbC7rs1773ZevkHhWdx8O9Zzw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0518wsv0092753
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jun 2020 03:58:54 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 03:58:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 03:58:53 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0518wqOG104672;
 Mon, 1 Jun 2020 03:58:53 -0500
Date: Mon, 1 Jun 2020 14:28:52 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v9 13/19] mtd: spi-nor: sfdp: do not make invalid quad
 enable fatal
Message-ID: <20200601085850.um32giucfcvh5oke@ti.com>
References: <20200525091544.17270-1-p.yadav@ti.com>
 <20200525091544.17270-14-p.yadav@ti.com>
 <2267830.vuSd8QnXzO@192.168.0.120>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2267830.vuSd8QnXzO@192.168.0.120>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_015916_187246_2FF60562 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, masonccyang@mxic.com.tw, vigneshr@ti.com,
 richard@nod.at, nsekhar@ti.com, boris.brezillon@collabora.com,
 michal.simek@xilinx.com, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tudor,

On 30/05/20 06:42PM, Tudor.Ambarus@microchip.com wrote:
> On Monday, May 25, 2020 12:15:38 PM EEST Pratyush Yadav wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the
> > content is safe
> > 
> > The Micron MT35XU512ABA flash does not support the quad enable bit. But
> > instead of programming the Quad Enable Require field to 000b ("Device
> > does not have a QE bit"), it is programmed to 111b ("Reserved").
> > 
> > While this is technically incorrect, it is not reason enough to abort
> > BFPT parsing. Instead, continue BFPT parsing assuming there is no quad
> > enable bit present.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> >  drivers/mtd/spi-nor/sfdp.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
> > index 052cabb52df9..9fd3d8d9a127 100644
> > --- a/drivers/mtd/spi-nor/sfdp.c
> > +++ b/drivers/mtd/spi-nor/sfdp.c
> > @@ -576,10 +576,6 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
> > 
> >         /* Quad Enable Requirements. */
> >         switch (bfpt.dwords[BFPT_DWORD(15)] & BFPT_DWORD15_QER_MASK) {
> > -       case BFPT_DWORD15_QER_NONE:
> > -               params->quad_enable = NULL;
> > -               break;
> > -
> >         case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
> >                 /*
> >                  * Writing only one byte to the Status Register has the
> > @@ -616,8 +612,10 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
> >                 params->quad_enable = spi_nor_sr2_bit1_quad_enable;
> >                 break;
> > 
> > +       case BFPT_DWORD15_QER_NONE:
> >         default:
> > -               return -EINVAL;
> > +               params->quad_enable = NULL;
> > +               break;
> 
> I would just add a dev_dbg message and break the switch.
> 	dev_dbg(nor->dev, "BFPT QER reserved value used.\n");
> 	break;
> 
> You will then have to set params->quad_enable = NULL; in a post_bfpt hook.

Ok. Will re-roll.

BTW, are you planning to pick up the xSPI/8D support for 5.8? It has 
been outstanding for quite some time now and it would be great if it can 
make it through this merge window.

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
