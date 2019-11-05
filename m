Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4443EF083D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQNmsk0zClWw4FZexm/VzFk1d+WweRAURyB14/cibdI=; b=PySnnumbG4034y
	k1Cgx9aP0R/Cal2b4ceePI4DO/4fC4jMWQJDSmVKPFltxjuKxU8DZg4b4HqTFUB50KjuYZnvXFfg8
	P1eqyD+33sVC4AyfIdyGyrK5xLfLRr3wEmg1txZ0ISmenV0otFfFqCCJNjmowilNqBdb7NE1WhNj7
	Jldg+Ol6FBJtoXgtCpJWHz3u6GpncJNyBqTt3yVdsOexz0iQfntwPLBargaNCNRC602lFBFcUE/xp
	wUKP4wV868mxpaHcvmuqhoY6cGzo0wS1UVKvIm5trZ8ghEi162vRawvdkKD+wWNUEL2d0BO3AKFXD
	bphWqARxSj1g20mJW/1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6JS-0006PH-4j; Tue, 05 Nov 2019 21:24:30 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6JK-0006MC-TH
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:24:24 +0000
Received: by mail-oi1-x244.google.com with SMTP id y194so18991567oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X84jp384/+IXoKSOIab0zeWDPYpydznZphJvdqgY5n8=;
 b=Qwa9QPI2TDvhTmcuRAwGhSxmxNNUO3UcJRYEi4csQErk0LAnAEVpELD1SlgMRlXIL4
 xmA0+Uf/aalbO1hKsLtQHwDchaN7fdK78vWJ52YviPfgoSGwAru4cBPMfDldY61v1Se+
 Xykbc7H93Ar99v0HwiFIOx2hn+Ehis5j66jkfCq93b+hCJTkK7+T3YEImLdoAtNs6gC0
 KcI+PqaoVf7gHnF6fC7eBiqIi46Wc9wOUb2yp5Cu98rX0hm2NXlk2coBf3VmaE6qQV2j
 VykHqz4amYe20hpilOt23/6b9I4uZgAKzI9cwisPxV3JJYlnq791HC8sO/az7LHBQhrb
 cFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X84jp384/+IXoKSOIab0zeWDPYpydznZphJvdqgY5n8=;
 b=K+H6QpBLXo0rEZIf3Z8hSMsuefiht0e1g1oIfGCp18/EmZBdr8YAP2nr4MnbZWhdjn
 u6SMSQUaNmRZwV/9I2GNXPLGJl0kMOXkofBexA5ifsnoQLW9oU/3PmBXdtG6MYrVcYdU
 aU6bxBD5Won7ak/jEzRi7ti6KKPKxWvjEW2F8N9jU0rYtcwy1AaTrMGSiU+q58utL/eK
 lTVJTmxqtd5W9g7GC//6M3Vf2Hx0mnF8D7V7Q2AWDLUM/BiBRTBQ5EvLOc5GcgcgZtSQ
 LENdKrOdjcdoC8oO0kraFPJgYHnE2SKDf/4TMQ0z2Qgd1zrbi+QnFy89owk5ULCGRdgU
 +9MA==
X-Gm-Message-State: APjAAAWz1P+W9DIQDUdYs/S8xtJAb7qod0uZujL0W/znDFsIuYQ9ONcV
 mFvNkNDKM4XsW5G02NoOw+Xpvea+3s2O2RTmnilQYw==
X-Google-Smtp-Source: APXvYqxar/+bHInCiMqU3Dp0QBwtkxCXnEKsm9r7PrwyY72XDOIs4CIlgr/dS3qkw6dyFmlqwR/q6B8yPGmxRsJbtK8=
X-Received: by 2002:aca:1210:: with SMTP id 16mr1002978ois.128.1572989061350; 
 Tue, 05 Nov 2019 13:24:21 -0800 (PST)
MIME-Version: 1.0
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
In-Reply-To: <20191105102902.GB29852@willie-the-truck>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 5 Nov 2019 13:24:10 -0800
Message-ID: <CALAqxLV95OuWUjtWOdTKweqWfr4GSgDgf-KNggXiiKsCgsygKg@mail.gmail.com>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_132422_946958_46A68A04 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alistair Delva <adelva@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sandeep Patil <sspatil@google.com>,
 stable <stable@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 2:29 AM Will Deacon <will@kernel.org> wrote:
> On Mon, Nov 04, 2019 at 05:16:42PM -0800, John Stultz wrote:
> > On Tue, Oct 29, 2019 at 8:31 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >
> > > Shared and writable mappings (__S.1.) should be clean (!dirty) initially
> > > and made dirty on a subsequent write either through the hardware DBM
> > > (dirty bit management) mechanism or through a write page fault. A clean
> > > pte for the arm64 kernel is one that has PTE_RDONLY set and PTE_DIRTY
> > > clear.
> > >
> > > The PAGE_SHARED{,_EXEC} attributes have PTE_WRITE set (PTE_DBM) and
> > > PTE_DIRTY clear. Prior to commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY
> > > bit handling out of set_pte_at()"), it was the responsibility of
> > > set_pte_at() to set the PTE_RDONLY bit and mark the pte clean if the
> > > software PTE_DIRTY bit was not set. However, the above commit removed
> > > the pte_sw_dirty() check and the subsequent setting of PTE_RDONLY in
> > > set_pte_at() while leaving the PAGE_SHARED{,_EXEC} definitions
> > > unchanged. The result is that shared+writable mappings are now dirty by
> > > default
> > >
> > > Fix the above by explicitly setting PTE_RDONLY in PAGE_SHARED{,_EXEC}.
> > > In addition, remove the superfluous PTE_DIRTY bit from the kernel PROT_*
> > > attributes.
> > >
> > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > Cc: Will Deacon <will@kernel.org>
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> >
> > Hey,
> >   So I'm not yet sure why, but I've just validated that this patch is
> > causing trouble with booting AOSP on HiKey960 with 5.4-rc6 (-rc5 works
> > fine).
>
> Hmm. Annoying this wasn't spotted by CI.
>
> > Its odd, because the system does boot and is alive, but seems to stall
> > out at the boot animation, and userland never finishes coming up to
> > the home screen. It just sits there without a useful error message
> > that I can find so far.  Reverting just this patch seems to solve it
> > and it boots all the way.
>
> Given that I don't think the HiKey960 supports h/w DBM, my initial guess
> is that the GPU is stuck on a page fault.
>
> > I'll try to dig further to see what might be going on (the mali driver
> > is a prime suspect here), but I wanted to raise the flag since we're
> > at the end of the -rc cycle.
>
> What exactly are you using for the mali driver?
>
> As an experiment, can you try reverting just the part of the patch that
> removes PTE_DIRTY from the PROT_* definitions? (see below)

So reverting just the bit you sent here re-adding the PTE_DIRTY bit
didn't seem to fix it. I still see things stalling at the boot
animation.

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
