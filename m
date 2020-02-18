Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6B6162DBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/tGG4q887wxAWnSVB7Xr5eU4jKgmO6nJOfeL/udrzM=; b=XsSr0w3QHQ6ZET
	oANf2bXDy3FfclYEv8mi7j+qWRu+V/FF5lfiSC2uSwqwqq7ck05AbQpZHxbVG6XOqWeRVdz8MxuP8
	jaGv1xQQSPONPxkmC5pZl26rg4e0D9KWfaKbseXjF2cVK4KvEGWAWDpwd4otOavnkLYalDHroKSfJ
	cOzfHXEmFMn8JzofI3exS5aKtOmKZUaoqH60XXmTaVNbwyVoK4Ye3h8RzfD60EfuNdKuI1OfGT80e
	l/rrmF229iM4sMkHe/BRnxUyWLw0+0WJ7AMrK5wsfIH5p/gsGIMuW3wuEqFYP6v5vOlIKavjvV+Ss
	LqiWItohgTbnpPvIGEhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47FT-0004O8-CP; Tue, 18 Feb 2020 18:05:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47FK-0004Nh-07
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:05:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B3C22070B;
 Tue, 18 Feb 2020 18:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582049119;
 bh=+78s0epyDizPUB72JjGEwpBoBwUemjhbbETlNbB0BFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yo8zCDNlaU14Ju7Lv/exhU3uMTFdXVSkLxy+ezDxyXBRpJH+Rc9NHBUxeCfLmnQPr
 m9avdUPmKg8vp8BtgM6rcZIiw5Ht5PEbSunJpB4YhsYRRY5VNa62ENMxTH0/EfQb8E
 ubWWRAtvF+lcjItwpLK2fqOXHR0YJfCxJ+c7H+8g=
Date: Tue, 18 Feb 2020 18:05:15 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
Message-ID: <20200218180514.GA2655@willie-the-truck>
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
 <20200218165451.GE1133@willie-the-truck>
 <CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD=DXcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKufJemUuh2SH_wBRe_g1HUA7mzOu696yLPj0KRCxD=DXcQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_100522_061599_C8F7424E 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, amit.kachhap@arm.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 10:02:24AM -0800, Sami Tolvanen wrote:
> On Tue, Feb 18, 2020 at 8:54 AM Will Deacon <will@kernel.org> wrote:
> > > -#define __LSE_PREAMBLE       ".arch armv8-a+lse\n"
> > > +#define __LSE_PREAMBLE       ".arch_extension lse\n"
> >
> > I'm ok with this, but Sami assumedly changed this for a reason in
> > e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
> > assembler").
> 
> Correct, I changed this because clang's integrated assembler wasn't
> happy with .arch_extension lse at the time. However, it looks like
> current versions of clang don't have this problem, so this change
> looks good to me.
> 
> Tested-by: Sami Tolvanen <samitolvanen@google.com>

Cheers, I'll queue this with your tag.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
