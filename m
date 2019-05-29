Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496212DBB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTgFuuw2pS9BEOP1IToBuEkLA2EkuBxripTHdK+Ucxw=; b=VcLfq7kSnYwJA9
	KP3fYit82GPk1FIlIhhjnFIpFxo2bAYxzD/7xvK5zGExHQRtDlLEqiqToDBhljhkkPof57/oMEDHx
	/dV0HF0LcA4KcUHpiJuJ34BRdOnaW1kPiO6Ilra9hLaX8afA77Js4xMzqlMIXFpeWRNnoEaslQeg1
	XAFMoMstJkd31UKmARv9GuL+ccgYNq3h5sZ/fGOiXFAfXv1hzGnhqd/aLqOEUeeslOEfxGf5b9Rvf
	ykFmiacOQ+EYJ7PGQ/LP+9gE8R0M41M/BgrK24Y6frPxfCUqwe3gk5rQWRKA5uqEafx+EUsg72KLn
	7ZVyjW4WpVGT8pNubUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVweY-0006sP-4Z; Wed, 29 May 2019 11:21:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVweR-0006s5-6B
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:21:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6CA8341;
 Wed, 29 May 2019 04:21:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C70B83F59C;
 Wed, 29 May 2019 04:21:44 -0700 (PDT)
Date: Wed, 29 May 2019 12:21:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
Message-ID: <20190529112141.GB31777@lakrids.cambridge.arm.com>
References: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_042147_239062_F17DAEEB 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laura,

On Tue, May 28, 2019 at 05:42:04PM -0400, Laura Abbott wrote:
> Hi,
> 
> CONFIG_OPTIMIZE_INLINING is a selectable option on arm64 now. It currently
> triggers a bug on the CONFIG_ATOMIC64_SELFTEST:
> 
> [    4.521551] ------------[ cut here ]------------
> [    4.521763] kernel BUG at lib/atomic64_test.c:220!
> [    4.522059] Internal error: Oops - BUG: 0 [#1] SMP
> [    4.522456] Modules linked in:
> [    4.522860] Process swapper/0 (pid: 1, stack limit = 0x(____ptrval____))
> [    4.523287] CPU: 4 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc1 #6
> [    4.523462] Hardware name: linux,dummy-virt (DT)
> [    4.523779] pstate: a0000005 (NzCv daif -PAN -UAO)
> [    4.524231] pc : test_atomic64+0x1270/0x13a4
> [    4.524392] lr : test_atomic64+0x1258/0x13a4
> [    4.524571] sp : ffff000011f2fd60
> [    4.524755] x29: ffff000011f2fd60 x28: 0000000000000000
> [    4.525397] x27: 0000000000000000 x26: ffff000010d105c4
> [    4.525660] x25: ffff000010de10a0 x24: 0000000000000006
> [    4.525821] x23: aaa31337c001d00e x22: bbb42448e223f22f
> [    4.526032] x21: aaa31337c001d00c x20: 999202269ddfadeb
> [    4.526180] x19: aaa31337c001d00d x18: 0000000000000001
> [    4.526324] x17: 0000000000000000 x16: 1111111122222221
> [    4.526466] x15: ffff000010b838f0 x14: ffff80003fcf28c8
> [    4.526609] x13: 0000000000000000 x12: 0000000000000004
> [    4.526765] x11: 0000000000000000 x10: 0000000000000c80
> [    4.526940] x9 : 0000000000000000 x8 : ffff800020f12b00
> [    4.527090] x7 : deadbeefdeafcafe x6 : aaa31337c001d00d
> [    4.527234] x5 : ffff000011f2fda0 x4 : deadbeefdeafcafe
> [    4.527378] x3 : aaa31337c001d00d x2 : 1111111122222222
> [    4.527522] x1 : 1111111122222221 x0 : ffff000011f2fda0
> [    4.527759] Call trace:
> [    4.527923]  test_atomic64+0x1270/0x13a4
> [    4.528047]  test_atomics_init+0x10/0x28
> [    4.528162]  do_one_initcall+0x54/0x230
> [    4.528273]  kernel_init_freeable+0x1cc/0x278
> [    4.528397]  kernel_init+0x18/0x108
> [    4.528510]  ret_from_fork+0x10/0x18
> [    4.528827] Code: f2c22221 f2e22221 eb01001f 54000040 (d4210000)
> [    4.529647] ---[ end trace e08e679056f5b7ee ]---

Thanks for the report.

FWIW I can reproduce this locally, after hacking cpufeature.c to not
detect the LSE atomics on my test platform.

> Snippet of assembly from test_atomic64:
> 
> ffff000010de64cc:       d2844442        mov     x2, #0x2222                     // #8738
> ffff000010de64d0:       910103e0        add     x0, sp, #0x40
> ffff000010de64d4:       f2a44442        movk    x2, #0x2222, lsl #16
> ffff000010de64d8:       f2c22222        movk    x2, #0x1111, lsl #32
> ffff000010de64dc:       f2e22222        movk    x2, #0x1111, lsl #48
> ffff000010de64e0:       f90023e2        str     x2, [sp, #64]
> ffff000010de64e4:       97daa73b        bl      ffff0000104901d0 <arch_atomic64_dec_if_positive>
> ffff000010de64e8:       d2844421        mov     x1, #0x2221                     // #8737
> ffff000010de64ec:       f2a44441        movk    x1, #0x2222, lsl #16
> ffff000010de64f0:       f2c22221        movk    x1, #0x1111, lsl #32
> ffff000010de64f4:       f2e22221        movk    x1, #0x1111, lsl #48
> ffff000010de64f8:       eb01001f        cmp     x0, x1
> ffff000010de64fc:       54000040        b.eq    ffff000010de6504 <test_atomic64+0x1274>  // b.none
> ffff000010de6500:       d4210000        brk     #0x800
> 
> The value returned from arch_atomic64_dec_if_positive looks like
> a stack value
>
> ffff0000104901d0 <arch_atomic64_dec_if_positive>:
> ffff0000104901d0:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff0000104901d4:       aa0003e1        mov     x1, x0
> ffff0000104901d8:       910003fd        mov     x29, sp
> ffff0000104901dc:       9412c9d5        bl      ffff000010942930 <__ll_sc_arch_atomic64_dec_if_positive>
> ffff0000104901e0:       d503201f        nop
> ffff0000104901e4:       d503201f        nop
> ffff0000104901e8:       d503201f        nop
> ffff0000104901ec:       d503201f        nop
> ffff0000104901f0:       d503201f        nop
> ffff0000104901f4:       d503201f        nop
> ffff0000104901f8:       aa0103e0        mov     x0, x1
> ffff0000104901fc:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff000010490200:       d65f03c0        ret
> 
> ...which seems to be coming from this buggy looking code.

Ouch, so it's trying to save/restore x0, and returning the original
value of the atomic64_t *v argument.

AFAICT, GCC *shouldn't* be doing that, since we have a "=&r" constraint
on a register variable in x0, which we use as the return value:
 
static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
{
	register long x0 asm ("x0") = (long)v;

	asm volatile(ARM64_LSE_ATOMIC_INSN(
	/* LL/SC */
	__LL_SC_ATOMIC64(dec_if_positive)
	__nops(6),
	/* LSE atomics */
	"1:     ldr     x30, %[v]\n"
	"       subs    %[ret], x30, #1\n"
	"       b.lt    2f\n"
	"       casal   x30, %[ret], %[v]\n"
	"       sub     x30, x30, #1\n"
	"       sub     x30, x30, %[ret]\n"
	"       cbnz    x30, 1b\n"
	"2:")
	: [ret] "+&r" (x0), [v] "+Q" (v->counter)
	:
	: __LL_SC_CLOBBERS, "cc", "memory");

	return x0;
}

... so this smells like a GCC bug.

I *think* GCC places the "x0" variable into x1 despite it being a local
register variable that should be in x0, and GCC places v in x0.

That would explain why this works for LSE even with the shuffle back,
since the asm would use x1 for ret.

I haven't managed to come up with a test-case that proves that, though,
and I don't knwo how we could bodge around that.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
