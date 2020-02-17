Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F48161390
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etRpv5in/aAerXEKOnnR7b+wOqWjLsPmFUgSlDyYtW8=; b=YZcd30rFUn0QWR
	8xCnNl26XKtwzaybK3h2YtMoj5PGnhnUwW7MqD1/+4A2+qc39lUJ1WJZrt3EWbM/Q9HF6eWJfXyde
	/m8HEL4mb46na3uev7CJ+JH8NM2pDphNalUi7hfGoKGjVFW7ApdRy/Vr3bWlnkVLgfBpoCMsscVe8
	5HYaxCbVKRmrh2CV6y6mUYdfNyhyV7SB14lOdLN5AScQItf8wgs+/eavt9d/RJx/25aUB+AN6x+9q
	Nc4d01c7sonif1AkPS0M4uhbno+N65DfXjv0HALpmiFrdxk2jkkLJ4VmK4GbIngsf/Urtwc66QfHK
	DDkWx3IOElJwzJ12lQBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gVB-00085z-It; Mon, 17 Feb 2020 13:31:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gUz-00085L-V8; Mon, 17 Feb 2020 13:31:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9AE5528DFCF;
 Mon, 17 Feb 2020 13:31:43 +0000 (GMT)
Date: Mon, 17 Feb 2020 14:31:40 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Emil Lenngren <emil.lenngren@gmail.com>
Subject: Re: [PATCH v3 37/40] mtd: spinand: Propagate ECC information to the
 MTD structure
Message-ID: <20200217143140.6c5fa0ba@collabora.com>
In-Reply-To: <CAO1O6sdVqNFG+2O1AY1qN2Q4dUFhtAMk5Qr+Np3s_poSqFp+Og@mail.gmail.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-38-miquel.raynal@bootlin.com>
 <CAO1O6sdVqNFG+2O1AY1qN2Q4dUFhtAMk5Qr+Np3s_poSqFp+Og@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_053146_134182_919AB838 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 14:27:13 +0100
Emil Lenngren <emil.lenngren@gmail.com> wrote:

> Hi,
> 
> Den tors 19 sep. 2019 kl 21:56 skrev Miquel Raynal <miquel.raynal@bootlin.com>:
> >
> > This is done by default in the raw NAND core (nand_base.c) but was
> > missing in the SPI-NAND core. Without these two lines the ecc_strength
> > and ecc_step_size values are not exported to the user through sysfs.
> >
> > This fix depends on recent changes and should not be backported as-is.
> >
> > Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/spi/core.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> > index a521eeb0d351..36b99f68da81 100644
> > --- a/drivers/mtd/nand/spi/core.c
> > +++ b/drivers/mtd/nand/spi/core.c
> > @@ -1135,6 +1135,10 @@ static int spinand_init(struct spinand_device *spinand)
> >
> >         mtd->oobavail = ret;
> >
> > +       /* Propagate ECC information to mtd_info */
> > +       mtd->ecc_strength = nand->ecc.ctx.conf.strength;
> > +       mtd->ecc_step_size = nand->ecc.ctx.conf.step_size;
> > +
> >         return 0;
> >
> >  err_cleanup_ecc_engine:
> > --  
> 
> If I follow the code flow correctly, it seems this is more important
> than just exposing the value to the user through sysfs. The
> mtd_read_oob function uses the ecc_strength and bitflip_threshold
> values to decide if it should return -EUCLEAN or 0 for a read with
> correctable bitflips:
> 
> if (mtd->ecc_strength == 0)
>         return 0; /* device lacks ecc */
> return ret_code >= mtd->bitflip_threshold ? -EUCLEAN : 0;
> 
> The -EUCLEAN error code is then used in UBI for the wear level logic,
> so it would be nice if this could be fixed.
> Now both ecc_strength and bitflip_threshold is 0 for me with my SPI
> NAND flash, as exposed through sysfs, so I assume the wear level logic
> doesn't work right now.

Indeed. We should probably send this fix separately and add a Cc:stable
tag.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
