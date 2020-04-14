Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4BC1A83D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a56Ozv5go+V1x5BJsScC9owz0ZMiXkoeddn9zopDteE=; b=fk1UHw6fM/DR9+
	XYy/CV3/izzbhSYDwZQsSwFVqzJPvPOSv05cTMxFsp6wdbYz45bvXap78MWDOt027Ssgmq4XA1ahd
	aTEN1FeKsXNCRn70+Oz91xiD0/fDiYFPsgyHkLrhpIyMWotbskydvamyh6VTgD5C7R2W9dHEf8Smw
	xOZv6yWYqzJaunSH0Pv4WhTl39Rzmo20I5ufjCX9Tk9IC3u9Vc+vyOet+PNOTB/aghh2TBWkYuc5y
	zn0fCRYKFxQl4fHtcGVCedeM8fyYdSMXsA5eetZ4L7RJrejiQzWrPMS+VsSftXMNMbQFDakrmyzpz
	gxcT6qjv8cqzZo1wULRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONs2-0008MI-Se; Tue, 14 Apr 2020 15:53:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONro-0008Kn-QS
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:52:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62617206D5;
 Tue, 14 Apr 2020 15:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586879572;
 bh=yqHZKVNbrXn5jUPqb41o3ei1Y87OyLHsxtZX44dqZDw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WGN/cKlJyxhjFxonUGo6cKlXgkZMtCxquPhD6KKrT0ZQVunqlRVQfOsELDL+e0DFg
 +24DuvnhsUlnssmny3PL3FcZ9H4oTi0oMSteWwZ0IJ/I/nYqsQpTEC/qBwf4uE8dGj
 azpKdkTUjQTqf+qHJJw3wSicei2yESQ9ZloQa2Rg=
Date: Tue, 14 Apr 2020 16:52:48 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/5] arm64: vdso: cleanups
Message-ID: <20200414155247.GA30881@willie-the-truck>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414152057.GB30288@willie-the-truck>
 <20200414154319.GK2486@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414154319.GK2486@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_085252_898223_0B778FE5 
X-CRM114-Status: GOOD (  25.76  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:43:19PM +0100, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 04:20:58PM +0100, Will Deacon wrote:
> > On Tue, Apr 14, 2020 at 11:42:47AM +0100, Mark Rutland wrote:
> > > While attempting to review an arm64 vdso patch, I noticed some of the existing
> > > code was somewhat baroque, making it harder than necessary to understand and
> > > extend. These patches attempt to improve this by making the code more
> > > consistent and avoiding unnecessary duplication.
> > > 
> > > The first patch in the series fixes a bug in a boot time error path. This bug
> > > was made obvious during the refactoring but I've moved it to the start so that
> > > it can be backported more easily.
> > > 
> > > The series is based on v5.7-rc1 and can be found in my arm64/vdso-cleanup
> > > branch [1].
> > 
> > Cheers, this looks really good to me. The only thing I'm slightly confused
> > by is that we still have something like this in __vdso_init():
> > 
> > 	/* Allocate the vDSO pagelist, plus a page for the data. */
> > 	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
> > 				sizeof(struct page *),
> > 				GFP_KERNEL);
> > 
> > But I don't see why this needs to be dynamic, and don't we leak the
> > allocation on failure? Not a big deal, but seems silly if we could just
> > have a couple of static page * arrays.
> 
> Unfortunately it has to be dynamic as the number of vdso code pages
> isn't known until the vdso is linked into the kernel proper. The only
> way to allocate that at build time would be as part of the linker
> script, and I think that'd be far more confusing.

I was wondering whether we could extend gen_vdso_offsets.sh to emit this
information. Why isn't looking at the shared object enough? That said,
it does get grotty so maybe it's not worth doing.

> We calculate the number of pages from the bounds of the code:
> 
> |         vdso_info[abi].vdso_pages = (
> |                         vdso_info[abi].vdso_code_end -
> |                         vdso_info[abi].vdso_code_start) >>
> |                         PAGE_SHIFT;
> | 
> |         /* Allocate the vDSO pagelist, plus a page for the data. */
> |         vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages + 1,
> |                                 sizeof(struct page *),
> |                                 GFP_KERNEL);
> 
> ... that said, conflating the data page list and code page list is
> harming legibility, and I reckon that's worth cleaning up. The data page
> list can be statically allocate given it's a single page.
> 
> There is a leak if we fail to allocate the compat vdso pages, but I
> don't see a nice way of cleaning that up. It looks like
> do_one_initcall() will WARN() in that case as we'll return a non-zero
> error code.

Yeah, I'm not really worried about that since I think we only fail if a
subsequent allocation fails, it's just that the dynamic allocation seemed
a bit OTT on first glance.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
