Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD47165A95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N7f2b5Wl8w9NW119CXwDHvrRmwc42McAphvdWFnY96Y=; b=M2t7FXzxud4dtOWUh+n8Sw38H
	d+xFtjWRzzY5kToKVROcGdM4fnHPq7eEf7aFREBw9yD9O9PJNtMjVlITsaM6IE0C2dMhMKStkZVR5
	zzbmQ0QoH6y9GtigEwuSJbKlA2J+SPx/xu9m4KBID4b3v20Tvqcir1+/5Nx9ST118TfOzgYxmVLci
	X9quJXteELutGY9PQohrAopOTAzrwSkXk+kQDDFUCbWahepBbH7DUEXC0SK2UAKlqu/dlyr8DOKRC
	0yXL7OnIvf9Xs3BVWwYxJMbmr8Vjh/16cVGWdJUHegoutOz1fBp1+q5oaGzbdlT3Pxj+O6YqlYKQ4
	TygxyQqqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4iYQ-0000mc-Gq; Thu, 20 Feb 2020 09:55:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4iYI-0000m9-9k
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:55:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F8BF2465D;
 Thu, 20 Feb 2020 09:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582192524;
 bh=fTdICJ3dMVHeDTNi9f6HouXkZBodmF1U1uDuflaWG2g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qyVexSEE5jIe2Y+HytoAi4Oj4pp0YZxDqBbS7ZBRQEElXH1NExD4jAZqNilphocN7
 WXb/DOKAyNAPJzPXGtJ+TuEMAp7Z9Moym7HSaL0+u5I0vkTbamj3pzmrZuD+5T/Bya
 2vNoQo7hWVw+j+fRDyhfDzHoiead+ixCwGR0MN0o=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4iYE-006hIv-Ke; Thu, 20 Feb 2020 09:55:22 +0000
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 09:55:22 +0000
From: Marc Zyngier <maz@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
In-Reply-To: <CAKv+Gu8gHcYW_5G5pfS=yVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
 <CAKv+Gu8gHcYW_5G5pfS=yVA7J5JPq0tWqYRcVBAxS0ZYjw9jPw@mail.gmail.com>
Message-ID: <0cc8538672d3a6abe5893701187a452e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ard.biesheuvel@linaro.org, james.morse@arm.com,
 samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com,
 rostedt@goodmis.org, mhiramat@kernel.org, mark.rutland@arm.com,
 Dave.Martin@arm.com, keescook@chromium.org, labbott@redhat.com,
 ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_015526_380908_156411BC 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-19 18:53, Ard Biesheuvel wrote:
> On Wed, 19 Feb 2020 at 19:38, James Morse <james.morse@arm.com> wrote:
>> 
>> Hi Sami,
>> 
>> (CC: +Marc)
>> 
>> On 19/02/2020 00:08, Sami Tolvanen wrote:
>> > This patch series adds support for Clang's Shadow Call Stack
>> > (SCS) mitigation, which uses a separately allocated shadow stack
>> > to protect against return address overwrites.
>> 
>> I took this for a spin on some real hardware. cpu-idle, kexec 
>> hibernate etc all work
>> great... but starting a KVM guest causes the CPU to get stuck in EL2.
>> 
>> With CONFIG_SHADOW_CALL_STACK disabled, this doesn't happen ... so its 
>> something about the
>> feature being enabled.
>> 
>> 
>> I'm using clang-9 from debian bullseye/sid. (I tried to build tip of 
>> tree ... that doesn't
>> go so well on arm64)
>> 
>> KVM takes an instruction abort from EL2 to EL2, because some of the 
>> code it runs is not
>> mapped at EL2:
>> 
>> | ffffa00011588308 <__kvm_tlb_flush_local_vmid>:
>> | ffffa00011588308:       d10103ff        sub     sp, sp, #0x40
>> | ffffa0001158830c:       f90013f3        str     x19, [sp, #32]
>> | ffffa00011588310:       a9037bfd        stp     x29, x30, [sp, #48]
>> | ffffa00011588314:       9100c3fd        add     x29, sp, #0x30
>> | ffffa00011588318:       97ae18bf        bl      ffffa0001010e614 
>> <__kern_hyp_va>
>> 
>> INSTRUCTION ABORT!
>> 
>> | ffffa0001158831c:       f9400000        ldr     x0, [x0]
>> | ffffa00011588320:       97ae18bd        bl      ffffa0001010e614 
>> <__kern_hyp_va>
>> | ffffa00011588324:       aa0003f3        mov     x19, x0
>> | ffffa00011588328:       97ae18c1        bl      ffffa0001010e62c 
>> <has_vhe>
>> 
>> 
>> __kern_hyp_va() is static-inline which is patched wherever it appears 
>> at boot with the EL2
>> ASLR values, it converts a kernel linear-map address to its EL2 KVM 
>> alias:
>> 
>> | ffffa0001010dc5c <__kern_hyp_va>:
>> | ffffa0001010dc5c:       92400000        and     x0, x0, #0x1
>> | ffffa0001010dc60:       93c00400        ror     x0, x0, #1
>> | ffffa0001010dc64:       91000000        add     x0, x0, #0x0
>> | ffffa0001010dc68:       91400000        add     x0, x0, #0x0, lsl 
>> #12
>> | ffffa0001010dc6c:       93c0fc00        ror     x0, x0, #63
>> | ffffa0001010dc70:       d65f03c0        ret
>> 
>> 
>> The problem here is where __kern_hyp_va() is. Its outside the 
>> __hyp_text section:
>> | morse@eglon:~/kernel/linux-pigs$ nm -s vmlinux | grep hyp_text
>> | ffffa0001158b800 T __hyp_text_end
>> | ffffa000115838a0 T __hyp_text_start
>> 
>> 
>> If I disable CONFIG_SHADOW_CALL_STACK in Kconfig, I get:
>> | ffffa00011527fe0 <__kvm_tlb_flush_local_vmid>:
>> | ffffa00011527fe0:       d100c3ff        sub     sp, sp, #0x30
>> | ffffa00011527fe4:       a9027bfd        stp     x29, x30, [sp, #32]
>> | ffffa00011527fe8:       910083fd        add     x29, sp, #0x20
>> | ffffa00011527fec:       92400000        and     x0, x0, #0x1
>> | ffffa00011527ff0:       93c00400        ror     x0, x0, #1
>> | ffffa00011527ff4:       91000000        add     x0, x0, #0x0
>> | ffffa00011527ff8:       91400000        add     x0, x0, #0x0, lsl 
>> #12
>> | ffffa00011527ffc:       93c0fc00        ror     x0, x0, #63
>> | ffffa00011528000:       f9400000        ldr     x0, [x0]
>> | ffffa00011528004:       910023e1        add     x1, sp, #0x8
>> | ffffa00011528008:       92400000        and     x0, x0, #0x1
>> | ffffa0001152800c:       93c00400        ror     x0, x0, #1
>> | ffffa00011528010:       91000000        add     x0, x0, #0x0
>> | ffffa00011528014:       91400000        add     x0, x0, #0x0, lsl 
>> #12
>> | ffffa00011528018:       93c0fc00        ror     x0, x0, #63
>> | ffffa0001152801c:       97ffff78        bl      ffffa00011527dfc 
>> <__tlb_switch_>
>> | ffffa00011528020:       d508871f        tlbi    vmalle1
>> | ffffa00011528024:       d503201f        nop
>> 
>> 
>> This looks like reserving x18 is causing Clang to not-inline the 
>> __kern_hyp_va() calls,
>> losing the vitally important section information. (I can see why the 
>> compiler thinks this
>> is fair)
>> 
>> Is this a known, er, thing, with clang-9?
>> 
>> From eyeballing the disassembly __always_inline on __kern_hyp_va() is 
>> enough of a hint to
>> stop this, ... with this configuration of clang-9. But KVM still 
>> doesn't work, so it isn't
>> the only inlining decision KVM relies on that is changed by SCS.
>> 
>> I suspect repainting all KVM's 'inline' with __always_inline will fix 
>> it. (yuck!) I'll try
>> tomorrow.
>> 
> 
> If we are relying on the inlining for correctness, these should have
> been __always_inline to begin with, and yuckness aside, I don't think
> there's anything wrong with that.

Agreed. Not having __always_inline is definitely an oversight, and we
should fix it ASAP (hell knows what another compiler could produce...).
And the whole EL2 aliasing is utter yuck already, this isn't going to
make things much worse...

I can queue something today for __kern_hyp_va(), but I'd like to make
sure there isn't other silly mistakes like this one somewhere...

>> I don't think keeping the compiler-flags as they are today for KVM is 
>> the right thing to
>> do, it could lead to x18 getting corrupted with the shared vhe/non-vhe 
>> code. Splitting
>> that code up would lead to duplication.
>> 
>> (hopefully objtool will be able to catch these at build time)
>> 
> 
> I don't see why we should selectively en/disable the reservation of
> x18 (as I argued in the context of the EFI libstub patch as well).
> Just reserving it everywhere shouldn't hurt performance, and removes
> the need to prove that we reserved it in all the right places.

I'd certainly like to keep things simple if we can.

           M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
