Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0B426418
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xj1OVMS7byYfwjLnjgeX81UxLR9h/NRkkyVZ3u+YeGw=; b=Pw6JDxfNc2TzrC
	Gc6b+QNZ/ImriNTKjR4HRNImmOC7Mif7R6sWlMB5utQ+gE+nvNiumZgZW/r0kaH4gU6UNEhv1QJwo
	1fYXaKjXc8VZJVl2o2KHqJVd8Ffp39vcGOU/oXg/yNbZSogAijLnHJGzdHgZHSWSncrMwORHDpoLF
	S5nAOl86l/J44/ztDxhNM5w8xLNOsEc3GSaLA1kLhYD0Ix2p359iyR3z4e78h6ZrxOkQMFvr606+i
	XKMGWLJIZ6f3nDTROoBJffi0D8mdaDsFErXgPDiAksegKi5Pq28wqOqGd4P2EomAx8datxGrJOwOX
	p1r68Af2bAmEVIbJdMFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQlc-0003Lw-4r; Wed, 22 May 2019 12:54:48 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQlU-0003LI-R4
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:54:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0364880D;
 Wed, 22 May 2019 05:54:36 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C32D23F575;
 Wed, 22 May 2019 05:54:34 -0700 (PDT)
Date: Wed, 22 May 2019 13:54:29 +0100
From: Will Deacon <will.deacon@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] ACPI/IORT: Fix build without CONFIG_IOMMU_API
Message-ID: <20190522125429.GA7876@fuggles.cambridge.arm.com>
References: <20190520065746.17068-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520065746.17068-1-hch@lst.de>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_055440_877455_40BF8923 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jean-philippe.brucker@arm.com, linux-acpi@vger.kernel.org,
 lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Mon, May 20, 2019 at 08:57:46AM +0200, Christoph Hellwig wrote:
> IOMMU_FWSPEC_PCI_RC_ATS is only defined if CONFIG_IOMMU_API is
> enabled.
> 
> Fixes: 5702ee24182f ("ACPI/IORT: Check ATS capability in root complex nodes")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/acpi/arm64/iort.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 9058cb084b91..3e542b5d2a2d 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1074,9 +1074,10 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
>  		info.node = node;
>  		err = pci_for_each_dma_alias(to_pci_dev(dev),
>  					     iort_pci_iommu_init, &info);
> -
> +#ifdef CONFIG_IOMMU_API
>  		if (!err && iort_pci_rc_supports_ats(node))
>  			dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> +#endif

Cheers, although there's an alternative fix from Lorenzo that I'll send up
for -rc2.

Sorry for the delay; been having email issues this week.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
