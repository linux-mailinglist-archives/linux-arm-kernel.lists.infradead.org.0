Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B73112EF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmoQWU6pzf/yzBMEXnQZ8sBxSFEXG5O9pbQ/QTdbVvY=; b=eVbMW4U1Lj6hQX
	cHTHMIycwU8LbU+0waJXlgy68Jl3jWUinxxg+RHEm2VnV9n0mo9pRIP/caT4JBzVFlDN8oIwPy4S9
	ucczhPcPaviunbTvUKr0gvXxwgjOn3fNVGVmo3UeVvTPnQZ0cZ70jV3tlKmHTGFv8xdYgv0zj3lD9
	NG0xrxdEwjKY4Cxtiu3rAzPAv3tjgZayNOSePdHrdWTpkH5qDGbXipzqq9z/T8aewEpx6tW78szYy
	UCGv+a/Euan/0+ZJ3SZ4E6vnhL8csIIcuzkzla25CRlCK2jGT2awWVoHYys7JjNk5snpNT6olCH0G
	6fewSsCcE2eKIBCVXvXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWw4-0004Ko-6E; Wed, 04 Dec 2019 15:51:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWvw-0004KH-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:51:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so225452wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y/Sjkck69L+0Qy4EARW9TDsMa6flJCGXSTYMQW51MkI=;
 b=GipDi/8rLLC7vFAQID9NizcYjxN9Mu7Ojmeh9CVqfMLqVQCtjKDNDOCaXF5oC+prDP
 Yr3frH+6/NyPC8i4FdsO57fShGQbuUGIbWx7aUAtzQgjB4dvp957uNHIEwbKW8eKjpjU
 hbbQascfapfz5tZKhg+Rm7QnEBAmZDAc7grolxjv4xd138pc/lLiWd28/UJ0+YQtCiI0
 N3MxoYGN1MX+I+F5uxwGFSL5vUGSnE8KeHd6sYu0MWPhbjxmrT5JZjxl/5PsIg85+K6R
 LvM5hrzKU4TGp258+n1Y8u08bAIZdbpqIPp5zCg45iJns0jS3XCWLxpXhoP0oE1jNi5l
 drjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y/Sjkck69L+0Qy4EARW9TDsMa6flJCGXSTYMQW51MkI=;
 b=fJP0CczMT74D6HlsnZOzrBJghWPVPhik+zetz8FenRLutCrho/FWtDlc28Jg/yA+r2
 g6TXExq6tAKBn2dLWu9McCovFQv0cT7c2YDygGaBT+hIvTDOI7bSOxEC6A72uRpZJq59
 94XQFoJ3iru0/jfOtFde2rsUS0GcIuPj0Q87xlJikLwjQMy0yfRV+Sk4YpwQepGaYzqW
 7BDseRNs49XAj9apS9Hi9vIMBaglyQjIqDGqJYf17CYhqFxZkd/5J/wbfd8pIgINEp/1
 EQsG740QG1IFRVEGWp0klY+d4fQBBx+cc6N9W6uBFScjSjADEz36XzXvLMG8zS9DYx+A
 ioIQ==
X-Gm-Message-State: APjAAAWWHBTtWnuWWnVWG6i1QetdwrOPB8CxyJ4nvfl3hi9xS3igPN7+
 S2FOcnTzaalYVpFjIg8/TpX4N+bQu7i/dZ5uYi3oUA==
X-Google-Smtp-Source: APXvYqw7HvozhLVuFaBvsmn2b4222CizXpsL8dCIw0/OeYMArR+8w1tybRoctiLt+xpff7xKA6ik20apnnORIN/VtE8=
X-Received: by 2002:a7b:cb87:: with SMTP id m7mr166321wmi.148.1575474678822;
 Wed, 04 Dec 2019 07:51:18 -0800 (PST)
MIME-Version: 1.0
References: <20191127181040.20012-1-minyard@acm.org>
 <CAKv+Gu-Xbpky-VN4WgSKJ5k_98shRdr_7aEcXJBV9uZqJrV7Jw@mail.gmail.com>
 <86pnhbywpo.wl-maz@kernel.org>
 <CAKv+Gu-CuNpu4jv7S6v2G9Z5dHCVOMX3nVX5VFYhoY4SfCK+cg@mail.gmail.com>
 <ab0d3eff89247f18d6edcb28b577d186@www.loen.fr>
 <CAKv+Gu9mS2BZj+YMemMTy-e=42wBdu7u3+Rp=w9cWZXMmbpt7A@mail.gmail.com>
 <8274815953233fb2d522f216b36d7247@www.loen.fr>
 <20191203191608.GA2896@minyard.net>
In-Reply-To: <20191203191608.GA2896@minyard.net>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Dec 2019 15:51:15 +0000
Message-ID: <CAKv+Gu-0abCM9ZXxECrt5DM1gKq4Bh0uesC081urRq4CjzLPaQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Fix compile error with KVM and
 !HARDEN_BRANCH_PREDICTOR
To: minyard@acm.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075120_890112_2F2573EE 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Corey Minyard <cminyard@mvista.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019 at 19:16, Corey Minyard <minyard@acm.org> wrote:
>
> On Tue, Dec 03, 2019 at 06:45:46PM +0000, Marc Zyngier wrote:
> > On 2019-12-03 18:35, Ard Biesheuvel wrote:
> >
> > [...]
> >
> > > OK, I have prepared a branch that carries all these patches in the
> > > right order with the upstream commit reference added to the commit
> > > log. I'll send this out for review first, before actually sending it
> > > to -stable, unless anyone feels that this is a bad idea.
> > >
> > > arm64: KVM: Move BP hardening vectors into .hyp.text section
> > > arm64: insn: Add N immediate encoding
> > > arm64: insn: Add encoder for bitwise operations using literals
> > > arm64: KVM: Dynamically patch the kernel/hyp VA mask
> > > arm64: cpufeatures: Drop the ARM64_HYP_OFFSET_LOW feature flag
> > > arm64; insn: Add encoder for the EXTR instruction
> > > arm64: insn: Allow ADD/SUB (immediate) with LSL #12
> > > arm64: KVM: Dynamically compute the HYP VA mask
> > > arm64: KVM: Introduce EL2 VA randomisation
> > > arm64: KVM: Move stashing of x0/x1 into the vector code itself
> > > arm64: KVM: Reserve 4 additional instructions in the BPI template
> > > arm64: KVM: Allow far branches from vector slots to the main vectors
> > > arm64: Make BP hardening slot counter available
> > > arm64: Move the content of bpi.S to hyp-entry.S
> >
> > My personal take on this is that it is *a lot* of code that affects
> > a very critical path, and I'm not completely sure that it is what
> > we want for something as dated as 4.14.
>
> That was my thought, too.  I was just trying to fix a simple compile
> error.
>
> >
> > The only valuable reason I can think of (aside of the vulnerability
> > mitigation aspect) would be if we need to backport more code to
> > the exception entry path for EL2. I don't know if there is such
> > need yet.
>
> If that is the case, IMHO this should be backported as part of other
> things that require it.
>
> I don't know this code that well, but these changes seem to me more
> setup for allowing other things to be done.
>

Agreed. But I'd still prefer it if we could backport 4340ba80bd3a
"arm64: KVM: Move BP hardening vectors into .hyp.text section" (which
introduces CONFIG_KVM_INDIRECT_VECTORS and is a useful change by
itself) and only the below hunk taken from 5bea94c013bab "arm64: Move
the content of bpi.S to hyp-entry.S".




diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 66a37cb9a392..67d39c5e6966 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -84,7 +84,7 @@ atomic_t arm64_el2_vector_last_slot = ATOMIC_INIT(-1);

 DEFINE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);

-#ifdef CONFIG_KVM
+#ifdef CONFIG_KVM_INDIRECT_VECTORS
 extern char __smccc_workaround_1_smc_start[];
 extern char __smccc_workaround_1_smc_end[];

@@ -135,7 +135,7 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 {
 __this_cpu_write(bp_hardening_data.fn, fn);
 }
-#endif /* CONFIG_KVM */
+#endif /* CONFIG_KVM_INDIRECT_VECTORS */

 #include <uapi/linux/psci.h>
 #include <linux/arm-smccc.h>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
