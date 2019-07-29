Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB6878EDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EUBLAfcF9DaUVZGo7/C6LN6MXq7zK1PErt0ZGt2QyM=; b=l0J7+zPp1/+hFR
	mFsb+ufmd9ZeRo+tSDgIxakuO3jdzOjglFZCDZTtxPrB6iqK1UPAe7WQwEeZidZmCK+T4Bxu0V8Hy
	VryQAeGEeYplN/+CvbhHhF2Hxy0B2H3REUVEHp5f7Du9QdSIWqelFw3Xfaa3TgkfgiYYWO4dL47Zh
	xaW6TnaQntMYk4Y7tGvlGXXropSckoxkniLsjXxyjZwDFjMh+mmhXn8GfnwSjopfJVgV16bEK9Agh
	BPKN9HC0GzVZeldDRlsNo6jsbCgmLSLjz0jH9rhWBfMtd8HH8XIBGalcLU1GCHZ395/Ddka1cbiwf
	Is8D5pBFOXT4nRWLuOHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7M4-00086h-Pa; Mon, 29 Jul 2019 15:14:28 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7Ls-00086I-TA
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:14:18 +0000
Received: by mail-oi1-x243.google.com with SMTP id w79so45544282oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 08:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QKwNe5901Ar59F4ewgB54vfKWVjam9wO93AUxklA9eg=;
 b=Ky2cH0RvxbOd3ctoIPc6HhSp2B5t7EgczcOYgPoheWpcc/JlPNrpzIagdkyLjRyihd
 vaslRDECpUCUknFudF/eCM2N7qI3fNSznHUy9RskfWKszhnkDeOZCPJ1f7LH9PNrSBH8
 YljCFu/4QQMieGK6T0vV4qjN3KbsF5dU1NicSC2SgH/ZoEyGXVshBmxjAVFSueJjRJ82
 J3W/uJ9yeoWUi8bYyQQFu+jG81TyJZpjRcvWSFOvgy+rVKjkNa5reOHilwOZdEqzC8zw
 bqfsawexyL9mb/KUqYzZ6mI1PyBAr+z4jYEQn+DSUpHImxMKZ2PrrT5K2c6QPoUCPLNn
 M2kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QKwNe5901Ar59F4ewgB54vfKWVjam9wO93AUxklA9eg=;
 b=PGapHTCpEKTJt7HebgnrVFg2VS4MySl7eyhAgyNqQ1RYMETdCgHfwVck1eAhuLhxcZ
 gRh5Igfwfs7ad/puwGmdv//LiZ7RcLXd/AliW1yB5thJkBPaAaDnmr7q/TWi5QKsCwxj
 eiYUlNlDRFrQkMqRTWqlKGVYMekX5lWywv6ZEWZKEQylChZkpobquRcMLHAOG+nVmIlv
 LBgyP5PYMtmGyPve3J875K1eahZExYB3NtGnSxi41u0kPtP4Ztq44MRVVZ3qYIpU8ft6
 M2SuiV7Ot/GU1pmdkxFGUxrbjtgNNy2dMR24jCC3CDp+tFnr4kSxA6xbvBSQcW889Ccb
 9feQ==
X-Gm-Message-State: APjAAAV97bKIPVQJ4GkTsFhbNU3vNsG01alyTwinLfmohEkZTtFYCIB0
 YJZxWTodc+Ru8qFIx3li5SRDjDRJFwuJJsjKck6MKQ==
X-Google-Smtp-Source: APXvYqy1SOizrbX4PdtTO7Aqu4qPMb6FtbDiVwurYK99tSWCVdlz/omTIrrphI+e2Lr/syJgKwuSHwI41m9kkI9oD1Y=
X-Received: by 2002:aca:b1c1:: with SMTP id a184mr53532646oif.2.1564413253809; 
 Mon, 29 Jul 2019 08:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
In-Reply-To: <1564412266-9790-1-git-send-email-julien.thierry.kdev@gmail.com>
From: Julien Thierry <julien.thierry.kdev@gmail.com>
Date: Mon, 29 Jul 2019 16:14:02 +0100
Message-ID: <CAA3o8kwnEy_BBv-0CAKvB+PkNia8R0n-FVEsQ8ddzRRxOZhryA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Lower priority mask for GIC_PRIO_IRQON
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_081416_946250_2F6031A8 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Marc Zyngier <maz@kernel.org>,
 julien.thierry@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 29 Jul 2019 at 15:57, Julien Thierry
<julien.thierry.kdev@gmail.com> wrote:
>
> On a system with two security states, if SCR_EL3.FIQ is set, non-secure

I meant to say when "SCR_EL3.FIQ is cleared".

Cheers,

Julien

> IRQ priorities get shifted to fit the secure view but priority masks
> aren't.
>
> On such system, it turns out that GIC_PRIO_IRQON masks the priority of
> normal interrupts, which obviously ends up in a hang.
>
> Increase GIC_PRIO_IRQON value (i.e. lower priority) to make sure
> interrupts are not blocked by it.
>
> Fixes: bd82d4bd21880b7c ("arm64: Fix incorrect irqflag restore for
>        priority masking")
> Signed-off-by: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/arch_gicv3.h | 6 ++++++
>  arch/arm64/include/asm/ptrace.h     | 2 +-
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> Hopefully the last surprise...
>
> diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
> index 79155a8..89e4c8b 100644
> --- a/arch/arm64/include/asm/arch_gicv3.h
> +++ b/arch/arm64/include/asm/arch_gicv3.h
> @@ -155,6 +155,12 @@ static inline void gic_pmr_mask_irqs(void)
>         BUILD_BUG_ON(GICD_INT_DEF_PRI < (GIC_PRIO_IRQOFF |
>                                          GIC_PRIO_PSR_I_SET));
>         BUILD_BUG_ON(GICD_INT_DEF_PRI >= GIC_PRIO_IRQON);
> +       /*
> +        * Need to make sure IRQON allows IRQs when SCR_EL3.FIQ is cleared
> +        * and non-secure PMR accesses are not subject to the shifts that
> +        * are applied to IRQ priorities
> +        */
> +       BUILD_BUG_ON((0x80 | (GICD_INT_DEF_PRI >> 1)) >= GIC_PRIO_IRQON);
>         gic_write_pmr(GIC_PRIO_IRQOFF);
>  }
>
> diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
> index b1dd039..1dcf63a 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -30,7 +30,7 @@
>   * in the  the priority mask, it indicates that PSR.I should be set and
>   * interrupt disabling temporarily does not rely on IRQ priorities.
>   */
> -#define GIC_PRIO_IRQON                 0xc0
> +#define GIC_PRIO_IRQON                 0xe0
>  #define GIC_PRIO_IRQOFF                        (GIC_PRIO_IRQON & ~0x80)
>  #define GIC_PRIO_PSR_I_SET             (1 << 4)
>
> --
> 1.9.1

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
