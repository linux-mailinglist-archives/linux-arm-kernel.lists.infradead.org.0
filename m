Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4BCF081A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ASSEZdNl0BfYgndCLCNq8Hm0eYq6WlcpCBmWa13kRQ=; b=HBI6MfrfF2ZWqX
	OzV6R8M5Oa67FVxXj7Y3TzKflmLtQUU7vIo8PZZaDOsly6fBhguOvkdY1lN66UVV8Y48JaRQWnx7G
	ZN+iWekOttg8ruHVdbopwChOmudsGyCUpfSqib3T2MPFOWfgsqVe8ZZ0HgYNnIhQHpAy92X2LPpvc
	cILu4J4IHjjpkaQry4VJM7YUV9sGYxW+Aa3OLeWrNoS7XKTEho3OCn5FyICfvPUP/363D/xFAHJwK
	9hzIYevJx2CiIO/xrBjm/+ePv5CauTreANHpAGgj5iH7IZE8YEpbyE8Ezfhg4l6MbdkP1aEaOTxWw
	8ywmifYshRNQ0kDMmFyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6DM-00034I-ES; Tue, 05 Nov 2019 21:18:12 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6Ca-0002g5-QZ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:17:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id v186so18953654oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PpxrzK7EMOTdgRJmBeuah8l9gL1LKP2zbjc+vtc00Ps=;
 b=mn0WWhLYGqn7h0gcRknjXDBVLncQwGAyV2IdSDjRy5zjt6mydls1/4NVBdMRbs5+gJ
 UEhHfb7YQKyZL/mngY/Bqk+c2b1MPiSfyIaoqrMdn3oMGxF0J/35Y3MOvZ+W1AUWmffT
 wzlJRbhxrWOxt0lxmaZqa449QMdjPustViMU1vnorZtIBrnvaJPMzE21t8Xfr/Q4ykR2
 DWBWhygGkopylSrm7h6HdP35KH/jTghbHGPFyr3dEP6xw1xfpIT/ABGgrOEiWFN5DZXi
 pMZMHG8vsnSwJg2mzYIn511PfAr15eOMbZdhqF9G1mN+QZ554rN7iPWt0pfVAmQd02l4
 RCzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PpxrzK7EMOTdgRJmBeuah8l9gL1LKP2zbjc+vtc00Ps=;
 b=bwZ6jJFhi3uOWB1wRLhzRRv2QIpFGL0IKzHSgavxFEM1Ei/3w5OTsZGvb7vFjTUasA
 plak8GFXI9JhWYRkS2AtNHX/5L05+Aw0nrf8qfBJIURB3ujPuSuQXyD9Y2H+N5FnpDOl
 zBW1DDiOLH6VwfKhSMxfqqL1DdHYOlkBV7yyuURob4fy9WwGccCQxE8y/rxKja9U3J++
 /vISzjCa66p1RuHDN0EuZK4sRDTPExK1btNMLeQ6Jv0D/CP3h0pdxrld/bi+zWuP2GQd
 z509vt51I41UsdFLut7S+HTpMyrPxZYkfW1lNVRI7zd6fLDqZSqiuREEPsFcPD/uWzZ2
 +jhw==
X-Gm-Message-State: APjAAAU3cQ1s544FZztIxnDvud0vN5cb0ywlUi+/wi6RQWsH/N4Zv+ka
 a79hRPv4qIs1cbH2Ga9kIzAUg2x9xiO1lgtuWTA1fw==
X-Google-Smtp-Source: APXvYqw4AtzATQMris28NR0xZ8N8ybbyzXZkQEYaD+kJu4qYcOoxKTGGRoAoKW24zPfgP+UhgECQCmSZinq7o+MHBvw=
X-Received: by 2002:aca:c64c:: with SMTP id w73mr900195oif.161.1572988642954; 
 Tue, 05 Nov 2019 13:17:22 -0800 (PST)
MIME-Version: 1.0
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
 <20191105165433.GD22987@arrakis.emea.arm.com>
In-Reply-To: <20191105165433.GD22987@arrakis.emea.arm.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 5 Nov 2019 13:17:11 -0800
Message-ID: <CALAqxLWYJvHO3YYbQHmgg0yThx_kqM7HBFnnxrcWkG1-LXeCQQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131724_870511_979D203C 
X-CRM114-Status: GOOD (  19.64  )
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
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>,
 Steve Capper <Steve.Capper@arm.com>, stable <stable@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 8:54 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Tue, Nov 05, 2019 at 10:29:03AM +0000, Will Deacon wrote:
> > On Mon, Nov 04, 2019 at 05:16:42PM -0800, John Stultz wrote:
> > > On Tue, Oct 29, 2019 at 8:31 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > >
> > > > Shared and writable mappings (__S.1.) should be clean (!dirty) initially
> > > > and made dirty on a subsequent write either through the hardware DBM
> > > > (dirty bit management) mechanism or through a write page fault. A clean
> > > > pte for the arm64 kernel is one that has PTE_RDONLY set and PTE_DIRTY
> > > > clear.
> > > >
> > > > The PAGE_SHARED{,_EXEC} attributes have PTE_WRITE set (PTE_DBM) and
> > > > PTE_DIRTY clear. Prior to commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY
> > > > bit handling out of set_pte_at()"), it was the responsibility of
> > > > set_pte_at() to set the PTE_RDONLY bit and mark the pte clean if the
> > > > software PTE_DIRTY bit was not set. However, the above commit removed
> > > > the pte_sw_dirty() check and the subsequent setting of PTE_RDONLY in
> > > > set_pte_at() while leaving the PAGE_SHARED{,_EXEC} definitions
> > > > unchanged. The result is that shared+writable mappings are now dirty by
> > > > default
> > > >
> > > > Fix the above by explicitly setting PTE_RDONLY in PAGE_SHARED{,_EXEC}.
> > > > In addition, remove the superfluous PTE_DIRTY bit from the kernel PROT_*
> > > > attributes.
> > > >
> > > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [...]
> > As an experiment, can you try reverting just the part of the patch that
> > removes PTE_DIRTY from the PROT_* definitions? (see below)
>
> Another thing worth trying is reverting commit 747a70e60b72 ("arm64: Fix
> copy-on-write referencing in HugeTLB") when this patch is applied. That
> commit is not just about hugetlb but changes pte_same() to ignore
> PTE_RDONLY on the assumption that this is set by set_pte_at(). We
> subsequently changed set_pte_at() to drop PTE_RDONLY.

Just to confirm, reverting 747a70e60b72 instead of aa57157be69f also
seems to avoid the issue I'm seeing.

I've not tried Will patch but I'll do that next. Though its not clear
if you wanted me to revert 747a70e60b72 on top of Will's test patch or
not?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
