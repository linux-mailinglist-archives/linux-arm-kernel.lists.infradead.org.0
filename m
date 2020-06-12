Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFF21F79D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 16:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBD0sDonjmbx69H525UW4Pn4xXGb/e5OLvEV20U9NwM=; b=gAoclb7hQztyQw
	/9b3hgNxrh/KE4nIOw5HECCQsNpxiptFUxN4bXtqopmnCX3PEZgBmwzRFypov8QkPszCci+qCa8PP
	zQVN1Fwti6lHcI5dZ8tQo3qYPChLWN1AXQ205tRwB+qxSNEglVoK7lqV9/x5UhV1Ng0iKhLtFCTRa
	K8YDO+JkKItzbM32zA/ZGUqj0UnbFq1Jkf1LenGyC4FbzLrMomBSNz4ActaQ7loA9bqeJXuumAONk
	OKXgxsHWcMWY0guAVrp86GdSDm9387ZU8q5qP7eolq6rn3cMGdNEl+64DH3IS1im9nsYpYli+Dc5P
	C04QlLhOE5ieH33l1jIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkhR-0003mI-J0; Fri, 12 Jun 2020 14:30:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkhK-0003lS-4h
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 14:30:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE90931B;
 Fri, 12 Jun 2020 07:30:18 -0700 (PDT)
Received: from red-moon.cambridge.arm.com (unknown [10.57.14.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4A753F6CF;
 Fri, 12 Jun 2020 07:30:14 -0700 (PDT)
Date: Fri, 12 Jun 2020 15:30:06 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: arm64 iommu groups issue
Message-ID: <20200612143006.GA4905@red-moon.cambridge.arm.com>
References: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
 <4768c541-ebf4-61d5-0c5e-77dee83f8f94@arm.com>
 <a18b7f26-9713-a5c7-507e-ed70e40bc007@huawei.com>
 <ddc7eaff-c3f9-4304-9b4e-75eff2c66cd5@huawei.com>
 <be464e2a-03d5-0b2e-24ee-96d0d14fd739@arm.com>
 <35fc8d13-b1c1-6a9e-4242-284da7f00764@huawei.com>
 <68643b18-c920-f997-a6d4-a5d9177c0f4e@arm.com>
 <828ec7b3-27af-f0b9-b4a6-0886b0c24b5a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <828ec7b3-27af-f0b9-b4a6-0886b0c24b5a@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_073022_270577_935C13DA 
X-CRM114-Status: GOOD (  26.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: robh@kernel.org, Alex Williamson <alex.williamson@redhat.com>,
 Saravana Kannan <saravanak@google.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 iommu <iommu@lists.linux-foundation.org>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 12:08:48PM +0000, John Garry wrote:
> > > 
> > > Right, and even worse is that it relies on the port driver even
> > > existing at all.
> > > 
> > > All this iommu group assignment should be taken outside device
> > > driver probe paths.
> > > 
> > > However we could still consider device links for sync'ing the SMMU
> > > and each device probing.
> > 
> > Yes, we should get that for DT now thanks to the of_devlink stuff, but
> > cooking up some equivalent for IORT might be worthwhile.
> 
> It doesn't solve this problem, but at least we could remove the iommu_ops
> check in iort_iommu_xlate().
> 
> We would need to carve out a path from pci_device_add() or even device_add()
> to solve all cases.
> 
> > 
> > > > Another thought that crosses my mind is that when pci_device_group()
> > > > walks up to the point of ACS isolation and doesn't find an existing
> > > > group, it can still infer that everything it walked past *should* be put
> > > > in the same group it's then eventually going to return. Unfortunately I
> > > > can't see an obvious way for it to act on that knowledge, though, since
> > > > recursive iommu_probe_device() is unlikely to end well.
> > > 
> 
> [...]
> 
> > > And this looks to be the reason for which current
> > > iommu_bus_init()->bus_for_each_device(..., add_iommu_group) fails
> > > also.
> > 
> > Of course, just adding a 'correct' add_device replay without the
> > of_xlate process doesn't help at all. No wonder this looked suspiciously
> > simpler than where the first idea left off...
> > 
> > (on reflection, the core of this idea seems to be recycling the existing
> > iommu_bus_init walk rather than building up a separate "waiting list",
> > while forgetting that that wasn't the difficult part of the original
> > idea anyway)
> 
> We could still use a bus walk to add the group per iommu, but we would need
> an additional check to ensure the device is associated with the IOMMU.
> 
> > 
> > > On this current code mentioned, the principle of this seems wrong to
> > > me - we call bus_for_each_device(..., add_iommu_group) for the first
> > > SMMU in the system which probes, but we attempt to add_iommu_group()
> > > for all devices on the bus, even though the SMMU for that device may
> > > yet to have probed.
> > 
> > Yes, iommu_bus_init() is one of the places still holding a
> > deeply-ingrained assumption that the ops go live for all IOMMU instances
> > at once, which is what warranted the further replay in
> > of_iommu_configure() originally. Moving that out of
> > of_platform_device_create() to support probe deferral is where the
> > trouble really started.
> 
> I'm not too familiar with the history here, but could this be reverted now
> with the introduction of of_devlink stuff?

Hi John,

have we managed to reach a consensus on this thread on how to solve
the issue ? Asking because this thread seems stalled - I am keen on
getting it fixed.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
