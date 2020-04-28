Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4111B1BBE48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cG2aSRoCLtCTDcgjhZxllY7UO6F0lKSk69OArVV3KLM=; b=VVWaCDk0oEwrDu
	Sxue5rGpzPTOtI2oE9/Aa9qxcEsYr35L+8EjsjD9Eyi+/DvBphD55iDMRYcxMdH7K0HXAa6U0marj
	FqfDTPdbWT06qBQyqtOeUAS/WpOxbWOvNSWgccrl7ed03wc13I7uiQS4lqcgEo5mXdPBY+iOTNS/6
	Xijvs5Bdpw6inMA/MQJ4AlGcC4FZBtB7WyN/bBkbu6tIA0a2/z3QmOCObLE6jexeZDvoTixPe42ef
	5ZYatTbnSFZvO8KXRAQFqGSJ9y32LSZWiIuZ+f56nlSdv+keYYHIumvMjo3bKYQK5C7PJuHQvi318
	2486qER+GUTQJqIz24BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPjD-0005VS-Th; Tue, 28 Apr 2020 12:52:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPig-0005I2-6x
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:52:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CEFD131B;
 Tue, 28 Apr 2020 05:52:12 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.132])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A75973F68F;
 Tue, 28 Apr 2020 05:52:11 -0700 (PDT)
Date: Tue, 28 Apr 2020 13:52:02 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/5] arm64: vdso: cleanups
Message-ID: <20200428125135.GA16512@C02TD0UTHF1T.local>
References: <20200414104252.16061-1-mark.rutland@arm.com>
 <20200428124945.GC6791@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428124945.GC6791@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_055214_413378_A1E87B28 
X-CRM114-Status: GOOD (  15.79  )
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

On Tue, Apr 28, 2020 at 01:49:46PM +0100, Will Deacon wrote:
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
> > 
> > Thanks,
> > Mark.
> > 
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/vdso-cleanup
> > 
> > Mark Rutland (5):
> >   arm64: vdso: don't free unallocated pages
> >   arm64: vdso: remove aarch32_vdso_pages[]
> >   arm64: vdso: simplify arch_vdso_type ifdeffery
> >   arm64: vdso: use consistent 'abi' nomenclature
> >   arm64: vdso: use consistent 'map' nomenclature
> 
> I tried to queue 2-5 but the compat vDSO fails to build for me:
> 
> 
> arch/arm64/kernel/vdso.c:246:12: error: use of undeclared identifier 'VDSO_ABI_AARCH32'; did you mean 'VDSO_ABI_AA32'?
>         vdso_info[VDSO_ABI_AARCH32].dm = &aarch32_vdso_maps[AA32_MAP_VVAR];
>                   ^~~~~~~~~~~~~~~~
>                   VDSO_ABI_AA32
> arch/arm64/kernel/vdso.c:39:2: note: 'VDSO_ABI_AA32' declared here
>         VDSO_ABI_AA32,
>         ^
> arch/arm64/kernel/vdso.c:247:12: error: use of undeclared identifier 'VDSO_ABI_AARCH32'; did you mean 'VDSO_ABI_AA32'?
>         vdso_info[VDSO_ABI_AARCH32].cm = &aarch32_vdso_maps[AA32_MAP_VDSO];
>                   ^~~~~~~~~~~~~~~~
>                   VDSO_ABI_AA32
> arch/arm64/kernel/vdso.c:39:2: note: 'VDSO_ABI_AA32' declared here
>         VDSO_ABI_AA32,
>         ^
> 2 errors generated.

Sorry for that; I clearly messed up patch 5 when rebasing to rename
things.

I'll send out a v2 once I've fixed and build-tested.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
