Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5E91C5D0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifjf8HIzCchu3GPrKx8CwXbwVdX0TQDQmo7P88pc9Oc=; b=QgRbJKwkVNnSuM
	53PabxT31rnQh3I94a8wrFKbbvGX9L1kToJS1WGesT5CLlb9uejEXpF17hUwBxi1Ql/8f7sjlfBja
	+uOqBPU7BZEkhHmwfG3rtG3mKvmKnJ8sfcURgj3yAFYc6P0Mvl71EmgK02yFSRuVDZz0kVfckAiXN
	el8YFowjsk1bBuKHlnaIC+xuZfyvl8JpV8H//HuCONWewpxqkzXai7s4OyRP9x3WeeDIpjFOazPGQ
	zjgzbEi6PlcFsWR89zlDPRKmUKtCiTaN3dE9qk2SPLZUzMhw9U4kczl9yQAfx4gNWHX4aTGm5u6WG
	zdJeLI3JQNGHzC7x6ytQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW083-0007sx-7F; Tue, 05 May 2020 16:09:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW07u-0007sH-EE
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:08:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDAC6206B9;
 Tue,  5 May 2020 16:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588694937;
 bh=F59id0G0m99O8tp4MEKXifyCEQUtPEYauH+UoGyh24A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u03NNzA/DY25HLT4fsFpXTK6V2AwWdwqmx/7hwuzbaIj6r4iDmUecWuF+E6RW7vm4
 /G8UFKhkLZrLJXKmAGUmIv8o1ppyIEQsdJWM7/uTJn/gM50F29U6sLSa8yN7nAL7u1
 HpPKARvtomuj6n5nGJtCizfqKRR4cAwE+gL8rQ/w=
Date: Tue, 5 May 2020 17:08:53 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200505160852.GF24239@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505151806.GG5377@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_090858_500305_6564B886 
X-CRM114-Status: GOOD (  15.84  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:18:06PM +0100, Mark Brown wrote:
> On Tue, May 05, 2020 at 03:56:42PM +0100, Will Deacon wrote:
> > On Wed, Apr 29, 2020 at 10:16:33PM +0100, Mark Brown wrote:
> 
> > > +#define SYM_INNER_LABEL(name, linkage)			\
> > > +	.type name SYM_T_NONE ASM_NL			\
> > > +	SYM_ENTRY(name, linkage, SYM_A_NONE)		\
> > > +	BTI_J
> 
> > This break building the compat vDSO:
> 
> Right, fixed locally.

Thanks!

> > I also see a scary linker warning about the native VDSO:
> 
> > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.
> 
> I can't reproduce this, I am using clang-10 as well...  can you share
> your exact command line and config?  I'm using
> 
>     make -j56 ARCH=arm64 CROSS_COMPILE=aarch64-none-linux-gnu- CC=clang-10
> 
> which is the same clang version as you, not that I'd expect that to make
> a difference.  This looks like the C code isn't being built with BTI
> enabled but I can't see how you're managing to do that and I'm not -
> this is the warning that "arm64: vdso: Force the VDSO to be linked as
> BTI when built for BTI" is intended to trigger if something goes wrong
> so I guess it's a good job I enabled that :/

Just been debugging this, and it seems that not all clangs are created
equal. Updating mine from 10.0.2 to 11.0.1 means I now get the
'.note.gnu.property' sections emitted for C files compiled using
'-mbranch-protection=pac-ret+leaf+bti', whereas I didn't before.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
