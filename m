Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22E91DCBED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGrAOAXgBYXAuKZbmzuTrzErGxaIjs4TVpnmWg/svcE=; b=cRQRQ3E053tHuS
	gUG3u/TUXFr0OVVleAei5TX2azL7YZJMNsagFa8OGinXv9R6sPtAT9jOkH6TwF0g9fS2UdOucprBq
	2iOvhWWKMPXmEIALTD/u4Ik+OkTovaAaBQTBuoyoukND69lezlgQqK1QZVP/iNEmAHM/nj4XFTM2c
	hurx3jToF0RnDufuYE2X5mwjk2I1rIVUf++h6AqP5mjPjabGtiXjnKOsjlVIJbwppPWUKCg6fUu0z
	O8QwQLdL2aTq8GByS0FpfpK7fnSY34MMUstZnKzA1/kLxI7CLqFVr7GHLqHnbIwOCKBW79+ZJ2X/Q
	AdErqeJzq/4cnOus7I6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbj88-00062g-4U; Thu, 21 May 2020 11:12:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbj7u-000628-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:12:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 155D420721;
 Thu, 21 May 2020 11:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590059558;
 bh=iYAjQM9yDvPql0mmE1wLbplsG3C1/FtvidpyoFZTNcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LbQZQM+GNTzrdOvhJbIb17KBDxPUiI5biwavwK0ds9PBU1FY7uibn+697skdDAIVQ
 yFXwMF5VvH/1rukebrLHWPGWqFtQ3+3TV0Kj0D1fp7w/HPbsd6cZlPIsSXZgvG/azC
 D0cHphBjPJAlwYQJ5TJAw32lHV/7I7vDY2pYw23U=
Date: Thu, 21 May 2020 12:12:31 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 18/24] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
Message-ID: <20200521111231.GA5949@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-19-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519175502.2504091-19-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_041238_625289_FAADF946 
X-CRM114-Status: GOOD (  13.52  )
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

On Tue, May 19, 2020 at 07:54:56PM +0200, Jean-Philippe Brucker wrote:
> If the SMMU supports it and the kernel was built with HTTU support,
> enable hardware update of access and dirty flags. This is essential for
> shared page tables, to reduce the number of access faults on the fault
> queue. Normal DMA with io-pgtables doesn't currently use the access or
> dirty flags.
> 
> We can enable HTTU even if CPUs don't support it, because the kernel
> always checks for HW dirty bit and updates the PTE flags atomically.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)

How does this work if the SMMU isn't cache coherent? I'm guessing we don't
want to enable any SVA stuff in that case, but I couldn't spot where that
was being enforced. Did I just miss it?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
