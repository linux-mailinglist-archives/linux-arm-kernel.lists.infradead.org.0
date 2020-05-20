Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553591DBBBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYxr6TRfCIZ7vHoT1NoY5/2jsyy71fQI7GRLAtBEZVw=; b=ZRB9SmHMpc42+j
	14om8b78OS/+n35NQfOQ84GiMfRx7j8GKM5nrJn3aSyitJJM5id8qP8mKBGY45tlaZzJt3Rvnv0xo
	AGcvXT/TFcMkN0oitYsXKg2R4+ir3vJ6C9FcCE09tUNykL1qjpX1tsnioLlsgeqj8XjHGkR/ArG8v
	QJGMz/yEN2WfsoEuA8dxCGUK55zdoPLPxVUTYpKFMvgNQyTi5lXBh9lUv1EE+sNSozJNpvFDCq0/C
	FpLGlJVsKl+PKuTFqmfmRS8GCOOPmRcc/YKx9tH5XI+6f6i/Ss+cLFI326m5WW8+dJ8e3R3uGUxuc
	8r1CGQTRnVSFAv/zYhGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSjF-0007uZ-JC; Wed, 20 May 2020 17:42:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSj4-0007u8-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:41:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35DF020709;
 Wed, 20 May 2020 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589996514;
 bh=vwO5w+JtVONHfb0euQ8pgchCgtobqFMlado05i6hxzE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kNyKyCDzEBiEp9U/hzypTeDYnsOS2t6Wh55G/pV23Pg0+rv8ymIZsfBsT6iYxVLMg
 YuSOHyJ2aM5+x5TC5MbYPPx1BZ5uQyaiujC8mclcVJCNusddgnmCGP3hPPKFvmeQ8l
 N/D88s10AuUVD503Mi/ctOIw0KF+NZINj+0+OFCo=
Date: Wed, 20 May 2020 18:41:50 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200520174149.GB27629@willie-the-truck>
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_104154_677891_366BAAE2 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Kyle Huey <khuey@pernos.co>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Keno,

On Tue, May 19, 2020 at 04:37:34AM -0400, Keno Fischer wrote:
> > Yes, we inherited this from ARM and I think strace relies on it. In
> > hindsight, it is a little odd, although x7 is a parameter register in the
> > PCS and so it won't be live on entry to a system call.
> 
> I'm not familiar with the PCS acronym, but I assume you mean the
> calling convention? You have more faith in userspace than I do ;). For
> example, cursory googling brought up this arm64 syscall definition in musl:
> 
> https://github.com/bminor/musl/blob/593caa456309714402ca4cb77c3770f4c24da9da/arch/aarch64/syscall_arch.h

Hmm, does that actually result in the SVC instruction getting inlined? I
think that's quite dangerous, since we document that we can trash the SVE
register state on a system call, for example. I'm also surprised that
the register variables are honoured by compilers if that inlining can occur.

> The constraints on those asm blocks allow the compiler to assume that
> x7 is preserved across the syscall. If a ptracer accidentally modified it
> (which is easy to do in the situations that I mentioned), it could
> absolutely cause incorrect execution of the userspace program.
> 
> > Although the examples you've
> > listed above are interesting, I don't see why x7 is important in any of
> > them (and we only support up to 6 system call arguments).
> 
> It's not so much that x7 is important, it's that lying to the ptracer is
> problematic, because it might remember that lie and act on it later.
> I did run into exactly this problem, where my ptracer accidentally
> changed the value of x7 and caused incorrect execution in the tracee
> (now that incorrect execution happened to be an assertion, because
> my application is paranoid about these kinds of issues, but it was
> incorrect nevertheless)
> 
> If it would be helpful, I can code up the syscall entry -> signal trap example
> ptracer to have a concrete example.

I guess I'm more interested in situations where the compiler thinks x7 is
live, yet we clobber it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
