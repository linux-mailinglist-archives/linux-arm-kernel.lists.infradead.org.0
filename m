Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CF417C0F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 15:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H++inqQh8Mo8Fm43vzZnHtk+Qg/l4bTZ7iNz/63UyV8=; b=B2OjU2/DRjc3mG
	Rdf9DGys1w+7eC4kpWOImJxRiY/WIxhVKVN+JVB11qLyddP/yiwT+20tqhCQI08KlHZZqtLladd8O
	Tm9ghw1/OFsws6Q247t8XiDq2tT7/XYzEk4jMVlorvO174IOjpL29PvkVjqTnVqexyPHKssy59IQP
	aGz0aOQaPkABCIv8QmUC3SmrNkZUFvbez1nCm8obS6z11iwD7DNOpRx7wRRjoYfh+oMIQrKhnrK3z
	aKwLtGGWEAHYpTBjGTkYYOPfkuS6m62BD7i0ClCglrmES+xb+qQXi47KD60L5UV4i7TIOo6XAdowS
	a1fyscrKvEcOzBYUHOCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAELR-0008Er-Tj; Fri, 06 Mar 2020 14:52:57 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAELK-0008Dn-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 14:52:52 +0000
Received: by mail-qk1-x741.google.com with SMTP id f3so2547557qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 06:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+GR87JEz7bnHSu9Y+6bwTYgFaQr/zFIG/NuG9Kdwt4s=;
 b=aihyF2t/7s9DwcSYHNvpWHnT3C1bxl/IZjNLEoNgOyzpHGq2CUT5SBQgARQYZcC3G6
 3QQcrLEwVInFxDWyTBXRLmXxACdXjYVIqAViex2/tQdPqzBlGGoQch5dkM9CiRhOY7Yr
 yUUf7KhbVdR7MKAD56vslHiz5RAfoDjMkqmQ4qTCQQ6gYW3ezJVfIhj1mUTLOa6MObXQ
 NNFpk5xfcDcsqIhcLIaVcUtJ5aS7/SVw3PB4wRfYRl19e3Sdp1bfYlUxjk95UosNuxLf
 bfLFXQreuG1sjxtV/SfKboz2+FupAmFWP79r+I3j96a8IihKr6R1cSfkp7pDo/v0x+v/
 8FdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+GR87JEz7bnHSu9Y+6bwTYgFaQr/zFIG/NuG9Kdwt4s=;
 b=Ga4F9aKuKv5lwBbfJHzw2kzGxO5x6jjyg1eK1OPiixl757ItGPvfkLICp3R7YsGhhr
 P/0D7KyOKA6LpHEz0H725w/cX2o1O5BHJmdtAHVoPqwcjUjQG2fL52U8HVlL9J+ITJhQ
 UpHfTubU0sq5rR7P42OaRhrVfW8ZSIQGbI0ctRWch0vwsS6KCntrrXhFoJvXMFxM9wbc
 MnI0SLpdIGYukk3tkGTGA+yT3inM2Q8j8vcQBH9lp11xOZQYBy/Qod+tgwbc2oDHNaM+
 uNTXc4Zoiyi7ZVhMK7GNS36ARCrltIBZJojE4q3ewsCXnx2ArhUXauyGtvSgdOceNkN0
 FbNg==
X-Gm-Message-State: ANhLgQ3FD6jcAV4D3s1IP1MwGOJoJ0Th+E7ZnzU746q5O1bnKuZzpC+D
 DWOx7CWnHZ+NeFwnchflxGeUBQ==
X-Google-Smtp-Source: ADFU+vt8B7E7ypc6uA8DcBdUQZ7yTuum2anrkiUB7D/EpPFaARsWnBpjWIkRxETgE9O5KR7vdHN99g==
X-Received: by 2002:a05:620a:1427:: with SMTP id
 k7mr3113149qkj.377.1583506366542; 
 Fri, 06 Mar 2020 06:52:46 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id n59sm8640178qtd.77.2020.03.06.06.52.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Mar 2020 06:52:46 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jAELF-00041P-Jc; Fri, 06 Mar 2020 10:52:45 -0400
Date: Fri, 6 Mar 2020 10:52:45 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200306145245.GK31668@ziepe.ca>
References: <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca> <20200306095614.GA50020@myrica>
 <20200306130919.GJ31668@ziepe.ca> <20200306143556.GA99609@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306143556.GA99609@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_065251_022885_EFAA4F52 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

On Fri, Mar 06, 2020 at 03:35:56PM +0100, Jean-Philippe Brucker wrote:
> On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> > On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> > > I tried to keep it simple like that: normally mmu_notifier_get() is called
> > > in bind(), and mmu_notifier_put() is called in unbind(). 
> > > 
> > > Multiple device drivers may call bind() with the same mm. Each bind()
> > > calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> > > (a device<->mm link). Each bond is freed by calling unbind(), which calls
> > > mmu_notifier_put().
> > > 
> > > That's the most common case. Now if the process is killed and the mm
> > > disappears, we do need to avoid use-after-free caused by DMA of the
> > > mappings and the page tables. 
> > 
> > This is why release must do invalidate all - but it doesn't need to do
> > any more - as no SPTE can be established without a mmget() - and
> > mmget() is no longer possible past release.
> 
> In our case we don't have SPTEs, the whole pgd is shared between MMU and
> IOMMU (isolated using PASID tables).

Okay, but this just means that 'invalidate all' also requires
switching the PASID to use some pgd that is permanently 'all fail'.

> At this point no one told the device to stop working on this queue,
> it may still be doing DMA on this address space.

Sure, but there are lots of cases where a defective user space can
cause pages under active DMA to disappear, like munmap for
instance. Process exit is really no different, the PASID should take
errors and the device & driver should do whatever error flow it has.

Involving a complex driver flow in the exit_mmap path seems like
dangerous complexity to me.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
