Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5A71E6545
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4GEM6rAWmVmJ0rKIUUFgMxgqfzH63MHjf7UEFrq9XQ=; b=hqGjcgx1Ry+FUB
	3ed59nwpMLnsJoXqOE92iq3kq0VgmEoZmFnOKS2InF5Wiv4hOiaHUpgECjfoKWzdgDVa5aaa3NlCi
	Wm8QzCyyb2ZfW3+3YVog3wuIOsKhDFVSOzqEOEIV9s69FprANtRO86rJybl8NXodyEXicEYFdW4Z1
	ecz5hVFmRq6ZbAYXeusH1UIcS95Tthvjj9T6K2eBB0k5g/5fm3Z979ozaBODbLAiiwDQn3LV2G7zO
	GKkNObabWCugR4CsRCK6aFA0ZfppaXhQXe5NrL3DedQPxWJnvH5M42GbZLGdb1JR20Qz0Lf4KbZyF
	4yf2aw3JWmLtgRqKDilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeK2Q-000776-D5; Thu, 28 May 2020 15:01:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeK1D-0006l8-Au; Thu, 28 May 2020 15:00:29 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B08972A3FE2;
 Thu, 28 May 2020 16:00:25 +0100 (BST)
Date: Thu, 28 May 2020 17:00:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 14/18] mtd: nand: Add more parameters to the
 nand_ecc_props structure
Message-ID: <20200528170022.5cd5b46c@collabora.com>
In-Reply-To: <20200528165754.35985b62@xps13>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-15-miquel.raynal@bootlin.com>
 <20200528163424.6677597c@collabora.com>
 <20200528165754.35985b62@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_080027_512771_4FDFD9AC 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Paul Cercueil <paul@crapouillou.net>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 16:57:54 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
> 2020 16:34:24 +0200:
> 
> > On Thu, 28 May 2020 13:31:09 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Prepare the migration to the generic ECC framework by adding more
> > > fields to the nand_ecc_props structure which will be used widely to
> > > describe different kind of ECC properties.
> > > 
> > > Doing this imposes to move the engine type, ECC placement and
> > > algorithm enumerations in a shared place: nand.h.
> > > 
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  include/linux/mtd/nand.h    | 52 +++++++++++++++++++++++++++++++++++++
> > >  include/linux/mtd/rawnand.h | 44 -------------------------------
> > >  2 files changed, 52 insertions(+), 44 deletions(-)
> > > 
> > > diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> > > index 6add464fd18b..2e9af24936cd 100644
> > > --- a/include/linux/mtd/nand.h
> > > +++ b/include/linux/mtd/nand.h
> > > @@ -127,14 +127,66 @@ struct nand_page_io_req {
> > >  	int mode;
> > >  };
> > >  
> > > +/**
> > > + * enum nand_ecc_engine_type - NAND ECC engine type
> > > + * @NAND_ECC_ENGINE_TYPE_INVALID: Invalid value
> > > + * @NAND_ECC_ENGINE_TYPE_NONE: No ECC correction
> > > + * @NAND_ECC_ENGINE_TYPE_SOFT: Software ECC correction
> > > + * @NAND_ECC_ENGINE_TYPE_ON_HOST: On host hardware ECC correction
> > > + * @NAND_ECC_ENGINE_TYPE_ON_DIE: On chip hardware ECC correction
> > > + */
> > > +enum nand_ecc_engine_type {
> > > +	NAND_ECC_ENGINE_TYPE_INVALID,
> > > +	NAND_ECC_ENGINE_TYPE_NONE,
> > > +	NAND_ECC_ENGINE_TYPE_SOFT,
> > > +	NAND_ECC_ENGINE_TYPE_ON_HOST,
> > > +	NAND_ECC_ENGINE_TYPE_ON_DIE,
> > > +};
> > > +
> > > +/**
> > > + * enum nand_ecc_placement - NAND ECC bytes placement
> > > + * @NAND_ECC_PLACEMENT_UNKNOWN: The actual position of the ECC bytes is unknown
> > > + * @NAND_ECC_PLACEMENT_OOB: The ECC bytes are located in the OOB area
> > > + * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout, there are ECC bytes
> > > + *                                  interleaved with regular data in the main
> > > + *                                  area
> > > + */
> > > +enum nand_ecc_placement {
> > > +	NAND_ECC_PLACEMENT_UNKNOWN,
> > > +	NAND_ECC_PLACEMENT_OOB,
> > > +	NAND_ECC_PLACEMENT_INTERLEAVED,
> > > +};
> > > +
> > > +/**
> > > + * enum nand_ecc_algo - NAND ECC algorithm
> > > + * @NAND_ECC_ALGO_UNKNOWN: Unknown algorithm
> > > + * @NAND_ECC_ALGO_HAMMING: Hamming algorithm
> > > + * @NAND_ECC_ALGO_BCH: Bose-Chaudhuri-Hocquenghem algorithm
> > > + * @NAND_ECC_ALGO_RS: Reed-Solomon algorithm
> > > + */
> > > +enum nand_ecc_algo {
> > > +	NAND_ECC_ALGO_UNKNOWN,
> > > +	NAND_ECC_ALGO_HAMMING,
> > > +	NAND_ECC_ALGO_BCH,
> > > +	NAND_ECC_ALGO_RS,
> > > +};
> > > +
> > >  /**
> > >   * struct nand_ecc_props - NAND ECC properties
> > > + * @engine_type: ECC engine type
> > > + * @placement: OOB placement (if relevant)
> > > + * @algo: ECC algorithm (if relevant)
> > >   * @strength: ECC strength
> > >   * @step_size: Number of bytes per step
> > > + * @flags: Misc properties    
> > 
> > I'd like to hear more about that one. What is this about? I'd rather
> > not add a field if it's not needed.
> >   
> 
> It is used in patch 18/18 to store the NAND_ECC_MAXIMIZE flag. And I
> expect others to come later...

Then I think it should be introduced in this patch, not here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
