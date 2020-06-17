Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295F01FC842
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wHFST3c25HTadxJCz+OJYMev6UdUFVYhZHheIrci3E=; b=WKvkczGRjcTh2o
	9tC6K1HHy27494Uz8QL783dAJnsbd+ynCJfAceIkV9KVPgHwC3AOY0EQHmwxwInx9YSejW2cIia1H
	5OMxDtFbs+CRT1lYd1y5jr//pZPqwtUFMkDwWC7dYQKYOkBGqSO4j8D4IWtL6pnOLqGXt/mF7081e
	YdfPxmCgVW2mi255ZbJ0qzsSJanyEUUpNoW88ZVJtBGEsRlFgBcA7ud2iFgMic1LezmF/FFNk5gtL
	bmWJd7fSmqCtjAFUW/QRVUvM5RSzpcZoJf7YWIViiLttHx4PUNpD+TDGapT7flARayYCvkvjVM0cB
	L/7patp4GZczsdhy44zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlT3X-0002Xq-KS; Wed, 17 Jun 2020 08:04:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlT3M-0002XA-95
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 08:04:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91CE021475;
 Wed, 17 Jun 2020 08:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592381051;
 bh=MjCLvKpmywtlENNu3L8WcjVAZUYXfsV93TDu3ReXKuQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JTiufBj0BMszSpkVUzi+gNk/qprMzw2wYVoJRieWtNmkrCUlTJiL+eUPkxjEPJZ7D
 Pl+CdboZUILER+bWki4NgM0L7KE262coRqRGnhsGEroSN9Uf1CdlIdoIHJwTchzbUV
 5UjKXESI9ZrCTGdCfmJKt9pER0l8tsQDgS//NF2k=
Date: Wed, 17 Jun 2020 09:04:06 +0100
From: Will Deacon <will@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH 00/25] mm: Page fault accounting cleanups
Message-ID: <20200617080405.GA3208@willie-the-truck>
References: <20200615221607.7764-1-peterx@redhat.com>
 <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
 <87imfqecjx.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imfqecjx.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_010412_342370_9F8570B1 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Xu <peterx@redhat.com>, openrisc@lists.librecores.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 10:55:14AM +1000, Michael Ellerman wrote:
> Linus Torvalds <torvalds@linux-foundation.org> writes:
> > On Mon, Jun 15, 2020 at 3:16 PM Peter Xu <peterx@redhat.com> wrote:
> >> This series tries to address all of them by introducing mm_fault_accounting()
> >> first, so that we move all the page fault accounting into the common code base,
> >> then call it properly from arch pf handlers just like handle_mm_fault().
> >
> > Hmm.
> >
> > So having looked at this a bit more, I'd actually like to go even
> > further, and just get rid of the per-architecture code _entirely_.
> 
> <snip>
> 
> > One detail worth noting: I do wonder if we should put the
> >
> >     perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
> >
> > just in the arch code at the top of the fault handling, and consider
> > it entirely unrelated to the major/minor fault handling. The
> > major/minor faults fundamnetally are about successes. But the plain
> > PERF_COUNT_SW_PAGE_FAULTS could be about things that fail, including
> > things that never even get to this point at all.
> 
> Yeah I think we should keep it in the arch code at roughly the top.

I agree. It's a nice idea to consolidate the code, but I don't see that
it's really possible for PERF_COUNT_SW_PAGE_FAULTS without significantly
changing the semantics (and a potentially less useful way. Of course,
moving more of do_page_fault() out of the arch code would be great, but
that's a much bigger effort.

> If it's moved to the end you could have a process spinning taking bad
> page faults (and fixing them up), and see no sign of it from the perf
> page fault counters.

The current arm64 behaviour is that we record PERF_COUNT_SW_PAGE_FAULTS
if _all_ of the following are true:

  1. The fault isn't handled by kprobes
  2. The pagefault handler is enabled
  3. We have an mm (current->mm)
  4. The fault isn't an unexpected kernel fault on a user address (we oops
     and kill the task in this case)

Which loosely corresponds to "we took a fault on a user address that it
looks like we can handle".

That said, I'm happy to tweak this if it brings us into line with other
architectures.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
