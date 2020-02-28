Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C2173A3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RAWA48ZcOfIbg/gfDIVfTCYJYyvuFR8xszvXv31R1w=; b=DCaADd9/bDTMRC
	yRcT9SvwJni0BlrtB+clMo/a1QUZ5mp7h+8mRSK2rDnwFDZc+ym48yco5EJqJAr+lSvYD8a8g1fsX
	oaYxVoITr7JVHMkonCu7kzN1xwJuoKlknQmi64wBsoePXvOg5q4UQ4nw+c+Gg7OcSorrfC78c8rCO
	Md71BRWzdOuMYuDsnxLXLKTTaP3K4ARaDapCH8hYhcgoR1GC/Sb1o6cP8XjA4pCljRNGW//NLS8Xo
	D3wuc8TLN3oq31J43c1gnqtHNgyqiMO2qdFQ5qPn+iE8qLHJ6EHomywDDA2GJMJW66cDz+kBb1UgG
	mqktJbjs/a7SYv1npwZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gwl-0003bA-QD; Fri, 28 Feb 2020 14:48:59 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gwZ-0003aW-DL
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:48:49 +0000
Received: by mail-qt1-x844.google.com with SMTP id l21so2159597qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 06:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rsM6P0iWQtYbTIZfDH4GZGs0dcL9Uy2VcIbqhq4DVAs=;
 b=CV3X+nQKX4SjkWXOCXtPcfUWPbWcnGZIr5HXT0td8jCm8UnHLWOJGbCDin+fnDMVh6
 HJjdT1BDInHrt1jgg7+HKPKmxJ+UWR8YMidtypOgu4QTRFY9Wu0jLvzuIF2MK/mIyaDX
 U6540tjncMTP9HxIc2pcrk8RD8kEm4WNC+qgrATMR0y1E2OgtHFcKDmfecdvihyCtKzE
 5z/LqZfYlvAK7Ftc6n4Me1dMh0Y1wkVX2SLDydwWUd9444Zrts13ZQcXeFvt1tJDmWyx
 pVirruhQetio5UlZFpFM8fniSZUI6ZOWFVd0j2FrnRrxsI3M0zlRlNvFarECiOVYnx29
 GpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rsM6P0iWQtYbTIZfDH4GZGs0dcL9Uy2VcIbqhq4DVAs=;
 b=Px8moEcEz/tCjI75jZMlnD8JIpGm8ma3577brMWeTKTAlzppss4r+QtQfVi5ZvXLSC
 4Bg3wN0Vld82BBhGZ8veTKnoJ4H7DHRBthB1kWM5R0uBeZuTd51dpzvXIQnUC54Br+8F
 FTyN1vCa/OiUNG6CPJNGEhEtT7PKz+doBTFvkq16wPW1vDmLnvkRlAM6dm0sGyYWpnsw
 ThQBMwxafozmmUO1x7cyHkzk94a+jR7h/8R9trjeKbO/FuXTSFymltoDmV0J0r4U5vuQ
 LHWyv0fFOP/ZhULJyyoPKYUOxUMPkniQ2FwREIDPsCpB70E832AB2cb7m8xSXE6N4/KW
 7Cgw==
X-Gm-Message-State: APjAAAU5k1pRH/8VmHhcSYlafPSTdn/EFMpBm7SJJcz4DW3S7e2hlweN
 R8x/iJ83QpvEvfIMiHM/PYShRQ==
X-Google-Smtp-Source: APXvYqx4if0FgrogA1eRtXiNBtPg1pCTbepMjiVN00txoqKmRdlRgAbN74CUZqB71Vhu4mXSAdk1Rg==
X-Received: by 2002:ac8:425a:: with SMTP id r26mr4520637qtm.138.1582901325295; 
 Fri, 28 Feb 2020 06:48:45 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id t29sm5422548qtt.20.2020.02.28.06.48.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Feb 2020 06:48:44 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j7gwW-0002z7-9g; Fri, 28 Feb 2020 10:48:44 -0400
Date: Fri, 28 Feb 2020 10:48:44 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200228144844.GQ31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228143935.GA2156@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_064847_868845_54227409 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 Dimitri Sivanich <sivanich@sgi.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pci@vger.kernel.org,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 Andrew Morton <akpm@linux-foundation.org>, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 03:39:35PM +0100, Jean-Philippe Brucker wrote:
> > > +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> > > +		/*
> > > +		 * To ensure that we observe the initialization of io_mm fields
> > > +		 * by io_mm_finalize() before the registration of this bond to
> > > +		 * the list by io_mm_attach(), introduce an address dependency
> > > +		 * between bond and io_mm. It pairs with the smp_store_release()
> > > +		 * from list_add_rcu().
> > > +		 */
> > > +		io_mm = rcu_dereference(bond->io_mm);
> > 
> > A rcu_dereference isn't need here, just a normal derference is fine.
> 
> bond->io_mm is annotated with __rcu (for iommu_sva_get_pasid_generic(),
> which does bond->io_mm under rcu_read_lock())

I'm surprised the bond->io_mm can change over the lifetime of the
bond memory..

> > > If io_mm->ctx and io_mm->ops are already valid before the
> > > mmu notifier is published, then we don't need that stuff.
> > 
> > So, this trickyness with RCU is not a bad reason to introduce the priv
> > scheme, maybe explain it in the commit message?
> 
> Ok, I've added this to the commit message:
> 
>     The IOMMU SVA module, which attaches an mm to multiple devices,
>     exemplifies this situation. In essence it does:
> 
>             mmu_notifier_get()
>               alloc_notifier()
>                  A = kzalloc()
>               /* MMU notifier is published */
>             A->ctx = ctx;                           // (1)
>             device->A = A;
>             list_add_rcu(device, A->devices);       // (2)
> 
>     The invalidate notifier, which may start running before A is fully
>     initialized at (1), does the following:
> 
>             io_mm_invalidate(A)
>               list_for_each_entry_rcu(device, A->devices)
>                 A = device->A;                      // (3)

I would drop the work around from the decription, it is enough to say
that the line below needs to observe (1) after (2) and this is
trivially achieved by moving (1) to before publishing the notifier so
the core MM locking can be used.

Regards,
Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
