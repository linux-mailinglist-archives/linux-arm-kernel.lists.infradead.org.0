Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7770E10D2EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 10:05:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aBIOVBkII2GR8CEdiL2GE6b8k0H5tDO+N6i/lrOhdjo=; b=UbV6u1uptBbNb/Rkj4N3UjIeO
	ymXPEv00o9BG3Ot+KHm9it9r3tjOOBxiUAadPBhtraWxDjTkSCqF0m+ZaNS1j5ZiTbrtZIAaz7965
	gya6eQVp1AHGG4s4n1zwmwV88xtwxr0ee3I1xjfnt40E3zDUH5ElT6MelJA5MnOfH1kN+J9taViEp
	nCjJ1jd10sq/WXtyJwazlntHD2uqhFl7kH8LOkyT3UUgQubOnf2gTxe3zJSVPR1ZMuDWiOaKeaHod
	C8m3oiBI6yx+4QonZoS2RyFh04yZO81fRCuByE3Y1YfFa+GzsxqJB4VlJhv2NlPp2VD1c4m/1XvXS
	xtL/mpuig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacD4-00013k-3L; Fri, 29 Nov 2019 09:05:06 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacCo-000133-82
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 09:04:52 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iacCf-0004yC-5L; Fri, 29 Nov 2019 10:04:41 +0100
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64: Fix compile error with KVM and
 =?UTF-8?Q?!HARDEN=5FBRANCH=5FPREDICTOR?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 29 Nov 2019 09:04:40 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CAKv+Gu-CuNpu4jv7S6v2G9Z5dHCVOMX3nVX5VFYhoY4SfCK+cg@mail.gmail.com>
References: <20191127181040.20012-1-minyard@acm.org>
 <CAKv+Gu-Xbpky-VN4WgSKJ5k_98shRdr_7aEcXJBV9uZqJrV7Jw@mail.gmail.com>
 <86pnhbywpo.wl-maz@kernel.org>
 <CAKv+Gu-CuNpu4jv7S6v2G9Z5dHCVOMX3nVX5VFYhoY4SfCK+cg@mail.gmail.com>
Message-ID: <ab0d3eff89247f18d6edcb28b577d186@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: ard.biesheuvel@linaro.org, minyard@acm.org,
 linux-arm-kernel@lists.infradead.org, cminyard@mvista.com,
 andre.przywara@arm.com, catalin.marinas@arm.com, stefan.wahren@i2se.com,
 will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_010450_435814_2FF7C4BB 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Corey Minyard <cminyard@mvista.com>,
 minyard@acm.org, Catalin Marinas <catalin.marinas@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-29 07:25, Ard Biesheuvel wrote:
> On Fri, 29 Nov 2019 at 08:21, Marc Zyngier <maz@kernel.org> wrote:
>>
>> On Thu, 28 Nov 2019 17:20:20 +0000,
>>
>> [fixing Will's email address]
>>
>> Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>> >
>> > (+ Marc)
>> >
>> >
>> >
>> > On Wed, 27 Nov 2019 at 19:10, <minyard@acm.org> wrote:
>> > >
>> > > From: Corey Minyard <cminyard@mvista.com>
>> > >
>> > > When compiling with KVM enabled and without 
>> HARDEN_BRANCH_PREDICTOR,
>> > > the following compile error happens:
>> > >
>> > > arch/arm64/kernel/cpu_errata.c:92:23:
>> > > error: '__bp_harden_hyp_vecs_start' undeclared (first use in 
>> this function);
>> > > did you mean 'hyp_vecs_start'?
>> > >   void *dst = lm_alias(__bp_harden_hyp_vecs_start + slot * 
>> SZ_2K);
>> > >
>> > > Some ifdefs were removed by 3e91f3eacc91d9 "arm64: Always enable
>> > > spectre-v2 vulnerability detection" for 
>> CONFIG_HARDEN_BRANCH_PREDICTOR,
>> > > but __bp_harden_hyp_vecs_start is only defined if that config is
>> > > enabled.
>> > >
>> > > Add CONFIG_HARDEN_BRANCH_PREDICTOR to the #if that has 
>> CONFIG_KVM,
>> > > It looks like you need both of those for that code to be valid.
>> > >
>> > > Fixes: 3e91f3eacc91d9 "arm64: Always enable spectre-v2 
>> vulnerability detection"
>> > > Cc: Andre Przywara <andre.przywara@arm.com>
>> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
>> > > Cc: Stefan Wahren <stefan.wahren@i2se.com>
>> > > Cc: Will Deacon <will.deacon@arm.com>
>> > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> > > Signed-off-by: Corey Minyard <cminyard@mvista.com>
>> > > ---
>> > > This is for 4.14, I'm not sure if it is needed for other 
>> kernels.
>> > >
>> > > It is not needed in master because a new config item was added,
>> > > CONFIG_KVM_INDIRECT_VECTORS, that depends on KVM and
>> > > HARDEN_BRANCH_PREDICTOR being configured.  I looked at pulling 
>> the
>> > > patches that add the required changes, and they make a lot of
>> > > changes.  This change is the simple fix, but I'm not sure if we 
>> want to
>> > > pull all those other changes into 4.14 and whatever other 
>> kernels
>> > > are required.
>> > >
>> >
>> > I agree that backporting this cleanly is going to be problematic,
>> > since it pulls in the entire EL2 VA randomization feature with all 
>> its
>> > prerequisites.
>> >
>> > Backporting the following set could be done fairly cleanly, and 
>> fixes
>> > the problem at build time, but unfortunately, it causes a boot 
>> time
>> > crash (see below)
>> >
>> > 97eca4d2bfec (HEAD -> linux-4.14.y) arm64: Move the content of 
>> bpi.S
>> > to hyp-entry.S
>> > 514dd33114c6 arm64: Make BP hardening slot counter available
>> > d7ddf3ae9470 arm64; insn: Add encoder for the EXTR instruction
>> > c0b2c4e56e10 arm64: KVM: Introduce EL2 VA randomisation
>> > 56ab0a87c737 arm64: KVM: Dynamically compute the HYP VA mask
>> > d92c02628dfb arm64: KVM: Allow far branches from vector slots to 
>> the
>> > main vectors
>> > 7adec01c9674 arm64: cpufeatures: Drop the ARM64_HYP_OFFSET_LOW 
>> feature flag
>> > 1095e4fc3134 arm64: KVM: Move stashing of x0/x1 into the vector 
>> code itself
>> > bb2e1aceb423 arm64: KVM: Dynamically patch the kernel/hyp VA mask
>> > 6f0ccfc451be arm64: KVM: Reserve 4 additional instructions in the 
>> BPI template
>> > bf425ffee07a arm64: insn: Add encoder for bitwise operations using 
>> literals
>> > 41dda94d1a9f arm64: insn: Add N immediate encoding
>> > 3225668ebe00 arm64: KVM: Move BP hardening vectors into .hyp.text 
>> section
>> >
>> > Marc?
>>
>> You need at least these:
>>
>> 1bb32a44aea1 KVM: arm/arm64: Keep GICv2 HYP VAs in 
>> kvm_vgic_global_state
>> 44a497abd621 KVM: arm/arm64: Do not use kern_hyp_va() with 
>> kvm_vgic_global_state
>>
>
> Yeah, I only did a fairly mechanical backport based on the actual
> diffs depend on each other, but I did spot those two as possibly
> related.
>
>> But that's definitely not enough to fix the crash.
>>
>> >
>> > [    0.062126] CPU: All CPU(s) started at EL1
>> > [    0.063109] alternatives: patching kernel code
>> > [    0.064228] random: get_random_u64 called from
>> > compute_layout+0x94/0xe8 with crng_init=0
>> > [    0.066313] aarch64_insn_gen_add_sub_imm: invalid immediate 
>> encoding 1904640
>>
>> OK, that one is really bizarre. This value (tag_val) is supposed to 
>> be
>> a small value (only 12 significant bits out of 24 at any given 
>> time),
>> and it is not (0x1D1000). So somehow compute_instruction() is not
>> doing the right thing.
>>
>> Do you have a tree somewhere with this patches?
>>
>
> Sure, thanks for having a look.
>
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=arm64-v4.14-backport%2b%2b

OK, I tracked it down to this missing patch:

11d764079c9f arm64: insn: Allow ADD/SUB (immediate) with LSL #12

I haven't tryied to boot the whole thing as a host though, only
tested it as a guest.

> Another thing I found bizarre is that we actually run this code when
> all CPUs boot at EL1. Or is that intended?

It is so that I can debug the whole thing in a guest! ;-)

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
