Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904B536EE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/U/VusE2axGFZbbl73agAP19flT9JDWLSKVGdcb4E4=; b=HTKi48JFqiJTdc
	5pDxjR2aBeA2JSbLSwylvWdEWDX2zJfBLo9XmomqZwASgOVeBlB64jj7OTNUrOY5ki9AF20F8ghQk
	ODozHMxFOoTKO3+AAXW+1Qb9+KH8EnN6U9Na6md75p6dlja+aYC8AoG/S6UEZpceolYADttmTmxxp
	UPGw1Yo5ItYkDPaemdYayvesIOuJT1uEoUa9EuH2CuFii6ygE50bJmHfCpWRCLu+hYK3c/w4ki2p8
	h+3bvOh7dGO7PLebZN7KgzZGn6onQVSqfXFL/Y3nS97tQcXqgVv+6rzsSU2UfphQRF7eeymaOiHQp
	PZCpmO+EFNtbM3n/PxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnwQ-0000Ui-6w; Thu, 06 Jun 2019 08:40:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnwE-0000TH-D7; Thu, 06 Jun 2019 08:39:59 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 47AFD2603D4;
 Thu,  6 Jun 2019 09:39:54 +0100 (BST)
Date: Thu, 6 Jun 2019 10:39:51 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun
 info to memorg
Message-ID: <20190606103951.1d774b9a@collabora.com>
In-Reply-To: <5e5d473b-2f08-4230-0920-247c2c463c55@kontron.de>
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-2-miquel.raynal@bootlin.com>
 <CAO1O6se5=FDf2YTEEzmFJ4K6HQp_2ayU=WubxGAQJdMA4V4m-Q@mail.gmail.com>
 <5e5d473b-2f08-4230-0920-247c2c463c55@kontron.de>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_013958_577483_4FADAF73 
X-CRM114-Status: GOOD (  16.93  )
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
 Richard Weinberger <richard@nod.at>, Emil Lenngren <emil.lenngren@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 08:27:11 +0000
Schrempf Frieder <frieder.schrempf@kontron.de> wrote:

> Hi Emil,
> 
> On 04.06.19 10:01, Emil Lenngren wrote:
> > Hi Miquel,
> >   
> >>   static const struct spinand_info macronix_spinand_table[] = {
> >>          SPINAND_INFO("MX35LF1GE4AB", 0x12,
> >> -                    NAND_MEMORG(1, 2048, 64, 64, 1024, 1, 1, 1),
> >> +                    NAND_MEMORG(1, 2048, 64, 64, 1024, 40, 1, 1, 1),
> >>                       NAND_ECCREQ(4, 512),
> >>                       SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> >>                                                &write_cache_variants,
> >> @@ -103,7 +103,7 @@ static const struct spinand_info macronix_spinand_table[] = {
> >>                       SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
> >>                                       mx35lf1ge4ab_ecc_get_status)),
> >>          SPINAND_INFO("MX35LF2GE4AB", 0x22,
> >> -                    NAND_MEMORG(1, 2048, 64, 64, 2048, 2, 1, 1),
> >> +                    NAND_MEMORG(1, 2048, 64, 64, 2048, 20, 2, 1, 1),
> >>                       NAND_ECCREQ(4, 512),  
> > 
> > Maybe a bit late to the discussion, but shouldn't 20 and 40 be swapped
> > here, i.e. isn't it the larger flash that has more max bad blocks than
> > the smaller one?  
> 
> I think Miquel is out of office for some days, so I just checked and you 
> are right, the maximum number of bad blocks should be swapped.
> 
> Actually there is also a wrong value in the GigaDevice driver: For the 
> GD5F4GQ4xA it should be 80 instead of 40.

Haven't checked the datasheet, but keep in mind that this is the max
number of eraseblock per LUN.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
