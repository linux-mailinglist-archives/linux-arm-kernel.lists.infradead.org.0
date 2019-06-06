Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E400B37036
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ2o7nIlprbpsZV0lww9ITa/crHGE7k+qI/mIZObXP8=; b=I4c7gvt6RZUW8D
	VL2NuEUwcG26hzqWqV3ZAenql60jLofRRDbCnOWvvsx0n+pslehEGd6jsIeNwCFxHYMGE8NtHdc5w
	Y/mVCG9NAyfBB3FkXVtzkkEWp5kikrglt+csCsdrXJjc07TxuqVpgZZuUbbs9ZdPp0o7Gvj2SaEig
	pIxdIQvRF2rfSpeVExyuh7rsoX9UyRIdcXYCTSFNLxZI/wjWLOfOH5gYjr2CM5t3bsw2ZRjuTUQwF
	c51STsFQ6KEAFNMDODitBn8kauNeRgF9uU/cOuyXieIBolodhAy5UOb8QoWiWosOogSLGK1hfD0t/
	QE4vDNl6e774OKeix6PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYouL-0003rx-Jf; Thu, 06 Jun 2019 09:42:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYouE-0003rH-AE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:41:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5C26341;
 Thu,  6 Jun 2019 02:41:57 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E2E53F690;
 Thu,  6 Jun 2019 02:41:56 -0700 (PDT)
Date: Thu, 6 Jun 2019 10:41:54 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jan Glauber <jglauber@marvell.com>
Subject: Re: [PATCH] lockref: Limit number of cmpxchg loop retries
Message-ID: <20190606094154.GB6795@fuggles.cambridge.arm.com>
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190605134849.28108-1-jglauber@marvell.com>
 <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
 <20190606080317.GA10606@hc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606080317.GA10606@hc>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024158_360415_283B4A6E 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Jan Glauber <jglauber@cavium.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 08:03:27AM +0000, Jan Glauber wrote:
> On Wed, Jun 05, 2019 at 01:16:46PM -0700, Linus Torvalds wrote:
> > On Wed, Jun 5, 2019 at 6:49 AM Jan Glauber <jglauber@cavium.com> wrote:
> > >
> > > Add an upper bound to the loop to force the fallback to spinlocks
> > > after some time. A retry value of 100 should not impact any hardware
> > > that does not have this issue.
> > >
> > > With the retry limit the performance of an open-close testcase
> > > improved between 60-70% on ThunderX2.
> > 
> > Btw, did you do any kind of performance analysis across different
> > retry limit values?
> 
> I tried 15/50/100/200/500, results were largely identical up to 100.
> For SMT=4 a higher retry value might be better, but unless we can add a
> sysctl value 100 looked like a good compromise to me.

Perhaps I'm just getting confused pre-morning-coffee, but I thought the
original complaint (and the reason for this patch even existing) was that
when many CPUs were hammering the lockref then performance tanked? In which
case, increasing the threshold as the number of CPUs increases seems
counter-intuitive to me because it suggests that the larger the system,
the harder we should try to make the cmpxchg work.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
