Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C797010CDB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DfWV+lGpMR3zjCqJ+ZbOFLIF8M0kqn6r0hViIzPmWs=; b=pVeHqD2f5MJtTx
	mbuH7XCwZQ2Xn+DA/WzdbIYxe5m6tTgtiCuAd2EQapM6MCqBrgyXqFf2LF+qTUuJBWwtPoYnLDGdK
	95Ior8CqA8amdpkIM/RNBPEofyZMdZXqvn5+n6ONH99ziA7zEf27K196XwGrWU8tYPtXaaS1J7BD/
	FBmk/9xxxmBsx5bFEkPEIvxR2CeMHMLL1GagD5l7GIBEO3rb91Mmjw7P7homqkhK/MUEZpHxRMCfy
	8F+w929W/3ZL9T9GWbFzKCrEbnNI3Lb2HabFuiKk0HUUoXcmgC90e1aCFTc42VrFhUr5GJMNm5WnX
	5hxOFRDCc9z9Q2r0CkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNTH-0004G4-GQ; Thu, 28 Nov 2019 17:20:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNSz-00049j-Ve
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:20:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id l17so11736190wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 09:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b8YNfw53tPYb2QDb/EJewjAOTfuQ/6f+qQdm9DBsg9M=;
 b=D2vHjfh0oEVv1ppDPZeVikxbWkPrE2jJKl3MKmaLucQAhFmEyzjuiNKhqyYpr4rtSD
 PvJHOiaCNYAE3NWDwVnUAl+bE4X/cKQniOs0Bu7ieoxWZZndbSBbBLh39NydpCsNVBtV
 s+8kxUYCR2hQ18ahoslzrYI0hpNYqe3tGJo/3tPFdo/k87iDyuiR6xGJVSAljOPTM7Lv
 cv7W2uRR0Zv+NZCpC/c71PYmmxSZyTxG0AbOQt+8T/Aq4Vbu/31pGkMSaqb0B1F/bVlI
 VFpOU+FDadz2LZfyaGNLAKfA0sdvyrApqQ+UfOghrC5kEnBDMpFVxJ2B3OKEI5aypGjO
 d1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b8YNfw53tPYb2QDb/EJewjAOTfuQ/6f+qQdm9DBsg9M=;
 b=fYfSj+oTtNVBHlzQTtYFxhp1OOYuozsF/oZU9rmZ1E9JvYn7E0oeNjvYzRWu+kizcB
 nLV7p9E/M10CaN0fxm1ssdJPb4MudG8eNk1T6nIKh68c979JESjO/bvv/Qmze5aIaRZ7
 EQyjjF/QGQ/nw3EVvB0arlF8ho2ufEwRxromvpLe7XrxRZp+82bxi+GAlg9FAyhI5I0z
 blD9BHNV51YA6SivkvSvOJ6phfybclT9ata5DVF65QUcK0S7X+nSqw2rp2/ND/GCKHs1
 VmH92fDNJF8VeYL8qosKZ9iVq6zL7AHFm4dHFfSpn+8CeWiO+bBFE0wT5+75/PhqCftn
 Ox8w==
X-Gm-Message-State: APjAAAW0LisNsb8o7uTKD9PVU1cids90C2dy4lNlj5PfJWl8Ams3ZPje
 N7rIUwyTetklUV8QTOaqfQJV2yOZhdRXFI4bI18Itw==
X-Google-Smtp-Source: APXvYqxuatsGjHk13yAJXegvRpbrL34pa05+tq5ZHTXi36bguh+J26aLAbgtMJV4qhTRRf1bh77cjRHimkgGZZgRDv4=
X-Received: by 2002:a1c:49c3:: with SMTP id w186mr10658266wma.53.1574961631566; 
 Thu, 28 Nov 2019 09:20:31 -0800 (PST)
MIME-Version: 1.0
References: <20191127181040.20012-1-minyard@acm.org>
In-Reply-To: <20191127181040.20012-1-minyard@acm.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 28 Nov 2019 18:20:20 +0100
Message-ID: <CAKv+Gu-Xbpky-VN4WgSKJ5k_98shRdr_7aEcXJBV9uZqJrV7Jw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Fix compile error with KVM and
 !HARDEN_BRANCH_PREDICTOR
To: minyard@acm.org, Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_092034_036851_BD20E9B0 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(+ Marc)



On Wed, 27 Nov 2019 at 19:10, <minyard@acm.org> wrote:
>
> From: Corey Minyard <cminyard@mvista.com>
>
> When compiling with KVM enabled and without HARDEN_BRANCH_PREDICTOR,
> the following compile error happens:
>
> arch/arm64/kernel/cpu_errata.c:92:23:
> error: '__bp_harden_hyp_vecs_start' undeclared (first use in this function);
> did you mean 'hyp_vecs_start'?
>   void *dst = lm_alias(__bp_harden_hyp_vecs_start + slot * SZ_2K);
>
> Some ifdefs were removed by 3e91f3eacc91d9 "arm64: Always enable
> spectre-v2 vulnerability detection" for CONFIG_HARDEN_BRANCH_PREDICTOR,
> but __bp_harden_hyp_vecs_start is only defined if that config is
> enabled.
>
> Add CONFIG_HARDEN_BRANCH_PREDICTOR to the #if that has CONFIG_KVM,
> It looks like you need both of those for that code to be valid.
>
> Fixes: 3e91f3eacc91d9 "arm64: Always enable spectre-v2 vulnerability detection"
> Cc: Andre Przywara <andre.przywara@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Corey Minyard <cminyard@mvista.com>
> ---
> This is for 4.14, I'm not sure if it is needed for other kernels.
>
> It is not needed in master because a new config item was added,
> CONFIG_KVM_INDIRECT_VECTORS, that depends on KVM and
> HARDEN_BRANCH_PREDICTOR being configured.  I looked at pulling the
> patches that add the required changes, and they make a lot of
> changes.  This change is the simple fix, but I'm not sure if we want to
> pull all those other changes into 4.14 and whatever other kernels
> are required.
>

I agree that backporting this cleanly is going to be problematic,
since it pulls in the entire EL2 VA randomization feature with all its
prerequisites.

Backporting the following set could be done fairly cleanly, and fixes
the problem at build time, but unfortunately, it causes a boot time
crash (see below)

97eca4d2bfec (HEAD -> linux-4.14.y) arm64: Move the content of bpi.S
to hyp-entry.S
514dd33114c6 arm64: Make BP hardening slot counter available
d7ddf3ae9470 arm64; insn: Add encoder for the EXTR instruction
c0b2c4e56e10 arm64: KVM: Introduce EL2 VA randomisation
56ab0a87c737 arm64: KVM: Dynamically compute the HYP VA mask
d92c02628dfb arm64: KVM: Allow far branches from vector slots to the
main vectors
7adec01c9674 arm64: cpufeatures: Drop the ARM64_HYP_OFFSET_LOW feature flag
1095e4fc3134 arm64: KVM: Move stashing of x0/x1 into the vector code itself
bb2e1aceb423 arm64: KVM: Dynamically patch the kernel/hyp VA mask
6f0ccfc451be arm64: KVM: Reserve 4 additional instructions in the BPI template
bf425ffee07a arm64: insn: Add encoder for bitwise operations using literals
41dda94d1a9f arm64: insn: Add N immediate encoding
3225668ebe00 arm64: KVM: Move BP hardening vectors into .hyp.text section

Marc?

[    0.062126] CPU: All CPU(s) started at EL1
[    0.063109] alternatives: patching kernel code
[    0.064228] random: get_random_u64 called from
compute_layout+0x94/0xe8 with crng_init=0
[    0.066313] aarch64_insn_gen_add_sub_imm: invalid immediate encoding 1904640
[    0.068136] ------------[ cut here ]------------
[    0.069327] kernel BUG at arch/arm64/kvm/va_layout.c:148!
[    0.070727] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[    0.072143] Modules linked in:
[    0.072932] Process migration/0 (pid: 11, stack limit = 0xffff000009110000)
[    0.074735] CPU: 0 PID: 11 Comm: migration/0 Not tainted
4.14.156-00013-g97eca4d2bfec #135
[    0.076869] Hardware name: linux,dummy-virt (DT)
[    0.078061] task: ffff8000058f8d80 task.stack: ffff000009110000
[    0.079597] PC is at kvm_update_va_mask+0x188/0x1b4
[    0.080858] LR is at kvm_update_va_mask+0x160/0x1b4
[    0.082116] pc : [<ffff000008e170f8>] lr : [<ffff000008e170d0>]
pstate: 604000c5
[    0.084030] sp : ffff000009113ca0
[    0.084885] x29: ffff000009113ca0 x28: 0000000000000000
[    0.086256] x27: ffff00000803bcf8 x26: 0000000091400021
[    0.087633] x25: 00000000d4202000 x24: ffff0000080ac92c
[    0.089005] x23: ffff8000000ac92c x22: 0000000000000003
[    0.090382] x21: 0000000000000001 x20: ffff000009058848
[    0.091756] x19: 0000000000000003 x18: 0000000000000001
[    0.093130] x17: 0000000076158468 x16: 000000009e488a0e
[    0.094507] x15: 0000000000000010 x14: 3034363430393120
[    0.095881] x13: 676e69646f636e65 x12: 206574616964656d
[    0.097252] x11: 6d692064696c6176 x10: 6e69203a6d6d695f
[    0.098629] x9 : 6275735f6464615f x8 : ffff00000856d0c8
[    0.100000] x7 : 5f34366863726161 x6 : 000000000000005a
[    0.101372] x5 : 0000000000000000 x4 : 0000000000000000
[    0.102748] x3 : ffffffffffffffff x2 : ffff000008f53500
[    0.104116] x1 : ffff8000058f8d80 x0 : 00000000d4202000
[    0.105485] Call trace:
[    0.106115] Exception stack(0xffff000009113b60 to 0xffff000009113ca0)
[    0.107780] 3b60: 00000000d4202000 ffff8000058f8d80
ffff000008f53500 ffffffffffffffff
[    0.109798] 3b80: 0000000000000000 0000000000000000
000000000000005a 5f34366863726161
[    0.111821] 3ba0: ffff00000856d0c8 6275735f6464615f
6e69203a6d6d695f 6d692064696c6176
[    0.113838] 3bc0: 206574616964656d 676e69646f636e65
3034363430393120 0000000000000010
[    0.115862] 3be0: 000000009e488a0e 0000000076158468
0000000000000001 0000000000000003
[    0.117879] 3c00: ffff000009058848 0000000000000001
0000000000000003 ffff8000000ac92c
[    0.119901] 3c20: ffff0000080ac92c 00000000d4202000
0000000091400021 ffff00000803bcf8
[    0.121918] 3c40: 0000000000000000 ffff000009113ca0
ffff000008e170d0 ffff000009113ca0
[    0.123941] 3c60: ffff000008e170f8 00000000604000c5
000000001430322e 0000000043b87f45
[    0.125959] 3c80: ffffffffffffffff ffff000008e170d0
ffff000009113ca0 ffff000008e170f8
[    0.127982] [<ffff000008e170f8>] kvm_update_va_mask+0x188/0x1b4
[    0.129508] [<ffff00000808f220>] __apply_alternatives+0xe8/0x138
[    0.131060] [<ffff00000808f2e8>] __apply_alternatives_multi_stop+0x78/0x98
[    0.132832] [<ffff000008161c9c>] multi_cpu_stop+0x94/0x118
[    0.134248] [<ffff000008161f50>] cpu_stopper_thread+0x98/0x120
[    0.135759] [<ffff0000080ee5dc>] smpboot_thread_fn+0x124/0x248
[    0.137265] [<ffff0000080ea6d0>] kthread+0x128/0x130
[    0.138553] [<ffff000008084e10>] ret_from_fork+0x10/0x18

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
