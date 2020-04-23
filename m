Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF77A1B5AED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6Es5jNFl0Kts7ybkZIQF1x8mv1A8RYPSVe3/0wQKI8=; b=l0SQba3F9RUE4l
	AwxkYwlvEdRIVOWoI2lBjDgo8Aimr7F2miUcm4xblh4GFLFwhhrW+i6Nbv7E+d8w11SQw+R6wy1ZU
	YgOk/t/9nyBDTd67uY+CO8TnWQXOBxgB7bPrKFK9b5OhFaGv2FZjWEiQATrixB0iHiSn2r90ETS3M
	+A6JnjP+lCt78wl+CT28UAkjbj/EMaw2n4Ohar4iMH55GM78Vg4qwSyVAb7+5Xc3Lca8PW4kfEzNv
	zGPGiVg+JAcJYpms2fgH3Sqx2EYEi7VkvP9GRR9QugnmJVf9RxfFf8Di0dHQ1b4lqYcNir0DvJYYb
	GLlccWP9Jhu4Egh6ZegA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRaVn-0007DP-0G; Thu, 23 Apr 2020 11:59:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRaVd-0007CO-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:59:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B77CD31B;
 Thu, 23 Apr 2020 04:59:12 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4D003F6CF;
 Thu, 23 Apr 2020 04:59:11 -0700 (PDT)
Date: Thu, 23 Apr 2020 12:59:05 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200423115905.GE4963@gaia>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk> <20200422180027.GH3585@gaia>
 <20200423111803.GG4808@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423111803.GG4808@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_045913_963606_1131C027 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Eric Biggers <ebiggers@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 12:18:03PM +0100, Mark Brown wrote:
> On Wed, Apr 22, 2020 at 07:00:28PM +0100, Catalin Marinas wrote:
> > On Wed, Mar 25, 2020 at 11:50:38AM +0000, Mark Brown wrote:
> > > Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
> > > you can only enable it by moving the base architecture to v8.5.  You'd
> > > need to use .arch and that feels likely to find us sharp edges to run
> > > into.
> 
> > For MTE, .arch armv8-a+memtag won't work since this is only available
> > with armv8.5-a. My preference would be to have the highest arch version
> > supported by the kernel in the assembler.h file, i.e. ".arch armv8.5-a"
> > followed by .arch_extension in each .S file, as needed.
> 
> I think we decided that .arch_extension was too new to be used for
> things like the crypto stuff where we still support older toolchains?

.arch_extension would be issued conditionally only for features like
CONFIG_ARM64_MTE which already have a dependency on a newer toolchain.

However, '.arch_extension memtag' is not sufficient for MTE, it needs a
prior '.arch armv8.5-a'.

> > Forcing .S files to armv8.5 would not cause any problems with
> > the base armv8.0 that the kernel image support since it shouldn't change
> > the opcodes gas generates. The .S files would use alternatives anyway
> > (or simply have code not called).
> 
> We do loose the checking that the assembler does that nobody used a
> newer feature by mistake but yeah, shouldn't affect the output.

We may need some push/pop_arch macros to contain the supported features.

The gas documentation says that .arch_extension may be used multiple
times to add or remove extensions. However, I couldn't find a way to
remove memtag after adding it (tried -memtag, !memtag, empty string). So
I may go with a '.arch armv8.0-a' as a base, followed by temporary
setting of '.arch armv8.5-a+memtag' (and hope we don't need combinations
of such extensions).

> > The inline asm is slightly more problematic, especially with the clang
> > builtin assembler which goes in a single pass. But we could do something
> > similar to what we did with the LSE atomics and raising the base of the
> > inline asm to armv8.5 (or 8.6 etc., whatever we need in the future).
> 
> FWIW I did something different to this for BTI so I wasn't using the
> instructions directly so I was going to abandon this series.

I can't work around this easily for MTE, there are more instructions
with register encoding. I'll see if the push/pop idea works or just
leave it to whoever does the next feature, figure out how it interacts
with MTE ;).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
