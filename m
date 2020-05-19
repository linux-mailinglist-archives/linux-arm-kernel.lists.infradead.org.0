Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1551D8CE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 03:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ApJDlBkE/AXJZFS+BCRtnAFSkcZpWec5hiLJ6A/8q4=; b=sff7FqP07vTIXC
	mAGnLboJZnvkhPtO8GSniVB09O1z4SnC61q9fCG+QvLYM+r3J22MTHi/nbQmaGfqEXI9xWNYChZ4q
	LhtYbBCVUpKEBbfAICHrb7Udr6DwVqzmDqZGIgD7GSMD8zJavBKlcNl38OEwuy9eaSvY+cpSJ1lx6
	F+SgxEIwM1MCLxzeAXqzp7S9sIVQmnWHZ+wMCeTOoNytf9nChsmq/C1Uva6GpJ9Tw+0TzvC4CEkzy
	rRSlJKj70UfmfcPqFPuLBM3ajs0DchsW0+dZCLoOCLeNKOTc8fibJMVz6rNPFIuvQbA4hzKR3RivP
	xVQ9olath04Cz1a0FfmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaqhy-00089f-Kn; Tue, 19 May 2020 01:06:14 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaqhr-00089F-Au
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 01:06:08 +0000
Received: by mail-il1-x12a.google.com with SMTP id 17so11830400ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 18:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=WXpirZqtYBddTk6Ncg43EgFZLm/F1+r+8igmhzGGDgQ=;
 b=HQY7MAoqIIownxq0AtxsvYJvwvSae2reFIl+iKa9bDLrGa1IuJYNAMJh+2Mj4ARbAo
 JE8EyfADE+R8hJOtPaIhlQle2ltGoOppsBB9IJjhVsmKz3w0LuAylPsXGxwBrwS4W15t
 M4EIB76ReUaHHRr11Cekp5H4BUWFJAGRsyBTMxWZXOf8a5HCbCRVpnZSATMiRgX/Ro87
 bxIGethFu8/zKbsoHTckhl6YuA8aR9N/T3yvoOm9Edv3ksGXNcrIGK9/DoHsepGnb5N1
 f6boqz9GPXpAy1bcgwj8mnCEFgYxhPUdiq/WqH6HAd8kMH93bBFD4oM0gu1qn26nUK2X
 o9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=WXpirZqtYBddTk6Ncg43EgFZLm/F1+r+8igmhzGGDgQ=;
 b=tB4AHUABncrtpC67LPckL+EZGFkserKOgoI4OI9GtBLMY/7c8xEj/m14fKiXH+rWM+
 N96fTyEtX3tAK2j071u7H0M/oF40DwpkSWyZIkPSiM9mwWeFkkXd9s08oQt22W8VJGfY
 1244QZYbOPXH3fUDSVga3SNGKXfioqxX8nzrAr2oE+bCXMUgYIRI0Yu92Cdp0PbBooOE
 fQ0XPSWzQPpddVirjZ0VOrpSUu67ksNB5vuwd3Qzn+T1ewEBwjWY10xnLx0A/YSoTpQp
 gLGArOJDxNVqTrHHd1PM22FUrRIwh6ThpFcfCJ0Rchboc5T/vrnmdFIVw2Ymi2MLP31k
 GbCA==
X-Gm-Message-State: AOAM532NMy2HQDh0PUK63wFVcBzYA9XWVLt1Vq0XYjK9gn4h5D0CBcBY
 zvPtp+vj5tWZpjv9KEnkEpqi6m966d7pvEjUcF9jhnFTebQ=
X-Google-Smtp-Source: ABdhPJxYBTk4jRaJXOTi3j1um42KqKDWBa7Ee1JL9itlM1FLHLBXo7g5TWO+tsKZbVsdDuqk755NTfcio7J5rfLIKxg=
X-Received: by 2002:a05:6e02:2:: with SMTP id
 h2mr16697255ilr.281.1589850365796; 
 Mon, 18 May 2020 18:06:05 -0700 (PDT)
MIME-Version: 1.0
From: Keno Fischer <keno@juliacomputing.com>
Date: Mon, 18 May 2020 21:05:30 -0400
Message-ID: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
Subject: arm64: Register modification during syscall entry/exit stop
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_180607_450747_F587EC79 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Kyle Huey <khuey@pernos.co>,
 Will Deacon <will@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Continuing my theme of "weird things I encounter
while trying to use ptrace on arm64", I ran into the
effect of the following code in the syscall entry/exit
reporting:

```
/*
* A scratch register (ip(r12) on AArch32, x7 on AArch64) is
* used to denote syscall entry/exit:
*/
regno = (is_compat_task() ? 12 : 7);
saved_reg = regs->regs[regno];
regs->regs[regno] = dir;
```

This seems very weird to me. I can't think of any
other architecture that does something similar
(other than unicore32 apparently, but the ptrace
support there seems like it might have just been
copied from ARM). I'm able to work around this
in my application, but it adds another stumbling block.
Some examples of things that happen:
- Writes to x7 during syscall exit stops are ignored, so
  if the ptracer tries to emulate a setjmp-type thing, it
  might miss this register (ptracers sometimes like to do
  this to manually serialize execution between different
  threads, puppeteering a single thread of execution
  between different register states).
- Reads from x7 are incorrect, so if the ptracer saves
  a register state and later tries to set it back to the task,
  it may get x7 incorrect, but user space may be expecting
  the register to be preserved (when might this happen? -
  consider a ptracer that wants to modify some syscall
  arguments, it modifies the arguments, restarts the syscall
  but then incurs a signal, so it tries to restore the original
  registers to let userspace deal with the signal without
  being confused - expect signal traps don't ignore x7
  modifications, so x7 may have been unexpectedly
  modified).
- We now have seccomp traps, which kind of look and
  act like syscall-entry traps, but don't have this behavior,
  so it's not particularly reliable for ptracers to use.

Furthermore, it seems unnecessary to me on modern
kernels. We now have PTRACE_GET_SYSCALL_INFO,
which exposes this information without lying to the ptracer
about the tracee's registers.

I understand, we can't just change this, since people may
be relying on it, but I would like to propose adding a ptrace
option (PTRACE_O_ARM_REGSGOOD?) that turns this
behavior off. Now, I don't think we currently have any other
arch-specific ptrace options, so maybe there is a different
option that would be preferable (e.g. could be a different
regset), but I do think it would be good to have a way to
operate on the real x7 value. As I said, I can work around it,
but hopefully I will be able to save a future implementer
some headache.

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
