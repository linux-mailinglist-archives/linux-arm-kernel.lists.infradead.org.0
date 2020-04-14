Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C737D1A88AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qxv6VKA9cQNH0HV2UmoiPQ1cnDTV9PW6vigQN7SWN3c=; b=M1eZZ84Ju9JkWz
	B1Cn3DYXijno/88OY5wXDydS+5qLL6opNumyuuPduORlBl4GekoP2zrhe2D/Ou9qKaa2dxVuq9PLh
	2D3WJxAtpLefQ0WcXeLwMalmxcHLmcF8Qr5/NTGkICyJxz02iffj/VWVV80RPWsHDUtQ6oL3DEEgW
	G1KE1pTWQ9w3f+E+ht1emtDKCdJQwgtopoMthvdeZSbFM1V4Pf0DhYeQewYSngrVnRw9VMbV/NfOD
	Dd3Zh1AFdSaWQAV99sFPD8Uc31/hzlxqr+PcSKMV1P+ks6t8CvC24CXzyMywimSLf6rgausd6Vjcl
	BtqYaWblZyRBVg9Nnxaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQ06-00017G-GZ; Tue, 14 Apr 2020 18:09:34 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPzn-00014g-OD
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:09:22 +0000
Received: by mail-qk1-x741.google.com with SMTP id o19so7023229qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 11:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bv0sJf01GOa0wIzpOx9SRUfmEHLHh5Wp99C/Vrgdaec=;
 b=HUV9qAl0/LTHa4gW9R5GB8bZskgMoquMycxLWoNqVXVK2lCPXRRchgd9fNWmRJ3r3E
 MwOpBF6IYEAIRmh+0P+Mk/Xdy5ihB9c56BGZ9huMOY7437gGh4cXj2ES77WCdjN3h14P
 vz4I9nCHk4olhkup2TXyZYzBKURBuBpg2EVTYcri8bZwVCHw5clEERw7k1EtxwCQTnnM
 VJSbHXiqAULOv3ywp1xrIzqfxDneUHsXKLo7wHnHwkX7qU6WFdjY2E7rloSUWnmAC5gN
 4MMiLhwcwPZJrM0qv+cchcfFMGuVM8+32TSi5HJ9+6a8/GOL1PH/AfPEODAh7ce0zWHj
 Orfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bv0sJf01GOa0wIzpOx9SRUfmEHLHh5Wp99C/Vrgdaec=;
 b=MVSmne47Y4U9eIDKPqMOWZw1eGgm+XZRFu55Of55V1tscGx/O7x3rskg4fhX3XhrFl
 JtcHOWNceeHNEKvQLmr9+1OYA7fruphVt1nWKQlfBEAztJN7T5WwlByQw5gZYy7jKQFq
 X4FcuR29cJLuw7pKnd0w45tHRPaEG7LH0enFnRCJKl9xEGIEcZcAomo4MjkoKEqqFlpM
 fktXd/EaBvoC4qqTCBxczrWANR18fU3ieA3IhLtjY6g4v96GlFXCXViQ9jTPzEGRL8zA
 xvtwqDHmzJOjNc4qMjOAceqdEBJS1B/0+R/492Duu4Rj3pNNcn4cfDug46UfK6FjU36H
 Yf7g==
X-Gm-Message-State: AGi0PuZ/feIl9zK+/VV9HamHlb6g4GkJ45sCoVfa8UipSXm7ZSEk+U5k
 hiWNCcSg7YNZ2I2b/vUyZH9AVGiHjE58TA==
X-Google-Smtp-Source: APiQypLF3T0ctlDMYDCZmNS5QXnrk26ya+xUobfqsrIExRvDdUeoVWUu8wspkPshY2Cg+OHu4MKS2Q==
X-Received: by 2002:a37:8645:: with SMTP id i66mr23325550qkd.229.1586887753646; 
 Tue, 14 Apr 2020 11:09:13 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id f13sm11354811qti.47.2020.04.14.11.09.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Apr 2020 11:09:13 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jOPzk-0007ib-Gs; Tue, 14 Apr 2020 15:09:12 -0300
Date: Tue, 14 Apr 2020 15:09:12 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v5 01/25] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200414180912.GH5100@ziepe.ca>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-2-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414170252.714402-2-jean-philippe@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110916_005979_69EDE271 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Andrew Morton <akpm@linux-foundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, Christoph Hellwig <hch@infradead.org>,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 Dimitri Sivanich <sivanich@sgi.com>, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 07:02:29PM +0200, Jean-Philippe Brucker wrote:
> The new allocation scheme introduced by commit 2c7933f53f6b
> ("mm/mmu_notifiers: add a get/put scheme for the registration") provides
> a convenient way for users to attach notifier data to an mm. However, it
> would be even better to create this notifier data atomically.
> 
> Since the alloc_notifier() callback only takes an mm argument at the
> moment, some users have to perform the allocation in two times.
> alloc_notifier() initially creates an incomplete structure, which is
> then finalized using more context once mmu_notifier_get() returns. This
> second step requires extra care to order memory accesses against live
> invalidation.
> 
> The IOMMU SVA module, which attaches an mm to multiple devices,
> exemplifies this situation. In essence it does:
> 
> 	mmu_notifier_get()
> 	  alloc_notifier()
> 	     A = kzalloc()
> 	  /* MMU notifier is published */
> 	A->ctx = ctx;				// (1)
> 	device->A = A;
> 	list_add_rcu(device, A->devices);	// (2)
> 
> The invalidate notifier, which may start running before A is fully
> initialized, does the following:
> 
> 	io_mm_invalidate(A)
> 	  list_for_each_entry_rcu(device, A->devices)
> 	    device->invalidate(A->ctx)

This could probably also have been reliably fixed by not having A->ctx
be allocated memory, but inlined into the notifier struct

But I can't think of a down side to not add a params either.

Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>

Regards,
Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
