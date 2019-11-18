Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753441007B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 15:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n52fuV4Ndh8nQ+prdWGgidVDGHPyUOyHzxskxrst7C4=; b=L/XbB5uWlmohZX7hDeioTAaAC
	9OtBH71Y17JdxMtQ4JHWpMkE8fijTmTygeqts39sMWsnk0+32ffwSbWCgE2Rn5xmB1heer4cNLrkE
	oE4j9isdDpvmeVuTz48y/RBuWoIE8TYFMcWdVoWaZ9BnDdbnW7x4EoTua4RQX3WSOPLbJZ4sXXQH9
	ktZTUz9imWRlrmrEX5E1CKu1oRHFNLX47GIC+vmirpyXVBhIlh8GRnynOQmVDuAIZBRR1tDhEqVYF
	6cXMEFHrSZHeHg3aSPQcF6/6+pKAYWId5FNosss4nOYQbbu23iVfzO8+i3RU9ootZM+Mp4Y5z7vi/
	8CZFcKP/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWiQt-0005Ek-Sw; Mon, 18 Nov 2019 14:55:15 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWiQj-0004IK-2p
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 14:55:06 +0000
Received: by mail-qk1-x731.google.com with SMTP id 205so14650685qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 06:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mo9hZreWIgIV52GZx2gRV0LBo3QGbmXKWkURVkAfnz0=;
 b=YMdqZyqiQGr10xPdw7s7aSRIDHhWi3ar7uKTRwdbrnxXpYHHffnmKvc6jrek9EMeYP
 5wjvVdiMsI5Y/LKVwX2FN6vKVQQXqt8ZhUSfSoefx4I9aBdpt0OG0t2sG8dF9UFYuIBA
 vk/AbyTWwp3lgNeARgdGRLuhM4bA4B+Y4pH/8Mkio7tgiXPMjDIhFMDH3Az93M4WDBez
 BZs/nJMbYAl04nZsq5g1UV6bqhODU4v8LEYoEPg93h7qFlIcexj0M4KuPsByjGwZoWu4
 cb0wOD95cgf1gYCtpVuSZdify2oTxlqU9+9luWfVoTHfMOHwvhCvKJLw+lzOEnfd/IIF
 CREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mo9hZreWIgIV52GZx2gRV0LBo3QGbmXKWkURVkAfnz0=;
 b=STsra0k0vK5Qh4hqnJUNfvTXaVCVwU+1G6/wbQ2SDcxcdKLPia4AJJUikMFe9J5RG0
 QOsCwXJlBAizRI+9l5IVL/3sDM1F1f8O1AUjnobkj3tfvhBfg5YrrAYCW7DdCGhUc6QR
 njVgW/o1Byd9cxW3FqjFiXE1CGh6gtvOjjcmjuR6K/LpLnySvfgO2LFTyi+prhUcSWZy
 CsbBLB3BBqbgjtdA2lHf4i7QvnOfenz4WMYv6WMHLflYD4iK9t09SN0dExR9QadWI1/F
 WcOenV/nRFDKbLl83sxoXecCoPSCiVDgd8bBaMJxYnwcIhnST17gj6+urzoFhKFnWxCT
 nDbQ==
X-Gm-Message-State: APjAAAVofBwQoTHMvBON+cLDIY94mn+BgnpVV8uMbZe2/h3gDqK+tF0/
 uVmhaHXoH5jvkQ8guC+Tr6b36w==
X-Google-Smtp-Source: APXvYqwdRf8w0djfBAdb0yozGb+IdEgOeAlgWPhwXLmDW7TZnaOg2pEJ9XZuQOqkFDZjlxbiuLPaZg==
X-Received: by 2002:a05:620a:3dd:: with SMTP id
 r29mr25412679qkm.370.1574088901645; 
 Mon, 18 Nov 2019 06:55:01 -0800 (PST)
Received: from [192.168.15.17] (201-43-8-90.dsl.telesp.net.br. [201.43.8.90])
 by smtp.gmail.com with ESMTPSA id
 j10sm10353528qtb.34.2019.11.18.06.54.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Nov 2019 06:55:00 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
To: Will Deacon <will@kernel.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
Date: Mon, 18 Nov 2019 11:54:58 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118131525.GA4180@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_065505_136095_05934BC2 
X-CRM114-Status: GOOD (  31.34  )
X-Spam-Score: 4.7 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
 2.4 RCVD_IN_SORBS_SOCKS    RBL: SORBS: sender is open SOCKS proxy
 server [201.43.8.90 listed in dnsbl.sorbs.net]
 2.5 RCVD_IN_SORBS_HTTP     RBL: SORBS: sender is open HTTP proxy server
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Thanks for the thorough explanation.

On 11/18/19 10:15 AM, Will Deacon wrote:
> Hi Luis,
> 
> [+Mark for the valid_user_regs() part]
> 
> On Tue, Nov 12, 2019 at 08:22:10PM -0300, Luis Machado wrote:
>> I've noticed, under very specific conditions, that a PTRACE_SINGLESTEP
>> request by GDB won't execute the underlying instruction. As a consequence,
>> the PC doesn't move, but we return a SIGTRAP just like we would for a
>> regular successful PTRACE_SINGLESTEP request.
>>
>> Since there are no software breakpoints inserted at PC (we are actually
>> stepping over a breakpoint, so GDB removes the breakpoint at PC before
>> issuing a PTRACE_SINGLESTEP request), this is an odd behavior.
>>
>> Though not too harmful, i see this manifesting in the GDB testsuite
>> (gdb.reverse/insn-reverse.exp), which throws the test off by making GDB
>> think it is further in the instruction stream than it really is. In fact, we
>> get lucky here and no FAIL's show up, only many more spurious PASSes.
> 
> I managed to reproduce this locally and I think I've figured out what's
> going on, although I'm not sure that the kernel is the best place to fix
> it.
> 
> Looking at the specific reproducer:
> 
>> Execute gdb like so:
>>
>> gdb -ex "set displaced-stepping off" -ex "b load" -ex "run" -ex "record" -ex
>> "si" -ex "rsi" -ex "record stop" insn-reverse
> 
> So we've got a couple of instructions as follows (it doesn't actually matter
> what they are, so I've changed the LD1 in your binary for a NOP in order to
> avoid confusion with the "load" label not actually pointing at a load):
> 
> 	0x7b8:		mov	// "load"
> 	0x7bc:		nop
> 
> "b load" places a breakpoint at 0x7b8:
> 
> 	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201fd4200000) = 0
> 
> We run to a software breakpoint on "load" (the mov instruction). We take
> the trap and try to execute the "si", which means we need to remove the
> breakpoint while we step over it:
> 
> 	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201f910003e0) = 0
> 	[...]
> 	ptrace(PTRACE_SINGLESTEP, 662, 0x1, 0)  = 0
> 
> This causes the kernel to arm the single-step state machine so that
> MDSCR_EL1.SS == SPSR_EL1.SS == 1 (known as "active-not-pending"). Running
> an instruction in userspace will transition to MDSCR_EL1.SS ==1 and
> SPSR_EL1.SS == 0 (known as "active-pending"), which will cause the trap to
> trigger, at which point gdb puts the breakpoint instruction back since the
> step is complete:

So, just to confirm my understanding, we have a couple bits controlling 
single-stepping in the kernel, one in MDSCR_EL1 and another in SPSR_EL1. 
GDB doesn't have direct access to any of those, correct?

Instead, GDB has access to a SS bit in the reserved 21~22 range of CPSR.

The transition from active-not-pending to active-pending takes place via 
a single PTRACE_SINGLESTEP request? Is that correct?

> 
> 	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201fd4200000) = 0
> 
> This is where things start to go wrong. The "rsi" command attempts to
> perform a reverse step, which means restoring the old state when we were
> previously executing at 0x7b8. It starts by removing the breakpoint again,
> since we've already hit that:
> 
> 	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201f910003e0) = 0
> 
> and then resets the CPU registers to their old values:
> 
> 	(I don't know why it does this three times)
> 	ptrace(PTRACE_SETREGSET, 662, NT_PRSTATUS, [{iov_base=0xffffff64b3c8, iov_len=272}]) = 0
> 	ptrace(PTRACE_SETREGSET, 662, NT_PRSTATUS, [{iov_base=0xffffff64b3c8, iov_len=272}]) = 0
> 	ptrace(PTRACE_SETREGSET, 662, NT_PRSTATUS, [{iov_base=0xffffff64b3c8, iov_len=272}]) = 0
> 
> The problem with this is that we have moved the PC back to 0x7b8 but we have
> also cleared SPSR_EL1.SS to 0. Internally, the kernel hasn't seen stepping
> get disabled (this usually happens by PTRACE_CONT calling
> user_disable_single_step()) which means that MDSCR_EL1.SS remains set to 1
> and we're in the active-pending state! Consequently, we immediately take a
> step exception if a step operation is attempted >

While trying to reproduce this, i was paying attention to the SS bit 
coming and going. But in the particular sequence of si/rsi, within the 
record boundaries, i see GDB just restored the original CPSR value to 
what it was before we processed the si command.

 From GDB's POV all state was restore to the way it was before and we're 
good to go.

Is this not enough to restore state kernel-wise?

> Now, we *could* consider hacking the TIF_SINGLESTEP check in
> valid_user_regs() so that SPSR_EL1.SS is preserved when stepping is active
> but this is a user-visible change and may break things like stepping out of
> signal handlers. I would prefer that GDB manages the SS bit explicitly in
> this scenario, by setting it to 1 when restoring the old state in the
> reverse step, a bit like when it disables the old breakpoint. You can
> emulate this by doing:

I think we could let GDB control this when required, but I'm trying to 
understand the ramifications of letting GDB do so.

For example, what if the user decides to alter the PC here and there, 
for debugging purposes. That is a use case that happens often, in order 
to go back or skip some parts of the code.

Would we need to pay attention to the SS bit in those cases as well?

> 
> 	(gdb) set $cpsr |= (1<<21)

In particular, what does the switching of this bit accomplishes in the 
kernel? Would we be better off forcing the SS bit every time we do a 
single-step operation, for example?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
