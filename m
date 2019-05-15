Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3CC1EBEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVVs+li3C8pQr5wzDR2+djvtOM1gVIH1bGbyyAx8N4M=; b=S2HBsWYpqt+Y5b
	STIqzIecopjIc6IqsJtbA52+AVYic5NBOcCY13jCXHolzy8BjkCOK5eAZwYgDQC/zvvaS0vy16Kwu
	shNLtoMGzixTAbkASqlsQwuebDXvo+JEWB/GGBigpgqUZEBOyY6oD2Ljl1Usy1QGLCG5KiEM0UDgE
	8Y/UKVtBNpPSJKvYyy1KCiGhRwewXJlyVvZ6x3yvHkcndgAVghWHUNlIdo40+SaHZYyKhZI/gGiIW
	qfa4CeVIq9OaY5StDF9miBajdiq6RUTqvNDZG5C4ha4CZMLVaSDpZeETI4G5ZJfK1lQsAsbcGVjr4
	D9AKIuh29Gu2LQKpdnQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqwt-0007sH-96; Wed, 15 May 2019 10:15:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqwl-0007rX-2v
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:15:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BE6F80D;
 Wed, 15 May 2019 03:15:38 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 014BD3F703;
 Wed, 15 May 2019 03:15:36 -0700 (PDT)
Date: Wed, 15 May 2019 11:15:34 +0100
From: Will Deacon <will.deacon@arm.com>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Subject: Re: [PATCH RESEND] ACPI/IORT: Fix build error when IOMMU_SUPPORT
 disabled
Message-ID: <20190515101534.GF24357@fuggles.cambridge.arm.com>
References: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
 <20190515034253.79348-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515034253.79348-1-wangkefeng.wang@huawei.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_031539_127718_4B96E095 
X-CRM114-Status: GOOD (  10.05  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hulk Robot <hulkci@huawei.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-acpi@vger.kernel.org, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:42:53AM +0800, Kefeng Wang wrote:
> drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
> drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
>     dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
>                      ^~
> drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
> undeclared (first use in this function)
>     dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
>                                 ^~~~~~~~~~~~~~~~~~~~~~~
> drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in
> 
> If IOMMU_SUPPORT not enabled, struct iommu_fwspec without members and
> IOMMU_FWSPEC_PCI_RC_ATS not defined, add new iommu_fwspec_set_ats_flags()
> to set IOMMU_FWSPEC_PCI_RC_ATS flags to solve build error.
> 
> Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Reported-by: Hulk Robot <hulkci@huawei.com>

What's this "Hulk Robot"? Does it report things publicly?

Anyway, I can pick this up if Lorenzo acks it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
