Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97581F2A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KRymoD1aISd0063oXfCRDDwCimaA/17ZytbIGKH4as=; b=HWERJ6TpMcab+r
	7sRFTJmXU2EjWJ7vcSVBQPNERCfa5liIFDX9YATYxgDRu8FG/7wrRVz8jWiDNT/Sl2GVvM2qsJCqo
	2SUC4F5XBFi8e3vyBfa4JoWkHlReBDaE9bnvvu1wLr6Y+dIn3aOq8utAuYodWIJ9UxQfBXfSZ1tOG
	rrQmfJb3XokcqkCy+VWIS0R5/KykPceXvuF1z5eNhaSnRjWiXljHLzpsPwzsT+WlZC8PEXjz3A5hj
	tpP32+1UyoT0Q/xSQ54GdDM7cguTRAOUFOPl21F/T/2bx/SN92jXLn0DcQkKg/plFfkC3Jl95jJT+
	DdGehsm30YIAewFqn++A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsgf-0007M9-QU; Wed, 15 May 2019 12:07:09 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsgY-0007Kv-Mq
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:07:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7038480D;
 Wed, 15 May 2019 05:06:59 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6D2F3F71E;
 Wed, 15 May 2019 05:06:57 -0700 (PDT)
Date: Wed, 15 May 2019 13:06:52 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH RESEND] ACPI/IORT: Fix build error when IOMMU_SUPPORT
 disabled
Message-ID: <20190515120652.GA27269@e121166-lin.cambridge.arm.com>
References: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
 <20190515034253.79348-1-wangkefeng.wang@huawei.com>
 <20190515101534.GF24357@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515101534.GF24357@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_050702_752925_7CF11373 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, joro@8bytes.org,
 linux-acpi@vger.kernel.org, guohanjun@huawei.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Joerg, Robin]

On Wed, May 15, 2019 at 11:15:34AM +0100, Will Deacon wrote:
> On Wed, May 15, 2019 at 11:42:53AM +0800, Kefeng Wang wrote:
> > drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
> > drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
> >     dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> >                      ^~
> > drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
> > undeclared (first use in this function)
> >     dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> >                                 ^~~~~~~~~~~~~~~~~~~~~~~
> > drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in
> > 
> > If IOMMU_SUPPORT not enabled, struct iommu_fwspec without members and
> > IOMMU_FWSPEC_PCI_RC_ATS not defined, add new iommu_fwspec_set_ats_flags()
> > to set IOMMU_FWSPEC_PCI_RC_ATS flags to solve build error.
> > 
> > Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> 
> What's this "Hulk Robot"? Does it report things publicly?

AFAIK it is Huawei CI system, I had some doubts about leaving
that tag for other patches I dealt with, I am not sure it is
really useful (other than giving Hulk some credit).

> Anyway, I can pick this up if Lorenzo acks it.

Actually I think we should compile out iort_iommu_configure() for
!IOMMU_SUPPORT unless I am missing something, so that we are
removing this source of errors.

If that does not cut it, for this patch:

iommu_fwspec_set_ats_flags() should be iommu_fwspec_set_ats_flag()

The commit log should be fixed (it is pretty weird to start with the
build error and then explain it):

"If IOMMU_SUPPORT is not enabled, struct iommu_fwspec is an empty
struct and IOMMU_FWSPEC_PCI_RC_ATS is not defined, resulting in
the following build error:

drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
    dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
                     ^~
drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
undeclared (first use in this function)
    dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
                                ^~~~~~~~~~~~~~~~~~~~~~~
drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in

Add a iommu_fwspec_set_ats_flag() helper function (that is an empty
stub on !IOMMU_SUPPORT) to fix it."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
