Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416FED5C96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+9JCxnPbO4g5dogwXZzXI8XcGZGtyJXELYZjFSnWg0=; b=bqj5jpv8lhrn2e
	P4DDJ/q8OOb7GCaA+8JE0LnGMLrxvPnTW5GAsmgqykchjEenKLj0/GmlXw/CbSAFPV9GFRKStHxTc
	kIYOru7704qzwJUWcb9RTzAIG7s8cOJpErBc+vUXiPMcnlF4jvWOuDQ0VnQL3BdmlUEKLXzGWrm5e
	tVEQ2weMZ+1FOx3LBk0/uURBee9kjYDKXYn+jdv/eePOLsE3S07isLUP8RJJ2JHpOw2mSJSQ2Xzng
	xMh3vbtF2GixfhI+gw6d3+VwcCkdmY9xUfGP+QMsTR7dmK1NA3mNikdjG7b+b0dU0SHvfIAhvN0fE
	2zLMOuQRugn/LyJNrqxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJv1e-0002cl-47; Mon, 14 Oct 2019 07:44:18 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJv1W-0002cR-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:44:11 +0000
Received: by mail-qk1-f196.google.com with SMTP id x134so15090336qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:44:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Th8+PaRjqfrVclFmGSa4ziCjIND3/k2iwSpjIet79bA=;
 b=mmrkWxcr4KirI1wHC6yclWCFKJBuJomBBBUi8T6GiuqpA5OyfvbeHNheZTEBkGj2ra
 yJgZG/cj7pDH+0q/p1C7z1FxLa+yQxiowd80lZBwZfXwnLu/5sUXmKgBppjRyQ9YaBjY
 1uO+hTo5jHy2I0XYtQ5ELsPMOs/UNOeuk3hZdWCgjLiTyN61aD2N5c9Yhsc5qGAtVRXF
 0crMzVMDmJ7hUgAAivrWhZFC5lvOcufGbxLpOL5Dr2IyrPY1ytThUfvvWZq2VIxYUB9U
 xMEV1JdKdYHKkjzgrTkJl6edGFBte8zNOs+7q78unhYjIxq/EzsSGz/pT6/ZUHD07r1h
 wD2g==
X-Gm-Message-State: APjAAAUFeoNPkhE8xDkKqrZyoM1SbWC4vRw+upDGsVUo5opWweTE3O7M
 xs1lG4cXOxuwrPETK4ury+JeNzaDRl4ANcipo/w=
X-Google-Smtp-Source: APXvYqyc3WuiQQNChn49ipIYrsi7R8Cr3Z39fmTe75l40EWivcSBqQ8SM08Qr+aAqEkiACVAE48OuzJZkDMb4DgD8ZI=
X-Received: by 2002:a37:9442:: with SMTP id w63mr28085661qkd.138.1571039049189; 
 Mon, 14 Oct 2019 00:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-7-sebastian@breakpoint.cc>
In-Reply-To: <20191013221310.30748-7-sebastian@breakpoint.cc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 14 Oct 2019 09:43:53 +0200
Message-ID: <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
Subject: Re: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_004410_540160_FB4736E5 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:14 AM Sebastian Andrzej Siewior
<sebastian@breakpoint.cc> wrote:
>
> On non-preemptive kernels, the locking instruction is less than 64 bytes
> and it makes sense to inline it. With PREEMPTION the kernel becomes very
> big if the locks are inlined.
>
> Signed-off-by: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
> ---

At the moment, we have two architectures selecting all 28 symbols
and you are adding a third, all other architecture select none of them.

This tells me that the configurability has gone a little overboard. How about
adding a shortcut ARCH_INLINE_ALL_SPINLOCKS that selects the 28
symbols and using that for arm/arm64/s390?

Also, the output of 'size vmlinux' before and after the patch for
multi_v7_defconfig would be useful to have in the changelog, as there
are a couple of platforms that are particularly sensitive to object code
size changes.

      Arnd

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 4c780e7387208..21edc8e649261 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -26,6 +26,32 @@ config ARM
>         select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
>         select ARCH_HAVE_CUSTOM_GPIO_H
>         select ARCH_HAS_GCOV_PROFILE_ALL
> +       select ARCH_INLINE_READ_LOCK if !PREEMPTION
> +       select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_READ_LOCK_IRQ if !PREEMPTION
> +       select ARCH_INLINE_READ_LOCK_IRQSAVE if !PREEMPTION
> +       select ARCH_INLINE_READ_UNLOCK if !PREEMPTION
> +       select ARCH_INLINE_READ_UNLOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_READ_UNLOCK_IRQ if !PREEMPTION
> +       select ARCH_INLINE_READ_UNLOCK_IRQRESTORE if !PREEMPTION
> +       select ARCH_INLINE_WRITE_LOCK if !PREEMPTION
> +       select ARCH_INLINE_WRITE_LOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_WRITE_LOCK_IRQ if !PREEMPTION
> +       select ARCH_INLINE_WRITE_LOCK_IRQSAVE if !PREEMPTION
> +       select ARCH_INLINE_WRITE_UNLOCK if !PREEMPTION
> +       select ARCH_INLINE_WRITE_UNLOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_WRITE_UNLOCK_IRQ if !PREEMPTION
> +       select ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE if !PREEMPTION
> +       select ARCH_INLINE_SPIN_TRYLOCK if !PREEMPTION
> +       select ARCH_INLINE_SPIN_TRYLOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_SPIN_LOCK if !PREEMPTION
> +       select ARCH_INLINE_SPIN_LOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_SPIN_LOCK_IRQ if !PREEMPTION
> +       select ARCH_INLINE_SPIN_LOCK_IRQSAVE if !PREEMPTION
> +       select ARCH_INLINE_SPIN_UNLOCK if !PREEMPTION
> +       select ARCH_INLINE_SPIN_UNLOCK_BH if !PREEMPTION
> +       select ARCH_INLINE_SPIN_UNLOCK_IRQ if !PREEMPTION
> +       select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
>         select ARCH_KEEP_MEMBLOCK if HAVE_ARCH_PFN_VALID || KEXEC
>         select ARCH_MIGHT_HAVE_PC_PARPORT
>         select ARCH_NO_SG_CHAIN if !ARM_HAS_SG_CHAIN
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
