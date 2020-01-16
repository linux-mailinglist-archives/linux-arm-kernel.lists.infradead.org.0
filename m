Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B9513D67E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrffEJzo6xwmvIihiHWkRXfqX1XVFik8EAbTXikBGG8=; b=WVwJ0T5EoKgXuI
	kMIVVn50+6mgogPHObyoNEtb8WUnlm8IhWd+MtopulYJLKmvBd+2QufIW+Xg1+ofNZnyq8qBw0iaC
	NkVUpMhO0CyuAwrk5KPAXzQD2gQq4oVo6naN9K2TA08Nq0XOuUDuQBdiyg5XSzk9LAmGLt/3Nnmjb
	y0fGjL3tkE8huue5S/KpXUkPkqZmJwa41AUIi2d5xgpywKbzqGIDMrF/bcMSzqiklodSOZLGxzMXx
	ZnvKaYxmFMiqqXTo4fWmrzmVGBEkJq0qW7epO6Q/Duc1wWBLoEW2TftbNrShQlTJ+Kmuxcv/W4k6F
	yvz6CAFDPztyn+NMWn9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1DK-0000BB-2H; Thu, 16 Jan 2020 09:13:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1D1-0008SK-V1; Thu, 16 Jan 2020 09:13:03 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B17B52938DB;
 Thu, 16 Jan 2020 09:12:51 +0000 (GMT)
Date: Thu, 16 Jan 2020 10:12:49 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 12/40] mtd: nand: Rename a core structure
Message-ID: <20200116101249.08f0da5e@collabora.com>
In-Reply-To: <20200116095301.14c191ac@xps13>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-13-miquel.raynal@bootlin.com>
 <20191012113530.6fe78c71@dhcp-172-31-174-146.wireless.concordia.ca>
 <20200116095301.14c191ac@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_011300_136776_83B400F7 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 09:53:01 +0100
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sat, 12 Oct
> 2019 11:35:30 +0200:
> 
> > On Thu, 19 Sep 2019 21:31:12 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Prepare the migration to a generic ECC engine by renaming the
> > > nand_ecc_req structure into nand_ecc_props. This structure will be the
> > > base of a wider 'nand_ecc' structure.
> > > 
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  include/linux/mtd/nand.h    | 8 ++++----
> > >  include/linux/mtd/spinand.h | 2 +-
> > >  2 files changed, 5 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> > > index 531c1799bf2c..7072f14239e5 100644
> > > --- a/include/linux/mtd/nand.h
> > > +++ b/include/linux/mtd/nand.h
> > > @@ -128,11 +128,11 @@ struct nand_page_io_req {
> > >  };
> > >  
> > >  /**
> > > - * struct nand_ecc_req - NAND ECC requirements
> > > + * struct nand_ecc_props - NAND ECC properties
> > >   * @strength: ECC strength
> > > - * @step_size: ECC step/block size
> > > + * @step_size: Number of bytes per step
> > >   */
> > > -struct nand_ecc_req {
> > > +struct nand_ecc_props {
> > >  	unsigned int strength;
> > >  	unsigned int step_size;
> > >  };
> > > @@ -191,7 +191,7 @@ struct nand_ops {
> > >  struct nand_device {
> > >  	struct mtd_info mtd;
> > >  	struct nand_memory_organization memorg;
> > > -	struct nand_ecc_req eccreq;
> > > +	struct nand_ecc_props eccreq;    
> > 
> > Let's rename this field too: s/eccreq/eccprops/  
> 
> This is just a transition step, this field is being replaced by a much
> wider structure two patches later. The impact of renaming this field is
> huge compared to its interest so I'd prefer not to do it.

Fair enough. I guess it's no longer named eccreq after the transition.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
