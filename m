Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C7319D2DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 10:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucSXQMU8EcGOAZnhHqjXTosecQr2f/b+kwc6yhGhCRM=; b=lLQc5gdfCyAEQO
	cA9Ytvk8AkFx9rn3ZHSqoEOe9QiiboAMF0mGPhXB5+IkCFTVhj82VmadbAE3bKl6AgOzbvR20VKnZ
	gCRlHhyhCZfatrHS3f222G5WYeMIts1OqmbRyKgHrSwyMgMpBr73/w63f0RcKNpGJrE3r8cCCUaG/
	YdAkvasKVYAvgnd5BDe6p/j4Rf/1RkqSSL60DuD3x84oAzxKqGrJ6BO/yuDObuk+hpAQu5Hp84yW/
	BvQWt/K0carJ1RH8jHOopCj2Jf/fH7WOmenY8thHHSVoY5+czFJgFYCe+YOZi9DU+y0X0BSzE+UTF
	9USvFJqg5Z7zyfadkPWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIAT-0001gl-Oa; Fri, 03 Apr 2020 08:59:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIAK-0001g6-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 08:59:06 +0000
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B39032080C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Apr 2020 08:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585904343;
 bh=kw8a4FktnFz4oTw1Esyzp1wV1xha1xRoe0FkNkJtf88=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MDQXCbIfbu742riJo/kUNAH7JNGYXmNsZ5E/t3s4OP7cd+N2inCHrNWMw4jMIYzMk
 hhow0pZlm0skVFt5U8MaAOBp+Gf+4tVye43kxyGssoh3rGD+lzXhXvbfFtv5F69r40
 65b3/iTE1eo15VXCN6nL+sPIeQ7ym3XwEO+xmh60=
Received: by mail-io1-f44.google.com with SMTP id o3so6759347ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 01:59:03 -0700 (PDT)
X-Gm-Message-State: AGi0PuYvTr4UvP2yA7ZWpjaTVcymm4IEYuDj+RlBfxEtTaT+pnF8z22R
 4ZG2+6WJ+dL155egVNHll0PFlcLFs3Lx5FFaDKc=
X-Google-Smtp-Source: APiQypL6LDByoMGOHzbLBsN9qknqnWp7ntm1vw0lrMbPcQn5Kq8mPbPbxxp0PS+jeVV+YJdMxPs1ozZ3hnrD3ONG7so=
X-Received: by 2002:a05:6638:a22:: with SMTP id 2mr7657847jao.74.1585904343067; 
 Fri, 03 Apr 2020 01:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
 <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
 <20200330140441.GE10633@willie-the-truck>
 <CAMj1kXHJ5n-EZMgGSYm+ekO-e7XTp7fv-FZ2NJ1EttJ=-kc8fw@mail.gmail.com>
 <20200330142805.GA11312@willie-the-truck>
 <CAMj1kXFcvHcU2kzP=N4bHgSkw_eE7wvbPJ=7w1pNeCWHbcPvTQ@mail.gmail.com>
 <20200402113033.GD21087@mbp>
In-Reply-To: <20200402113033.GD21087@mbp>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 3 Apr 2020 10:58:51 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGLMWqTHbWftoAq=WdVqyf+i=6SvsMogzWHh6SL3b=4sQ@mail.gmail.com>
Message-ID: <CAMj1kXGLMWqTHbWftoAq=WdVqyf+i=6SvsMogzWHh6SL3b=4sQ@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_015904_849031_82E3B5EA 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 at 13:30, Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Mar 30, 2020 at 04:32:31PM +0200, Ard Biesheuvel wrote:
> > On Mon, 30 Mar 2020 at 16:28, Will Deacon <will@kernel.org> wrote:
> > > > On Mon, 30 Mar 2020 at 16:04, Will Deacon <will@kernel.org> wrote:
> > > > > On Mon, Mar 30, 2020 at 03:53:04PM +0200, Ard Biesheuvel wrote:
> > > > > > On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
> > > > > > > But I would really like to go a step further and rip out the block mapping
> > > > > > > support altogether so that we can fix non-coherent DMA aliases:
> > > > > > >
> > > > > > > https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
> > > > > >
> > > > > > I'm not sure I follow - is this about mapping parts of the static
> > > > > > kernel Image for non-coherent DMA?
> > > > >
> > > > > Sorry, it's not directly related to your patch, just that if we're removing
> > > > > options relating to kernel mappings then I'd be quite keen on effectively
> > > > > forcing page-granularity on the linear map, as is currently done by default
> > > > > thanks to RODATA_FULL_DEFAULT_ENABLED, so that we can nobble cacheable
> > > > > aliases for non-coherent streaming DMA mappings by hooking into Christoph's
> > > > > series above.
>
> Have we ever hit this issue in practice? At least from the CPU
> perspective, we've assumed that a non-cacheable access would not hit in
> the cache. Reading the ARM ARM rules, it doesn't seem to state this
> explicitly but we can ask for clarification (I dug out an email from
> 2015, left unanswered).
>

There is some wording in D4.4.5 (Behavior of caches at reset) that
suggests that implementations may permit cache hits in regions that
are mapped Non-cacheable (although the paragraph in question talks
about global controls and not page table attributes)

> Assuming that the CPU is behaving as we'd expect, are there other issues
> with peripherals/SMMU?
>

There is the NoSnoop PCIe issue as well: PCIe masters that are DMA
coherent in general can generate transactions with non-cacheable
attributes. I guess this is mostly orthogonal, but I'm sure it would
be much easier to reason about correctness if it is guaranteed that no
mappings with mismatched attributes exist anywhere.

> > > Fair enough, but I'd still like to see some numbers. If they're compelling,
> > > then we could explore something like CONFIG_OF_DMA_DEFAULT_COHERENT, but
> > > that doesn't really help the kconfig maze :(
>
> I'd prefer not to have a config option, we could easily break single
> Image at some point.
>
> > Could we make this a runtime thing? E.g., remap the entire linear
> > region down to pages under stop_machine() the first time we probe a
> > device that uses non-coherent DMA?
>
> That could be pretty expensive at run-time. With the ARMv8.4-TTRem
> feature, I wonder whether we could do this lazily when allocating
> non-coherent DMA buffers.
>
> (I still hope there isn't a problem at all with this mismatch ;)).
>

Now that we have the pieces to easily remap the linear region down to
pages, and [apparently] some generic infrastructure to manage the
linear aliases, the only downside is the alleged performance hit
resulting from increased TLB pressure. This is obviously highly
micro-architecture dependent, but with Xgene1 and ThunderX1 out of the
picture, I wonder if the tradeoffs are different now. Maybe by now, we
should just suck it up (Note that we had no complaints afaik regarding
the fact that we map the linear map down to pages by default now)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
