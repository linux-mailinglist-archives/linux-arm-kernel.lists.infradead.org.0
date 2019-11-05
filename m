Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8483EF0860
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FeR36RHpzVcvArWa9OZgCHTuzBQ18oiQqSESkkpqik=; b=T/PB+X/9sdLkYM
	xirLjlt3V49v/leD1HOPUpna0ha131yteOYCS+VyG0gIm71reM7FgVTJUQvXCcKCIQlnB0MV5A6fp
	IJvgOJIfrGlITsXlezHG736U7qV4BPBQtNYol4rzQIY0Xt5VPdKT21mJEtDqDdWHFq9yT9byQ2vIu
	64kZEsk313sSxE1YjD1CjCEjMbdzZJDHkw6OZhg23OgvrI60AjmwAyCWH9s0ODYJ4S8xVGsBqerjQ
	PLIUNHh4IV1/fLfho/iJMwlkbmwCJGPTrgUV/I4gBfhs/1dX4LZOkxae+JBKVkUUli55qRGcVAnk3
	UsWYvadEy/GCvXAZCYOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6P0-000236-3h; Tue, 05 Nov 2019 21:30:14 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6Oo-0001Xm-3g
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:30:03 +0000
Received: by mail-oi1-x243.google.com with SMTP id l20so6894125oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MKex/i2q2cLUhnrOZHb/aTfSgxLlxLOB7hwQ/W42MOw=;
 b=yxFFwBbFJuRUmrLRu10ZGRWzKFrK7/48YyA7Ncx1ZigYrzwB8XSeGTQmsue6WKWmSJ
 Xfe0oir5wnBLctIZp9L+juUiBycM6ZTvBtI+BNK4TtUaT7fcE75tSlsPnxEHp9UKahbz
 2hpMQA0b1ljhgjAucbg/dmSp2YGsqIQSvrhr5/r/p+eVAgFppBggggHoTEoj4hUxiryz
 Od37e8JexbJXGc9eI2TCXsU0X2LxLGic4ZFevFWgFwqpifNeSD15vXG1GGJlLQtgZXav
 t5TZWpVaSxnlO3F7KDScwucNanRdQ8eZ9FhGnEM+wUILlxc9m8A2ymCJzDbA8wLDhXr5
 2URw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MKex/i2q2cLUhnrOZHb/aTfSgxLlxLOB7hwQ/W42MOw=;
 b=m9r7qqOgemgKpYUJ7NxKCtFEscuhqLWT6lyPhX+lmOQyq2MwKjW7k/d22O2YcRk97p
 gNO+FkEEF9X976YVpMnn58lDC1z1zQEYnIHH5bxT6o2yPN2LUXSj6PLNoSag6YczKpkb
 PhlwIm4H1+iEFaxrha6Z6e4BRUnNr9qwjBmjujDoA5K0sUkTjEgWXMNsSAoe7yLadkPO
 X3XiLnMjWaltpbfC4OvE7kNTdlc43qjZb8Zh8VnCMos27zA4LtRHy4irPP4xVDiM+Dyy
 zZFpPeOHv/i9gpUYtyRTRVLiMOHxeQllKMN4CQLIORFafnllD7BDIT+Ncz0oSsdwkWPG
 4c7g==
X-Gm-Message-State: APjAAAVN54S5dBQf89CibXiWdV2/Fv86QcQALv9f7U94BONdUZl8yGHZ
 ksKG+ReWYPXEY6tOPzSLR06vReMCLhfeBs71X0HWvg==
X-Google-Smtp-Source: APXvYqyzj5HURLTlobaqoi8hTKrbUECVIYX+Szr2iuPljx86BKtHnCHUZsYoXa9CppTgl3WUix0tHrwd6NrPPAarr4s=
X-Received: by 2002:aca:3a41:: with SMTP id h62mr990522oia.97.1572989400562;
 Tue, 05 Nov 2019 13:30:00 -0800 (PST)
MIME-Version: 1.0
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
 <20191105165433.GD22987@arrakis.emea.arm.com>
 <CALAqxLWYJvHO3YYbQHmgg0yThx_kqM7HBFnnxrcWkG1-LXeCQQ@mail.gmail.com>
In-Reply-To: <CALAqxLWYJvHO3YYbQHmgg0yThx_kqM7HBFnnxrcWkG1-LXeCQQ@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 5 Nov 2019 13:29:49 -0800
Message-ID: <CALAqxLVeRKmJdwUZe3h1dBVyMsnPFNkEw5ckB08NFsJ7dwTvPw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_133002_168242_ECFA0A37 
X-CRM114-Status: GOOD (  22.15  )
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
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>,
 Steve Capper <Steve.Capper@arm.com>, stable <stable@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 1:17 PM John Stultz <john.stultz@linaro.org> wrote:
> On Tue, Nov 5, 2019 at 8:54 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Tue, Nov 05, 2019 at 10:29:03AM +0000, Will Deacon wrote:
> > > On Mon, Nov 04, 2019 at 05:16:42PM -0800, John Stultz wrote:
> > > > On Tue, Oct 29, 2019 at 8:31 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > >
> > > > > Shared and writable mappings (__S.1.) should be clean (!dirty) initially
> > > > > and made dirty on a subsequent write either through the hardware DBM
> > > > > (dirty bit management) mechanism or through a write page fault. A clean
> > > > > pte for the arm64 kernel is one that has PTE_RDONLY set and PTE_DIRTY
> > > > > clear.
> > > > >
> > > > > The PAGE_SHARED{,_EXEC} attributes have PTE_WRITE set (PTE_DBM) and
> > > > > PTE_DIRTY clear. Prior to commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY
> > > > > bit handling out of set_pte_at()"), it was the responsibility of
> > > > > set_pte_at() to set the PTE_RDONLY bit and mark the pte clean if the
> > > > > software PTE_DIRTY bit was not set. However, the above commit removed
> > > > > the pte_sw_dirty() check and the subsequent setting of PTE_RDONLY in
> > > > > set_pte_at() while leaving the PAGE_SHARED{,_EXEC} definitions
> > > > > unchanged. The result is that shared+writable mappings are now dirty by
> > > > > default
> > > > >
> > > > > Fix the above by explicitly setting PTE_RDONLY in PAGE_SHARED{,_EXEC}.
> > > > > In addition, remove the superfluous PTE_DIRTY bit from the kernel PROT_*
> > > > > attributes.
> > > > >
> > > > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > > > Cc: Will Deacon <will@kernel.org>
> > > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > [...]
> > > As an experiment, can you try reverting just the part of the patch that
> > > removes PTE_DIRTY from the PROT_* definitions? (see below)
> >
> > Another thing worth trying is reverting commit 747a70e60b72 ("arm64: Fix
> > copy-on-write referencing in HugeTLB") when this patch is applied. That
> > commit is not just about hugetlb but changes pte_same() to ignore
> > PTE_RDONLY on the assumption that this is set by set_pte_at(). We
> > subsequently changed set_pte_at() to drop PTE_RDONLY.
>
> Just to confirm, reverting 747a70e60b72 instead of aa57157be69f also
> seems to avoid the issue I'm seeing.
>
> I've not tried Will patch but I'll do that next. Though its not clear
> if you wanted me to revert 747a70e60b72 on top of Will's test patch or
> not?

Not sure if its useful data, but while Will's patch on its own didn't
change the behavior, it along with reverting 747a70e60b72 seems to
work the same as just reverting 747a70e60b72 alone.

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
