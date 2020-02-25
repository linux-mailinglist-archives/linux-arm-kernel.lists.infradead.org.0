Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287B716C35F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOlL/C57xk9hpSDBOyuQhqwjANmdaoIk9MpM+XcBmJg=; b=NKZRkJCTI5Qplx
	aJHEmTF3aRIC2PCqj4jXrAxY4rgOAy33VFQ1ivGMK4cUsXoDn3YHgBzuMpljXccJNk3lmHcu1dqs/
	3CO57Cnv2z0z69U1R5oxzM1iHrZseBHjrph3MwjcG4RBg3G78NYFp5RCO1Z7s+r4VHanvSkQUMP8i
	p+mHU6dtOcD6TwNSzjEcbWyvGSbO5+tLENACzpgFJw5tgmnJngdVfxOWywcHouF9f5d5UBc110T5U
	dgLpLwF8P+QQTtuPA0ttpMK5Glil0EMBo+c/+y7tko4YKSmGuQymO5FlKyRvFgHI1d19TaXJThSgP
	8m9nTEZgCR92w1jKzxLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6asz-00019P-Km; Tue, 25 Feb 2020 14:08:33 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6asl-000185-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:08:25 +0000
Received: by mail-qk1-x744.google.com with SMTP id a2so11959900qko.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 06:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rt78zreyzIjHr6yoxlPIHQMecYqp6DqMRSSz9rYV7h8=;
 b=Isrj4uisk1xkziFhawt/8rlAzaSUqp8STgmAQtTr204aEqpvtn33NNz3uBRGlTILtq
 mpyWpAoD6uNduHiL7HXHOhB8Qp4ymOGS5Sd+60cEBCq3seKkCyTFJierH2ip6ln3uFci
 ZA+aKPd1I1h+Bh7pYxiUdietKO7JVJzBXIz4XxcSE7+5Dfq2KFPATR8B2FbQa3Sb1OlF
 nlQLPzC3RedPDaZvQ+JqD/+8di3hj2TnyEdtdmjyjKXPSFHPmttr85IhBJwlgllvLlB2
 T3nZ6tG0sC/VDVBGYuQXY8FZ2FoIiQqFOAwhEGveqrKT84L0zsl1StN0KLacxl6FiNWQ
 1dfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rt78zreyzIjHr6yoxlPIHQMecYqp6DqMRSSz9rYV7h8=;
 b=DfHKjKLlMRldY1l4nHYGDm9SsTyOjJE4CsdxW2+2QdyqJRRIuelXp+JleFtDslquhz
 KfoCQ1X1o2gEkvbOlUCqqzo1yikCFCXF1y5MgXF6yNQIUYCS3Qrnx0U+iHrQ8vMBycN9
 mtzFfoEJwt4gATfTj6kyPdoZMH2mSAdeu4VOdpegWOzCW1xV5B9ldr/X8ml6zyXSg6qS
 LGtwy1khaIrpfxmZXQPq9t/gzeKiwc/5QypUQD00b/hMWsjJcn1RCGKuy4lO9uQXtVbJ
 GnSW0EojM41eaBWo32tW5LFbijpfFGqj56Vw2FYayrDCTkvuDms9mjDchH0wxSwQuKmt
 fG1w==
X-Gm-Message-State: APjAAAU9Q7kr4H6kyg3kaniUzEokzPDnC8CO38bNtQ+vbLXahFEgH7EC
 oqXIu2x4IBdoDWKxMlF7Akw5Mg==
X-Google-Smtp-Source: APXvYqzoKfzZQNX2DE6QpwzMJc/kJ1wZx8yapE9f3rFQlORpnW5yrsgC7Cf2AglgqNASds83iDpsag==
X-Received: by 2002:ae9:e711:: with SMTP id m17mr13060092qka.393.1582639695367; 
 Tue, 25 Feb 2020 06:08:15 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id x14sm4057470qkf.99.2020.02.25.06.08.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Feb 2020 06:08:14 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j6asg-0000Vc-2U; Tue, 25 Feb 2020 10:08:14 -0400
Date: Tue, 25 Feb 2020 10:08:14 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200225140814.GW31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225092439.GB375953@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_060820_012483_F855A8B9 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-pci@vger.kernel.org, linux-mm@kvack.org,
 yi.l.liu@intel.com, will@kernel.org, Dimitri Sivanich <sivanich@sgi.com>,
 joro@8bytes.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Arnd Bergmann <arnd@arndb.de>,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 iommu@lists.linux-foundation.org, Andrew Morton <akpm@linux-foundation.org>,
 robin.murphy@arm.com, christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 10:24:39AM +0100, Jean-Philippe Brucker wrote:
> On Mon, Feb 24, 2020 at 03:00:56PM -0400, Jason Gunthorpe wrote:
> > On Mon, Feb 24, 2020 at 07:23:36PM +0100, Jean-Philippe Brucker wrote:
> > > The new allocation scheme introduced by 2c7933f53f6b ("mm/mmu_notifiers:
> > > add a get/put scheme for the registration") provides a convenient way
> > > for users to attach notifier data to an mm. However, it would be even
> > > better to create this notifier data atomically.
> > > 
> > > Since the alloc_notifier() callback only takes an mm argument at the
> > > moment, some users have to perform the allocation in two times.
> > > alloc_notifier() initially creates an incomplete structure, which is
> > > then finalized using more context once mmu_notifier_get() returns. This
> > > second step requires carrying an initialization lock in the notifier
> > > data and playing dirty tricks to order memory accesses against live
> > > invalidation.
> > 
> > This was the intended pattern. Tthere shouldn't be an real issue as
> > there shouldn't be any data on which to invalidate, ie the later patch
> > does:
> > 
> > +       list_for_each_entry_rcu(bond, &io_mm->devices, mm_head)
> > 
> > And that list is empty post-allocation, so no 'dirty tricks' required.
> 
> Before introducing this patch I had the following code:
> 
> +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> +		/*
> +		 * To ensure that we observe the initialization of io_mm fields
> +		 * by io_mm_finalize() before the registration of this bond to
> +		 * the list by io_mm_attach(), introduce an address dependency
> +		 * between bond and io_mm. It pairs with the smp_store_release()
> +		 * from list_add_rcu().
> +		 */
> +		io_mm = rcu_dereference(bond->io_mm);

A rcu_dereference isn't need here, just a normal derference is fine.

> +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> +				       start, end - start);
> +	}
> 
> (1) io_mm_get() would obtain an empty io_mm from iommu_notifier_get().
> (2) then io_mm_finalize() would initialize io_mm->ops, io_mm->ctx, etc.
> (3) finally io_mm_attach() would add the bond to io_mm->devices.
> 
> Since the above code can run before (2) it needs to observe valid
> io_mm->ctx, io_mm->ops initialized by (2) after obtaining the bond
> initialized by (3). Which I believe requires the address dependency from
> the rcu_dereference() above or some stronger barrier to pair with the
> list_add_rcu().

The list_for_each_entry_rcu() is an acquire that already pairs with
the release in list_add_rcu(), all you need is a data dependency chain
starting on bond to be correct on ordering.

But this is super tricky :\

> If io_mm->ctx and io_mm->ops are already valid before the
> mmu notifier is published, then we don't need that stuff.

So, this trickyness with RCU is not a bad reason to introduce the priv
scheme, maybe explain it in the commit message?

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
