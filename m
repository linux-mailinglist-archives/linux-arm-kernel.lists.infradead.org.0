Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CC824987
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPOj45JKKEf5iv8/MDaKpq27oepM/7FZd0vXVF1HJLA=; b=P5AQEsFCEpj5M3
	nwrN5qHqBejXvaKmxAfK51gL1KYZCirc3TUuIOEMtA9slFGWU/erOv1GUW8lVPcEGCHHgitmIWESW
	UZHN7AsIcf4jA/EM12GH1CN4hZRgfCeeFdXXgSnELoNuVQevxOgh1n9WXT9wjs/Jo2pHa13CO54sn
	j1tjORWRZ20cQOeiLhsIhO4f0/58qGZR8MBdm0wk7OtY9QrZ3kJie8ABmdlpU91PdycvOv64H4KMO
	SLZMgSKqUHTlgCOM8O5rsjw3Bzt08GO9H8S8T42/HtkXprvcryJ02g4eou2uL/WHe9fL/zJJE470m
	vo8An+OdmPDEY5/EPKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzeB-0002VM-Uk; Tue, 21 May 2019 07:57:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSze1-0002Tr-Aj
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:57:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSzdo-0004LK-Rp; Tue, 21 May 2019 09:56:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hSzde-0007fA-1g; Tue, 21 May 2019 09:56:46 +0200
Date: Tue, 21 May 2019 09:56:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 14/15] mtd: rawnand: Get rid of chip->numchips
Message-ID: <20190521075646.2qhwtsgn54tev6jn@pengutronix.de>
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-15-miquel.raynal@bootlin.com>
 <20190521065948.GA16530@pengutronix.de>
 <20190521093302.079f5470@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521093302.079f5470@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:43:12 up 3 days, 14:01, 54 users, load average: 0.03, 0.17, 0.22
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005709_559078_AA7AEA41 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Boris Brezillon <bbrezillon@kernel.org>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 09:33:02AM +0200, Boris Brezillon wrote:
> On Tue, 21 May 2019 08:59:48 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi,
> > 
> > On Mon, Mar 04, 2019 at 09:15:21PM +0100, Miquel Raynal wrote:
> > > diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> > > index fbf6ca015cd7..a204f9d7e123 100644
> > > --- a/drivers/mtd/nand/raw/internals.h
> > > +++ b/drivers/mtd/nand/raw/internals.h
> > > @@ -110,7 +110,7 @@ static inline int nand_exec_op(struct nand_chip *chip,
> > >  	if (!nand_has_exec_op(chip))
> > >  		return -ENOTSUPP;
> > >  
> > > -	if (WARN_ON(op->cs >= chip->numchips))
> > > +	if (WARN_ON(op->cs >= nanddev_ntargets(&chip->base)))
> > >  		return -EINVAL;  
> > 
> > This warning triggers when I apply my gpmi nand exec_op series.
> > 
> > The gpmi driver calls:
> > 
> > 	ret = nand_scan(chip, GPMI_IS_MX6(this) ? 2 : 1);
> > 
> > This ends up in nand_scan_ident() with maxchips = 2. Here nand_detect()
> > is called which sets memorg->ntargets = 1; Later in nand_scan_ident() we
> > have:
> > 
> > 	for (i = 1; i < maxchips; i++) {
> 
> This loop should be fixed to test against nanddev_ntargets() instead of
> maxchips.

This makes the maxchips argument to nand_scan() unused. A lot of drivers
are calling nand_scan() with maxchips > 1. How are these working then?

Or should there be a memorg->ntargets = maxchips before the loop?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
