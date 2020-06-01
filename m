Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA6C1EA13F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FArTOilqy/G/YOD5iyQci4EinwNet6lBqOxH1Nx1Z1Q=; b=R/yuJbqGP0SHgk
	Fs43NEFrmfd78f2ga8yG2snF7kI2UchsXHRFjQ3a50x2YcHShlxgXu7eHw3Xnw5myAVUrqnhYfOMX
	Micvaax4dX6JZEGxIy7T0rRcXGibgqgiQE6JAjOKn0FCilAk/j07YhP3dpvN59knXkctUl9gsEbzc
	j2o+LawrEyAVOHai2UELI0kc8Gma/zmTcxHxacpYv5SUw2jEmXy0tT1eFtJgLkrIEIzuQcIopDvi3
	qjjR6pfSvefgCKtCdhtiy7LE6rBQZG2NlM2V0BuHH7IJ/FqSQ5xl6iwyRv7nmKnJgbf8kuPpI3EJu
	VCVKff0y/6jkw9yv4xwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfh7R-0006vt-9D; Mon, 01 Jun 2020 09:52:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfh7L-0006vP-8G
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:52:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CD871FB;
 Mon,  1 Jun 2020 02:52:26 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 512B33F305;
 Mon,  1 Jun 2020 02:52:25 -0700 (PDT)
Date: Mon, 1 Jun 2020 10:52:23 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200601095222.GY5031@arm.com>
References: <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck>
 <20200527101929.GT5031@arm.com>
 <20200531093320.GA30204@willie-the-truck>
 <CABV8kRyHo+EAWaMUzGA220z=HJRBCpH6UWiYGb84uSL3h8HQHw@mail.gmail.com>
 <20200601091441.GW5031@arm.com>
 <CABV8kRz2ineTcLS29Lh=BW_kJB_X7PoqY-MaMj_pUUziOxrYCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRz2ineTcLS29Lh=BW_kJB_X7PoqY-MaMj_pUUziOxrYCw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_025227_339217_0B8043D7 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kyle Huey <khuey@pernos.co>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 05:23:01AM -0400, Keno Fischer wrote:
> On Mon, Jun 1, 2020 at 5:14 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > Can you explain why userspace would write a changed value for x7
> > but at the same time need that new to be thrown away?
> 
> The discarding behavior is the primary reason things aren't completely
> broken at the moment. If it read the wrong x7 value and didn't know about
> the Aarch64 quirk, it's often just trying to write that same wrong
> value back during the next stop, so if that's just ignored,
> that's probably fine in 99% of cases, since the value in the
> tracee will be undisturbed.

I guess that's my question: when is x7 "disturbed".

Other than sigreturn, I can't think of a case.

I'm likely missing some aspect of what you're trying to do.

> I don't think there's a sane way to change the aarch64 NT_PRSTATUS
> semantics without just completely removing the x7 behavior, but of course
> people may be relying on that (I think somebody said upthread that strace does?)

Since rt_sigreturn emulation was always broken, can we just say
that the effect of updating any reg other than x0 is unspecified in this
case?

Even fixing the x7 issue won't magically teach your tracer how to
deal with unrecognised data in the signal frame, so new hardware or
a new kernel could cause your tracer to become subtly broken.  Would you
be better off tweaking the real signal frame as desired and doing a real
rt_sigreturn for example, instead of attempting to emulate it?


I'm somewhat playing devil's advocate here...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
