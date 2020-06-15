Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54641F94F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TbhrzCFfY9cOBjd/3ChTgHS/rxRiptYNssyZaBiBskI=; b=ZIUe6S8ldeh1aI
	lyOxanth+FQHy8/UoKO0e2hYyu8fj0wC9E85OGj9Sl0cdZRcV89FIEP0nl3DLWZwjSNJ/TSlVpNLp
	SRICuXXarCWOIPc4iH69+/BNKS0PPw+y65Q47bBYcbFKQ4JWTl49NoFAlquhp1UakVbGcdVn0kaKb
	BMYXSZlj4cXBYaLQevOidodre1/AhLPj7R+1m+JoyFkwjjU7bNQZ56PP2r48MwPytLSUZAJIFTJDz
	iStKep/KzAvvYXDfvKqWdMAw+TCEFKTtYOXGbZFvy6G9UNt6jiPUX9D7s2zzJGpVz+P8WCrXEFxBW
	t2PChz5Xqxgc/fQyF95g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmmB-0006IS-6y; Mon, 15 Jun 2020 10:55:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmm2-0006I8-5f
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:55:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27DA32068E;
 Mon, 15 Jun 2020 10:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592218529;
 bh=/SmkGJqgrdrihyTVEYcJ7/twe5bdfR5mZ6y/1kJKl3s=;
 h=Date:From:To:Cc:Subject:From;
 b=bPE8lGWl5P12TJ9zH1GPCsqwbokAodmy7HhGBXS8eI04n6G09r2xqg45RAmFOie/t
 177UDg0z04mdWt0hMYuH0pHvDg8HMV/gnHczlvrDYJCb+ciTWw55GlVG9ss+n5NHS7
 r8AABKDs+krOeS1gbuKyt/ZRRnTrrhREB6uuTho0=
Date: Mon, 15 Jun 2020 11:55:24 +0100
From: Will Deacon <will@kernel.org>
To: ndesaulniers@google.com
Subject: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615105524.GA2694@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_035530_251574_5CEEDC3B 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, android-kvm@google.com, catalin.marinas@arm.com,
 clang-built-linux@googlegroups.com, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick, [+android-kvm as FYI]

I just ran into a host panic when trying to spawn a KVM virtual machine
with 5.8-rc1 on arm64 (defconfig):

(I had to hack in code to dump the regs; I'll send a patch for that shortly)

[   56.229757] Bad mode in Synchronous Abort handler detected on CPU0, code 0x34000003 -- BTI
[   56.230439] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1-dirty #2
[   56.230864] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   56.234182] pstate: 80000c05 (Nzcv daif -PAN -UAO BTYPE=j-)
[   56.234646] pc : kvm_vm_ioctl_check_extension_generic+0x74/0x98
[   56.235068] lr : kvm_dev_ioctl+0x94/0xbc
[   56.237544] sp : ffff800010f4bdf0
[   56.237797] x29: ffff800010f4bdf0 x28: ffff0000f9629c00 
[   56.238277] x27: 0000000000000000 x26: 0000000000000000 
[   56.238665] x25: 0000000000000000 x24: 0000000000000003 
[   56.241275] x23: 000000000000ae03 x22: 0000000000000046 
[   56.241708] x21: 00000000ffffffe7 x20: ffff0000f9621200 
[   56.242155] x19: ffff0000f9621200 x18: 0000000000000000 
[   56.242564] x17: 0000000000000000 x16: 0000000000000000 
[   56.242987] x15: 0000000000000000 x14: 0000000000000000 
[   56.245570] x13: 0000000000000000 x12: 0000000000000010 
[   56.245953] x11: ffffd68929392e14 x10: ffffd6892a17b879 
[   56.246420] x9 : 0000000000000043 x8 : 0000000000000000 
[   56.246787] x7 : 0000000000000000 x6 : 0000000000000000 
[   56.249737] x5 : 0000000000000000 x4 : 0000000000000000 
[   56.250236] x3 : 0000000000000046 x2 : 0000000000000046 
[   56.250644] x1 : 0000000000000046 x0 : 0000000000000001 
[   56.253312] Kernel panic - not syncing: bad mode
[   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1-dirty #2
[   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   56.254712] Call trace:
[   56.254952]  dump_backtrace+0x0/0x1d4
[   56.255305]  show_stack+0x1c/0x28
[   56.255647]  dump_stack+0xc4/0x128
[   56.255905]  panic+0x16c/0x35c
[   56.256146]  bad_el0_sync+0x0/0x58
[   56.256403]  el1_sync_handler+0xb4/0xe0
[   56.256674]  el1_sync+0x7c/0x100
[   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
[   56.257286]  __arm64_sys_ioctl+0x94/0xcc
[   56.257569]  el0_svc_common+0x9c/0x150
[   56.257836]  do_el0_svc+0x84/0x90
[   56.258083]  el0_sync_handler+0xf8/0x298
[   56.258361]  el0_sync+0x158/0x180
[   56.258900] SMP: stopping secondary CPUs
[   56.259594] Kernel Offset: 0x568919360000 from 0xffff800010000000
[   56.259969] PHYS_OFFSET: 0xffffb50180000000
[   56.260304] CPU features: 0x7e0152,20802028
[   56.260599] Memory Limit: none
[   56.261242] ---[ end Kernel panic - not syncing: bad mode ]---

Looking at the disassembly for kvm_vm_ioctl_check_extension_generic, it
looks like this is a compiler bug:

ffff800010032da0 <kvm_vm_ioctl_check_extension_generic>:
ffff800010032da0:       aa0003e8        mov     x8, x0
ffff800010032da4:       f102843f        cmp     x1, #0xa1
ffff800010032da8:       52800020        mov     w0, #0x1                        // #1
ffff800010032dac:       5400018c        b.gt    ffff800010032ddc <kvm_vm_ioctl_check_extension_generic+0x3c>
ffff800010032db0:       d1000c29        sub     x9, x1, #0x3
ffff800010032db4:       f101dd3f        cmp     x9, #0x77
ffff800010032db8:       540002e8        b.hi    ffff800010032e14 <kvm_vm_ioctl_check_extension_generic+0x74>  // b.pmore
ffff800010032dbc:       b0006f4a        adrp    x10, ffff800010e1b000 <vdso32_end>
ffff800010032dc0:       9121e54a        add     x10, x10, #0x879
ffff800010032dc4:       1000008b        adr     x11, ffff800010032dd4 <kvm_vm_ioctl_check_extension_generic+0x34>
ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
ffff800010032dd0:       d61f0160        br      x11

Here, the switch statement has been replaced by a jump table which we *tail
call* into. The register dump shows we're going to 0xffffd68929392e14:

ffff800010032e14:       d503233f        paciasp
ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010032e1c:       910003fd        mov     x29, sp
ffff800010032e20:       aa0803e0        mov     x0, x8
ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
ffff800010032e28:       93407c00        sxtw    x0, w0
ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010032e30:       d50323bf        autiasp
ffff800010032e34:       d65f03c0        ret

The problem is that the paciasp instruction is not BTYPE-compatible with BR;
it expects to be called with a branch-and-link, and so we panic. I think you
need to emit a 'bti j' here prior to the paciasp.

$ clang --version

Android (6443078 based on r383902) clang version 11.0.1 (https://android.googlesource.com/toolchain/llvm-project b397f81060ce6d701042b782172ed13bee898b79)

We currently support for this Clang 8+, but maybe we need to reconsider that
:(

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
