Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AD9A27B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5auSMpCU5BqzYc5viuIWtbN978oSJnhTDY3qhCBejU=; b=hMm/qFN9mxZyiU
	Bjw8q5Ea/DFL01hvvz2NiXGkTogtb/iZUJezzijHYuxydqWMFzoZwskil3FF57df6sed/cVtUCnZ8
	fIPDMPj6OT+QeT+YmqniS5hPUXmWGyVRO7JQ7lszTLU+heECxtdJSl9cWUUL1ihnQxhyXVyhb6oTL
	VhKVsMeEHut15xBLHVCES7hUQXfVNkASLHFEUyk/7XCYAZNU6X3CyeZfQgK4bMnOQfOrgbQa4PZ2z
	YH9wXAgoR8txr2UgtZuK7diy8gmN+YBgD4SmIX65oEltkGoJjPIhHbdeoLS2phmTeEr2i54FqQPuh
	acm9I/vFnFIU1U8FSoyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Qhc-0004pC-8p; Thu, 29 Aug 2019 20:07:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3QhR-0004or-He
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:07:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so2163816pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=haCSeX2piH6XuuFz4wZ1L2THJBREyP5U4CnjBdy2zwM=;
 b=nXBIiqmdYX0SiEl2ujMZ3B7+vm5Q2obFy8347X2zvwAAd8RmeDg9OHhhNAhj4UsEq0
 Ya1RqpwyCR/VO4GLbQ+v4m/P6ReS23Tbs1cd3HNzWhQjWslObLlloH+0LhakUi8mk3oH
 YbaaPrZXdyw0rJEUOqTPspa89Nrbypww500YNDpbmb4UohMzlevfKGzJIlZkCgE/IbRW
 dnHzK7rmBUam7uREoL9DKGvBWH645RNRf2hinAc0CV/3rp2vdrs9NZMMfa9LXNWvE4Gv
 SKPmW8rg+0Yh+S+ieySsQEEXy9H4ob1MyvlYoAHZv9JNNpVlFB3UFuGEuZ3drQwzsM5E
 Rfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=haCSeX2piH6XuuFz4wZ1L2THJBREyP5U4CnjBdy2zwM=;
 b=X0QVb2gqZSNzOdT0319mX7yZhrJMu6CfmP7IxRh9f501NqQDVgVT9OOZcPCDm8+mh6
 NfP9h6YlcnzVy+emN1UnK82MyVL2B1ERb5BCltzACHy2a2HiZDQ0Wjo+9Kmkgck7dSS1
 XRLMXNe1FIVRwuORaJ1zjHCe3BhPsfRN6MnEfcP9v7KErbraorbfqSAU8u/cgDWueK3O
 12RXUu0e/polBiO4W+XZfHu7vJb9Q/UeMvIYkK3EgdC8DJqQ68kSl9mpKkcbajud09bZ
 +9dYKXH36gx4H4hGX7XpUreLYtDmuBvsQrgz0OtwxZWOxKw6e3Z5lgRBJaC1mZlutqby
 Z3zw==
X-Gm-Message-State: APjAAAUM+02AOVY9/bzm/SMIW/BGuKkwPqXh9frq81zfIlpaCytso9KB
 9N9aZMrzhh/F8eIE7pYFp2HScRR35LtLS29trFrzPA==
X-Google-Smtp-Source: APXvYqzmb9f1BYrf6B+G+QBpQwnn9Y1EKIODoQOqYNzxORlT7DbmtuvS4jVZxdA9xHx9U5v5LbT0NAajdaopUDFFewo=
X-Received: by 2002:a17:90a:2525:: with SMTP id
 j34mr12152399pje.11.1567109235819; 
 Thu, 29 Aug 2019 13:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-6-will@kernel.org>
 <CAKwvOdmRa+cc7tEzHrOwcDt28OmAHEWiysy64FzJCU6d25k5QQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmRa+cc7tEzHrOwcDt28OmAHEWiysy64FzJCU6d25k5QQ@mail.gmail.com>
From: Tri Vo <trong@android.com>
Date: Thu, 29 Aug 2019 13:07:04 -0700
Message-ID: <CANA+-vA8CcSKPU-0Pyaxd5YOprTzqAq9KAZ2Ta1pf-zNdNB3BA@mail.gmail.com>
Subject: Re: [PATCH v5 05/10] arm64: atomics: Remove atomic_ll_sc compilation
 unit
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_130717_610707_601B481B 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Ard.Biesheuvel@arm.com, andrew.murray@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 10:47 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Aug 29, 2019 at 8:48 AM Will Deacon <will@kernel.org> wrote:
> >
> > From: Andrew Murray <andrew.murray@arm.com>
> >
> > We no longer fall back to out-of-line atomics on systems with
> > CONFIG_ARM64_LSE_ATOMICS where ARM64_HAS_LSE_ATOMICS is not set.
> >
> > Remove the unused compilation unit which provided these symbols.
> >
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/lib/Makefile       | 19 -------------------
> >  arch/arm64/lib/atomic_ll_sc.c |  3 ---
> >  2 files changed, 22 deletions(-)
> >  delete mode 100644 arch/arm64/lib/atomic_ll_sc.c
> >
> > diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> > index 33c2a4abda04..f10809ef1690 100644
> > --- a/arch/arm64/lib/Makefile
> > +++ b/arch/arm64/lib/Makefile
> > @@ -11,25 +11,6 @@ CFLAGS_REMOVE_xor-neon.o     += -mgeneral-regs-only
> >  CFLAGS_xor-neon.o              += -ffreestanding
> >  endif
> >
> > -# Tell the compiler to treat all general purpose registers (with the
> > -# exception of the IP registers, which are already handled by the caller
> > -# in case of a PLT) as callee-saved, which allows for efficient runtime
> > -# patching of the bl instruction in the caller with an atomic instruction
> > -# when supported by the CPU. Result and argument registers are handled
> > -# correctly, based on the function prototype.
> > -lib-$(CONFIG_ARM64_LSE_ATOMICS) += atomic_ll_sc.o
> > -CFLAGS_atomic_ll_sc.o  := -ffixed-x1 -ffixed-x2                        \
> > -                  -ffixed-x3 -ffixed-x4 -ffixed-x5 -ffixed-x6          \
> > -                  -ffixed-x7 -fcall-saved-x8 -fcall-saved-x9           \
> > -                  -fcall-saved-x10 -fcall-saved-x11 -fcall-saved-x12   \
> > -                  -fcall-saved-x13 -fcall-saved-x14 -fcall-saved-x15   \
> > -                  -fcall-saved-x18 -fomit-frame-pointer
>
> + Tri (who implemented support for -fcall-saved-x*, -ffixed-x* in
> Clang).  I won't be sad to see the use of these flags go.

Nice! IMO these flags made the code hard to read.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
