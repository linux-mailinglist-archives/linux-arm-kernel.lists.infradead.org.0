Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380E41B0D88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=himxHLu4mFT3wHskULpYs8jM1ucoA9BPo7PnB10/GWE=; b=P/WmDX18XUQ45C
	hjxFzY2mS9lya897O9oOLlrUDIbIiN1AAjt6GpGRcAt35hF7Vb2OeKGTk7ow7rHPYW5QlpbmITdbr
	X2Y9fBbepkSPwbT1tPnZPevdvjQPNGHOtMYFLOEaZ2SqArBh2Bl6Mu4NF9tT95Q+Z4wfFS5NjTGmO
	nfNvCoOM6Bw8663UzmHyv/QYMce7J4esOgMV/wXmJv+pRoYoY8o0Vq8PzargVClWQA8qWoq1fXNtD
	qQFJIswIkDayvk1rG2mwVB+a2DS9IzKUkMb018VHy6llj+WkMPleFU4Nn8+i7KGca8RyaAr3UBRqk
	1k6S9qhv+3CJ6aUdVfzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWvd-0003Ni-EQ; Mon, 20 Apr 2020 13:57:41 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWvR-0003N9-Og
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:57:31 +0000
Received: by mail-qt1-x842.google.com with SMTP id 71so8409565qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2Y6perFiVeQ3QgWqLdIJUPsNvFY3EZijv/H4bCO6lY4=;
 b=mkrf0mj2uMHggYNoMXheWws/vfopgkKMdOj2sk/jq91aSFV+FBOaAWfRgYM4xhELk7
 anpstJTVDOqB4qOo0kIzlwP5u+6LnNpFVukNArZe7hoXCLYhFl026KWaIuXtr4kZkZid
 IJPXMEIC09IH6YOe2rwd+xfDBeWBnrWSySHhYgTBZSWTKpo9IqVk8fy6bXSM56vwA15i
 B+iFKjqNtcVfDZUiEh19W3zpSzKpdAhDy9qMwP2cjBEKkXw0Ag44wC60d6gA72lrJVpw
 SXd4MaW5F4oNRRxVYpJvgy0d14clAWod3shTlEIMW54sI5mktrnVJXVbeAuYZDLtCCXN
 7OQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2Y6perFiVeQ3QgWqLdIJUPsNvFY3EZijv/H4bCO6lY4=;
 b=cd+ZqfDnHdL8orGtLwKfB+0V8iKCwNzq2jN6Wd20UqoZxc+/044GH81XA47FP4LtAo
 D+gWLsDudDpbP64SJ13nJHUFbx9VG+xmyLsF5V7HdBVYd5p0qDYFQNBoHbSAdRoGd9eH
 6WaC+WnZTZ5rPWxCKPfALaJGtbShA9LX9KFMC8cN51iTSQwkOtpooN0EQ5BgJyIP6Bmv
 CUeO/+EPz0pgFpeWanGtWkWkEHbu7tZVMswjoqZ4IuH642UUwHqK2/gtJOSGjGoRogU9
 1yG4xd885bPCUUMf18HOIDfQ5zpaOrDHc6U+o+qLMjPtNPe9v/QjP4onmCUjN4qJ7R+F
 k0dw==
X-Gm-Message-State: AGi0PuYX+KeXSpLvha8Rj40WeNGf11CtopmrD+Y+GDsgHpe3gK0khqMu
 GOlDnaQxkR8tQ4E2wgrHripyQg==
X-Google-Smtp-Source: APiQypIj1R9FcMRfRka1KKXW7j9di+d85e9nm7Td/03CCkb8wDdEAIcizkSgGYTTocgktyzsVQW4zw==
X-Received: by 2002:ac8:82f:: with SMTP id u44mr15905874qth.198.1587391048363; 
 Mon, 20 Apr 2020 06:57:28 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id g14sm550791qtb.24.2020.04.20.06.57.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 Apr 2020 06:57:27 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jQWvP-0002ax-4d; Mon, 20 Apr 2020 10:57:27 -0300
Date: Mon, 20 Apr 2020 10:57:27 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200420135727.GO26002@ziepe.ca>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
 <20200420074213.GA3180232@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420074213.GA3180232@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_065729_807200_EA47582D 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 Christoph Hellwig <hch@infradead.org>, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 09:42:13AM +0200, Jean-Philippe Brucker wrote:
> On Thu, Apr 16, 2020 at 05:13:31AM -0700, Christoph Hellwig wrote:
> > On Thu, Apr 16, 2020 at 10:54:02AM +0200, Jean-Philippe Brucker wrote:
> > > On Thu, Apr 16, 2020 at 12:28:52AM -0700, Christoph Hellwig wrote:
> > > > > +	rcu_read_lock();
> > > > > +	hlist_for_each_entry_rcu(bond, &io_mm->devices, mm_node)
> > > > > +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> > > > > +				       start, end - start);
> > > > > +	rcu_read_unlock();
> > > > > +}
> > > > 
> > > > What is the reason that the devices don't register their own notifiers?
> > > > This kinds of multiplexing is always rather messy, and you do it for
> > > > all the methods.
> > > 
> > > This sends TLB and ATC invalidations through the IOMMU, it doesn't go
> > > through device drivers
> > 
> > I don't think we mean the same thing, probably because of my rather
> > imprecise use of the word device.
> > 
> > What I mean is that the mmu_notifier should not be embedded into the
> > io_mm structure (whch btw, seems to have a way to generic name, just
> > like all other io_* prefixed names), but instead into the
> > iommu_bond structure.  That avoid the whole multiplexing layer.
> 
> Right, I can see the appeal. I still like having a single mmu notifier per
> mm because it ensures we allocate a single PASID per mm (as required by
> x86). I suppose one alternative is to maintain a hashtable of mm->pasid,
> to avoid iterating over all bonds during allocation.

I've been getting rid of hash tables like this.. Adding it to the
mm_struct does seem reasonable, I think PASID is a pretty broad
concept now.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
