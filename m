Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A801D28DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkNzne8pcCX9D52Q2l53yU4L/nuTKkSPu38VVlm43Ps=; b=ZA372vB46ZVatc
	lQL0+v3C6+RvXBjd13VpVITNekTjRSECfJOHGnae1K43ZnON9pu65ZvnuNViBffys88sAgikdxWhV
	6LYXfR5aEcjHZxWzKD6WyBEX4kT5otPk7327s4Jpt0LCN9N6a7d1sx+roqJHppIP7RGZehFIvITzw
	kgsyFXV7Q9IpzRnNBjGHLQ+QD5Inp7SdVx7UJI4aQJjT+Pk4hIdrdtFk3+TqzIQCjsNGOeuCY1AoZ
	y86Bi7l46E7il4ptnmUyeOJXg7LBJzON2afNFXropkF0iyc5UUdWHdJylsEA7ASmLXhATJ+KKqcBE
	y8tKcOtLisfKJ7SWa5tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8Pu-0001jB-9g; Thu, 14 May 2020 07:36:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8Pj-0001iP-4L
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:36:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1927206BE;
 Thu, 14 May 2020 07:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589441778;
 bh=IXHEXF16rU/BSTFK9nrncTfh3TEkux3JqpB15nAsJQA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XxirtXwsu8vpXp4zzU02/RsjtslmALTiUWbZRwJFPlsgFZ5FBknRCs1fNJcfyi308
 C73AzidmlE2O+eXroCd+aQR4+7pOtgXzMr43MU3W0Yf19IahA6CHTkljDJfsgtJYap
 H7X4dOo6J5M+loGaqtYZ33z4HpquU/5E/OElF1PA=
Date: Thu, 14 May 2020 08:36:13 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpuinfo: Move HWCAP name arrays alongside their
 bit definitions
Message-ID: <20200514073613.GB4280@willie-the-truck>
References: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
 <20200513150405.GS21779@arm.com>
 <0999fa28-3ee7-3f02-4def-a0c6013ec6dd@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0999fa28-3ee7-3f02-4def-a0c6013ec6dd@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_003619_210957_7C6CCE1B 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 07:14:58AM +0530, Anshuman Khandual wrote:
> On 05/13/2020 08:34 PM, Dave Martin wrote:
> > On Thu, May 07, 2020 at 06:59:10PM +0530, Anshuman Khandual wrote:
> >> diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
> >> index 0f00265248b5..589ac02e1ddd 100644
> >> --- a/arch/arm64/include/asm/hwcap.h
> >> +++ b/arch/arm64/include/asm/hwcap.h
> >> @@ -8,18 +8,27 @@
> >>  #include <uapi/asm/hwcap.h>
> >>  #include <asm/cpufeature.h>
> >>  
> >> +#define COMPAT_HWCAP_SWP	(1 << 0)
> >>  #define COMPAT_HWCAP_HALF	(1 << 1)
> >>  #define COMPAT_HWCAP_THUMB	(1 << 2)
> >> +#define COMPAT_HWCAP_26BIT	(1 << 3)
> >>  #define COMPAT_HWCAP_FAST_MULT	(1 << 4)
> >> +#define COMPAT_HWCAP_FPA	(1 << 5)
> >>  #define COMPAT_HWCAP_VFP	(1 << 6)
> >>  #define COMPAT_HWCAP_EDSP	(1 << 7)
> >> +#define COMPAT_HWCAP_JAVA	(1 << 8)
> >> +#define COMPAT_HWCAP_IWMMXT	(1 << 9)
> >> +#define COMPAT_HWCAP_CRUNCH	(1 << 10)
> >> +#define COMPAT_HWCAP_THUMBEE	(1 << 11)
> >>  #define COMPAT_HWCAP_NEON	(1 << 12)
> >>  #define COMPAT_HWCAP_VFPv3	(1 << 13)
> >> +#define COMPAT_HWCAP_VFPV3D16	(1 << 14)
> >>  #define COMPAT_HWCAP_TLS	(1 << 15)
> >>  #define COMPAT_HWCAP_VFPv4	(1 << 16)
> >>  #define COMPAT_HWCAP_IDIVA	(1 << 17)
> >>  #define COMPAT_HWCAP_IDIVT	(1 << 18)
> >>  #define COMPAT_HWCAP_IDIV	(COMPAT_HWCAP_IDIVA|COMPAT_HWCAP_IDIVT)
> >> +#define COMPAT_HWCAP_VFPD32	(1 << 19)
> >>  #define COMPAT_HWCAP_LPAE	(1 << 20)
> >>  #define COMPAT_HWCAP_EVTSTRM	(1 << 21)
> > 
> > With the possible exception of SWP (does the swp emulation allow us to
> > report this as supported?), I think all these weren't mentioned because
> > they aren't included in ARMv8 and so can never be reported.
> > 
> > If we find ourselves reporting them, there's a bug somewhere.
> > 
> > So, can we just default all obsolete string entries to NULL?
> > 
> > When generating the cpuinfo strings we could WARN and just emit an empty
> > string for that hwcap.
> 
> All these above will be a change in the existing user visible behavior on
> the system and this patch never intended to create one.

Why is it a change? We've never reported e.g. "java" on an arm64 kernel, so
I agree with Dave that we shouldn't be adding this string. If it /ever/ ends
up in userspace it's because something has gone horribly wrong. NULL would
be much better. Couldn't you achieve that by simply omitting these entries?
e.g. deleting things like:

	[COMPAT_KERNEL_HWCAP(JAVA)]     = "java",

completely (including the COMPAT_HWCAP_JAVA definition)?

> Hence, I will just defer this to maintainers on whether we should change
> existing /proc/cpuinfo output (including non-practically-possible ones on
> ARMv8) or even treat swap emulation as SWP.

SWP is fine because we emulate it and so userspace can use it. Removing that
*would* be a change in behaviour. I don't think the compat ABI is broken
here, so please don't change it without good reason.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
