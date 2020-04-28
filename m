Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBB51BBC0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zs275Rb/UELjVlqmEWwutKpB5yHKxy26DAo/hFzuKzM=; b=VvHY9y6GtcVGXi
	fyqO+vuctoafck8L9POzwvDr6oXM1j3d75hJ/aB83J/rkIDs3H4EAul70RBbzGJ+p7xP7KQHFBENj
	3rRHEiEjBkZqfnTYTb/dxVtnFdIr5fqAQmUMLMSO/NA0Bk/xEErLypxb+D/q66BVeyNJCKL3Er/I3
	Yb5q4GnaxrvYUULqDIjFGGOssva/l0lmZJhUscxRSeGjH/pQSlr+QLJ7LvrpMmLXwWEcekWj9Ydt4
	hl4Y5TzPU6yyp7rTDP6+pghdHtZiM/tF8J6YnVlQiODSLUCUmXRaP0hK2K/cKxoeIc1pTkoN0kT4J
	HvzNJaJHXX594RyNrJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTO9P-0006Sv-SX; Tue, 28 Apr 2020 11:11:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTO9E-0006Ru-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:11:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28D7030E;
 Tue, 28 Apr 2020 04:11:30 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.132])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEA0E3F73D;
 Tue, 28 Apr 2020 04:11:28 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:11:23 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: arm64 vdso might miss .eh_frame
Message-ID: <20200428111123.GA15519@C02TD0UTHF1T.local>
References: <20200415092336.GK987@arm.com>
 <20200428073435.GC4049@willie-the-truck>
 <152f54d5-2fa9-bc08-d931-ed2f3675da6b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <152f54d5-2fa9-bc08-d931-ed2f3675da6b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041133_036589_A0586B6D 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Tamas Zsoldos <tamas.zsoldos@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 11:54:25AM +0100, Vincenzo Frascino wrote:
> Hi Will,
> 
> On 4/28/20 8:34 AM, Will Deacon wrote:
> > On Wed, Apr 15, 2020 at 10:23:36AM +0100, Szabolcs Nagy wrote:
> >> On aarch64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
> >> by default since gcc-8, so now the de facto platform ABI is to allow
> >> unwinding from async signal handlers.
> >>
> >> However on bare metal targets (aarch64-none-elf), and on old gcc,
> >> async and sync unwind tables are not enabled by default to avoid
> >> runtime memory costs.
> >>
> >> This means if linux is built with a baremetal toolchain the vdso.so
> >> may not have unwind tables which breaks our (undocumented) platform
> >> ABI guarantee in userspace. So adding -fasynchronous-unwind-tables
> >> explicitly to the vgettimeofday.o cflags would be nice (the other
> >> objects in the vdso seem to be asm).
> >>
> >> There was also a report that android clang built linux vdso.so lacks
> >> .eh_frame completely, that may be a missing --eh-frame-hdr or different
> >> platform ABI on android, Tamas on cc may be able to verify this.
> > 
> > Vincenzo? Looks like this is a regression caused by the move to C -- please
> > can you take a look?
> 
> I have already, locally, a patch that addresses the problem presented in this
> email, based on Szabolcs comment. I did not post it yet because I was waiting
> for Tamas' comment and address everything in one go.

Can I suggest that you post the patch as-is here, even if it's not
complete, so that we can all review/test in parallel?

If you do that and explicitly ask Tamas for specific feedback in that
posting, it'll be obvious to everyone what's expected and where things
stand.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
