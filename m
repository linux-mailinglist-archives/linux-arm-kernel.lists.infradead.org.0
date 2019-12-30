Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F23712D3BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 20:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmK+tcQQxvh5QVkEdZO4XyXbk1ysPWiIKOmn4mV5qEk=; b=efpKc0seSBJZpZ
	i9kTarSnh8E6WIPt6qztEJDaH6Fo6yZhbGszCAPL+brd5prbUZ/I6MnOP8fyZAvOTFMA7bixC16sh
	4JF1Y6T0z7oZyKh7FFbprcrSdH9lM15n/P8WSe0gtc37uUbrED22hKJ7aArgrK28KbBw8YzRMIvOy
	QZ30idJoVrsGKrA29lXfAgx9t/sO7+5+R2/fq21pwWpFAomZ0qYLn1M4aNdMj+8k7gSLgCd0iNY4l
	uqRb44ppL1h0YvWYwqyHVLmy/CUBW+doj3+GlXJWWZ+A7q7aFzXy0qIuNLc5efMK0tg3ahn4Mz2id
	zqvBAiXRm7FxBVEvL6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0QJ-0007Ii-As; Mon, 30 Dec 2019 19:09:51 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im0Q9-0007IM-2w
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 19:09:42 +0000
Received: by mail-oi1-x243.google.com with SMTP id z64so5086120oia.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 11:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l5vrcOBpMQM+wD2CiDE7HudqKyiykc4pmCTDgesApec=;
 b=VvboCCtt62LwlErn8XsX27ZuxLKW72Rc2NNBKYoji84X7cjeedVOmek6bQFnTckDrD
 myeQ839OulU4xbGBWqjkroDEyaJMtGnk5po7XLJDHxG9Vv+DcrmO60/ID0E+A0RF0chy
 X0JSmDRLz/v1OdHO8vKqS6FmtcgmzN0SOWAoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l5vrcOBpMQM+wD2CiDE7HudqKyiykc4pmCTDgesApec=;
 b=d60Q0cw+hqGeXMsv4im9cjxa31OufREZJZJe6u6fjG9WCHs9LvP0TgnGZEWMBdnDQD
 iDyutJ27No2kiyroM5WrlWFBoFfuHMRJrfvD4H9P8cjiZCbGB8Ql6qPdXiF3nYHnUKpX
 IhuQGQbUd9WmR14LSMB6vCUHwX02swts1L0XX97IKnIbKwhQ5gqyHniSeejXX7H9DOWQ
 k9XrBskrrAdODUXpsHXS7LWcgHEhwAWkLT3fqP9OKu8Z1H2NSen8cBuqCXbdkCf7FLP9
 yZ910nlNEmpvd//iVlc/CdsA3rpp2xUr5ORGTtm4uK1eNRaR4NdbYI5TP93qsZIzucEQ
 zVuw==
X-Gm-Message-State: APjAAAVxgKavNBObnhXdEWu5cpjoE7gPsKT8veuKVsMhqg/gy/byTRAr
 vZaGDgTEp/+UP9HvdTE7UwURlw==
X-Google-Smtp-Source: APXvYqzjJN6h+QJSC2kYqOG5NqtFm1MWnevr9yJ4fYvVa94z4knsiaMz4PBQ2aWlp6ScpFFO70Sjnw==
X-Received: by 2002:aca:db43:: with SMTP id s64mr258891oig.144.1577732979667; 
 Mon, 30 Dec 2019 11:09:39 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m19sm16015454otn.47.2019.12.30.11.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 11:09:38 -0800 (PST)
Date: Mon, 30 Dec 2019 11:09:37 -0800
From: Kees Cook <keescook@chromium.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 00/16] arm64: return address signing
Message-ID: <201912301106.4190F94F1@keescook>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_110941_156050_EB3BF78C 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:02PM +0530, Amit Daniel Kachhap wrote:
> This series improves function return address protection for the arm64 kernel, by
> compiling the kernel with ARMv8.3 Pointer Authentication instructions (referred
> ptrauth hereafter). This should help protect the kernel against attacks using
> return-oriented programming.

Exciting! Can this be emulated in qemu yet? I'd like to see more specific
LKDTM tests added for this (similar to the forward-edge CFI tests[1]),
but I won't be able to do these tests myself since I don't have ARMv8.3
hardware. :) IIUC, the existing lkdtm_CORRUPT_STACK*() tests[2] should trip
with this protection enabled...

Thanks!

-Kees

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/misc/lkdtm/cfi.c
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/misc/lkdtm/bugs.c#n114

> 
> This series is based on v5.5-rc2.
> 
> High-level changes since v2 [1] (detailed changes are in individual patches):
>  - Added support to generate randomness for ptrauth keys for early booting task
>    in primary core as suggested by Ard.
>  - Modified lkdtm ptrauth test-case to change keys to cause crash instead of
>    modifying the lr in the stack.
>  - Resolved a clang compilation issue.
>  - Re-positioned "arm64: rename ptrauth key structures to be user-specific" to
>    reduce code churnings.
> 
> This series do not implement few things or have known limitations:
>  - kdump tools may need some rework to work with ptrauth. The kdump
>    tools may need the ptrauth information to strip PAC bits.
> 
> Feedback welcome!
> 
> Thanks,
> Amit Daniel
> 
> [1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/695089.html
> 
> Amit Daniel Kachhap (8):
>   arm64: create macro to park cpu in an infinite loop
>   arm64: ptrauth: Add bootup/runtime flags for __cpu_setup
>   arm64: initialize ptrauth keys for kernel booting task
>   arm64: mask PAC bits of __builtin_return_address
>   arm64: __show_regs: strip PAC from lr in printk
>   arm64: suspend: restore the kernel ptrauth keys
>   arm64: kprobe: disable probe of ptrauth instruction
>   lkdtm: arm64: test kernel pointer authentication
> 
> Kristina Martsenko (6):
>   arm64: cpufeature: add pointer auth meta-capabilities
>   arm64: rename ptrauth key structures to be user-specific
>   arm64: install user ptrauth keys at kernel exit time
>   arm64: enable ptrauth earlier
>   arm64: initialize and switch ptrauth kernel keys
>   arm64: compile the kernel with ptrauth return address signing
> 
> Mark Rutland (1):
>   arm64: unwind: strip PAC from kernel addresses
> 
> Vincenzo Frascino (1):
>   kconfig: Add support for 'as-option'
> 
>  arch/arm64/Kconfig                        | 27 +++++++++++-
>  arch/arm64/Makefile                       | 11 +++++
>  arch/arm64/include/asm/asm_pointer_auth.h | 59 ++++++++++++++++++++++++++
>  arch/arm64/include/asm/compiler.h         | 20 +++++++++
>  arch/arm64/include/asm/cpucaps.h          |  4 +-
>  arch/arm64/include/asm/cpufeature.h       |  6 +--
>  arch/arm64/include/asm/insn.h             | 13 +++---
>  arch/arm64/include/asm/pointer_auth.h     | 54 ++++++++++++------------
>  arch/arm64/include/asm/processor.h        |  3 +-
>  arch/arm64/include/asm/smp.h              | 10 +++++
>  arch/arm64/include/asm/stackprotector.h   |  5 +++
>  arch/arm64/kernel/asm-offsets.c           | 16 +++++++
>  arch/arm64/kernel/cpufeature.c            | 30 ++++++++++----
>  arch/arm64/kernel/entry.S                 |  6 +++
>  arch/arm64/kernel/head.S                  | 47 +++++++++++++++------
>  arch/arm64/kernel/insn.c                  |  1 +
>  arch/arm64/kernel/pointer_auth.c          |  7 +---
>  arch/arm64/kernel/probes/decode-insn.c    |  2 +-
>  arch/arm64/kernel/process.c               |  5 ++-
>  arch/arm64/kernel/ptrace.c                | 16 +++----
>  arch/arm64/kernel/sleep.S                 |  8 ++++
>  arch/arm64/kernel/smp.c                   | 10 +++++
>  arch/arm64/kernel/stacktrace.c            |  3 ++
>  arch/arm64/mm/proc.S                      | 69 ++++++++++++++++++++++++++-----
>  drivers/misc/lkdtm/bugs.c                 | 36 ++++++++++++++++
>  drivers/misc/lkdtm/core.c                 |  1 +
>  drivers/misc/lkdtm/lkdtm.h                |  1 +
>  include/linux/stackprotector.h            |  2 +-
>  scripts/Kconfig.include                   |  4 ++
>  29 files changed, 388 insertions(+), 88 deletions(-)
>  create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
>  create mode 100644 arch/arm64/include/asm/compiler.h
> 
> -- 
> 2.7.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
