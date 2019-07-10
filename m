Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844BE6436B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0i9h+94SPtiY7+a+yWbfKnHZgnA8xRjqfp7p6fZ1mM=; b=NmUbp1X1Ehi64D
	T+1Lpb3StQFnsUVQFoS2RAD/VyAd9AVkQ42RWHi0nF+vzcPbZE0O1vCc7nSXQ1wVKQEvmbmPV24+x
	o76GKa8ZNY/ukHRH9FvMIPLp86z8o9pj0z4VrvzcyGmXvyDp9N9unPIm6xQOpKOvSbRtvDLDUGAhw
	lMnyyL02EBjzpyD8FY8iVcb/QTWHz8PzLxhUNkcAqA++7mlCJNo5y0+qTKnvdcWcuCW8GT9oFrlA3
	MKr20C2SZ+aaCfLS1zUkrzjpGT+DSE5fk0cxfwMLNk5qWrBobqqBmjTQD+7xTYJFbh308tqEcw/e1
	I1YJMpaHamsJZ4muC7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7lK-0005cr-QT; Wed, 10 Jul 2019 08:15:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7l6-0005bs-AF
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 08:15:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01B7620693;
 Wed, 10 Jul 2019 08:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562746522;
 bh=0hVSMMzYKhoDy/P2YBDNHPfBe2NC0mq8TrsMJzmaHwg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TmJZmlKlnaFfL5jmZfXyc1SwABp4fxxLEIH0I4NI0PTc9Jckm0hy/G292/9EH0ULM
 dyGiwnSKwxIjKWP40NPCTClD6HbFwyFD9KvJRovS6HODiUAZn0LmbCiq/Lu+ToImqD
 7du/8H2Z1tKHqbrjS7OhtuInc3rJLBFGwSQ66WGE=
Date: Wed, 10 Jul 2019 09:15:16 +0100
From: Will Deacon <will@kernel.org>
To: Laura Abbott <labbott@redhat.com>, yamada.masahiro@socionext.com
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
Message-ID: <20190710081515.ffghx4kouqpsh4m3@willie-the-truck>
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
 <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
 <20190617164553.GI30800@fuggles.cambridge.arm.com>
 <20190618120259.GA31041@fuggles.cambridge.arm.com>
 <CAK8P3a2NQSm3sPcJq=6=Espa5da_L+2RNtyS=jkkzD3tx-4ehA@mail.gmail.com>
 <95d721d1-2ccc-321c-f688-15e5bb53c30b@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95d721d1-2ccc-321c-f688-15e5bb53c30b@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_011524_387984_6AA23C26 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laura, [+Masahiro]

On Tue, Jul 09, 2019 at 03:06:49PM -0400, Laura Abbott wrote:
> On 6/18/19 10:15 AM, Arnd Bergmann wrote:
> > On Tue, Jun 18, 2019 at 2:03 PM Will Deacon <will.deacon@arm.com> wrote:
> > >  From 6e004b8824d4eb6a4e61cd794fbc3a761b50135b Mon Sep 17 00:00:00 2001
> > > From: Will Deacon <will.deacon@arm.com>
> > > Date: Tue, 18 Jun 2019 12:56:49 +0100
> > > Subject: [PATCH] genksyms: Teach parse about __uint128_t built-in type
> > > 
> > > __uint128_t crops up in a few files that export symbols to modules, so
> > > teach genksyms about it so that we don't end up skipping the CRC
> > > generation for some symbols due to the parser failing to spot them:
> > > 
> > >    | WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version
> > >    |          generation failed, symbol will not be versioned.
> > >    | ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against
> > >    |     `__crc_kernel_neon_begin' can not be used when making a shared
> > >    |     object
> > >    | ld: arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation:
> > >    |     unsupported relocation
> > > 
> > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > 
> > Looks good to me,
> > 
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > I've added this to my randconfig build setup, replacing my earlier
> > patch, and will let you know if any problems with it remain.
> > 
> 
> I just hit this on 5ad18b2e60b75c7297a998dea702451d33a052ed on Linus'
> branch. The fix works for me (feel free to add Tested-by). Is this
> already queued up for Linus?

I think there's a fix queued via the kbuild tree:

https://lkml.kernel.org/r/CAK7LNAQRMnovWQA0F8A6mEqDjPxXOGM-1AHoyh1gQa367f+FqQ@mail.gmail.com

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
