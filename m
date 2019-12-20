Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35862127934
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/Qo2ON+ymaQhVb4p/FOCw2er09ot4OFvN6uCTao7A4=; b=l024VT13IC6adF
	wpybmHGMnhgx5+mpaoMWmo7W+8mZwzUojXm+oXBdqDuxWKb2e/Ty//8bV+No9i639plTn9P3iVCoS
	z/lhXapI0QljoAPyRa0Tt0KH45Ut73gOGd5iJG+OFU+UxanjFMHlrdqaw3U98glBNV4+AAcFox8y6
	7Ho+PqUApsZCRwXnBPmQT8CniLKSxyGgkcVFD6SDKhkx5c2ZQg5YHV3YHfJ0Z2Sc+iDDjHmWwozNr
	/kpPtT3s5O4xXixW8wdaz3VIyG59wdTTBt/hmc3LZ5bKJ74pFen0vduMnomKe+6UQEGOdjjj4cLf2
	x6pwHurDewpq8bu09/wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFQX-00063f-0b; Fri, 20 Dec 2019 10:22:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFQM-000635-1o
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:22:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECF7624679;
 Fri, 20 Dec 2019 10:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576837341;
 bh=7kD4WZpoUBWtlhJGMRIhfgsM4IUYXBLNc4dysvjzAlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X6EMH0O7CJd/JUROxBWz5ymE3x/5G2Zi2sawHAsdgjHX35u+HPFo20A9EzVcW154W
 j6WndDIlMlBqBf7HVbPTgkEsosVBLfuYVqJG1Ctj0MYn6pSCLkp5m2Mz7WnOnzrHY0
 DvfwazLMXiI+1Ab80EW3JE1m6zuV6K9962BlfgAw=
Date: Fri, 20 Dec 2019 11:22:18 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191220102218.GA2259862@kroah.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_022222_135139_293F4B52 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 11:19:27AM +0100, Marc Gonzalez wrote:
> On 17/12/2019 16:30, Marc Gonzalez wrote:
> 
> > Commit a66d972465d15 ("devres: Align data[] to ARCH_KMALLOC_MINALIGN")
> > increased the alignment of devres.data unconditionally.
> > 
> > Some platforms have very strict alignment requirements for DMA-safe
> > addresses, e.g. 128 bytes on arm64. There, struct devres amounts to:
> > 	3 pointers + pad_to_128 + data + pad_to_256
> > i.e. ~220 bytes of padding.
> > 
> > Let's enforce the alignment only for devm_kmalloc().
> > 
> > Suggested-by: Robin Murphy <robin.murphy@arm.com>
> > Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> > ---
> > I had not been aware that dynamic allocation granularity on arm64 was
> > 128 bytes. This means there's a lot of waste on small allocations.
> > I suppose there's no easy solution, though.
> > ---
> >  drivers/base/devres.c | 23 +++++++++++++----------
> >  1 file changed, 13 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> > index 0bbb328bd17f..bf39188613d9 100644
> > --- a/drivers/base/devres.c
> > +++ b/drivers/base/devres.c
> > @@ -26,14 +26,7 @@ struct devres_node {
> >  
> >  struct devres {
> >  	struct devres_node		node;
> > -	/*
> > -	 * Some archs want to perform DMA into kmalloc caches
> > -	 * and need a guaranteed alignment larger than
> > -	 * the alignment of a 64-bit integer.
> > -	 * Thus we use ARCH_KMALLOC_MINALIGN here and get exactly the same
> > -	 * buffer alignment as if it was allocated by plain kmalloc().
> > -	 */
> > -	u8 __aligned(ARCH_KMALLOC_MINALIGN) data[];
> > +	u8				data[];
> >  };
> >  
> >  struct devres_group {
> > @@ -789,9 +782,16 @@ static void devm_kmalloc_release(struct device *dev, void *res)
> >  	/* noop */
> >  }
> >  
> > +#define DEVM_KMALLOC_PADDING_SIZE \
> > +	(ARCH_KMALLOC_MINALIGN - sizeof(struct devres) % ARCH_KMALLOC_MINALIGN)
> > +
> >  static int devm_kmalloc_match(struct device *dev, void *res, void *data)
> >  {
> > -	return res == data;
> > +	/*
> > +	 * 'res' is dr->data (not DMA-safe)
> > +	 * 'data' is the hand-aligned address from devm_kmalloc
> > +	 */
> > +	return res + DEVM_KMALLOC_PADDING_SIZE == data;
> >  }
> >  
> >  /**
> > @@ -811,6 +811,9 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
> >  {
> >  	struct devres *dr;
> >  
> > +	/* Add enough padding to provide a DMA-safe address */
> > +	size += DEVM_KMALLOC_PADDING_SIZE;
> > +
> >  	/* use raw alloc_dr for kmalloc caller tracing */
> >  	dr = alloc_dr(devm_kmalloc_release, size, gfp, dev_to_node(dev));
> >  	if (unlikely(!dr))
> > @@ -822,7 +825,7 @@ void * devm_kmalloc(struct device *dev, size_t size, gfp_t gfp)
> >  	 */
> >  	set_node_dbginfo(&dr->node, "devm_kzalloc_release", size);
> >  	devres_add(dev, dr->data);
> > -	return dr->data;
> > +	return dr->data + DEVM_KMALLOC_PADDING_SIZE;
> >  }
> >  EXPORT_SYMBOL_GPL(devm_kmalloc);
> 
> Would anyone else have any suggestions, comments, insights, recommendations,
> improvements, guidance, or wisdom? :-)
> 
> I keep thinking about the memory waste caused by the strict alignment requirement
> on arm64. Is there a way to inspect how much memory has been requested vs how much
> has been allocated? (Turning on SLAB DEBUG perhaps?)
> 
> Couldn't there be a kmalloc flag saying "this alloc will not require strict
> alignment, so just give me something 8-byte aligned" ?

Or you can not use the devm interface for lots of tiny allocations :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
