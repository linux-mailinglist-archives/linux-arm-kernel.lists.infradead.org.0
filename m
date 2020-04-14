Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB411A84DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osaqU0Oj9MYv/ndZhFuQQQx8lorV4HoNpEfUUlobzr4=; b=Ys5PmMsTs/X2Iu
	IPEIKVh1CiTgUqwOgPXikHy3WUMQAj6JWZkE+m7GKkxQYGgnyyN+j8bEFKOa9Wzal+jDwGZqTk/Tq
	ZRNzz3UdpAh1rF3+DqHx/XFHr9wsQDe1yI+6M2BBWZlqU+uH1LEmoDi2tzNizeLKLRt2YnMvSLSRl
	cHQFSM0jzPQaTZ68HAMjveL9LOsd1CwZ2rHnvgrRQMgItUp5c5f2pcXROeg2duEpv8X0nQaneZNz9
	ezYTIIdLVH40b7Cw3yxVbDtCCTTyZF/loAxROq5InZJqbsy9uRy1/da2CAj5mtZBe2XV+8kxAzAKB
	jCGtqbXYY06ZuGVojiTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOQ1-0000ia-Fh; Tue, 14 Apr 2020 16:28:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOPc-0000UR-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:27:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D361530E;
 Tue, 14 Apr 2020 09:27:47 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6A213F6C4;
 Tue, 14 Apr 2020 09:27:46 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:27:44 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/5] arm64: vdso: cleanups
Message-ID: <20200414162744.GM2486@C02TD0UTHF1T.local>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200414152057.GB30288@willie-the-truck>
 <20200414154319.GK2486@C02TD0UTHF1T.local>
 <20200414155247.GA30881@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414155247.GA30881@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_092748_688786_9B4E5BDC 
X-CRM114-Status: GOOD (  23.05  )
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

On Tue, Apr 14, 2020 at 04:52:48PM +0100, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 04:43:19PM +0100, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 04:20:58PM +0100, Will Deacon wrote:
> > > On Tue, Apr 14, 2020 at 11:42:47AM +0100, Mark Rutland wrote:
> > > > While attempting to review an arm64 vdso patch, I noticed some of the existing
> > > > code was somewhat baroque, making it harder than necessary to understand and
> > > > extend. These patches attempt to improve this by making the code more
> > > > consistent and avoiding unnecessary duplication.
> > > > 
> > > > The first patch in the series fixes a bug in a boot time error path. This bug
> > > > was made obvious during the refactoring but I've moved it to the start so that
> > > > it can be backported more easily.
> > > > 
> > > > The series is based on v5.7-rc1 and can be found in my arm64/vdso-cleanup
> > > > branch [1].
> > > 
> > > Cheers, this looks really good to me. The only thing I'm slightly confused
> > > by is that we still have something like this in __vdso_init():
> > > 
> > > 	/* Allocate the vDSO pagelist, plus a page for the data. */
> > > 	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
> > > 				sizeof(struct page *),
> > > 				GFP_KERNEL);
> > > 
> > > But I don't see why this needs to be dynamic, and don't we leak the
> > > allocation on failure? Not a big deal, but seems silly if we could just
> > > have a couple of static page * arrays.
> > 
> > Unfortunately it has to be dynamic as the number of vdso code pages
> > isn't known until the vdso is linked into the kernel proper. The only
> > way to allocate that at build time would be as part of the linker
> > script, and I think that'd be far more confusing.
> 
> I was wondering whether we could extend gen_vdso_offsets.sh to emit this
> information. Why isn't looking at the shared object enough? That said,
> it does get grotty so maybe it's not worth doing.

I hadn't considered that, but having taken a look just now I think that
gets quite grotty and more subtle than what we have today, and I think
that using the vdso_start/vdso_end symbols as we do now leaves the least
scope for issues.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
