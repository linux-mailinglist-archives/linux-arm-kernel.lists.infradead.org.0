Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1831ED3CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouwd9VFeL+FgRNvx+hn9YB7tonz+DQXR2uLff2MX34w=; b=hizvseLtWe7Utf
	7IeRHAUgtBfEOm0uUM/VvZ+mTGOpQeVZOtdYXYR92zHZu7SB9aDcH4jH3+fRfyG4GnPzzqJ5rK9p2
	PfyDV5rCTErwHgm4CJVNGaVEXQK4/frK4QmUaYp1yICRbHP7UiOcq5dx8dsMgz8USKdV6n7jeFraU
	/OjxPgZnCA5XoVz0ylcVicoXDSUPFUl5A+s1E5sZIsDzrKuRpgLrpZ1U1uW8GwC2KwsHYX0N27a2J
	SUe3pQjauSTAOw+7XBXxeNnnipuXW5MNqTQm1iGifO6cFiBT55Fb4ABnM2m8hRozJYEAAy8Lhs0b/
	t3EShHikuP5LGwMs2LSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgViA-0003ho-TT; Wed, 03 Jun 2020 15:53:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVi4-0003hD-CW
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:53:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9597206A2;
 Wed,  3 Jun 2020 15:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591199624;
 bh=A7R/LfmNTV+rUGtiZFNA3CTiCNX1NnmFmlAyesmhuCE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CgxiiRImLnAtWO1jIYZC1XMb3gsIzCXKVv5zSce1CUqVxMp6+JWeULMW5/Dg/B/Ty
 vZ31bFD4b4VGvCYluH+VCCz3fg9Ff0/q3bgiTBsDZV/09HBk6VZHOtIN3tHUvmRKH6
 rfUerWQDx5CRoYmw4nC9oYk3UmntXbwFB2gaJhAc=
Date: Wed, 3 Jun 2020 16:53:39 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is
 enabled
Message-ID: <20200603155338.GA12036@willie-the-truck>
References: <20200603151033.11512-1-will@kernel.org>
 <20200603151033.11512-2-will@kernel.org>
 <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_085344_450646_018AE797 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luis Machado <luis.machado@linaro.org>,
 kernel-team@android.com, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Keno,

Thanks for having a look.

On Wed, Jun 03, 2020 at 11:42:46AM -0400, Keno Fischer wrote:
> On Wed, Jun 3, 2020 at 11:10 AM Will Deacon <will@kernel.org> wrote:
> >
> > Luis reports that, when reverse debugging with GDB, single-step does not
> > function as expected on arm64:
> >
> >   | I've noticed, under very specific conditions, that a PTRACE_SINGLESTEP
> >   | request by GDB won't execute the underlying instruction. As a consequence,
> >   | the PC doesn't move, but we return a SIGTRAP just like we would for a
> >   | regular successful PTRACE_SINGLESTEP request.
> >
> > The underlying problem is that when the CPU register state is restored
> > as part of a reverse step, the SPSR.SS bit is cleared and so the hardware
> > single-step state can transition to the "active-pending" state, causing
> > an unexpected step exception to be taken immediately if a step operation
> > is attempted.
> 
> We saw this issue also and worked around it in user-space [1]. That said,
> I think I'm ok with this change in the kernel, since I can't think of
> a particularly useful usecase for this feature.
> 
> However, at the same time as changing this, we should probably make sure
> to enable the syscall exit pseudo-singlestep trap (similar issue as the other
> patch I had sent for the signal pseudo-singlestep trap), since otherwise
> ptracers might get confused about the lack of singlestep trap during a
> singlestep -> seccomp -> singlestep path (which would give one trap
> less with this patch than before).

Hmm, I don't completely follow your example. Please could you spell it
out a bit more? I fast-forward the stepping state machine on sigreturn,
which I thought would be sufficient. Perhaps you're referring to a variant
of the situation mentioned by Mark, which I didn't think could happen
with ptrace [2].

Cheers,

Will

[2] https://lore.kernel.org/r/20200531095216.GB30204@willie-the-truck

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
