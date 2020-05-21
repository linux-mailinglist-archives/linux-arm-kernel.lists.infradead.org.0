Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57E51DCF67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRHvJh3PemW8pPt6hOUGmdGXhejnp42TkGZ+wazCUFg=; b=OX2rs3mQa396Az
	dgV9CYKfQVnC0MwvYExnxLORXwMaY2ytGHwu95uEBRy/Ho4Fm5WV9S71VcUQOoxneTfaYf+f1zR73
	vH965CND9IEs0YkSvqSFSZxzU3PPbny/trmRb5C22jeZUFMTMe9PbF1iBzShoZt7s7vAf/rHuHiaa
	YqPIYSWSI+Qhaz9qJjiJR76BJpr5Ss5NMm2X671pX0v5ZFpf6N98bjnXeQ+0GmaCoovvy3l2qeLIB
	a1P+5i+8KNEfpTp6zunRAVDwM0YjuS7R+7LBlb7TwEkNb+g1Tl2x0NcFHlRZeDjxji6l0GiNaMgBW
	PTZF9hpUODAsLJxuQTzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm1B-0001zI-VE; Thu, 21 May 2020 14:17:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm0i-0001oY-78
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:17:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52C9920721;
 Thu, 21 May 2020 14:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590070643;
 bh=AZMQPgg7eEixgM0PZYWK7KA66vV+dRiZTPUXhxoYuh8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PoJrVHIFNFCAoLW6Mav1ejRUdOpgEryrgFeL/IOpkKIHq+3xr27pkIc9DACE26Z0R
 rrFfzpT+hatcls+sC7b9iFT0tWtMRai6HF3m35UfE4UsAGvhv6JOtXcspLwBkPqjEr
 7TKbYifo2BfeemF071FQzuKO7KfwFiUFwTlR+p88=
Date: Thu, 21 May 2020 15:17:17 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 00/24] iommu: Shared Virtual Addressing for SMMUv3
Message-ID: <20200521141716.GI6608@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200521103513.GE5360@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521103513.GE5360@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071724_348636_8996873B 
X-CRM114-Status: GOOD (  15.88  )
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
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, fenghua.yu@intel.com,
 linux-pci@vger.kernel.org, joro@8bytes.org, christian.koenig@amd.com,
 hch@infradead.org, jgg@ziepe.ca, iommu@lists.linux-foundation.org,
 xuzaibo@huawei.com, Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org,
 felix.kuehling@amd.com, robin.murphy@arm.com, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:35:14AM +0100, Will Deacon wrote:
> On Tue, May 19, 2020 at 07:54:38PM +0200, Jean-Philippe Brucker wrote:
> > Shared Virtual Addressing (SVA) allows to share process page tables with
> > devices using the IOMMU, PASIDs and I/O page faults. Add SVA support to
> > the Arm SMMUv3 driver.
> > 
> > Since v6 [1]:
> > * Rename ioasid_free() to ioasid_put() in patch 02, requiring changes to
> >   the Intel drivers.
> > * Use mmu_notifier_register() in patch 16 to avoid copying the ops and
> >   simplify the invalidate() notifier in patch 17.
> > * As a result, replace context spinlock with a mutex. Simplified locking in
> >   patch 11 (That patch still looks awful, but I think the series is more
> >   readable overall). And I've finally been able to remove the GFP_ATOMIC
> >   allocations.
> > * Use a single patch (04) for io-pgfault.c, since the code was simplified
> >   in v6. Fixed partial list in patch 04.
> 
> There's an awful lot here and it stretches across quite a few subsystems,
> with different git trees. What's the plan for merging it?
> 
> I'm happy to take some of the arm64 and smmu changes for 5.8, then perhaps
> we can review what's left and target 5.9? It would also be helpful to split
> that up into separate series where there aren't strong dependencies, I
> think.

Hmm, so the way the series is structured makes it quite difficult to apply
much of this at all :(

I've taken patch 5 into the arm64 tree and patch 8 into the smmu tree. I'll
leave a couple of Acks on some of the simpler patches, but I think this
really needs splitting up a bit to make it more manageable.

I also notice a bunch of TODOs that get introduced and then removed. Given
that the series needs to be bisectable, these shouldn't be needed and can
just be removed.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
