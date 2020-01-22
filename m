Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0274B144DD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:45:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RP/F6owcChQM8/g89OIsjpLdZv7gMd+4e2HgyDkbxs=; b=q/y0A/EQS7RgGl
	zkRYVo8pB4dLe5xeCks2noDmsZ576/gPXHblidf++ZtSs2vGn4csqq/cuMgSw5XL3lEfx2rENA3Jc
	oYbtjTBlTX0MKDAlptAs7F0rPxgL9rhf4wwaCIXZ8r/t+H7nDMYX0uQB4Lw+igfFcy5GI2vCs/sQ/
	y9GMaYasZoYN980MxJneIx3IoiQAu8HKjP9nOVFQGKdUe4+l/VgT1+qDd8iN1tg4gVRp7GvVQk3sP
	a3rB8QHwAHfWALEZWVvonCLD/Zn2A5Vw1X7OBvryhkCuL3GR//DVe2XtxAOTHZtovwW2cDZ/hfX4j
	K335UsVMNXIzTgY45j5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuBdE-0006cr-Hj; Wed, 22 Jan 2020 08:45:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBd3-0006c5-Ky
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:44:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so6270702wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 00:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hu6i7+OF9mR8F3w5C3TJgAWmFNe6HaLCn5UdN9iPgOA=;
 b=nQp9FLyeLgb/fXEvPeK11RHCWEMW2rE23mzdtNEua4LC3cIohmdNMQVXa2CDFFbMIt
 ObM6j6bi7LwsRd1rd33z4gM8xoKEuX4zcdqZlyLnf7MvWPKVcWfFVD+L7z1lVYGBNjIN
 HzwnQbvZl9+j9+1ZkwSDQs1Pq7e3hmMcxfAakv38ufKcsWuZrERDcQ88UHKmjD+BeU6S
 qenZdyJ680sHaQm3oEy+pIk1dNHwY+lBVYonqxlrKBJaxEtB5LqAh0J9yZpcHu6i6s8W
 w+r+tWkgogrBHapipWy4pE0IbtF2reJ2vdzK49U+Wcp5Ht45DVzyhDL6f0xrCOoGMLHI
 6DSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hu6i7+OF9mR8F3w5C3TJgAWmFNe6HaLCn5UdN9iPgOA=;
 b=oihsgzRu7sFJaA+ol6AANcPDIv5KAx4Ncr0BbvrTcmL+HUDHcOatr1HGBEKICbhUaA
 RhpS3bBpvtERiILErZWGKEt13zHkLoclZQFL6Hp1jQmPrJg2tPJg6VU17NxvMsYPhRLQ
 0m7OeXxr6sg4zAvL0c7IiIK4S0JPpK0D5PCObCkR+hhOzCFjknqZcuts770JpC2cRe52
 syxCTljp0k4985sY2FwY+TkI/cVXEdOXbw9awmlnB0jV+5gOBoPn9sNxcayo7dA3F0o/
 TyRYF6aoyCC6TLzYEiYWmR5HxWmcfTeKvC78dYHYgIudh+5sxj7djxHS2omDvzr6QjOQ
 jN2A==
X-Gm-Message-State: APjAAAWkbqv5W2q1agUBAR739vkpVa8aPBtk4tSMnymngAmUYLv4I7aI
 1AUnr4YLPP6U4e3KP9zQSy6aaIqEvtm+R1GJ+bRUHesdmHY=
X-Google-Smtp-Source: APXvYqz74zeJdWMwNNIbooWfqzFvYJT2HMq9I7Rh96xPUg3E7W2cQyPPCkBIid/NcwfmK5tQklzVxMKMROUCLjW0YZU=
X-Received: by 2002:adf:fe86:: with SMTP id l6mr10142511wrr.252.1579682684686; 
 Wed, 22 Jan 2020 00:44:44 -0800 (PST)
MIME-Version: 1.0
References: <20200121125853.28825-1-broonie@kernel.org>
In-Reply-To: <20200121125853.28825-1-broonie@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 22 Jan 2020 09:44:34 +0100
Message-ID: <CAKv+Gu9_5EPbvBtsj2ys8HQrFdW0mzfAkG+5XXPzTuGH=ZkdTg@mail.gmail.com>
Subject: Re: [PATCH v13 0/2] ARMv8.5-RNG support
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_004449_720946_EA14001C 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 at 13:59, Mark Brown <broonie@kernel.org> wrote:
>
> This series is based on Richard Henderson's previous v7, it addresses
> review comments from that version by dropping the boot time RNG
> support and adds a new change that uses the v8.5-RNG extension to
> seed KASLR when ARCH_RANDOM is enabled.  The boot time support
> will be re-added later, there are awkward potential interactons
> with CPU feature enumeration which need a bit more thought.
>
> v13:
>  - Re-add the hwcap code which was accidentally dropped from v12.

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> v12:
>  - Move definition of __early_cpu_has_rndr() into KASLR patch.
> v11:
>  - Add a hwcap for v8.5-RNG.
>  - Drop the addition of data to the pool, it's of questionable
>    value and we need to go back and get the addition of actual
>    entropy working anyway.
> v10:
>  - Spell out that we're adding data not entropy from setup_arch() in
>    the commit message for patch 2.
> v9:
>  - Make another static inline helper for early feature checks.
>  - Add init annotations.
>  - Use xor to add RNDR output to seed for KASLR.
>
> Mark Brown (1):
>   arm64: Use v8.5-RNG entropy for KASLR seed
>
> Richard Henderson (1):
>   arm64: Implement archrandom.h for ARMv8.5-RNG
>
>  Documentation/arm64/cpu-feature-registers.rst |  2 +
>  Documentation/arm64/elf_hwcaps.rst            |  4 +
>  arch/arm64/Kconfig                            | 12 +++
>  arch/arm64/include/asm/archrandom.h           | 75 +++++++++++++++++++
>  arch/arm64/include/asm/cpucaps.h              |  3 +-
>  arch/arm64/include/asm/hwcap.h                |  1 +
>  arch/arm64/include/asm/sysreg.h               |  4 +
>  arch/arm64/include/uapi/asm/hwcap.h           |  1 +
>  arch/arm64/kernel/cpufeature.c                | 14 ++++
>  arch/arm64/kernel/kaslr.c                     | 11 +++
>  10 files changed, 126 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/include/asm/archrandom.h
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
