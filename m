Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470FD1C0F85
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/D8BdGXf9jrmKqrRwNjVcnbfjq7TEqptG5z5aFv01Fw=; b=GOSnIUYSewxYfU
	KzQdkFnX0yAW2qSZTEKx577ANtmaFHwBlaMtPldpPSzua+YX40CwKg9NxAw8EWgiSUfPKmXQoC5QS
	i7dy8odITsdwQFByA7bYXtD6tfhK6K+XJhsi+Aq8XuP1rRXRrEp6PcQboF4NGkAx6khAruiPR46Wb
	j1SC4yDd81F6Jq6Jy3HtY+mlYPDIBAQGhj8pFUxQOqULGdd4lf/hKp66vUdZ90yrfCCbyRZ3wfPEh
	8Dz4CdIOKS6cU6TufrqR3vTYi/n5ovE18XnEFb974BDeXDwbQnFJk3n+RSIhH60eIjlo//7RJUVZf
	9UnwutGY2sg2CjAnTgog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUR44-0006qk-Fq; Fri, 01 May 2020 08:30:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUR3w-0006pz-Sy
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:30:26 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A90724955
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 08:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588321824;
 bh=CJNhGsCpd6AQPVX8P6NqaBV7vRnnyDedFup5oxfD/YY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WpyOlVfibyZ1/AhCZU+5fcBkGQm6h4egfZDk5SBIz96/bbRK9slzNF67UkfXbTAic
 p7rGsw7jhm//qUYUqtA/7cKw1edRziN/oVxDSv1lPjIK23LJovBL9JNkyauWIQh/Os
 QLra+uEpVfPHrae/LIoUGme0lI68QklkUHLePACI=
Received: by mail-wr1-f47.google.com with SMTP id f13so10661489wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 01:30:23 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ7j5yK0rgZysoZ5dAN//9xvUnZWiCMzaf/6KO0hyPxeAOSJKTz
 lA7wIn0Sfjw8Bd2/bFTfJbcmSzjau6dvHH99eqgt+w==
X-Google-Smtp-Source: APiQypIEoE7lZmfaNRjexQvHHOulSLBq541VjjKRzYkC8E/9BVk2V6iByn/+BWZm6DjWOdlaBwt4QwywVIC2Z0PmYQk=
X-Received: by 2002:a5d:6145:: with SMTP id y5mr2947927wrt.126.1588321822377; 
 Fri, 01 May 2020 01:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
 <20200117121448.GA8199@willie-the-truck>
 <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200117123226.GA9918@e121166-lin.cambridge.arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 1 May 2020 10:30:11 +0200
X-Gmail-Original-Message-ID: <CAKv+Gu-24EzfM+d7wBKUK7BC3gy+kQ2-T7CvemqtJsdQay7EjQ@mail.gmail.com>
Message-ID: <CAKv+Gu-24EzfM+d7wBKUK7BC3gy+kQ2-T7CvemqtJsdQay7EjQ@mail.gmail.com>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_013024_981998_7E9AC066 
X-CRM114-Status: GOOD (  29.60  )
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

On Fri, 17 Jan 2020 at 13:32, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Jan 17, 2020 at 12:14:49PM +0000, Will Deacon wrote:
> > On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> > > The IORT specification [0] (Section 3, table 4, page 9) defines the
> > > 'Number of IDs' as 'The number of IDs in the range minus one'.
> > >
> > > However, the IORT ID mapping function iort_id_map() treats the 'Number
> > > of IDs' field as if it were the full IDs mapping count, with the
> > > following check in place to detect out of boundary input IDs:
> > >
> > > InputID >= Input base + Number of IDs
> > >
> > > This check is flawed in that it considers the 'Number of IDs' field as
> > > the full number of IDs mapping and disregards the 'minus one' from
> > > the IDs count.
> > >
> > > The correct check in iort_id_map() should be implemented as:
> > >
> > > InputID > Input base + Number of IDs
> > >
> > > this implements the specification correctly but unfortunately it breaks
> > > existing firmwares that erroneously set the 'Number of IDs' as the full
> > > IDs mapping count rather than IDs mapping count minus one.
> > >
> > > e.g.
> > >
> > > PCI hostbridge mapping entry 1:
> > > Input base:  0x1000
> > > ID Count:    0x100
> > > Output base: 0x1000
> > > Output reference: 0xC4  //ITS reference
> > >
> > > PCI hostbridge mapping entry 2:
> > > Input base:  0x1100
> > > ID Count:    0x100
> > > Output base: 0x2000
> > > Output reference: 0xD4  //ITS reference
> > >
> > > Two mapping entries which the second entry's Input base = the first
> > > entry's Input base + ID count, so for InputID 0x1100 and with the
> > > correct InputID check in place in iort_id_map() the kernel would map
> > > the InputID to ITS 0xC4 not 0xD4 as it would be expected.
> > >
> > > Therefore, to keep supporting existing flawed firmwares, introduce a
> > > workaround that instructs the kernel to use the old InputID range check
> > > logic in iort_id_map(), so that we can support both firmwares written
> > > with the flawed 'Number of IDs' logic and the correct one as defined in
> > > the specifications.
> > >
> > > [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> > >
> > > Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
> > > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > ---
> >
> > I'm a bit confused about the SoB chain here and which tree this is
> > targetting.
> >
> > Lorenzo?
>
> Hi Will,
>
> sorry about that. It targets arm64 - previously wasn't addressed
> to you and Catalin:
>
> https://lore.kernel.org/linux-arm-kernel/1577708824-4873-1-git-send-email-guohanjun@huawei.com/
>
> I rewrote the commit log and asked Hanjun to repost it to target an arm64
> merge.
>
> Having said that, this patch makes me nervous, it can break on platforms
> that have non-compliant firmware, I wonder whether it is best to leave
> it in -next for a whole cycle (I can send it to -next) to catch any
> fall-out rather than targeting v5.6 given that technically is _not_ a
> fix (we may even have to revert it - it requires coverage on all ARM64
> ACPI systems).
>
> What do you think ?
>

I just ran into this while playing with the LX2160 I received this week.

I wonder if it would be better to detect the failure case dynamically,
rather than having these hardcoded quirks. It should be rather
straightforward to detect overlaps at the edges of these multi-range
mappings, in which case we could just let the spurious one (living at
the end of the region) be superseded by the correct one (living at the
start of the next region).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
