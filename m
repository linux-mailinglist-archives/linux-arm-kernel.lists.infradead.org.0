Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DE917C2B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Abcs+EdbG1Is/CeVGune456/vPfDDIDyWBW4UPqDSlc=; b=VlLpPjcXZANm4Q
	vpWHbgwz76pXXRu8xGoXzh7imRTBxfjJCanI/xEo6uNgYteUQHroCZL80VbWjLEAFLtxJWRYOZzmV
	m5HudTsHmPY6v1q5jmklLXvMqGvnfHxd4Wr1rypGy96m2EBz+1VpO14yLCFUb3CHD3KeTKwD8ebmN
	Cp5QA+JqbkuOC3zYedlqCJkO9KZoNtqI96KXSR/t4CIQojXv9nELd+AuwBKsh0WriwxyE6+AJRWfR
	hqwdxAYNRccZYOWohvk3jxv6Pe36zoe1X+ydxorh7lxBBGJXfklhTMh4+7ClXCahp4zfbq3HexPCf
	IUh6cVU5RhsNkfrDL3+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFdS-0008I5-FQ; Fri, 06 Mar 2020 16:15:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFdI-0008HP-Uf
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:15:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id i9so3081396wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 08:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ao7/80FHIHDLP/KCunZJJgILy66emPF5N72zFy2TR8A=;
 b=ZzXz4A8vycCJh4RNBaNwHExa5FzLad69MAK4BZ+5/as1gVnRbY6GMPLpDuEkpCKWF6
 y6CsRjCx5QLX391p185dlNAY1Zcap1EnGsNaLq9XDn4MYET7xEWLNyB/6LDuPN6MRygC
 YZ5w1hGW0XSmAZgBTL6frJPrhb9fznVH9L9vwRNdIecRFk8QGoUr/L+Knolbah0v2qev
 1VwkncH2BAtFZIbRxurp6iliV7mw4l8C3XnXlu/qVJcZHUrF9gIymPJHAlq33QsB4aQ6
 QXgqfDAnyXp5rPLLQMnU0kpgkNyKPGKwvV48byaa1UK7DgR+lESHtDBsR9KfL7wvFZWh
 kldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ao7/80FHIHDLP/KCunZJJgILy66emPF5N72zFy2TR8A=;
 b=lVoi+Sj/2cczz7RIPT1y4HkeMT380ytV1Szvdr+ohWkfVGkW3/p5CsVqZ2Ch0cxifd
 IF5XsT5B08RLp5fzSxANwMo5J4/6cp9L221DwEYvIP0z9W/1jWyJH4TB+As9F4k9jbgl
 aY/pw1uPH3Ky+hEqik5wgsN8hIMoXQXrOIahSF59VA5IcoFCOCjdKRwFdb2IUalIcRca
 WVJrF6JJ4z/tEGrRdqfr3BrJS+XZYDTf6tskeB5LdJzdGB4nKB9fgxpDzFNjn5/mUItW
 9SRate1zg/xGxVL/usuDzIYBgx6xhviAz5xJ0tFXz1FotUqRyeT5Xh+2010G9UYHV32P
 ayuQ==
X-Gm-Message-State: ANhLgQ0ipAndO3UkJkNBWhvlMe2iZ8rZGclIxm7KAQs3rJjuEkxVDzPA
 hE8dJDNHGWbhFVf8aiKVKSfmRQ==
X-Google-Smtp-Source: ADFU+vu2BwVlJ/z2C8XR7GuNqHPcvrDYuSW70Gsa5PRrlPgFIIEEdN81oD/hv1UjzmKlfbVNO9GZjg==
X-Received: by 2002:a1c:7f86:: with SMTP id a128mr5012462wmd.185.1583511326318; 
 Fri, 06 Mar 2020 08:15:26 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id i21sm3449182wmb.23.2020.03.06.08.15.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 08:15:25 -0800 (PST)
Date: Fri, 6 Mar 2020 17:15:19 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200306161519.GB99609@myrica>
References: <20200225092439.GB375953@myrica> <20200225140814.GW31668@ziepe.ca>
 <20200228143935.GA2156@myrica> <20200228144844.GQ31668@ziepe.ca>
 <20200228150427.GF2156@myrica> <20200228151339.GS31668@ziepe.ca>
 <20200306095614.GA50020@myrica> <20200306130919.GJ31668@ziepe.ca>
 <20200306143556.GA99609@myrica> <20200306145245.GK31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306145245.GK31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_081529_021483_D5EFDEBC 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Mar 06, 2020 at 10:52:45AM -0400, Jason Gunthorpe wrote:
> On Fri, Mar 06, 2020 at 03:35:56PM +0100, Jean-Philippe Brucker wrote:
> > On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> > > On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> > > > I tried to keep it simple like that: normally mmu_notifier_get() is called
> > > > in bind(), and mmu_notifier_put() is called in unbind(). 
> > > > 
> > > > Multiple device drivers may call bind() with the same mm. Each bind()
> > > > calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> > > > (a device<->mm link). Each bond is freed by calling unbind(), which calls
> > > > mmu_notifier_put().
> > > > 
> > > > That's the most common case. Now if the process is killed and the mm
> > > > disappears, we do need to avoid use-after-free caused by DMA of the
> > > > mappings and the page tables. 
> > > 
> > > This is why release must do invalidate all - but it doesn't need to do
> > > any more - as no SPTE can be established without a mmget() - and
> > > mmget() is no longer possible past release.
> > 
> > In our case we don't have SPTEs, the whole pgd is shared between MMU and
> > IOMMU (isolated using PASID tables).
> 
> Okay, but this just means that 'invalidate all' also requires
> switching the PASID to use some pgd that is permanently 'all fail'.
> 
> > At this point no one told the device to stop working on this queue,
> > it may still be doing DMA on this address space.
> 
> Sure, but there are lots of cases where a defective user space can
> cause pages under active DMA to disappear, like munmap for
> instance. Process exit is really no different, the PASID should take
> errors and the device & driver should do whatever error flow it has.

We do have the possibility to shut things down in order, so to me this
feels like a band-aid. The idea has come up before though [1], and I'm not
strongly opposed to this model, but I'm still not convinced it's
necessary. It does add more complexity to IOMMU drivers, to avoid printing
out the errors that we wouldn't otherwise see, whereas device drivers need
in any case to implement the logic that forces stop DMA.

Thanks,
Jean

[1] https://lore.kernel.org/linux-iommu/4d68da96-0ad5-b412-5987-2f7a6aa796c3@amd.com/

> 
> Involving a complex driver flow in the exit_mmap path seems like
> dangerous complexity to me.
> 
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
