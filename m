Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40351DCF5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgPwF5AR18R2QNIz5xr7aob1udo5uODANhubjXXZTlQ=; b=m8YFyBKk/Ohcdk
	eKOdCcrWKw1UCnqkOQS5yUi7NwDdakunMfKrS6tB47bl6Iogkjro1vt+eJJiX3NZvajDNPCd/0lLC
	Acpd9JGnJzvZfbHTMLTAwQuRA15Nmdz4p7x1UUteTqxrPxn/N3eyTJbXFYj5QVGTRyYXbgJOYbmi2
	YJSx5ZJWc653KXaQib9sc03iSIRu0WGJmzcGkLJXoNbNoUurDkzOrTH654rwZZaCZjgUIebM5vzUi
	My/XuwjWf3gFcx5aEall3bvz11kN44Svq2kEh53lK0b3RcJZHBidTgU5m58j4oKEsQI2V64/ks96M
	BGjdG7FxBYTVEN4wklRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm0X-0001UO-4X; Thu, 21 May 2020 14:17:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm0J-0001Rq-4k
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:17:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC33920721;
 Thu, 21 May 2020 14:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590070618;
 bh=YEpYYTkp5Epc3I02PSQwVAAWySjqR5HmPWamm+n+yqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=emfD5+Td4JkWFa9nx6iu3NhZWqXHy0Cul4uBIz9eMW1m5pPlTHa3MQ1L5tweReNSI
 +nzqkI81I9u0yvHl2QuuuCSWQWBHWnNeJWjSyn9PN2T9MFAPEf2DHjH906FGfDBG7N
 BL2C2n3EL7yfzDXZBJ3cF8uo2pvDC11Gd/AuJzgo=
Date: Thu, 21 May 2020 15:16:52 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 12/24] iommu/arm-smmu-v3: Add support for VHE
Message-ID: <20200521141652.GG6608@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-13-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519175502.2504091-13-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071659_212240_867EC16A 
X-CRM114-Status: GOOD (  14.82  )
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

On Tue, May 19, 2020 at 07:54:50PM +0200, Jean-Philippe Brucker wrote:
> ARMv8.1 extensions added Virtualization Host Extensions (VHE), which allow
> to run a host kernel at EL2. When using normal DMA, Device and CPU address
> spaces are dissociated, and do not need to implement the same
> capabilities, so VHE hasn't been used in the SMMU until now.
> 
> With shared address spaces however, ASIDs are shared between MMU and SMMU,
> and broadcast TLB invalidations issued by a CPU are taken into account by
> the SMMU. TLB entries on both sides need to have identical exception level
> in order to be cleared with a single invalidation.
> 
> When the CPU is using VHE, enable VHE in the SMMU for all STEs. Normal DMA
> mappings will need to use TLBI_EL2 commands instead of TLBI_NH, but
> shouldn't be otherwise affected by this change.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 31 ++++++++++++++++++++++++++-----
>  1 file changed, 26 insertions(+), 5 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
