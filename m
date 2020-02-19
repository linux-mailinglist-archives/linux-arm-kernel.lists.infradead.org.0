Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76AC164E0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+BS/w81ss0grPevI2pexclfCBsuI1u8qILlZhxv2Is=; b=ErJi8sALKmS2hh
	bPlMNjCASgq1LdcO0U4Rme0Q3/VWILW+ivzxgqoO2sySAgyPiRKEYGU08iqD7x2zi8yipS17nj+3C
	fMCNi6WLqkqpHz+QCRsVitC/IC+iBRgcxJwTpvgjO3u0Lt1wWn7GCUwzCbCF/3fqycNHTZpK12/aU
	9RK3rE6PgLZOEtNa9KqDkCjYQ67WEVFEiJd3JCtvgji48x0mRgabWyp3egWhET4iPzPKiZQ9QhZ5L
	zLw9vMrEpZoR8/3fvQFv4zK5eOxlxGg9UT4z3/i39YrEMbs4d/God4srFVS8o+My6JP236yesNTnF
	TkX9oW8FDEynF/ARPzIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4UTs-0001vP-Lh; Wed, 19 Feb 2020 18:53:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4UTb-0001uZ-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:53:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id z7so1743164wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sHetkJh3JFpiVt0PkP/E1Oke7WhO+z+xsxym+bAfrek=;
 b=lTxNEenGz1OUGedaxamjo330XgTZtq3/ugQcBWOKCaUSz8PUvSXavKhSekJMET26ui
 /pQjA3j5JEX66oBotNXPyC+N8spqlGrmwmrCOmihv0nD6Vo3GZcV9JpG3/290IF6/EQW
 kAPbe8pphk4lsCBefFCF/+8wV89zh8dDbslWce+yCiTzlaHoN4Ibivtw+jEqUproqPWs
 5HZtkR6h9c8SSG8O4ypxLuRb84XtGW1hFzfy76B29tV6Hyk8X+bSpNlGGKeN2SnZMfnO
 bV0BLpD4/OP//J2c1xKQmybGwv9a49locydNHmlXpNTyUqQYTZdAzS7gknZoDdeIPWqU
 cQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sHetkJh3JFpiVt0PkP/E1Oke7WhO+z+xsxym+bAfrek=;
 b=qPg8E9lDBVLmKXiDSFmpUbiEggsP+74DgpyxkaC6ZUZZ0UKJ/kGlfaq8Dqdb7NT9mk
 kd19ACKo91NwIaYRGzDBBI2i722BtovcdTf5By4FdlJRPsvA6DK8uKuN3XxlDSyMJqs4
 ZRRc7RTMBPOX/AxLGYT6tRgobeeqvM+cRDcpMFbFs91FOJrejTWpw2czO+KsYZ0dstDz
 JqEQxc/YiWFtZwbBi16wqo5nNceyBs+bVDRkRTpjaoDjFtG8R5aeZEsQ06wkegfWASPR
 /2iOSwraihYHmjfz7YGgsl6C0vqJmD+egRuIGe19sQnHrn6zd1O1KaZhJa2B/p2cobaw
 TiSg==
X-Gm-Message-State: APjAAAX+ZgfqivYBqnSvMWyu34zst4HcvV6re6w6DDevT5QmsmH/2rtr
 yaWGA67doivubBTWXmWGfwWVDxWneYGmvV84681Uag==
X-Google-Smtp-Source: APXvYqxSEzUSXoHrR9umdCftiz8DlqN9C2r2gE3HRSV535aAzXzWAdF7gGIVmVaaH9yHxTRzIQlAyMKjrbP/ABWFdA0=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr37778174wrr.208.1582138417419; 
 Wed, 19 Feb 2020 10:53:37 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
In-Reply-To: <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 19 Feb 2020 19:53:26 +0100
Message-ID: <CAKv+Gu8gHcYW_5G5pfS=yVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw@mail.gmail.com>
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_105339_666652_776180F9 
X-CRM114-Status: GOOD (  26.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 at 19:38, James Morse <james.morse@arm.com> wrote:
>
> Hi Sami,
>
> (CC: +Marc)
>
> On 19/02/2020 00:08, Sami Tolvanen wrote:
> > This patch series adds support for Clang's Shadow Call Stack
> > (SCS) mitigation, which uses a separately allocated shadow stack
> > to protect against return address overwrites.
>
> I took this for a spin on some real hardware. cpu-idle, kexec hibernate etc all work
> great... but starting a KVM guest causes the CPU to get stuck in EL2.
>
> With CONFIG_SHADOW_CALL_STACK disabled, this doesn't happen ... so its something about the
> feature being enabled.
>
>
> I'm using clang-9 from debian bullseye/sid. (I tried to build tip of tree ... that doesn't
> go so well on arm64)
>
> KVM takes an instruction abort from EL2 to EL2, because some of the code it runs is not
> mapped at EL2:
>
> | ffffa00011588308 <__kvm_tlb_flush_local_vmid>:
> | ffffa00011588308:       d10103ff        sub     sp, sp, #0x40
> | ffffa0001158830c:       f90013f3        str     x19, [sp, #32]
> | ffffa00011588310:       a9037bfd        stp     x29, x30, [sp, #48]
> | ffffa00011588314:       9100c3fd        add     x29, sp, #0x30
> | ffffa00011588318:       97ae18bf        bl      ffffa0001010e614 <__kern_hyp_va>
>
> INSTRUCTION ABORT!
>
> | ffffa0001158831c:       f9400000        ldr     x0, [x0]
> | ffffa00011588320:       97ae18bd        bl      ffffa0001010e614 <__kern_hyp_va>
> | ffffa00011588324:       aa0003f3        mov     x19, x0
> | ffffa00011588328:       97ae18c1        bl      ffffa0001010e62c <has_vhe>
>
>
> __kern_hyp_va() is static-inline which is patched wherever it appears at boot with the EL2
> ASLR values, it converts a kernel linear-map address to its EL2 KVM alias:
>
> | ffffa0001010dc5c <__kern_hyp_va>:
> | ffffa0001010dc5c:       92400000        and     x0, x0, #0x1
> | ffffa0001010dc60:       93c00400        ror     x0, x0, #1
> | ffffa0001010dc64:       91000000        add     x0, x0, #0x0
> | ffffa0001010dc68:       91400000        add     x0, x0, #0x0, lsl #12
> | ffffa0001010dc6c:       93c0fc00        ror     x0, x0, #63
> | ffffa0001010dc70:       d65f03c0        ret
>
>
> The problem here is where __kern_hyp_va() is. Its outside the __hyp_text section:
> | morse@eglon:~/kernel/linux-pigs$ nm -s vmlinux | grep hyp_text
> | ffffa0001158b800 T __hyp_text_end
> | ffffa000115838a0 T __hyp_text_start
>
>
> If I disable CONFIG_SHADOW_CALL_STACK in Kconfig, I get:
> | ffffa00011527fe0 <__kvm_tlb_flush_local_vmid>:
> | ffffa00011527fe0:       d100c3ff        sub     sp, sp, #0x30
> | ffffa00011527fe4:       a9027bfd        stp     x29, x30, [sp, #32]
> | ffffa00011527fe8:       910083fd        add     x29, sp, #0x20
> | ffffa00011527fec:       92400000        and     x0, x0, #0x1
> | ffffa00011527ff0:       93c00400        ror     x0, x0, #1
> | ffffa00011527ff4:       91000000        add     x0, x0, #0x0
> | ffffa00011527ff8:       91400000        add     x0, x0, #0x0, lsl #12
> | ffffa00011527ffc:       93c0fc00        ror     x0, x0, #63
> | ffffa00011528000:       f9400000        ldr     x0, [x0]
> | ffffa00011528004:       910023e1        add     x1, sp, #0x8
> | ffffa00011528008:       92400000        and     x0, x0, #0x1
> | ffffa0001152800c:       93c00400        ror     x0, x0, #1
> | ffffa00011528010:       91000000        add     x0, x0, #0x0
> | ffffa00011528014:       91400000        add     x0, x0, #0x0, lsl #12
> | ffffa00011528018:       93c0fc00        ror     x0, x0, #63
> | ffffa0001152801c:       97ffff78        bl      ffffa00011527dfc <__tlb_switch_>
> | ffffa00011528020:       d508871f        tlbi    vmalle1
> | ffffa00011528024:       d503201f        nop
>
>
> This looks like reserving x18 is causing Clang to not-inline the __kern_hyp_va() calls,
> losing the vitally important section information. (I can see why the compiler thinks this
> is fair)
>
> Is this a known, er, thing, with clang-9?
>
> From eyeballing the disassembly __always_inline on __kern_hyp_va() is enough of a hint to
> stop this, ... with this configuration of clang-9. But KVM still doesn't work, so it isn't
> the only inlining decision KVM relies on that is changed by SCS.
>
> I suspect repainting all KVM's 'inline' with __always_inline will fix it. (yuck!) I'll try
> tomorrow.
>

If we are relying on the inlining for correctness, these should have
been __always_inline to begin with, and yuckness aside, I don't think
there's anything wrong with that.


> I don't think keeping the compiler-flags as they are today for KVM is the right thing to
> do, it could lead to x18 getting corrupted with the shared vhe/non-vhe code. Splitting
> that code up would lead to duplication.
>
> (hopefully objtool will be able to catch these at build time)
>

I don't see why we should selectively en/disable the reservation of
x18 (as I argued in the context of the EFI libstub patch as well).
Just reserving it everywhere shouldn't hurt performance, and removes
the need to prove that we reserved it in all the right places.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
