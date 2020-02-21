Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AB1167E25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+26c0xn0yJB+Vz6rU8+g12Bqz6ms0Ph8NXZ5gq/G/5I=; b=tkfsVGWarv5t8/
	DXO6rsk5oG/tWV5CuLajEBak+6If98H5Wzo26/KnjB6VBgrLV1rUJt2wBIx/LFGNBiGvfD/PSfzFv
	dunk5cMAnLbDMwX0w2WML1PneLYiUMi+imtvRJHF3BeknSGXTxRT2s+lRCHm/aCtIiPk+/KSfiT7e
	tJFxGGF+HTRMaYh1/DX1Pi4667sjutsUd0slcDtLiJ9BobX6bmkjpfjHxrdBxRYuJDevCHvVejzgP
	CepBVtiN7carZFTCywU03AsyvKunRXx/O/lec02RzvVNXRKcDv/JGhjqQEjjCF5E6ekvnFz5xhKB8
	uOBp6zlwdsr39RK+5IkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j587i-0002Ic-Ts; Fri, 21 Feb 2020 13:13:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j587a-0002I6-6m
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:13:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEB072073A;
 Fri, 21 Feb 2020 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582290813;
 bh=p18h0RDqSU6qOTnFj4Oou+CzjsOmxDYN0xBSDCxnk1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rZ6R6LUl6Qpm2kc/4MO9SuodxF8HEB0Nxy8xWEzC146gAqyTZ5NfXhOkcgXYJ95Mm
 CDjGggZKJx0I2OTo5hiX8lHE976Jib7xfD3xDCp7Th0Mqf7mOmDTG6zlkrhv/pQ9IN
 UqYzCSmI1utPF5AOtKI9F+5JSI4SjLNxog8X2fh8=
Date: Fri, 21 Feb 2020 13:13:28 +0000
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/3] arm64: Ask the compiler to __always_inline functions
 used by KVM at HYP
Message-ID: <20200221131328.GA13460@willie-the-truck>
References: <20200220165839.256881-1-james.morse@arm.com>
 <20200220165839.256881-4-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220165839.256881-4-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_051334_268112_230E50CF 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 04:58:39PM +0000, James Morse wrote:
> KVM uses some of the static-inline helpers like icache_is_vipt() from
> its HYP code. This assumes the function is inlined so that the code is
> mapped to EL2. The compiler may decide not to inline these, and the
> out-of-line version may not be in the __hyp_text section.
> 
> Add the additional __always_ hint to these static-inlines that are used
> by KVM.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/include/asm/cache.h      | 2 +-
>  arch/arm64/include/asm/cacheflush.h | 2 +-
>  arch/arm64/include/asm/cpufeature.h | 8 ++++----
>  arch/arm64/include/asm/io.h         | 4 ++--
>  4 files changed, 8 insertions(+), 8 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

It's the right thing to do, but if this stuff keeps trickling in then
we should make CONFIG_OPTIMIZE_INLINING depend on !ARM64 because seeing
"__always_inline" tells you nothing about /why/ it needs to be there and
it's hard to know if/when you can remove those annotations in future.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
