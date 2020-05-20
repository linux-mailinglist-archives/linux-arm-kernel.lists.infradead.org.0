Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D11DAE46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VCvUFY1R2/ATvSku6K/hX1laHmLNgFDgUU+GjwCKQ4=; b=nQhFnthTcp0H4X
	PN6KME+vDr5Kz1b/PEh0+NrVfFAJ0FU20wDaLDfmWkhoWga3uVw8KZJpuvB7xqyunYcv54Wt7asts
	0JlEXzjs3D9sivA2sE3be1uCQfxiIUvOyWDk1MufEz36RdBxFyvuux6Pl5dnapf/TXGuZcv4WzZ4v
	/Y8BrWR9FDQKYWf9MY74JUzg0QKggmMu+tSaME98WuLr+g6PAJGxoX0fUNU8jYYEqz74JRaeDm24L
	FZiSt6v/niF2fXpCz13xuwJGe6nuKY1dQDnthOkxGnkrzq6Xy/fJJmsrkO1Q0/rYU8nGgCZ4AFZ2f
	eruk73KVFSJYErcaSGiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKdP-0003ZU-1x; Wed, 20 May 2020 09:03:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKdG-0003YH-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:03:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5815207F9;
 Wed, 20 May 2020 09:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589965402;
 bh=djeCigMd7GHIEFd0uJsQb94+oVAMvZcURAjv3LL4Ejc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RXz5PNeuHwLJLidx8PF8Dra/utNKJELPobHWmfa25Cue55Ern04bjX2iGxyTO/pZ6
 dTDrtRX0A48mtoGeMkgcT2Q4z/zzollsHSLxJapNVe9md1r5hDSp24w3wtliHbAXPi
 SzbfRfVFn5YxNSFuKKPfEgRykZNinB1FccOA7d3Q=
Date: Wed, 20 May 2020 10:03:18 +0100
From: Will Deacon <will@kernel.org>
To: Linu Cherian <linuc.decode@gmail.com>
Subject: Re: Clarification on necessary barriers before generating IPI
Message-ID: <20200520090317.GD24293@willie-the-truck>
References: <CAAHhmWiezrmtChuowQ4gyn8qhSUnfjc574P_riqHzTqifZK=dg@mail.gmail.com>
 <20200520082856.GA24293@willie-the-truck>
 <CAAHhmWhum+s5OopKMcNOqvGN5aYek-BJRseN8wS47LiH+hJcKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAHhmWhum+s5OopKMcNOqvGN5aYek-BJRseN8wS47LiH+hJcKg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_020322_885041_F9A37FD1 
X-CRM114-Status: GOOD (  13.54  )
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
Cc: maz@kernel.org, Linu Cherian <lcherian@marvell.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 02:23:25PM +0530, Linu Cherian wrote:
> On Wed, May 20, 2020 at 1:59 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Wed, May 20, 2020 at 01:38:24PM +0530, Linu Cherian wrote:
> > > How is it ensured that system register write using msr instruction(gic_send_sgi)
> > > doesnt get reordered before the stores to IPI call processing
> > > list(call_single_queue in kernel/smp.c), so that IPI is guaranteed to
> > > be generated after the stores get completed.
> >
> > I think the flow is:
> >
> >         <store to memory>
> >         DSB     ST
> 
> Dont we need an extra ISB here to ensure that the subsequent MSR SGI1R doesnt
> get executed before <store to memory> and DSB ST ?
> 
> This is on the assumption that DSB ST doesnt enforce the ordering of MSR SGI1R.

I don't think that's a valid assumption. The architecture says:

  | A DSB instruction executed by a PE, PEe, completes when [...] all explicit
  | memory accesses of the required access types appearing in program order
  | before the DSB are complete for the set of observers in the required
  | shareability domain.

and:

  | In addition, no instruction that appears in program order after the DSB
  | instruction can alter any state of the system or perform any part of its
  | functionality until the DSB completes other than:
  |
  | * Being fetched from memory and decoded.
  | * Reading the general-purpose, SIMD and floating-point, Special-purpose, or
  |   System registers that are directly or indirectly read without causing
  |   side-effects.

Are you seeing a problem in practice?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
