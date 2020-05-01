Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D9E1C1010
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhyFg4AyLyGpCNblpZ86hsseFd6Ti1v8yOd3aSWeycM=; b=uAwK+BAC0WejlP
	Lg0e2B0xjJ4G6AyftHKF7IMOZLwtVQSpMXv19bIaoLTcs7nFkLig+GFe5AuSBFGM7PqOhHCAtDOv9
	AJlqQAHntr60jigcMLW9qZoLVjj8zpDodr57Ev9VstXQfk3jWkCKghCgfVR4B2A9Fj7s0Z7JnSSgI
	7sFkqiIFb4dY4zS9OJUOYD+LZxDagWCS32sews6o4k6CNj0xMjmkBDUIpl2uKkDh/FxFtxeSMWWY4
	qQJMAyNVcLo+vS/k9EKpk2VqcdKIW6aSUEJ6rgyAhMfiQwcxhL9IcFszeqKXN5tpXGhX3l6tswRNX
	CAd1IooaQM4zv/VBnPrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURRA-0007RQ-E5; Fri, 01 May 2020 08:54:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURR2-0007Qg-HG
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:54:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18AB01FB;
 Fri,  1 May 2020 01:54:13 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3644F3F305;
 Fri,  1 May 2020 01:54:11 -0700 (PDT)
Date: Fri, 1 May 2020 09:54:04 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
Message-ID: <20200501085404.GA3449@e121166-lin.cambridge.arm.com>
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
 <20200117121448.GA8199@willie-the-truck>
 <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
 <CAKv+Gu-24EzfM+d7wBKUK7BC3gy+kQ2-T7CvemqtJsdQay7EjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-24EzfM+d7wBKUK7BC3gy+kQ2-T7CvemqtJsdQay7EjQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_015416_663254_3810D42C 
X-CRM114-Status: GOOD (  33.08  )
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

On Fri, May 01, 2020 at 10:30:11AM +0200, Ard Biesheuvel wrote:
> On Fri, 17 Jan 2020 at 13:32, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Fri, Jan 17, 2020 at 12:14:49PM +0000, Will Deacon wrote:
> > > On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> > > > The IORT specification [0] (Section 3, table 4, page 9) defines the
> > > > 'Number of IDs' as 'The number of IDs in the range minus one'.
> > > >
> > > > However, the IORT ID mapping function iort_id_map() treats the 'Number
> > > > of IDs' field as if it were the full IDs mapping count, with the
> > > > following check in place to detect out of boundary input IDs:
> > > >
> > > > InputID >= Input base + Number of IDs
> > > >
> > > > This check is flawed in that it considers the 'Number of IDs' field as
> > > > the full number of IDs mapping and disregards the 'minus one' from
> > > > the IDs count.
> > > >
> > > > The correct check in iort_id_map() should be implemented as:
> > > >
> > > > InputID > Input base + Number of IDs
> > > >
> > > > this implements the specification correctly but unfortunately it breaks
> > > > existing firmwares that erroneously set the 'Number of IDs' as the full
> > > > IDs mapping count rather than IDs mapping count minus one.
> > > >
> > > > e.g.
> > > >
> > > > PCI hostbridge mapping entry 1:
> > > > Input base:  0x1000
> > > > ID Count:    0x100
> > > > Output base: 0x1000
> > > > Output reference: 0xC4  //ITS reference
> > > >
> > > > PCI hostbridge mapping entry 2:
> > > > Input base:  0x1100
> > > > ID Count:    0x100
> > > > Output base: 0x2000
> > > > Output reference: 0xD4  //ITS reference
> > > >
> > > > Two mapping entries which the second entry's Input base = the first
> > > > entry's Input base + ID count, so for InputID 0x1100 and with the
> > > > correct InputID check in place in iort_id_map() the kernel would map
> > > > the InputID to ITS 0xC4 not 0xD4 as it would be expected.
> > > >
> > > > Therefore, to keep supporting existing flawed firmwares, introduce a
> > > > workaround that instructs the kernel to use the old InputID range check
> > > > logic in iort_id_map(), so that we can support both firmwares written
> > > > with the flawed 'Number of IDs' logic and the correct one as defined in
> > > > the specifications.
> > > >
> > > > [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> > > >
> > > > Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > > Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
> > > > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > > > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > > ---
> > >
> > > I'm a bit confused about the SoB chain here and which tree this is
> > > targetting.
> > >
> > > Lorenzo?
> >
> > Hi Will,
> >
> > sorry about that. It targets arm64 - previously wasn't addressed
> > to you and Catalin:
> >
> > https://lore.kernel.org/linux-arm-kernel/1577708824-4873-1-git-send-email-guohanjun@huawei.com/
> >
> > I rewrote the commit log and asked Hanjun to repost it to target an arm64
> > merge.
> >
> > Having said that, this patch makes me nervous, it can break on platforms
> > that have non-compliant firmware, I wonder whether it is best to leave
> > it in -next for a whole cycle (I can send it to -next) to catch any
> > fall-out rather than targeting v5.6 given that technically is _not_ a
> > fix (we may even have to revert it - it requires coverage on all ARM64
> > ACPI systems).
> >
> > What do you think ?
> >
> 
> I just ran into this while playing with the LX2160 I received this week.

Side note: that firmware must be updatable or there is something I am
missing in relation to the ongoing ITS/SMMU mapping discussions.

> I wonder if it would be better to detect the failure case dynamically,
> rather than having these hardcoded quirks. It should be rather
> straightforward to detect overlaps at the edges of these multi-range
> mappings, in which case we could just let the spurious one (living at
> the end of the region) be superseded by the correct one (living at the
> start of the next region).

This could be done I think but probably requires some boot time parsing
to create some structure defining ranges (to avoid running the logic you
describe above every time a device has to be mapped).

Given that I have not heard of any regressions on the existing crop
of platforms and the one you mentioned has FW that is not set in stone
I think we can live with the quirk mechanism for the time being,
what do you think ?

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
