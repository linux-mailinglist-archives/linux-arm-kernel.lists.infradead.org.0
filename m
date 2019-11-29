Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396A510D1CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 08:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+Rl47T7WzWEXQwwvwReP9agaum2lksaH5MgoyhexJY=; b=ZmU4+LdR/sErXe
	cNqKyoV1pBKQwBJg5M3cE8WKFlguho839h8RpyJH+J4ekRh8xtsSefIzrJqosGDvJGIVcd68gvAiX
	90YPm9bv+YDJPX4AmLwB9mERbHKE8bdvwtGO6YzECRrZOR4XdiCbM7vA1e1mWHiA3JCNkfJEME/Qe
	Mg1M/dpKtGBzXVrkZFrjU3km8AVf/VBdrf1U5wf3uiJwZNU81BCxBVihpaSGNQjcH/XKzv+ZGL+9+
	L2SPgTCmH6pLJ5zcOojyZbvKvI8drJ9MgChJusMEft9PrwmRLdufF0sCglUZAtpAnlJ4Tw9lLF9oJ
	5r2Kh1bfSg79n6lsfyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaaeq-0008Ro-Fq; Fri, 29 Nov 2019 07:25:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaaef-0008R7-Qj
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 07:25:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id l1so13070587wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 23:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5JJt/H5vk3dog0b/zNGJCU/5JgGBxZXODmBvBBpBtVQ=;
 b=fqx8TWfqYjNwtxxX9hGZTYcB/8F4/nzWObJvd9tKI3kyT47T/jv/Lv4WWn36gJxAdp
 flDeh+Hyv+jDT1QBAabaLQO6WnuUInPZD95Pc2WKj6gtOlfhnVSEvxDPTP2EvpIO9p0o
 EAN02fxWEYWFNoOAP+CAeAI5yeepUlmOCXKQm2FMQTJth0R02OnV1ArwfydXzvL/ZjX4
 7d2CcWy1/0r5LGOr9pIjKUZHdXYLDQjDyyWwYvacTYefaE84/LVqtqOgg/tu3Aizhoaq
 EdsovP6SaqSY+6Suh5Vg5WfjJWUCcXzG/Gyv1RWM/W6uP56dXvmydz3Q+49A+O2yn/0Q
 TqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5JJt/H5vk3dog0b/zNGJCU/5JgGBxZXODmBvBBpBtVQ=;
 b=Hl8BRDCJ6Oalm2+w/9YPNaoG8EmghV2hcqN8FGdwgx0VxV8cxLxo1mYdSYz2wXfDi6
 miw33cxxgIXOToUQArrvqLYmulL8flwnDJ/1sd0T94eYPsz1+0tt/ZPbKWQLRNJqFyUL
 839GDvQOBBSXY0tr0wLfSMEPWa9/jqTznz4tHLGbUWHItmf3mEjSvsgAqMePqewMAGnU
 OlbBYzLtoynqrlQmPcM2gKx5zE2Qlvqio5rr7Y9u8sqPSSuV2kLFcdfmaZvOBcV39dhQ
 Rg2Mr129TL5/hEVETiDLX1ccBkjryssD6kYLwkPdb2ysmVErXlV2CeCbrKhRo24U+r54
 9W3Q==
X-Gm-Message-State: APjAAAUWe59UvpByXCw48SQQwVkdmp5YKs4pqBOAbh1egb7XKtS7af/i
 9bwHwGhg9Tw8K62Yjox1fnsLj+aaSAbn3pOtpOlrk0YpQdbJUA==
X-Google-Smtp-Source: APXvYqwMbf9Mvckx3f77LfSgJn4RinLbBwKjJcNsVzuZqRravjzrKtRmQZTF+b+YXuHwvQEqXbJ95x3fw+o+ORfojHc=
X-Received: by 2002:a05:600c:2206:: with SMTP id
 z6mr6492544wml.61.1575012328052; 
 Thu, 28 Nov 2019 23:25:28 -0800 (PST)
MIME-Version: 1.0
References: <20191127181040.20012-1-minyard@acm.org>
 <CAKv+Gu-Xbpky-VN4WgSKJ5k_98shRdr_7aEcXJBV9uZqJrV7Jw@mail.gmail.com>
 <86pnhbywpo.wl-maz@kernel.org>
In-Reply-To: <86pnhbywpo.wl-maz@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 29 Nov 2019 08:25:31 +0100
Message-ID: <CAKv+Gu-CuNpu4jv7S6v2G9Z5dHCVOMX3nVX5VFYhoY4SfCK+cg@mail.gmail.com>
Subject: Re: [PATCH] arm64: Fix compile error with KVM and
 !HARDEN_BRANCH_PREDICTOR
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_232529_898851_FD69FDEA 
X-CRM114-Status: GOOD (  29.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 Nov 2019 at 08:21, Marc Zyngier <maz@kernel.org> wrote:
>
> On Thu, 28 Nov 2019 17:20:20 +0000,
>
> [fixing Will's email address]
>
> Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >
> > (+ Marc)
> >
> >
> >
> > On Wed, 27 Nov 2019 at 19:10, <minyard@acm.org> wrote:
> > >
> > > From: Corey Minyard <cminyard@mvista.com>
> > >
> > > When compiling with KVM enabled and without HARDEN_BRANCH_PREDICTOR,
> > > the following compile error happens:
> > >
> > > arch/arm64/kernel/cpu_errata.c:92:23:
> > > error: '__bp_harden_hyp_vecs_start' undeclared (first use in this function);
> > > did you mean 'hyp_vecs_start'?
> > >   void *dst = lm_alias(__bp_harden_hyp_vecs_start + slot * SZ_2K);
> > >
> > > Some ifdefs were removed by 3e91f3eacc91d9 "arm64: Always enable
> > > spectre-v2 vulnerability detection" for CONFIG_HARDEN_BRANCH_PREDICTOR,
> > > but __bp_harden_hyp_vecs_start is only defined if that config is
> > > enabled.
> > >
> > > Add CONFIG_HARDEN_BRANCH_PREDICTOR to the #if that has CONFIG_KVM,
> > > It looks like you need both of those for that code to be valid.
> > >
> > > Fixes: 3e91f3eacc91d9 "arm64: Always enable spectre-v2 vulnerability detection"
> > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Stefan Wahren <stefan.wahren@i2se.com>
> > > Cc: Will Deacon <will.deacon@arm.com>
> > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > Signed-off-by: Corey Minyard <cminyard@mvista.com>
> > > ---
> > > This is for 4.14, I'm not sure if it is needed for other kernels.
> > >
> > > It is not needed in master because a new config item was added,
> > > CONFIG_KVM_INDIRECT_VECTORS, that depends on KVM and
> > > HARDEN_BRANCH_PREDICTOR being configured.  I looked at pulling the
> > > patches that add the required changes, and they make a lot of
> > > changes.  This change is the simple fix, but I'm not sure if we want to
> > > pull all those other changes into 4.14 and whatever other kernels
> > > are required.
> > >
> >
> > I agree that backporting this cleanly is going to be problematic,
> > since it pulls in the entire EL2 VA randomization feature with all its
> > prerequisites.
> >
> > Backporting the following set could be done fairly cleanly, and fixes
> > the problem at build time, but unfortunately, it causes a boot time
> > crash (see below)
> >
> > 97eca4d2bfec (HEAD -> linux-4.14.y) arm64: Move the content of bpi.S
> > to hyp-entry.S
> > 514dd33114c6 arm64: Make BP hardening slot counter available
> > d7ddf3ae9470 arm64; insn: Add encoder for the EXTR instruction
> > c0b2c4e56e10 arm64: KVM: Introduce EL2 VA randomisation
> > 56ab0a87c737 arm64: KVM: Dynamically compute the HYP VA mask
> > d92c02628dfb arm64: KVM: Allow far branches from vector slots to the
> > main vectors
> > 7adec01c9674 arm64: cpufeatures: Drop the ARM64_HYP_OFFSET_LOW feature flag
> > 1095e4fc3134 arm64: KVM: Move stashing of x0/x1 into the vector code itself
> > bb2e1aceb423 arm64: KVM: Dynamically patch the kernel/hyp VA mask
> > 6f0ccfc451be arm64: KVM: Reserve 4 additional instructions in the BPI template
> > bf425ffee07a arm64: insn: Add encoder for bitwise operations using literals
> > 41dda94d1a9f arm64: insn: Add N immediate encoding
> > 3225668ebe00 arm64: KVM: Move BP hardening vectors into .hyp.text section
> >
> > Marc?
>
> You need at least these:
>
> 1bb32a44aea1 KVM: arm/arm64: Keep GICv2 HYP VAs in kvm_vgic_global_state
> 44a497abd621 KVM: arm/arm64: Do not use kern_hyp_va() with kvm_vgic_global_state
>

Yeah, I only did a fairly mechanical backport based on the actual
diffs depend on each other, but I did spot those two as possibly
related.

> But that's definitely not enough to fix the crash.
>
> >
> > [    0.062126] CPU: All CPU(s) started at EL1
> > [    0.063109] alternatives: patching kernel code
> > [    0.064228] random: get_random_u64 called from
> > compute_layout+0x94/0xe8 with crng_init=0
> > [    0.066313] aarch64_insn_gen_add_sub_imm: invalid immediate encoding 1904640
>
> OK, that one is really bizarre. This value (tag_val) is supposed to be
> a small value (only 12 significant bits out of 24 at any given time),
> and it is not (0x1D1000). So somehow compute_instruction() is not
> doing the right thing.
>
> Do you have a tree somewhere with this patches?
>

Sure, thanks for having a look.

https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=arm64-v4.14-backport%2b%2b

Another thing I found bizarre is that we actually run this code when
all CPUs boot at EL1. Or is that intended?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
