Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571BF1DCB22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rk2NBYaHqrMZQXM99jCANeMiBgmpymQw2xI0a8AtP98=; b=MGvr5eg0raHamv
	DRPbeyKtQjj+Ab+cxZvD3k9kNB3XHA8DaqGpHBwGp8N7ecFYp21w1eqTCMc/3MWdWvaKt/mOLLoYl
	meewrCgbnJjpNOzw5aVJm6AsvZFhJ9RDyplee9EhKmKCZppahmNwVutrggEjzhcFDZ8+NWT0EE/tp
	0vh3LZ1QUgQ9x2dSAEHwB32Y9LxiikEaN0PWjYH3H50uuxr6FV+rv7PCQi62N/Xu+AdSh9wJ1MZaN
	Os6fFstzYbkrupWEpDoi2pcOqU/WtyCbcm6hV4gQRyjpDVNeO9eW5v+PL8yTUV6ZPqJCgPtsaB82u
	0mn2S1BpsFHqLx/3TFIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiXy-0007dh-RI; Thu, 21 May 2020 10:35:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiXo-0007d9-L7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:35:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3ACFB207D3;
 Thu, 21 May 2020 10:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590057320;
 bh=a9hJk21ZfjUP7X59u528A9f5ow2mLYdP8uHbmtg8vZw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z5EcqRcd2YGUS5rhJDclmz3R8zFpPuaz8n559EdvwZ4E29gACziYUBrsQNdJHuSjo
 rSEj0lQ6sAGcQTC7tKESxdfpcyP33agwVDT/h0+km7gZuULSnH/ymBjZgNsF4jYfyM
 RknuG+C678ZPapDa+RAU5OwwowB3K7ZkF9YyfZ9E=
Date: Thu, 21 May 2020 11:35:14 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 00/24] iommu: Shared Virtual Addressing for SMMUv3
Message-ID: <20200521103513.GE5360@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_033520_711373_D221F80D 
X-CRM114-Status: GOOD (  11.46  )
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

Hi Jean-Philippe,

On Tue, May 19, 2020 at 07:54:38PM +0200, Jean-Philippe Brucker wrote:
> Shared Virtual Addressing (SVA) allows to share process page tables with
> devices using the IOMMU, PASIDs and I/O page faults. Add SVA support to
> the Arm SMMUv3 driver.
> 
> Since v6 [1]:
> * Rename ioasid_free() to ioasid_put() in patch 02, requiring changes to
>   the Intel drivers.
> * Use mmu_notifier_register() in patch 16 to avoid copying the ops and
>   simplify the invalidate() notifier in patch 17.
> * As a result, replace context spinlock with a mutex. Simplified locking in
>   patch 11 (That patch still looks awful, but I think the series is more
>   readable overall). And I've finally been able to remove the GFP_ATOMIC
>   allocations.
> * Use a single patch (04) for io-pgfault.c, since the code was simplified
>   in v6. Fixed partial list in patch 04.

There's an awful lot here and it stretches across quite a few subsystems,
with different git trees. What's the plan for merging it?

I'm happy to take some of the arm64 and smmu changes for 5.8, then perhaps
we can review what's left and target 5.9? It would also be helpful to split
that up into separate series where there aren't strong dependencies, I
think.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
