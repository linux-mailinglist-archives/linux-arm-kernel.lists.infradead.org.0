Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A650F0E01
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMM3eUOdvAOhLKJJs1a2cYX0qi9p+cBTMPmfxOH4Xwo=; b=fnrm80WB/Y3NyM
	adPeTf6kH7oPjhhX/VNk/lZLB1W5s1ecqEw7ZLS11TH5yt5652iz8w6z6jheCXvuZlQj2Ogqa25bw
	e+b83bi7r1/+BONXW2ZBlWAbCVLVkcwRFHrDNBLn6CnOuscBmiIEGXDj1GCAfbc8qdPvsMvtZfGia
	0h9/wjKgdqoKFdZWLYBd4mcqxZfrmIivKEycThT9bCnlUgufgsLYGC3Y7tBQp8sseel1KrexUkDvZ
	i20w3EZO/yqhBH5E165GfR4eJY3mM/cHaY3/kaWK08fPb+tPMSj/cS1a/sdlEiQNkcU3sfyg3WyQJ
	AbZHI7I25Yv3PUR1mdQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSDN3-0005ea-TF; Wed, 06 Nov 2019 04:56:41 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSDMu-0005eG-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:56:34 +0000
Received: by mail-ot1-x341.google.com with SMTP id u13so19793889ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lNl0SHnN7vD9n+DBD3M8lM/x0tJoz22JKGDM/y74qf8=;
 b=Zom8xELa0Q+363dyeYAqesoajRTgp/nD4/uxdv/iRaS6YU4ddRMvwi26Z8/kT7jtYa
 xbhpVKoOVQG0VouZni+vX05kxcTjKfgvjBpOfmj3msXSFy9cX5i+/AV8gjeleFse2lOQ
 ggQlJhRrNtRuiGvXmlL7rlf6rdDBH6qHwd7nu/vltlxO5gDN++uuC7ncRzS3dRp1ab33
 0rfFA/HrEwq/qoDlwqI3kM2yxnndPX6i9oZQskOOt6klV4DU6d/Mii55ojMlCTNUAPXG
 l4VgiOVRef26ZK5Gk9EF/z1j1b1O8sXSNtCzDLTmN5PwWIj5cEjDAYWz5AAVW74usoYr
 pR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lNl0SHnN7vD9n+DBD3M8lM/x0tJoz22JKGDM/y74qf8=;
 b=EmIYrle2+pZSkK70qjUQUg1FoOmIDbuWXk7lTZ9ftjB8jJg0c1Penr6j/1pKFu9v3N
 ndMSlb4bHWomJnScVl7UF42cmsYWcTZdGUVfQiAc0k9hWP/STbOiocI9Lh57CZXWJTx+
 pd1X35fOt2PsE/vk4Fx3bH31YkPL1jN3V04ry9UNwBZ8tYJ1xYJRJp8EhFM7GqrLGWbs
 VU8gMUi862GTMxaLnk2TRHJqrM+Ni3qWgMLR6P8ckWsLXXpr1Pddq3tp3mSG9CGc7w2u
 aLFrJwuNya3YiYD2x4xsHoIZYqQhylPVThDLyb5lVC98xw6V1xs+YoDnjnUE1vph1LuD
 YjRA==
X-Gm-Message-State: APjAAAVEixi/b9p/9R0q3H3wJ8UMdyIFMw2DuwW2H2MjmHg1wOf3ryHj
 +vuIo0tFqAnPZOTu31rG5Qmf/WrSIq40FVEksXPjWQ==
X-Google-Smtp-Source: APXvYqyNvGpKKTA/4tLkAPRJ4Kr8XYLx4zybvcrz0y/GfQqYUhXSfClJBJitO+bLoCY4+OvCDQlak++yvDdonPxG9MU=
X-Received: by 2002:a9d:630c:: with SMTP id q12mr346670otk.332.1573016190908; 
 Tue, 05 Nov 2019 20:56:30 -0800 (PST)
MIME-Version: 1.0
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
 <CALAqxLVT-SK0-nNUmbDWa3kkZED2z+pcryzuue9c=n42shu3kA@mail.gmail.com>
In-Reply-To: <CALAqxLVT-SK0-nNUmbDWa3kkZED2z+pcryzuue9c=n42shu3kA@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 5 Nov 2019 20:56:19 -0800
Message-ID: <CALAqxLVEGwA1bybiu+xfxsZRRTMTDmArCF0Ak1JbR55f-rwRtw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_205632_851971_BB94DB21 
X-CRM114-Status: GOOD (  29.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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

On Tue, Nov 5, 2019 at 9:06 AM John Stultz <john.stultz@linaro.org> wrote:
> On Tue, Nov 5, 2019 at 2:29 AM Will Deacon <will@kernel.org> wrote:
> >
> > Hi John,
> >
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
> > >
> > > Hey,
> > >   So I'm not yet sure why, but I've just validated that this patch is
> > > causing trouble with booting AOSP on HiKey960 with 5.4-rc6 (-rc5 works
> > > fine).
> >
> > Hmm. Annoying this wasn't spotted by CI.
> >
> > > Its odd, because the system does boot and is alive, but seems to stall
> > > out at the boot animation, and userland never finishes coming up to
> > > the home screen. It just sits there without a useful error message
> > > that I can find so far.  Reverting just this patch seems to solve it
> > > and it boots all the way.
> >
> > Given that I don't think the HiKey960 supports h/w DBM, my initial guess
> > is that the GPU is stuck on a page fault.
> >
> > > I'll try to dig further to see what might be going on (the mali driver
> > > is a prime suspect here), but I wanted to raise the flag since we're
> > > at the end of the -rc cycle.
> >
> > What exactly are you using for the mali driver?
>
> I've got an old r10p0 bifrost blob we were given and kernel patches
> I've carried forward since then.
>
> Again, I don't want to distract you too much for something that may be
> related to a blob driver. I mostly just wanted to raise a flag in case
> there was something off that might affect others.

Just as a further detail (about to close up for the day), I'm also
seeing this issue on the HiKey board as well. Similarly reverting
747a70e60b72 resolves it.
Its a mali blob driver too, but a different one (utgard) which makes
me suspect this might be a real issue w/ something in AOSP.

I'll be testing on a db845c tomorrow morning to see if I can trigger
it there as well.

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
