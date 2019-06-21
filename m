Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227204E0B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 09:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gePD61gQ/IpeU8QzhrikViQrlgjWDGCBFoKi3Je4YA=; b=lsaW9OCiPQUnFp
	DVeRHuwcxqZ1IFcjRQ5nubGsGq+XGgV2fht6LOTBtMxofpMnK/rX6Ovf5SF2icl1lKs82xC2j8/pc
	gTbulP+nSD8v6gxB+8uET30jARNi5sE1Cx4oWJABB+uDvbbHFGAzlW0KXfa4TWyzcZ5zOfMNfQsj9
	pYh1oWwwYArxtA7eKuZFwl0VE08QtWvD6x8nrtZlKqrAqrcJjk/p0Wcy+J6Ougi3OY7waaeMStgKg
	YucSdHr9kIM1xNlGb0kku71ABjUYWzSSYExzGCvtqHLBAEWYAszZCskUDLCxYrimXO0UkQeaginm/
	HOzGLwDmmDkZgcaXKz9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heDXG-0005I7-OB; Fri, 21 Jun 2019 07:00:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heDW9-000511-2i
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 06:59:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 550792083B;
 Fri, 21 Jun 2019 06:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561100364;
 bh=Rcy+6xz0EYvTzpfkcj2CNbsJlbcjdRl4Sx5O75/EoDI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X5XFOmCTNs5WyIc0l8CrLR9uf17dkOv9coFiAev7Ob3ndRviSx0hF08EfJmtn0kFB
 qBDTxTR6wsMAbu6VnP5RxCnb18bl0SClU1b3DuiiQMBTG4c7+5jbl0z3qqmOIgDKUM
 4O2/CgfDEelA6LG8gSkoEL28gDh54hBG7IbdH3yA=
Date: Fri, 21 Jun 2019 08:59:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 26/28] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190621065922.GB14945@kroah.com>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
 <20190619195318.19254-27-mathieu.poirier@linaro.org>
 <20190620060521.GG26319@kroah.com>
 <CANLsYkysqjzkBWRUeWrBmves2D-H3Sb=PoYr1VD3B9i7kXO8tg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkysqjzkBWRUeWrBmves2D-H3Sb=PoYr1VD3B9i7kXO8tg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_235927_404361_9C32443B 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 03:42:18PM -0600, Mathieu Poirier wrote:
> On Thu, 20 Jun 2019 at 00:05, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Jun 19, 2019 at 01:53:16PM -0600, Mathieu Poirier wrote:
> > > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> > >
> > > Based on the following report from Smatch, fix the potential
> > > NULL pointer dereference check.
> > >
> > > The patch 743256e214e8: "coresight: tmc: Clean up device specific
> > > data" from May 22, 2019, leads to the following Smatch complaint:
> > >
> > >     drivers/hwtracing/coresight/coresight-tmc-etr.c:625 tmc_etr_free_flat_buf()
> > >     warn: variable dereferenced before check 'flat_buf' (see line 623)
> > >
> > > drivers/hwtracing/coresight/coresight-tmc-etr.c
> > >    622                struct etr_flat_buf *flat_buf = etr_buf->private;
> > >    623                struct device *real_dev = flat_buf->dev->parent;
> > >                                           ^^^^^^^^^^
> > > The patch introduces a new NULL check
> > >
> > >    624
> > >    625                if (flat_buf && flat_buf->daddr)
> > >                     ^^^^^^^^
> > > but the existing code assumed it can be NULL.
> > >
> > >    626                        dma_free_coherent(real_dev, flat_buf->size,
> > >    627                                          flat_buf->vaddr, flat_buf->daddr);
> > >
> > > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > ---
> > >  drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > > index 5d2bf6d18961..17006705287a 100644
> > > --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > > +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > > @@ -620,11 +620,13 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
> > >  static void tmc_etr_free_flat_buf(struct etr_buf *etr_buf)
> > >  {
> > >       struct etr_flat_buf *flat_buf = etr_buf->private;
> > > -     struct device *real_dev = flat_buf->dev->parent;
> > >
> > > -     if (flat_buf && flat_buf->daddr)
> > > +     if (flat_buf && flat_buf->daddr) {
> > > +             struct device *real_dev = flat_buf->dev->parent;
> > > +
> > >               dma_free_coherent(real_dev, flat_buf->size,
> > >                                 flat_buf->vaddr, flat_buf->daddr);
> > > +     }
> > >       kfree(flat_buf);
> > >  }
> > >
> > > --
> > > 2.17.1
> > >
> >
> > Again, 5.2-final and stable...
> 
> So is this one, if addresses a deficiency introduced in patch 8/45
> [1].  I have a new set ready for the other ones you flagged.

Ok, can you please resend?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
