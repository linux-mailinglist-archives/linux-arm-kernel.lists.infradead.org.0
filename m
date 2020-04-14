Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E101A7923
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/yRX33ptO9PqZl5RV6qICRX3B/Mue8+b01yj9VSd9M=; b=sQ0oJIkTpLoUEl
	FC0d+oa4EkwV4MocVzfGIP7MeaPYMlWhNDuqgUv+dFiC0n+b3fldBkffqaIPpD/6AfZYeDLZ8v7uA
	GrCtetQFYan9dl4Hs8sNqdrLgF7DeRCsR6gnfO2L00hioLLWY/lNDtgHDxodFvPIxoCIAVWYdJ4wf
	UUJLTYXxm0OcYglupEX4AxYuGIgL6Y8wevKoEWSTzz3uLCXA73MVYlqlq5mXBQKQSuaAqHq7zykXl
	s0SyoSi3g99Jh7JWCJKAQjTRZhrYFHgKw8X4+2bEFBpgLR15H1NarfNCVogBfgiyRjk/t5WAC8uz9
	EUrBEM/7D4mmNgsvIz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJRg-00026g-Sk; Tue, 14 Apr 2020 11:09:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJRY-00026J-8n
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:09:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBB741FB;
 Tue, 14 Apr 2020 04:09:26 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF5113F6C4;
 Tue, 14 Apr 2020 04:09:24 -0700 (PDT)
Date: Tue, 14 Apr 2020 12:09:22 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414110922.GC2486@C02TD0UTHF1T.local>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
 <20200414110056.GB26395@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414110056.GB26395@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_040928_352701_380A5734 
X-CRM114-Status: GOOD (  17.25  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 12:00:56PM +0100, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 11:16:49AM +0100, Mark Rutland wrote:
> > On Tue, Apr 14, 2020 at 11:00:33AM +0100, Will Deacon wrote:
> > > On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
> > > > Compilers are optimized to not store the stack frame record for the leaf
> > > > function in the stack so applying pointer authentication in the leaf
> > > > function is not useful from security point of view.
> > > 
> > > I'm missing the reasoning here -- why don't we care about leaf functions?
> > > 
> > > Sounds like there's a performance/security trade-off that needs spelling
> > > out and justifying with some numbers, or is it clear-cut and I'm missing
> > > something?
> > 
> > I believe this is because leaf functions don't store the LR to the stack
> > (as they don't create a frame record), so it cannot be modified by a
> > stray memory write.
> 
> That makes some sense, but doesn't it also mean you can jump into the middle
> of a leaf function and it will happily return to whatever sits in LR?

If you can do that, you've already subverted control flow, and can
probably do the same for a regular function, since for:

| AUTIASP
| RET

... you can just jump to the RET instead.

I agree that with RETAA/RETAB this would be different.

> Perhaps it would make sense to relax to the 'non-leaf' version only if
> stack protector is enabled?

I'm not sure I follow the rationale for that? What does stack protector
help with for leaf functions?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
