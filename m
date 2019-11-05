Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09748F03CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRUrCqgDxao2C9wcPLUC8303MlOXI8F8c8h3ik6lK5k=; b=fRgeIUkZenmrn5
	WXCx+qlV+NzDWZ84pyOCZv1S3ZPntfwJa0rchJdyqHuS1wuYoljvdCBjD9wPNEM4yqOzXRAjRpevj
	swFDiO1wV6JVnRTP3qEgm+MYhZiIzwyJRGaiqKvmjmQVa0yMOCspiuj2hJDBQ2EeWy+N/xr6qg2xO
	motN20hkJVHnzF2kz7YCZoZ9e4Tq3bCtl1L4OpTVkgEUA3ofwJH+RCV+Oftb65v/qYRtg+UtFMEpn
	yQIE7akxzbHy9tHUBPbkzX2vMC7b6nw37JhNEXEAVaDSqQ+EfmaMBAaM3Yx4jj0/ADl3t2mR7friW
	L+ejLuTJ0zHvxbgvNWmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2IL-0000l6-CF; Tue, 05 Nov 2019 17:07:05 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2ID-0000kR-J0
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:06:59 +0000
Received: by mail-ot1-x344.google.com with SMTP id m15so9502662otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 09:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=js1uxvkfzEyBhJbrD075nNWII8JzENFVnKOhOHwJl0c=;
 b=ufCs9BolzEkqRByAVsa8+synCHx2vRDpnP4wHgR1ZpH60dRyAIJ5J24ENmMXwFVMdR
 6R8QScpxUSvFmNTet4L6Ae7vglDkX3iQrVvgd0k1R8s3nkZ3DVvdFW5ok/zVGeS7RttK
 ScYb9Z26qvnvrC74TOMqZEQoWGTQXWH64hI8Xw98euy9eK2zWOd4TlQ5MceSgciuALVG
 XPjr2URYPRnGZXei8LVKKiBtPMCo0cfoPJTfLDRuSYa9/lb1odX+TdXSaUi1aFnjG/98
 8oAou5WYctetK9BARQP5Fu8UG+H+3gjcq5oI+dcX0NlCy/ff08xtMslzDT6dRIWDaCST
 XrHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=js1uxvkfzEyBhJbrD075nNWII8JzENFVnKOhOHwJl0c=;
 b=hcO/AbTvLi8BOghRLy7rsbvRbXUqC6h26NjueHQOCAyGEi4NGTFEoSeSV+ZL8bbJzj
 BrA2DeY0pxncxRpnVICiSNQB8Cac/H1kWllgvMjnG4qDeyIzBzGN7sMMI6LD/vHrsxVA
 jU7nsChjXjP2viRjuBTLP75kUu304d2IEZbZJm31qU/xZJsPcuxsEatvz/ul38bi8dmu
 aGa/AEO27LPTdIMwh0IwrHMKmFFamFJG7xfrvi9i34oyCrIb+TNkLR3D0Flb2I3F0FrJ
 zYA0P3LWw1E62tmzIph0CEAB8zvEt2xyCSpDQlXmnUQMHaqJsoiNb/r55f6LJqmPPQo2
 2DBw==
X-Gm-Message-State: APjAAAVZ5cF5+fSLJcmzQkTh6gnbqC2rFO9OwiyTYqu9KwHqCDWx6FYb
 +9kwUWfhZLxsBiLv2Kap93x7kQPU+/jOyZ33WgwBxQ==
X-Google-Smtp-Source: APXvYqyMGp5bxtuxTJTvpilLnFijhnFa4MNrxfrfPtgWx2N81ySl2ufK5cRfXk+NaIY3HCQ2OpuDSuyqjCjqfS6FYlo=
X-Received: by 2002:a9d:630c:: with SMTP id q12mr23091720otk.332.1572973615034; 
 Tue, 05 Nov 2019 09:06:55 -0800 (PST)
MIME-Version: 1.0
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
In-Reply-To: <20191105102902.GB29852@willie-the-truck>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 5 Nov 2019 09:06:43 -0800
Message-ID: <CALAqxLVT-SK0-nNUmbDWa3kkZED2z+pcryzuue9c=n42shu3kA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_090657_631603_F514FFFA 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
>
> Hi John,
>
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

I've got an old r10p0 bifrost blob we were given and kernel patches
I've carried forward since then.

Again, I don't want to distract you too much for something that may be
related to a blob driver. I mostly just wanted to raise a flag in case
there was something off that might affect others.

> As an experiment, can you try reverting just the part of the patch that
> removes PTE_DIRTY from the PROT_* definitions? (see below)

I'll give this a try! Feel free to let me know if there's anything
else I should test.

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
