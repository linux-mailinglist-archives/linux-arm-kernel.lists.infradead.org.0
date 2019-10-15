Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC0FD83AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OV56QpoKERZ++jGNeatoaguviWx52f00Tw+Y4rqvioc=; b=hfMNLDaSDOX5yc
	SZSdnBjn9uL+N2u2EkqWOZzl3raU75QbrHmggy0v0KIu5tpoQA/AZUSXQe7Kxh635q3/DBRwiunhk
	BVbv2b0HGecHuNdvwTvvnZhYYKCPgqcOJjwFesiHEhVYwQaCGSd3EnWblU7xMhL2IZLqTEt89ytgl
	KZJFt/wzrLAA0wsyVk19jvZgjPF6cbdpNRBPh5EPmdT3wchXahyWD2z7/VcauEkaqtU4mLzXFrY0R
	sc8OUOfYs7JeCfA9sErODLYp5e0lXKLDgKiE+fU6mCijVH2iBHEMGVgmGhkyXfoFiUS8C7CUkS2Up
	O5W20A/vHnN0P09Vg0MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVKj-0005H4-Q5; Tue, 15 Oct 2019 22:30:25 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVKa-0005G9-LJ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:30:18 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iKVKY-0007J4-1r; Wed, 16 Oct 2019 00:30:14 +0200
Date: Wed, 16 Oct 2019 00:30:14 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
Message-ID: <20191015223011.nyjbtylco6isjvb6@flow>
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-7-sebastian@breakpoint.cc>
 <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
 <CAK8P3a1Mu0Ghy1VtD7NBKQ4-ZMsYQe_bjYBAshRMTYTWtxzbPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1Mu0Ghy1VtD7NBKQ4-ZMsYQe_bjYBAshRMTYTWtxzbPw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_153016_702334_D5305DB1 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-14 12:01:02 [+0200], Arnd Bergmann wrote:
> On Mon, Oct 14, 2019 at 9:43 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Mon, Oct 14, 2019 at 12:14 AM Sebastian Andrzej Siewior <sebastian@breakpoint.cc> wrote
> >
> > Also, the output of 'size vmlinux' before and after the patch for
> > multi_v7_defconfig would be useful to have in the changelog, as there
> > are a couple of platforms that are particularly sensitive to object code
> > size changes.
> 
> To follow up, here are the numbers I get, building the linux-5.4-rc2
> multi_v7_defconfig with clang-9, comparing the original spinlock
> and the qspinlock, combined with inlining all locks or leaving them
> out of line:
> 
>    text    data     bss     dec     hex filename
> 15294816 6958636 404480 22657932 159bb8c vmlinux-orig
> 16004898 6962060 404480 23371438 1649eae vmlinux-orig-inline
> 15198619 6958812 404560 22561991 15844c7 vmlinux-qlock-noinline
> 15622897 6962116 404560 22989573 15ecb05 vmlinux-qlock-inline
> 
> This gives us a 1.5% size increase over the original code with
> inlining, or a 0.5% decrease without inlining, or about 1.9% size
> difference for the Kconfig change itself, which does sound
> significant.

I had 2% increase (vmlinux-orig -> vmlinux-qlock-inline) but my vmlinux
was only half the size. Performance wise the inlining improved the
hackbench numbers in my test. How do we account that?

> Maybe it should be configurable?

Any comment from the locking department? I would prefer to avoid an
extra knob for it. 
The v7 config is PREEMPT_NONE and HZ_100. Based on the perf numbers I
posted last time: with inlining I get more or less to the performance of
the ticket implementation on imx6 and it makes no difference on AM572x.
Let me run the hackbench test with the multi_v7_defconfig on my two
boards with ORIG/qlock/qlock-inline and come with some numbers here.

>       Arnd

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
