Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC941C1060
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 11:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuFXknHGC0XHtKk1Ypae3D445MI2/VmOC78wDdH50oE=; b=pBgHd9AkU+YKxg
	nuKZ14bAC5C2h6wenwtLd6YVwJsc53UOIY8fdnzjvbd/30+4rjOD4rh6r2T0MKX/FGFmjUHXNjo0L
	OlYVLcmy/mu+aBSOjVe0XMnF3MDMkcJTQJfEJ1H2nLekM3vxuzm92B3h7q5+V4BuKHBJALFr2n0pJ
	Z0fDYy9X/ge+xRU4TRKAqJNcdCK3G0taGx5hormcQH6hnLa3wEKK26KpRJPz8nAL0e71r4gLsx8rn
	pve7an3s30ldGKm5Vq0+YDYu4jUEg9CnFdmLLHLV8U8KNEJuoiF4e1/TedKZOzsX3wfuK4SMqwAxW
	YRHnORoDfVL+OVjdugCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUS2U-0001My-UA; Fri, 01 May 2020 09:32:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUS2L-0001M1-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 09:32:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C09991FB;
 Fri,  1 May 2020 02:32:47 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E041C3F305;
 Fri,  1 May 2020 02:32:45 -0700 (PDT)
Date: Fri, 1 May 2020 10:32:40 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
Message-ID: <20200501093240.GA3701@e121166-lin.cambridge.arm.com>
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
 <20200117121448.GA8199@willie-the-truck>
 <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
 <CAKv+Gu-24EzfM+d7wBKUK7BC3gy+kQ2-T7CvemqtJsdQay7EjQ@mail.gmail.com>
 <20200501085404.GA3449@e121166-lin.cambridge.arm.com>
 <CAMj1kXFULq=KpLA-n4KfpYqAJ2Rg96VDr-7awUnsTEVB5vq6Lg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFULq=KpLA-n4KfpYqAJ2Rg96VDr-7awUnsTEVB5vq6Lg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_023249_854394_0DA4E1D1 
X-CRM114-Status: GOOD (  33.63  )
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
Cc: John Garry <john.garry@huawei.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Tyler Baicar <baicar@os.amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 11:02:48AM +0200, Ard Biesheuvel wrote:
> On Fri, 1 May 2020 at 10:54, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Fri, May 01, 2020 at 10:30:11AM +0200, Ard Biesheuvel wrote:
> > > On Fri, 17 Jan 2020 at 13:32, Lorenzo Pieralisi
> > > <lorenzo.pieralisi@arm.com> wrote:
> > > >
> > > > On Fri, Jan 17, 2020 at 12:14:49PM +0000, Will Deacon wrote:
> > > > > On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> > > > > > The IORT specification [0] (Section 3, table 4, page 9) defines the
> > > > > > 'Number of IDs' as 'The number of IDs in the range minus one'.
> > > > > >
> > > > > > However, the IORT ID mapping function iort_id_map() treats the 'Number
> > > > > > of IDs' field as if it were the full IDs mapping count, with the
> > > > > > following check in place to detect out of boundary input IDs:
> > > > > >
> > > > > > InputID >= Input base + Number of IDs
> > > > > >
> > > > > > This check is flawed in that it considers the 'Number of IDs' field as
> > > > > > the full number of IDs mapping and disregards the 'minus one' from
> > > > > > the IDs count.
> > > > > >
> > > > > > The correct check in iort_id_map() should be implemented as:
> > > > > >
> > > > > > InputID > Input base + Number of IDs
> > > > > >
> > > > > > this implements the specification correctly but unfortunately it breaks
> > > > > > existing firmwares that erroneously set the 'Number of IDs' as the full
> > > > > > IDs mapping count rather than IDs mapping count minus one.
> > > > > >
> > > > > > e.g.
> > > > > >
> > > > > > PCI hostbridge mapping entry 1:
> > > > > > Input base:  0x1000
> > > > > > ID Count:    0x100
> > > > > > Output base: 0x1000
> > > > > > Output reference: 0xC4  //ITS reference
> > > > > >
> > > > > > PCI hostbridge mapping entry 2:
> > > > > > Input base:  0x1100
> > > > > > ID Count:    0x100
> > > > > > Output base: 0x2000
> > > > > > Output reference: 0xD4  //ITS reference
> > > > > >
> > > > > > Two mapping entries which the second entry's Input base = the first
> > > > > > entry's Input base + ID count, so for InputID 0x1100 and with the
> > > > > > correct InputID check in place in iort_id_map() the kernel would map
> > > > > > the InputID to ITS 0xC4 not 0xD4 as it would be expected.
> > > > > >
> > > > > > Therefore, to keep supporting existing flawed firmwares, introduce a
> > > > > > workaround that instructs the kernel to use the old InputID range check
> > > > > > logic in iort_id_map(), so that we can support both firmwares written
> > > > > > with the flawed 'Number of IDs' logic and the correct one as defined in
> > > > > > the specifications.

[...]

> > > I just ran into this while playing with the LX2160 I received this week.
> >
> > Side note: that firmware must be updatable or there is something I am
> > missing in relation to the ongoing ITS/SMMU mapping discussions.
> >
> 
> Sure. But they are following the spec, and they use num_ids = 0x0 for
> regions consisting of a single mapping. This is completely broken
> without this patch.

Yes sure - I thought you were saying that the FW has issues with
the *current* kernel whereas you are asking if this fix can be
rewritten to remove the quirking mechanism - that's always a good
aim :)

> > > I wonder if it would be better to detect the failure case dynamically,
> > > rather than having these hardcoded quirks. It should be rather
> > > straightforward to detect overlaps at the edges of these multi-range
> > > mappings, in which case we could just let the spurious one (living at
> > > the end of the region) be superseded by the correct one (living at the
> > > start of the next region).
> >
> > This could be done I think but probably requires some boot time parsing
> > to create some structure defining ranges (to avoid running the logic you
> > describe above every time a device has to be mapped).
> >
> 
> It could be done much simpler than that: if iort_id_map() matches on
> the last value of a region with size > 1 (so num_ids > 0), we return
> the mapping but don't exit the loop. If we match it again, we use that
> value, otherwise we use the tentative value from the first iteration.

We need to see how the code will look like in both cases, again, I am
not a priori against implementing it.

Instead of relying on ranges, we can precompute structures to define
for a device which mapping+mapping_index should be ignored, this
will save us from doing it dynamically (still require some additional
data).

> > Given that I have not heard of any regressions on the existing crop
> > of platforms and the one you mentioned has FW that is not set in stone
> > I think we can live with the quirk mechanism for the time being,
> > what do you think ?
> >
> 
> The more quirks we keep, the harder it becomes to push back on new ones.
> 
> So if we can fix this cleanly, I'd much prefer it.

I agree with that, more so given that this is not impossible to rewrite
more cleanly.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
