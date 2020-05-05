Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6AA1C4D04
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32bPECu4UP6Y0gG4hyBE4C233t3/o0OzHKB+NCd5TBE=; b=lediXKXJ3H4x9T
	wyTO1XgMzFFrAT8ihfe7tbPp6fYegNUzLr1B/gD/z9WO0EUWN0aQUyJyv0Yt82ee3uSzvh+cA+DKr
	LDk2N6q1di6nOmPZLbKimg92D4BbfHGB0WDOly/Qc0OPsSKW4Q7rhxTPPw8x4GjC7VnCtDA41sPqz
	Rd3hXY6sHPQZ6lnxFdscXv/SFEwTyRlXVUAtD2Yj3A9GyX8FoRgsAib02sJm2bFe5CED+kOfFFob1
	fxJieh1BuJ00yC6LmQ0muNu9+mcMUvTdBlImKboZ8ERcxPZf4crPLvB7FDncsZ5yFhle9T1swVCgC
	FcSmtoVPi5Zh833PUqDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVouQ-0003Kd-PR; Tue, 05 May 2020 04:10:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVouF-0001oi-1T
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:10:09 +0000
Received: by mail-lf1-x141.google.com with SMTP id u4so190240lfm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jz2cSoqOGbsKqpbrYNnHYMttjY/bXQpYhBr6USfoRbY=;
 b=slCE0T5Gb03QdASe6JmzYMEexr63wsm23L+sdIHGtpinXdhAZFyVxcQHTeYtBQp4yD
 y71qhKRv4heGuf2Wqxq+0+VlHrEBSaFB4Ye93hueiw+f7ytT0SkRwhxoE9XAV+jRpvZm
 faQkCdyyjm3agluH/OCbAwqdc/gQ9IKPzCHrcyoX5K08xveCw2VZtYKLKyzhqUggdJNP
 PPw9y1OcCESn9/cOfa/VlntjB98n9YahFhvKIxSA4Ye2AOVEKdByRcA6KsYKXcb54819
 j1NEIrMrm6iOgGR6QN/l5yOjWNtfkYbN4Tdiwc0fvFelvgA/CSnblcMrW4hOnXz9V5qr
 qskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jz2cSoqOGbsKqpbrYNnHYMttjY/bXQpYhBr6USfoRbY=;
 b=Lajpr3Cl9Z3aTH2ip1cSEmGctuYeRPefgADzGIPNVsUil5gWUpjLd1Fxg+AFmPOLuc
 +123Ri3O10OymzCq6UWusih4c2gbYpYlTM4PuyRwB9JMcwOB5GpUzJPPY4uafScnNph8
 U8lySm0PO/0Uz1Vp+8sx82JdTIThG3GV3EbFbaDeDn/0DXjyqzRQU0HbjCycD9zbRo4H
 hT/BZeL5aqujah26+Argtbs4qOehlp0GaCXFAKHjpyOlDRVDz9fW7wDVeKgnWExo28SP
 J/UM8b0d43sGZ0JpIrfoUnxlO5v8vRadxrr9Miooh9mrs85ZORL0IACcobzHiUExyuzu
 Kikg==
X-Gm-Message-State: AGi0PubrTumndmGPb5UjEXaS+nj2YeRYwotYF2WCbbWBNqFAKf2FtsTg
 TUPqHI0b7jTg0URcq1VLGSUZM+jyXC8MPI8+uz/49Q==
X-Google-Smtp-Source: APiQypKwcPjJPBwPDyzfifsJ9SA8+fSBAfu1r/Lymm9Q4ODuue79UHwVFwqFxAtVSoJpSw4ipsyt3LIML681Ciwsf/c=
X-Received: by 2002:a19:7418:: with SMTP id v24mr263376lfe.15.1588651803162;
 Mon, 04 May 2020 21:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
 <20200425112950.3a4815b6@why>
 <6fd3d96181ec53f735ef1b6a79d28da1@kernel.org>
 <CAFA6WYPNNNZeX5zpadayfiZ7P_mHmiREpUd5LZ3Jp+TjGVqoEw@mail.gmail.com>
 <ac57cb4bbb6507ee98f199d68a514503@kernel.org>
 <CAFA6WYMheJxeKVC_YWN9owNJhcWTBsaOCvZXxq=GVj5ROJ0cvg@mail.gmail.com>
 <20200430101322.420e4052@why>
 <CAFA6WYO+NGLfNkOah4YzXx5XuaDh=QtWHgnMBwwMFY1zRt15GQ@mail.gmail.com>
 <CAFA6WYPxiwxpJitX7fCSESUvQSa9Dq89GwL4e3w33ooetV=ysw@mail.gmail.com>
In-Reply-To: <CAFA6WYPxiwxpJitX7fCSESUvQSa9Dq89GwL4e3w33ooetV=ysw@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 5 May 2020 09:39:50 +0530
Message-ID: <CAFA6WYOn+DLf77C1+e5bq-NdT+o4=o32oPu2b3bxD_U+mLQ3WQ@mail.gmail.com>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_211007_156021_12E1A217 
X-CRM114-Status: GOOD (  35.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, julien.thierry.kdev@gmail.com,
 Jason Wessel <jason.wessel@windriver.com>,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 at 18:33, Sumit Garg <sumit.garg@linaro.org> wrote:
>
> Hi Marc,
>
> On Thu, 30 Apr 2020 at 17:43, Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > On Thu, 30 Apr 2020 at 14:43, Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > On Thu, 30 Apr 2020 12:50:28 +0530
> > > Sumit Garg <sumit.garg@linaro.org> wrote:
> > >
> > > > Hi Marc,
> > > >
> > > > On Wed, 29 Apr 2020 at 13:53, Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > [...]
> > >
> > > > > What I would like is for the arch code to request these interrupts as
> > > > > normal interrupts, for which there is one problem to solve: how do you
> > > > > find out about the Linux IRQ number for a given IPI. Or rather, how
> > > > > do you get rid of the requirement to have IPI numbers at all and just
> > > > > say "give me a per-cpu interrupt that I can use as an IPI, and by the
> > > > > way here's the handler you can call".
> > > >
> > > > I think what you are looking for here is something that could be
> > > > sufficed via enabling "CONFIG_GENERIC_IRQ_IPI" framework for arm64/arm
> > > > architectures. It's currently used for mips architecture. Looking at
> > > > its implementation, I think it should be possible to hook up SGIs
> > > > under new IPI irq_domain for GICv2/v3.
> > > >
> > > > So with this framework we should be able to dynamically allocate IPIs
> > > > and use common APIs such as request_irq()/request_nmi() to tell IPI
> > > > specific handlers.
> > > >
> > > > If this approach looks sane to you then I can start working on a PoC
> > > > implementation for arm64.
> > >
> > > I can't say I'm keen. This IPI framework doesn't really work for the
> > > GIC:
> > >
> > > - it requires a separate irqdomain to be able to guarantee that you
> > >   allocate the hwirq in the SGI range. What is the point?
> > > - it creates yet another level of indirection on IPI injection
> > >
> > > This framework was created to deal with two cases:
> > > - systems that can't represent their IPI with a single hwirq spanning
> > >   all the CPUs
> > > - "accelerator cores" that don't run Linux
> > >
> > > The GIC architecture avoids the first point, and I don't even want to
> > > think of the second one.
> > >
> > > Also, it doesn't solve the initial problem, which is to bootstrap the
> > > whole thing. The IPI framework relies on an irqdomain to be created the
> > > first place. This would mean teaching the arch code about the
> > > intricacies of irqdomains, FW nodes and other terrible things. All
> > > things which are better hidden in the GIC drivers (not to mention the
> > > other horror stories that are the RPi-2/3 irqchip and the Huawei GIC
> > > knock-off).
> > >
> > > What I have in mind is to replace the set_smp_cross_call() with
> > > something that passes the required set of information (interrupt range,
> > > at the very least). The only thing that I plan to reuse from the IPI
> > > framework is the chip->ipi_send_mask() callback.
> > >
> >
> > Fair enough, I will just pass the allocated interrupt range base
> > instead of set_smp_cross_call() and use __ipi_send_mask() to invoke a
> > particular IPI.
>
> Thinking more about this, there seems to be multiple irqchip drivers
> registering softirq API via set_smp_cross_call(). So we need to
> introduce a new API instead of replacing set_smp_cross_call() under
> "CONFIG_GENERIC_IRQ_IPI" macro until all drivers switch to IPIs as
> full interrupts.
>
> BTW, could we take up this generalization as follow-up work as it
> seems to be independent of current IPI NMI work?
>
> >
> > And to request an arch specific IPI as NMI, will use
> > arch_get_ipinr_nmi() and in turn use request_percpu_nmi() to turn that
> > particular IPI as NMI.
>
> I have updated the second patch [1] in my tree to incorporate these
> changes. The updated commit log is as follows:
>
> commit 25c96663126264ec758c49a4a01a9c285f4ccc61
> Author: Sumit Garg <sumit.garg@linaro.org>
> Date:   Wed Apr 22 16:29:59 2020 +0530
>
>     irqchip/gic-v3: Setup arch specific IPI as pseudo NMI
>
>     Add support to mark arch specific IPI as pseudo NMI. Currently its used
>     to allow arm64 specific IPI_CALL_NMI_FUNC to be marked as pseudo NMI.
>
>     Brief description of changes:
>     - Update NMI setup/teardown routines for SGIs.
>     - Enable NMI support prior to gic_smp_init().
>     - Setup custom flow handler for SGI setup as NMI.
>     - Request, prepare and enable arch specific IPI as per CPU NMI using
>       common APIs.
>
>     Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>
> Please have a look and let me know if this is something you were looking for.
>

In case there are no major objections to this approach, I will post
complete v2 patch-set (alongwith Marc's patches) for detailed review.

-Sumit

> [1] https://git.linaro.org/people/sumit.garg/linux.git/commit/?h=kgdb-nmi&id=25c96663126264ec758c49a4a01a9c285f4ccc61
>
> -Sumit
>
> > > Thanks,
> > >
> > >         M.
> > > --
> > > Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
