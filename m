Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D005C1DE4B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuPX5O6vr9hanXRqEIIPpX9ykLFQO/clijJ0qFC4mPw=; b=H/L4hdmT6lPkRa
	3QJIU7dmGdG2s26xJkg4HQV69Vb4RoTzoQMRdKKXmk5Yb3PEngTkp9lhxOf9qQrATXGvlgN8pPoz7
	M10r7bj6fzbmLGl9Zv1yU/5O0cuxcViX5S4ILXpy9O3iBgZJEqP2zOh6DqSXYe8X+QaXPytWHks5B
	1WhocNcEh1F4E+aocQqVb9h39c8/s7i8doOr0KtfqQJmghaaZ1k8LTkdCKFHSxw95/iJXuXzlpjQU
	6NnZUO2LYm/r8ku5H9xAtnKe/tANfGeKG+1pEKzskJbIapSwp3Lg0RJm5dWRItGNforNFP8oZnImb
	RiRVs1ymAMBW8TLaCiGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5Bb-00030j-56; Fri, 22 May 2020 10:45:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5BR-00030B-1Y; Fri, 22 May 2020 10:45:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04MAjcHd017015;
 Fri, 22 May 2020 05:45:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590144338;
 bh=+ZG6P8BF3dJ9QHRvqtMY+fgKzn83Sk8LyDmqXrBTqds=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=gZG3x5VZ9tES5/HMESW0XZnj+Gjnop5Bkkzsqrh5ftpSGzE4b//BXjEmxHjCxwZRp
 MYdmEh8a+w5hDkWhmBRW3VmWA9gqKS5UD9RwFKQYFrZl/b8NXFki0AfeZ83Nqb7OBv
 KETO8hkfXGbgdvmch/dSPK1FaA/Hdf7a+E/shLOM=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04MAjcK1091662;
 Fri, 22 May 2020 05:45:38 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 05:45:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 05:45:37 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04MAjbIc013302;
 Fri, 22 May 2020 05:45:37 -0500
Date: Fri, 22 May 2020 16:15:36 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 01/19] spi: spi-mem: allow specifying whether an op is
 DTR or not
Message-ID: <20200522104536.4ikmhiaxg7keahdp@ti.com>
References: <20200519142642.24131-1-p.yadav@ti.com>
 <20200519142642.24131-2-p.yadav@ti.com>
 <OF1FE36FB9.9FBEFCD6-ON4825856F.002D767F-4825856F.002E7D42@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF1FE36FB9.9FBEFCD6-ON4825856F.002D767F-4825856F.002E7D42@mxic.com.tw>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_034545_166037_327472F3 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

[Seems like I forgot to send this and it stayed in my Drafts folder. 
Anyway, fixed in v7]

Hi Mason,

On 21/05/20 04:27PM, masonccyang@mxic.com.tw wrote:
> 
> Hi Pratyush,
> 
> Given cmd.nbytes a initial value & check it !
> 
> > 
> > [PATCH v5 01/19] spi: spi-mem: allow specifying whether an op is DTR or 
> not
> > 
> > Each phase is given a separate 'dtr' field so mixed protocols like
> > 4S-4D-4D can be supported.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> >  drivers/spi/spi-mem.c       | 3 +++
> >  include/linux/spi/spi-mem.h | 8 ++++++++
> >  2 files changed, 11 insertions(+)
> > 
> > diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
> > index 9a86cc27fcc0..93e255287ab9 100644
> > --- a/drivers/spi/spi-mem.c
> > +++ b/drivers/spi/spi-mem.c
> > @@ -156,6 +156,9 @@ bool spi_mem_default_supports_op(struct spi_mem 
> *mem,
> >                 op->data.dir == SPI_MEM_DATA_OUT))
> >        return false;
> > 
> > +   if (op->cmd.dtr || op->addr.dtr || op->dummy.dtr || op->data.dtr)
> > +      return false;
> > +
> 
> +       if (op->cmd.nbytes != 1)
> +               return false;

Good catch. Will fix.
 
> >     return true;
> >  }
> >  EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);
> 
> 
>  static int spi_mem_check_op(const struct spi_mem_op *op)
>  {
> -                if (!op->cmd.buswidth)
> +                if (!op->cmd.buswidth || op->cmd.nbytes < 1 || 
> op->cmd.nbytes > 2)
>                                  return -EINVAL;

Will fix.
 
> 
> > diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
> > index af9ff2f0f1b2..e3dcb956bf61 100644
> > --- a/include/linux/spi/spi-mem.h
> > +++ b/include/linux/spi/spi-mem.h
> 
> #define SPI_MEM_OP_CMD(__opcode, __buswidth)                    \
>          {                                                       \
>                  .buswidth = __buswidth,                         \
>                  .opcode = __opcode,                             \
> +                .nbytes = 1,                                    \
>          }

Will fix. Thanks.

-- 
Regards,
Pratyush Yadav
Texas Instruments India

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
