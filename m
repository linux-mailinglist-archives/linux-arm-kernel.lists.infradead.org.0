Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42DF1DCF57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykfN19HZiDPmUNe+x7qY+Jsfnfm7GCH/OlFS4sry5CQ=; b=ndna8c/qpaXo60
	PtxtkzIGao95zLxKUcsZdfCNWuaL9mG1zPhx5i9+UDynPzj4dn7FE64koLCkDZcnEQT0F/DQAnjCd
	++a8d8Fy4mz6WSV/uHGnBY9JpAKH+eD4GG7XHbHxZr/aQpJHsE93JzppTI3KizZagsMjI3kRrjRNS
	NwT31RwgncMZEKB6ae4Pvd/pD9vAFxe+saZJGCxJ5LtKKI+YCFudqwvLfknhhud8XdN0h9hO61e5t
	2kCNC74I5OH4MXVCMB5uAoqGTdOqc3J8ecZSa1SOj+xC80hn0o4icK5LJb1H/c62SdVKNBX0WiB9C
	pplGEj5iK/poaL/Ye7Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm0H-0001IA-4v; Thu, 21 May 2020 14:16:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm07-0001Gt-64
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:16:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CAC020721;
 Thu, 21 May 2020 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590070606;
 bh=J12/yI4JkwQoq0ZSsn8yVG8aHccxtJvArFtbGq3PfLc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iLRAgstVdYm1eiYPWiirwh1nShyQnHb3MswJtEKjwgAgUxm1QVDn5HxOYZ69IgQ9O
 +bdDwuNQWPqhCTAcnwC/oKn7WosmzTgtEnBMm154hZhbBmPdVk0+3b4h92ALYIFy4S
 VN3+rF0oD3wb2KHpTYm7ICypRf6sf4/Xdzh9FkDw=
Date: Thu, 21 May 2020 15:16:39 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 07/24] iommu/io-pgtable-arm: Move some definitions to
 a header
Message-ID: <20200521141638.GF6608@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-8-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519175502.2504091-8-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071647_244183_A5D91B11 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, fenghua.yu@intel.com,
 hch@infradead.org, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 zhangfei.gao@linaro.org, catalin.marinas@arm.com, felix.kuehling@amd.com,
 xuzaibo@huawei.com, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 07:54:45PM +0200, Jean-Philippe Brucker wrote:
> Extract some of the most generic TCR defines, so they can be reused by
> the page table sharing code.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/io-pgtable-arm.h | 30 ++++++++++++++++++++++++++++++
>  drivers/iommu/io-pgtable-arm.c | 27 ++-------------------------
>  MAINTAINERS                    |  3 +--
>  3 files changed, 33 insertions(+), 27 deletions(-)
>  create mode 100644 drivers/iommu/io-pgtable-arm.h

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
