Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5891669DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 22:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FT2gp9sbNazRlUOUK9byhB7JcUgr9y33zKp9ZE24yTo=; b=O0LxF/x9hcpgWW
	Rzd0beOrUVzLUcXTwK3RCVPXMxmjpmjnDsaqmGINAy0tTTHHATXqn2uo7BkqpAMooMdYROrJRYdht
	jnkVYJtykz5OPkp5J7PD5vKek0qcBuGyPCgzB32gsx/k2E+AcMCj8JinhsL51CVwymdiyez69qIlu
	/H4TtX7dCYGkwCXRO/+0ydx1V8z/qe+R/qBgolzqFgd9iOwGuC3YmbMWw59lHazwpskxoGQHhR1D4
	1UL8jZpi0hlL3BJJobvLpQKcO5DdrF9m5+Nf8wBiiZsL/aI8cTYFBHBodXbmV9AJk8LLr7A99nNgM
	oDkN2bdZAOL0EZHVR57w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4tPJ-0004A1-MG; Thu, 20 Feb 2020 21:30:53 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4tPA-00045V-Tg
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 21:30:46 +0000
Received: by mail-oi1-x241.google.com with SMTP id r137so9526355oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 13:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oVh5juQDAX3nFGzy3Em/g1lgubn+lOWmnU3guSEX++0=;
 b=RTq29u2kxUZ7TuTu6/Ym0lqftSpWXlPAcHM21XJLsjrek3IdKOMW1tUscmr9452uqf
 cGtzhOfod2s8BNgdoNUHNqlTmpj2oxBLo1LdTfYsHIWkeseMR0rChQMxttyc7fdm6cXC
 pO9BmV28ZaJ89N5Fq1Eubp7A4zTMZrB75cXtgJAQVcueryBUov+4bRLQlb34GG/IdwFc
 YfQf9+JtF3CVJZqfmHUy67G/rbSicvG9o/gBDbefYCzOakJTk9VZxO1dv+LkkO+cV9HO
 m1vGuFvnqWEo2KQxB/GYkTR88H5P63KWA3QnXYcOiOvvlC7nB743GVb5/Z84CSrsYJ6q
 fIWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=oVh5juQDAX3nFGzy3Em/g1lgubn+lOWmnU3guSEX++0=;
 b=G3w6ZV8w1btjGRQI2efgDUrxL2yxHMtdLEcqezqJL+9jV1pboNG6N/g8Kidb2SIsH7
 qOnBZxfDfiHdoG6PrFLTKX7UO6rQBIHJ6RM9KOYvy/jZhms6HuOe1g8AHHJ+CPNP7Ipi
 VezRd7paCIo2q5omQ274zWsi+XT003GgOTj2rDgb2r9qLfErS8X5mBV5YCbUG/h9dLMH
 KFaiYzh3G58It+Z4iVB0f+xDMMrwF9OFzNpyDTXRpkNMDkjC0keUauxeN2x5fEMyQ7KI
 c2E7nBbs815BYocvIgJoROkECbAODNkMPm5Htcczx7uJTznK2uhdz7xel4OSCyJAKr/Y
 vhvQ==
X-Gm-Message-State: APjAAAUYsx+JMZ03JVRY1jm2CXJVZ2DxgUsdFKJcv9gquNScqojxsxML
 VYC3+ikwhSJFzW7KaWdBTA==
X-Google-Smtp-Source: APXvYqwTz7qzppb6KsFhdjw6YO9WvuQdahmdP5SBO9OchLZxzJJasv8cqW4Kx5WO93GyGuS3sgeZEw==
X-Received: by 2002:a05:6808:b1c:: with SMTP id
 s28mr3654588oij.2.1582234243664; 
 Thu, 20 Feb 2020 13:30:43 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id 60sm252865otu.45.2020.02.20.13.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 13:30:43 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:cce4:a148:5f1:8fb6])
 by serve.minyard.net (Postfix) with ESMTPSA id 4C00718004F;
 Thu, 20 Feb 2020 21:30:42 +0000 (UTC)
Date: Thu, 20 Feb 2020 15:30:40 -0600
From: Corey Minyard <minyard@acm.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200220213040.GA2919@minyard.net>
References: <20200219152403.3495-1-minyard@acm.org>
 <20200220142214.GC14459@willie-the-truck>
 <20200220163038.GJ3704@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220163038.GJ3704@minyard.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_133044_961102_B2E24D03 
X-CRM114-Status: GOOD (  27.05  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Reply-To: minyard@acm.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 10:30:38AM -0600, Corey Minyard wrote:
> On Thu, Feb 20, 2020 at 02:22:14PM +0000, Will Deacon wrote:
> > On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:

snip...

> > > After fixing this and doing some more testing, I ran into another issue:
> > > 
> > > * Kernel enables the pt_regs single step
> > > * Kernel returns from the exception with ERET.
> > > * An interrupt or page fault happens on the instruction, causing the
> > >   instruction to not be run, but the exception handler runs.
> > 
> > This sounds like you've broken debug; we should take the step exception
> > in the exception handler. That's the way this is supposed to work.
> 
> Ok, here is the disconnect, I think.  If that is the case, then what I'm
> seeing is working like it should.  That doesn't work with gdb, though,
> gdb expects to be able to single-step and get to the next instruction.
> The scenario I mentioned at the top of this email.
> 
> Let me look at this a bit more.  I'll look at this on qemu and maybe a
> pi.
> 

Ok, this is the disconnect.  I was assuming that single step would stop
at the next instruction after returning from an exception.  qemu works
the same way the hardware I have does.  So I'm assuming arm64 doesn't
clear PTRACE.SS on an exception, even though that seems to be what the
manual says.

You can reproduce this by setting up kgdb on the kernel and hooking up
gdb, setting a breakpoint somewhere that has interrupts enabled, then
doing a "continue".  It will hit the same breakpoint again and again
because the PC doesn't get advanced by the single step and the timer
interrupt is always going to be pending.  I can do a more detailed set
of instructions with qemu, if you like.

I looked at kprobes a bit.  I don't think kprobes will have a problem
with this particular issue, it disables interrupts while single
stepping and doesn't allow a probe on any instruction that would modify
the interrupt settings.  I didn't look at page faults, but I assume that
it also won't allow a probe where there can be a page fault.

If a single-step is enabled and an exception occurs before the
instruction is executed, the single step is happening in the exception
handler when debug is re-enabled.  This what you are saying is how it is
supposed to work.

That's not what gdb is expecting, and that's not how x86 works, at
least.  I looked at ARM and MIPS and they don't even do single steps in
the kernel debugger.  PPC seems to work like x86 from code examination
and since our testers haven't reported this bug on that architecture.

I can do a patch that works sort of like kprobes, disabling interrupts
and simulating a single-step if the instruction modifies the daif bits.
Then you couldn't single step across an instruction that did a page
fault, but that's probably not a huge restriction.

I could modify the patch I have now to ifdef it out unless kgdb is
enabled.

I can do a patch that just pulls single step support out of the kgdb
interface for ARM64, since it doesn't work as gdb expects, anyway.  And
that's what ARM does.

It doesn't really matter to me.  I'm just trying to fix a bug that was
reported to me, and trying to get it upstream as a good citizen.  I don't
use kgdb.

-corey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
