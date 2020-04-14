Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C761A8393
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2Cu723poAJMLAoJpS1ZkbYxTrQqfmrkD83yglbg95c=; b=pnNcWgg2Ynp1ye
	HI6HPA7tVdoiqOwEh3WsmRzizG/mbz3DCsOw88D3FRpY3QvBCnHt4szOCDApEO+OHcquW1BMzSXiS
	g8rOZsqAsVUL6LV/cIRO3Epur5B3JlagdPG16wCah/mmD8ugkuGRQ3UyGCUILRiTNvG6PDOBd3gpD
	xsUhOoKj3EIWnkzOuQbBIHyhaa0vdOGpfc04ANrLsCM+/TXI+UpGp8r32UtyS+5CsTpGEmzXNI8bo
	pelGWKYza+2xj6OOeK5vwEIXdgxgyuomZT4o+sqxAWSypaWaIR1vbhtx1MbU+UkWByA9lROXSE2w4
	fKhzuhYXJSRVVFXne/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONix-0000ta-2L; Tue, 14 Apr 2020 15:43:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONie-0000ps-Ca
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:43:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5901930E;
 Tue, 14 Apr 2020 08:43:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 346FB3F73D;
 Tue, 14 Apr 2020 08:43:22 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:43:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/5] arm64: vdso: cleanups
Message-ID: <20200414154319.GK2486@C02TD0UTHF1T.local>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414152057.GB30288@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414152057.GB30288@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_084324_475708_A42E694F 
X-CRM114-Status: GOOD (  21.67  )
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
Cc: catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:20:58PM +0100, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 11:42:47AM +0100, Mark Rutland wrote:
> > While attempting to review an arm64 vdso patch, I noticed some of the existing
> > code was somewhat baroque, making it harder than necessary to understand and
> > extend. These patches attempt to improve this by making the code more
> > consistent and avoiding unnecessary duplication.
> > 
> > The first patch in the series fixes a bug in a boot time error path. This bug
> > was made obvious during the refactoring but I've moved it to the start so that
> > it can be backported more easily.
> > 
> > The series is based on v5.7-rc1 and can be found in my arm64/vdso-cleanup
> > branch [1].
> 
> Cheers, this looks really good to me. The only thing I'm slightly confused
> by is that we still have something like this in __vdso_init():
> 
> 	/* Allocate the vDSO pagelist, plus a page for the data. */
> 	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
> 				sizeof(struct page *),
> 				GFP_KERNEL);
> 
> But I don't see why this needs to be dynamic, and don't we leak the
> allocation on failure? Not a big deal, but seems silly if we could just
> have a couple of static page * arrays.

Unfortunately it has to be dynamic as the number of vdso code pages
isn't known until the vdso is linked into the kernel proper. The only
way to allocate that at build time would be as part of the linker
script, and I think that'd be far more confusing.

We calculate the number of pages from the bounds of the code:

|         vdso_info[abi].vdso_pages = (
|                         vdso_info[abi].vdso_code_end -
|                         vdso_info[abi].vdso_code_start) >>
|                         PAGE_SHIFT;
| 
|         /* Allocate the vDSO pagelist, plus a page for the data. */
|         vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages + 1,
|                                 sizeof(struct page *),
|                                 GFP_KERNEL);

... that said, conflating the data page list and code page list is
harming legibility, and I reckon that's worth cleaning up. The data page
list can be statically allocate given it's a single page.

There is a leak if we fail to allocate the compat vdso pages, but I
don't see a nice way of cleaning that up. It looks like
do_one_initcall() will WARN() in that case as we'll return a non-zero
error code.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
