Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AFD1F8DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 18:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpBXbxPXJ/wabf8W0JUcnTFiRxQhCOLMj4Ute+aVizg=; b=bdANAfUxZsNd7a
	1GD9JdlgIw51Ks2xzn8qSO5vBWBqnhOqAVqIB+LpGvZHUcOXxgd2Vhcsn07nJXTog6tm0w7Mc/tr3
	EBXvyDbB0IPpwj64uMi6Gs7B+fRB9L8JRSvChp4DT84u+K7djfa3s9z+ePwg6tW1Cl9mhsTbGpVCg
	p2/gyy9w6mQOrIbmgYruq2Qoyg771VkDjr3YBKn6q89Dx7JljafNo8ypq3KUlCIkeCqbSOVIPyAwj
	TZoqWtOUUjHeU4tPt5rII+tSvjlqEQr+zzCTAFVvu1tsYWLr3nobsJRAetOIXIVCurAgr/xL++DOG
	RapEkmDsK6I6w9j+F8Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQx0C-0007kJ-6I; Wed, 15 May 2019 16:43:36 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQx03-0007jz-R5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 16:43:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31B9B80D;
 Wed, 15 May 2019 09:43:27 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 870C83F703;
 Wed, 15 May 2019 09:43:25 -0700 (PDT)
Date: Wed, 15 May 2019 17:41:10 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RESEND] ACPI/IORT: Fix build error when IOMMU_SUPPORT
 disabled
Message-ID: <20190515164110.GA22536@e121166-lin.cambridge.arm.com>
References: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
 <20190515034253.79348-1-wangkefeng.wang@huawei.com>
 <20190515101534.GF24357@fuggles.cambridge.arm.com>
 <20190515120652.GA27269@e121166-lin.cambridge.arm.com>
 <a7efd571-d82e-1d8f-147f-3bf8d1152d0d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7efd571-d82e-1d8f-147f-3bf8d1152d0d@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_094327_887174_FF1F4711 
X-CRM114-Status: GOOD (  22.91  )
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
 Will Deacon <will.deacon@arm.com>, linux-acpi@vger.kernel.org,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 01:46:28PM +0100, Robin Murphy wrote:
> On 15/05/2019 13:06, Lorenzo Pieralisi wrote:
> > [+Joerg, Robin]
> > 
> > On Wed, May 15, 2019 at 11:15:34AM +0100, Will Deacon wrote:
> > > On Wed, May 15, 2019 at 11:42:53AM +0800, Kefeng Wang wrote:
> > > > drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
> > > > drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
> > > >      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> > > >                       ^~
> > > > drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
> > > > undeclared (first use in this function)
> > > >      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> > > >                                  ^~~~~~~~~~~~~~~~~~~~~~~
> > > > drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in
> > > > 
> > > > If IOMMU_SUPPORT not enabled, struct iommu_fwspec without members and
> > > > IOMMU_FWSPEC_PCI_RC_ATS not defined, add new iommu_fwspec_set_ats_flags()
> > > > to set IOMMU_FWSPEC_PCI_RC_ATS flags to solve build error.
> > > > 
> > > > Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Cc: Will Deacon <will.deacon@arm.com>
> > > > Reported-by: Hulk Robot <hulkci@huawei.com>
> > > 
> > > What's this "Hulk Robot"? Does it report things publicly?
> > 
> > AFAIK it is Huawei CI system, I had some doubts about leaving
> > that tag for other patches I dealt with, I am not sure it is
> > really useful (other than giving Hulk some credit).
> > 
> > > Anyway, I can pick this up if Lorenzo acks it.
> > 
> > Actually I think we should compile out iort_iommu_configure() for
> > !IOMMU_SUPPORT unless I am missing something, so that we are
> > removing this source of errors.
> 
> Indeed, much as I like the compile coverage of not having things #ifdefed
> out in general, this particular case seems like a fairly atypical
> configuration so I'm not sure all the extra fluff of struct accessors is
> really worth it.

Ok, I will send a patch shortly to address this issue, if Kefeng
does not object I will drop the CI bot as reporter and add him
instead.

Thanks,
Lorenzo

> 
> Robin.
> 
> > If that does not cut it, for this patch:
> > 
> > iommu_fwspec_set_ats_flags() should be iommu_fwspec_set_ats_flag()
> > 
> > The commit log should be fixed (it is pretty weird to start with the
> > build error and then explain it):
> > 
> > "If IOMMU_SUPPORT is not enabled, struct iommu_fwspec is an empty
> > struct and IOMMU_FWSPEC_PCI_RC_ATS is not defined, resulting in
> > the following build error:
> > 
> > drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
> > drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
> >      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> >                       ^~
> > drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
> > undeclared (first use in this function)
> >      dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~
> > drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in
> > 
> > Add a iommu_fwspec_set_ats_flag() helper function (that is an empty
> > stub on !IOMMU_SUPPORT) to fix it."
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
