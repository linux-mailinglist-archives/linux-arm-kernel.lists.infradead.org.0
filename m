Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123FC1D9B17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnOmKHLFbFUevTHSKYn1jcWdFZU/oGWBhi0eg4YNcyQ=; b=fB1qP14JLraVFi
	XBmN/WJyGO9GB+sxefjxt7geeCIjSJIVoKqZyQhPGoAxSv8GDfjZERqSrmBgzJWHHs3OUYBo4/vBI
	oX/042L6eRfDwp2NsOwtqCcmjDJ+rOAz0cf4hyTaTBjj9V52QmMvLi9oaEYEwp8OrSOsqjyWF6NRa
	KazGEVeJZXshn7xcsvvyrJCAjkdyqbbz8LXddnrwJ+gQEJsPmWBnwtaiBf4o6RQ48LwNPIvC6aiTK
	+XYLcckWr2av5YH2BszgCkq3Hx46SFEBRsc+R51k+eCGjGoFhu865ojiwMdPGmOlVawyUPS/N/jhZ
	IGki45DPTlXIk5yENFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb48o-0002JM-AL; Tue, 19 May 2020 15:26:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb48g-0002J1-32
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:26:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6C742075F;
 Tue, 19 May 2020 15:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589902001;
 bh=8vQcrAtboUpyrk0w+y/s5khTeXHH32xrzsWg2Hqy7u4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c0XU5M4qhlfHjCcQ4nlTxmUxk3uhRGg2aBO/MVtb87KSfU0OsTyslKAvNFD4O9Udl
 g7htGdpZlFGjO+ESIvHIKJ8bTy5F4m1vkAFd1G02WjrE54DVn95ZOm4dxXsdrtcxj8
 e/bTggctDl6aH6b8EyA0i+t06f2oxXZD9kLqXjdA=
Date: Tue, 19 May 2020 16:26:37 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519152637.GB15811@willie-the-truck>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519123843.GJ4611@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_082642_149221_F1320C37 
X-CRM114-Status: GOOD (  17.37  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 01:38:43PM +0100, Mark Brown wrote:
> On Tue, May 19, 2020 at 01:18:16PM +0100, Will Deacon wrote:
> 
> > Fixes: 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building the kernel with BTI")
> 
> I'd say it's the annotation conversion not this, and also that the
> bikeshed would be most fetching in orange.
> 
> c91db232da484851 (arm64: vdso: Convert to modern assembler annotations)

I initially had both, but that felt weird so I dropped this one. However,
I'm happy to switch it for v2.

> > -SYM_FUNC_START(__kernel_rt_sigreturn)
> > +/*
> > + * GDB relies on being able to identify the sigreturn instruction sequence to
> > + * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
> > + * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
> > + * this function is only ever called from a RET and so omitting the landing pad
> > + * is perfectly fine.
> > + */
> > +SYM_START(__kernel_rt_sigreturn, SYM_L_GLOBAL, SYM_A_ALIGN)
> 
> Shouldn't this be a SYM_CODE_START()?  It's the same thing as above
> currently and we'll break an awful lot more if we change what it does in
> a way that affects the code, plus the use of CODE basically says the
> above - it's a "this is non-standard and we know exactly what we're
> doing, don't mess with it" annotation.  If not then it'd be good to
> cover that in the comment since otherwise this seems like it's asking
> for a cleanup, we shouldn't really have raw SYM_START() in code.
> 
> I guess we also ought to annotate the 32 bit sigreturns as CODE too,
> though it's academic there without BTI.

Yes, that's much better, I'll use SYM_CODE_START() and update the compat
code too (I'd forgotten it wasn't an array of hex anymore).

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
