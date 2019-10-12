Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7367D4E6C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZROzPGz3zh3mPJKnHb/8x0KhcZMSnUn4HHQe83Cq3jA=; b=X5EIaxP40tjhZC
	3LydfuteOKE8+vGy+mDDTPfuvN8MfLo6kjY8Do9WCis5sh0PeyNnd2Zn4y/WJ/ilxX7bXjD0vjmBd
	RnaelPnZ8NqXL38jlq32ReOBeKz9NL0nIrBN5hbYK8ePdcFOFmFsY1r8/wlIYWrhWG5wGguxBPT9m
	VJLs8Ee3Lt23cJ7vcrTIWn/bm77qxA1BO7rIeqbamirQdwS/9aTznYF3cm+EiXcNNums25nAQltDM
	hF9qHVmriQqjyLsgZo7KeSzYGcwJmedH1j6n3dDWDg/+eKFPmLgb+fIgCo//51T7gd8syoQbDNdht
	sVewQ+y+zRKsME4O545g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJDN8-0000pA-Lw; Sat, 12 Oct 2019 09:07:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJDMy-0000oj-AA; Sat, 12 Oct 2019 09:07:25 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BFFE62912EA;
 Sat, 12 Oct 2019 10:07:22 +0100 (BST)
Date: Sat, 12 Oct 2019 11:07:20 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 03/40] mtd: rawnand: Create a new enumeration to
 describe OOB placement
Message-ID: <20191012110720.7f497fff@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20191012110209.3a3eafc6@dhcp-172-31-174-146.wireless.concordia.ca>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-4-miquel.raynal@bootlin.com>
 <20191012110209.3a3eafc6@dhcp-172-31-174-146.wireless.concordia.ca>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_020724_612690_4C609B99 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 12 Oct 2019 11:02:09 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Thu, 19 Sep 2019 21:31:03 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > There is currently a confusion between the ECC type/mode/provider
> > (eg. hardware, software, on-die or none) and the in-bad/out-of-band  
> 
> 						   ^in-band
> 
> > layout which is only described for hardware engines (OOB first,
> > syndrome).  
> 
> It's not really about in-band/out-of-band data placement (though it
> also has an impact on it since free OOB bytes are sometimes protected
> by ECC or placed next to it), more ECC bytes placement.
> 
> > 
> > Create a new enumeration to describe this placement.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_base.c |  5 +++++
> >  include/linux/mtd/rawnand.h      | 12 ++++++++++++
> >  2 files changed, 17 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index e6c483ec191a..74e9289e931c 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -4842,6 +4842,11 @@ static const char * const nand_ecc_modes[] = {
> >  	[NAND_ECC_ON_DIE]	= "on-die",
> >  };
> >  
> > +static const char * const nand_ecc_engine_oob_placement[] = {  
> 
> 			     ^nand_ecc_placement ?
> 
> > +	[NAND_ECC_SYNDROME_OOB_PLACEMENT] = "hw_syndrome",
> > +	[NAND_ECC_OOB_FIRST_PLACEMENT] = "hw_oob_first",  
> 
> Since this is something you introduce, I'd recommend to change the
> naming here:
> 
> s/NAND_ECC_SYNDROME_OOB_PLACEMENT/NAND_ECC_PLACEMENT_INTERLEAVED/
> s/hw_syndrome/ecc-interleaved/

I realize the "ecc-" prefix is unneeded, so maybe just "interleaved"
and "first".

> s/NAND_ECC_OOB_FIRST_PLACEMENT/NAND_ECC_PLACEMENT_FIRST/
> s/hw_oob_first/ecc-first/
> 
> > +};
> > +
> >  static int of_get_nand_ecc_mode(struct device_node *np)
> >  {
> >  	const char *pm;
> > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > index ccdc0c314acc..89f964816f2c 100644
> > --- a/include/linux/mtd/rawnand.h
> > +++ b/include/linux/mtd/rawnand.h
> > @@ -93,6 +93,18 @@ enum nand_ecc_mode {
> >  	NAND_ECC_ON_DIE,
> >  };
> >  
> > +/**
> > + * enum nand_ecc_engine_oob_placement - NAND ECC engine OOB placement
> > + * @NAND_ECC_DEFAULT_OOB_PLACEMENT: Standard layout, or not specified  
> 
> Maybe describe what the standard layout is (ECC placed at the end), and
> mention that "not specified/default" means the driver can decide to put
> the ECC/free-OOB bytes where he wants.
> 
> > + * @NAND_ECC_SYNDROME_OOB_PLACEMENT: Syndrome layout (interlaced)
> > + * @NAND_ECC_OOB_FIRST_PLACEMENT: Free OOB bytes first
> > + */
> > +enum nand_ecc_engine_oob_placement {
> > +	NAND_ECC_DEFAULT_OOB_PLACEMENT,
> > +	NAND_ECC_SYNDROME_OOB_PLACEMENT,
> > +	NAND_ECC_OOB_FIRST_PLACEMENT,
> > +};
> > +
> >  enum nand_ecc_algo {
> >  	NAND_ECC_UNKNOWN,
> >  	NAND_ECC_HAMMING,  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
