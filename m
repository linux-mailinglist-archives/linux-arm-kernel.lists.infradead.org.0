Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B891C1025
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 11:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ft9PFa0CP6q+LGx1VUUoJBh+k9lvqO17nAYzNojHZsQ=; b=poCcyClGFaiNLs
	BYVIR/nQITmovgh0g3HzBzVB+c4nkDpdMHoGm+VYttprpj0ntNVAsL6/CmaLC65EBCXN+OVyoChuP
	cEZ9gKeQV/1Z+l64Mf9OCXpLYr5Sg2kf1TPgG/hsoCIHPmT84hQ5SWm6i8xDK9TeGi3AdTdugu5X+
	JQHZfREwmyWn3ATV/Zj47VjfFbFW3MJQ/fCsu/jERKNXFBb40zUzLOb6D+kdV68+MuECogkbVzKra
	hybF5vJ4BqZFnUv+dUKMPuwDEs3CBTUEgWil5XjFHgUit2CV8RzRsPCcP91aVSJAOiVR70KO4L/Zh
	KXqhmghXPfGowDa9AQUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURZe-00065s-7k; Fri, 01 May 2020 09:03:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURZU-00064w-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 09:03:02 +0000
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com
 [209.85.166.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F18B52192A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588323780;
 bh=UdjDLYW2XbhdiO1ICKPG0sn4bQLtbUlhsHoujrktrWw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T8m+QTx6hrVJDFpl0cq2YFejb7W4ox1MRy3/ZJI8FkXuSyVV3Oqk+co45UL/DmI2R
 SAQQqksmUpkYHFc1esk6O4pfdfgrmVDI3qc+x2Yy3OtGSQtGo5X+JnhA6L3++3Us3N
 LwRY4HnaGk+OYxTwJcNeXC+1LdM5Ct/W31TNlJ5c=
Received: by mail-il1-f169.google.com with SMTP id c16so3935664ilr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 02:02:59 -0700 (PDT)
X-Gm-Message-State: AGi0PuYD/dh1qDkIMYgXziKbZdh88jCUlHaUoKJQ20hJW2+ykBR1n+ki
 8qB5x4d/zYHpp0DZuOLCVW7PlpLego9uiYUNLew=
X-Google-Smtp-Source: APiQypJkoZql6j4GoNMviNq5a2Ssl9t7GbRgh9uGOBsuwEwS1JJGVXvgDbZ8utcPzFkJAbnhK83EfkIhwYMBAdB8qug=
X-Received: by 2002:a92:3c55:: with SMTP id j82mr2712575ila.258.1588323779330; 
 Fri, 01 May 2020 02:02:59 -0700 (PDT)
MIME-Version: 1.0
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
 <20200117121448.GA8199@willie-the-truck>
 <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
 <CAKv+Gu-24EzfM+d7wBKUK7BC3gy+kQ2-T7CvemqtJsdQay7EjQ@mail.gmail.com>
 <20200501085404.GA3449@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200501085404.GA3449@e121166-lin.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 1 May 2020 11:02:48 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFULq=KpLA-n4KfpYqAJ2Rg96VDr-7awUnsTEVB5vq6Lg@mail.gmail.com>
Message-ID: <CAMj1kXFULq=KpLA-n4KfpYqAJ2Rg96VDr-7awUnsTEVB5vq6Lg@mail.gmail.com>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_020300_531601_4837EDE9 
X-CRM114-Status: GOOD (  37.89  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, 1 May 2020 at 10:54, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, May 01, 2020 at 10:30:11AM +0200, Ard Biesheuvel wrote:
> > On Fri, 17 Jan 2020 at 13:32, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Fri, Jan 17, 2020 at 12:14:49PM +0000, Will Deacon wrote:
> > > > On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> > > > > The IORT specification [0] (Section 3, table 4, page 9) defines the
> > > > > 'Number of IDs' as 'The number of IDs in the range minus one'.
> > > > >
> > > > > However, the IORT ID mapping function iort_id_map() treats the 'Number
> > > > > of IDs' field as if it were the full IDs mapping count, with the
> > > > > following check in place to detect out of boundary input IDs:
> > > > >
> > > > > InputID >= Input base + Number of IDs
> > > > >
> > > > > This check is flawed in that it considers the 'Number of IDs' field as
> > > > > the full number of IDs mapping and disregards the 'minus one' from
> > > > > the IDs count.
> > > > >
> > > > > The correct check in iort_id_map() should be implemented as:
> > > > >
> > > > > InputID > Input base + Number of IDs
> > > > >
> > > > > this implements the specification correctly but unfortunately it breaks
> > > > > existing firmwares that erroneously set the 'Number of IDs' as the full
> > > > > IDs mapping count rather than IDs mapping count minus one.
> > > > >
> > > > > e.g.
> > > > >
> > > > > PCI hostbridge mapping entry 1:
> > > > > Input base:  0x1000
> > > > > ID Count:    0x100
> > > > > Output base: 0x1000
> > > > > Output reference: 0xC4  //ITS reference
> > > > >
> > > > > PCI hostbridge mapping entry 2:
> > > > > Input base:  0x1100
> > > > > ID Count:    0x100
> > > > > Output base: 0x2000
> > > > > Output reference: 0xD4  //ITS reference
> > > > >
> > > > > Two mapping entries which the second entry's Input base = the first
> > > > > entry's Input base + ID count, so for InputID 0x1100 and with the
> > > > > correct InputID check in place in iort_id_map() the kernel would map
> > > > > the InputID to ITS 0xC4 not 0xD4 as it would be expected.
> > > > >
> > > > > Therefore, to keep supporting existing flawed firmwares, introduce a
> > > > > workaround that instructs the kernel to use the old InputID range check
> > > > > logic in iort_id_map(), so that we can support both firmwares written
> > > > > with the flawed 'Number of IDs' logic and the correct one as defined in
> > > > > the specifications.
> > > > >
> > > > > [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> > > > >
> > > > > Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > > > Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
> > > > > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > > > > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > > Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > > > Cc: Will Deacon <will@kernel.org>
> > > > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > > > ---
> > > >
> > > > I'm a bit confused about the SoB chain here and which tree this is
> > > > targetting.
> > > >
> > > > Lorenzo?
> > >
> > > Hi Will,
> > >
> > > sorry about that. It targets arm64 - previously wasn't addressed
> > > to you and Catalin:
> > >
> > > https://lore.kernel.org/linux-arm-kernel/1577708824-4873-1-git-send-email-guohanjun@huawei.com/
> > >
> > > I rewrote the commit log and asked Hanjun to repost it to target an arm64
> > > merge.
> > >
> > > Having said that, this patch makes me nervous, it can break on platforms
> > > that have non-compliant firmware, I wonder whether it is best to leave
> > > it in -next for a whole cycle (I can send it to -next) to catch any
> > > fall-out rather than targeting v5.6 given that technically is _not_ a
> > > fix (we may even have to revert it - it requires coverage on all ARM64
> > > ACPI systems).
> > >
> > > What do you think ?
> > >
> >
> > I just ran into this while playing with the LX2160 I received this week.
>
> Side note: that firmware must be updatable or there is something I am
> missing in relation to the ongoing ITS/SMMU mapping discussions.
>

Sure. But they are following the spec, and they use num_ids = 0x0 for
regions consisting of a single mapping. This is completely broken
without this patch.

> > I wonder if it would be better to detect the failure case dynamically,
> > rather than having these hardcoded quirks. It should be rather
> > straightforward to detect overlaps at the edges of these multi-range
> > mappings, in which case we could just let the spurious one (living at
> > the end of the region) be superseded by the correct one (living at the
> > start of the next region).
>
> This could be done I think but probably requires some boot time parsing
> to create some structure defining ranges (to avoid running the logic you
> describe above every time a device has to be mapped).
>

It could be done much simpler than that: if iort_id_map() matches on
the last value of a region with size > 1 (so num_ids > 0), we return
the mapping but don't exit the loop. If we match it again, we use that
value, otherwise we use the tentative value from the first iteration.

> Given that I have not heard of any regressions on the existing crop
> of platforms and the one you mentioned has FW that is not set in stone
> I think we can live with the quirk mechanism for the time being,
> what do you think ?
>

The more quirks we keep, the harder it becomes to push back on new ones.

So if we can fix this cleanly, I'd much prefer it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
