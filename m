Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B61173A7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egzzsdIfspN6i3pt/dGg/JBp2JAcVz+DvoVcPZ3aD2U=; b=Za++6Ay8THZngr
	ISrTM3IlPJgYbZxhnThY4OxQywptbLU9ZSYeQElky3qb1u/BlPczh3pNgo/OAa5Lsp1u8o9KTbiOe
	uja03jSYj8bMGu8Lxu+orCrf5zqXoifcBwRR5B+MaSbsRliFwSWYSeH3+7Hrk4k+2dzHYB9YbW90O
	Dj0xM7NOkwsXB8PQH7esENAJyMI68IUbZa7WFBpbgmPhrS7QLNPgdhxkMxy6dZItagkj3GvZOxLVv
	e5EdWMSEdpu2DJTQMQJK6wxEldbSvaJHe66rYJtsiCTa6jUBTF9N90qgWlDFmvlFTySnLpdpxUEVl
	+59YLEEDpSyjtkrTfGpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7h56-0000EQ-8W; Fri, 28 Feb 2020 14:57:36 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7h4r-0000E2-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:57:23 +0000
Received: by mail-qt1-x843.google.com with SMTP id t13so2210521qto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 06:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aXNQ0NABVZ/Zc8fXXYZpSz3dqh4Ns6QlhvK6/kwYM2k=;
 b=fx3F0RVJpvuGR0vU2fusOG/NqXxNQdLCppTq9XL99VJF79clWgcp5+agQ8Bkdn764W
 /6H4SP43zfEgHKiNsbn3EkZXEI5eftR/AZNv5GJYTZnxTXZRyq9aw7ICgIKMn8l0jnUx
 9LorGB67BgZ2aphSqsGjJO2u/nt3IEPqyy6blQp30BdEWnEUxTjjCoo7zwPmwtZJlkI3
 e+qGqpZDRkSLznZ8x2vUdH6CsaxJ2HRW27+fCzEtPp5EqdbjknklIN9PHhf1PYIBAg+F
 PuUEX6g64YI1DZfAu0ym87ZYgi2PkqOOc/+5zxlIRaH10PX0tdO8PBQJ2rqvbzBeuTgk
 IVvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aXNQ0NABVZ/Zc8fXXYZpSz3dqh4Ns6QlhvK6/kwYM2k=;
 b=HSsP5W7IDDHBtL88B+Z2fQHJ4HIdKAskS63vp5LkgwA3SNU0aKZYXoXAe4TAvsxKJX
 eHblZrLmEwN6AGl+kAPmhiiwJi1/1lG3wUPldklTdKA1oVGM4NW2l3W/rUN6hZQ+M3xz
 +ux8NQQSIB8aGDKdAKeXl6cdf2NVjoZd7ikdQzteG83hy8G1BEzdAUUZlEO/2fsJs6ow
 c6Sw76qAJ9LjmhVG7uupz2DiHN0knDywvH3Bgj37Hpp+I7lc7EbMiuRwYcXehT37vCCE
 0r4fyUyP3Z3LNSLEhZHz/mTbn4aDATvI3vmdWC1LflX4qJm72/0s4WdH9EK7Gbpy0Phv
 U7eg==
X-Gm-Message-State: APjAAAWYWb330L9g4CtX4il81UTDUz3e4C120FnwgyvfPVeY9nVP5feJ
 5qt6RFwR0+K6/1QU2xEwjJJ30w==
X-Google-Smtp-Source: APXvYqxZGwk4KQ+YAY4GsyBgYKpbiHklk+KncMw+8qgpUr+ys9QfMTdjm4TizVQ6yPrtfGJb79x/jw==
X-Received: by 2002:ac8:2939:: with SMTP id y54mr4410279qty.109.1582901840269; 
 Fri, 28 Feb 2020 06:57:20 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id f7sm5133445qtj.92.2020.02.28.06.57.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Feb 2020 06:57:19 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j7h4p-00034R-0q; Fri, 28 Feb 2020 10:57:19 -0400
Date: Fri, 28 Feb 2020 10:57:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 02/26] iommu/sva: Manage process address spaces
Message-ID: <20200228145718.GR31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-3-jean-philippe@linaro.org>
 <20200226111320.3b6e6d3d@jacob-builder>
 <20200228144007.GB2156@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228144007.GB2156@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_065721_770131_E7ECE2E5 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
 Jacob Pan <jacob.jun.pan@linux.intel.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, yi.l.liu@intel.com, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 03:40:07PM +0100, Jean-Philippe Brucker wrote:
> > > Device
> > > + * 00:00.0 accesses address spaces X and Y, each corresponding to an
> > > mm_struct.
> > > + * Devices 00:01.* only access address space Y. In addition each
> > > + * IOMMU_DOMAIN_DMA domain has a private address space, io_pgtable,
> > > that is
> > > + * managed with iommu_map()/iommu_unmap(), and isn't shared with the
> > > CPU MMU.
> > So this would allow IOVA and SVA co-exist in the same address space?
> 
> Hmm, not in the same address space, but they can co-exist in a device. In
> fact the endpoint I'm testing (hisi zip accelerator) already needs normal
> DMA alongside SVA for queue management. This one is integrated on an
> Arm-based platform so shouldn't be a concern for VT-d at the moment, but
> I suspect we might see more of this kind of device with mixed DMA.

Probably the most interesting usecases for PASID definately require
this, so this is more than a "suspect we might see"

We want to see the privileged kernel control the general behavior of
the PCI function and delegate only some DMAs to PASIDs associated with
the user mm_struct. The device is always trusted the label its DMA
properly.

These programming models are already being used for years now with the
opencapi implementation.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
