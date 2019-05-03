Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0764F12E81
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDdtUbixqu2GLKI5PLi8m4+mL/8wD7GfX5rEJ/XjOSA=; b=QurCWytppGLslN
	IcZ2NuRO36kovy7BngMV7+ar5tVxhyc968W+HJuuX2gfh63Le8eSoIZqpXJ7b/lYAKxbtyFcnbRMb
	+omcwe1nlOj7O1MdfJYWlA9O+TLqXSOZid0QgWfCEjKJfAaa4OaQjFRDf+67EVZAIFJDJaKo1wAXp
	gwOOhKIEikrLoLaPKg2a9BUgpch+pq5TRLg5rra9daK/x29EVa+mWUAuSiY2BOOxGDP7Vzlp/9/bV
	YgRUUeUrNNo2oXZfaHp1MOWhdLC9xePw2idxK6trqKIAn2QKe54RnloZ8pbB2tw8+KoVVCFciJ46R
	tSeA60wxXZ1Lwaln1QNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXeh-0003df-Bb; Fri, 03 May 2019 12:51:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXdk-0002Jb-K9; Fri, 03 May 2019 12:50:15 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 350BB260BE4;
 Fri,  3 May 2019 13:50:09 +0100 (BST)
Date: Fri, 3 May 2019 14:50:06 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 07/36] mtd: rawnand: Avoid a typedef
Message-ID: <20190503145006.574af442@collabora.com>
In-Reply-To: <20190503144030.7fbbc0d4@xps13>
References: <20190304222841.13899-1-miquel.raynal@bootlin.com>
 <20190304222841.13899-8-miquel.raynal@bootlin.com>
 <20190331135513.59257c1d@collabora.com>
 <20190503144030.7fbbc0d4@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_055013_109536_172D1B03 
X-CRM114-Status: GOOD (  27.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 May 2019 14:40:30 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 31 Mar
> 2019 13:55:13 +0200:
> 
> > On Mon,  4 Mar 2019 23:28:12 +0100
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > In new code, the use of typedef is discouraged. Before moving this
> > > section out of the raw NAND base, let's switch the nand_ecc_modes_t
> > > type into a regular nand_ecc_mode enumeration.
> > > 
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  drivers/mtd/nand/raw/nand_base.c               | 4 ++--
> > >  include/linux/mtd/rawnand.h                    | 6 +++---
> > >  include/linux/platform_data/mtd-davinci.h      | 2 +-
> > >  include/linux/platform_data/mtd-nand-s3c2410.h | 2 +-
> > >  4 files changed, 7 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > > index e14f02a01efd..05174c6a3099 100644
> > > --- a/drivers/mtd/nand/raw/nand_base.c
> > > +++ b/drivers/mtd/nand/raw/nand_base.c
> > > @@ -4881,8 +4881,8 @@ static int of_get_nand_ecc_mode(struct device_node *np)
> > >  
> > >  	/*
> > >  	 * For backward compatibility we support few obsoleted values that don't
> > > -	 * have their mappings into nand_ecc_modes_t anymore (they were merged
> > > -	 * with other enums).
> > > +	 * have their mappings into the nand_ecc_mode enum anymore (they were
> > > +	 * merged with other enums).
> > >  	 */
> > >  	if (!strcasecmp(pm, "soft_bch"))
> > >  		return NAND_ECC_SOFT;
> > > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > > index 14748183508b..c5bf6bb49329 100644
> > > --- a/include/linux/mtd/rawnand.h
> > > +++ b/include/linux/mtd/rawnand.h
> > > @@ -87,14 +87,14 @@ struct nand_chip;
> > >  /*
> > >   * Constants for ECC_MODES
> > >   */
> > > -typedef enum {
> > > +enum nand_ecc_mode {
> > >  	NAND_ECC_NONE,
> > >  	NAND_ECC_SOFT,
> > >  	NAND_ECC_HW,
> > >  	NAND_ECC_HW_SYNDROME,
> > >  	NAND_ECC_HW_OOB_FIRST,
> > >  	NAND_ECC_ON_DIE,
> > > -} nand_ecc_modes_t;
> > > +};    
> > 
> > Hm, I'm really not a big fan of this enum because it's mixing 2
> > different concepts: the type of ECC engine to use (on-die,
> > hw-controller-side, software, no-ECC) and the layout of
> > ECC/FREE bytes (_SYNDROME, _OOB_FIRST).
> > 
> > I'd recommend creating a nand_ecc_engine_type enum:
> > 
> > enum nand_ecc_engine_type {
> > 	NAND_NO_ECC_ENGINE,
> > 	NAND_SOFT_ECC_ENGINE,
> > 	NAND_HW_ECC_ENGINE,
> > 	NAND_ON_DIE_ECC_ENGINE,
> > };
> > 
> > and then convert the raw NAND layer to this enum when the time comes.  
> 
> I started something but this goes way too far from what I want to
> achieve. I know it would be nice to have it but it has an
> increasingly number of side effects which scared me. The way the
> series is organized does not allow to easily ignore the raw NAND layer
> first and then convert it. I am giving up on this one for now, sorry.

I don't think that's a wise choice. Why not focusing on
nand_device/spinand with a clean implementation that does not try to
convert the rawnand layer to this approach? The reason I initially
started over with a new generic NAND layer instead of copying things
from nand_base is that I wanted to avoid having to deal with stuff that
were not so great in there, and clearly nand_ecc_mode is one of them.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
