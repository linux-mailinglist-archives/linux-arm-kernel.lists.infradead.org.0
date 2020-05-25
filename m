Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B5F1E0E0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpzoMA4ASf4OTUh25bY7yYGGpu5NcOd8uMXrmhy/Tn0=; b=mQe37/eZi8O9p9
	yjkOR1LXtQynox1zWcnKWW+CyHjhWMdqKXejjYHk6s190v+cdvEkWDj4W09cnrQ+1jnj92Acf3oN2
	dAJJmTcUXz//z2IwdZkWlMqmrtqbU7sd0ASsPmDXB/V75otdeWp+bPXUitsUPfvzSBNWO6lGh5tcn
	LBie7k0bfh2l0W7gbnuV8oqhzWjXtaw05hlagLQCWr7lu/j1n9JPS/KRPJwepXqgv1rvzVFQDnkg/
	HCZxHlUNv4aiZJ9+vo6VN0NtC5iqB5Jk/2luDtFjH91kTqrptaIuUfm0s4smLGJ0FJW/GvM2k3o2M
	hDyZJRk9P8hMi62quOiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBnc-0000Eu-Og; Mon, 25 May 2020 12:01:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBnU-0000E0-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:01:37 +0000
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D0CF207C3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 12:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590408095;
 bh=olZ0l8qh0RgdmNkDjt4UJayckN8lajlhkaGjs7bHEeE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Gs+uvbRGLsbo3vy6rwsHoco5X/SzKn6JSTUt9CLdqp9utF45n8uwJwhdVfOVlQcea
 De6yUNJSMfyixnbw7jRQUAImnglZD1zpljR+MJ4JltWMlHPNUiTQmjPlrRFpCMO0EY
 kcd/txtcni5zZqmQdZ7bV3la97AIR7apubgQUY0w=
Received: by mail-io1-f50.google.com with SMTP id c16so18393926iol.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 05:01:35 -0700 (PDT)
X-Gm-Message-State: AOAM531Ko+C+AWF3ABAV0mXqfJW1JdBeY3zyudVw08I+c9wEi8s4yZnK
 qx1+aKkK4do0DTiggocDWr9/kB15lxEDF0N0nnA=
X-Google-Smtp-Source: ABdhPJw5HEiBbr0kLePKL1iehx5NCuUOjnEBURwJrKMeTQaSRXq0GgKTzqpxxM48oIY8rVt+HjNzuxWQOIFyZlvcKyA=
X-Received: by 2002:a5d:81d7:: with SMTP id t23mr12092506iol.142.1590408094927; 
 Mon, 25 May 2020 05:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200512141113.18972-1-nicolas.toromanoff@st.com>
 <20200512141113.18972-6-nicolas.toromanoff@st.com>
 <CAMj1kXGs6UgkKb5+tH2B-+26=tbjHq3UUY2gxfcRfMb1nGVuFA@mail.gmail.com>
 <67c25d90d9714a85b52f3d9c2070af88@SFHDAG6NODE1.st.com>
 <CAMj1kXGo+9aXeYppGSheqhC-pNeJCcEie+SAnWy_sAiooEDMsQ@mail.gmail.com>
 <bd6cac3bd4c74db1a403df58082028fd@SFHDAG6NODE1.st.com>
 <CAMj1kXFwt6cs-MJhAeMRF4-yiddm=ezq=qvSjA_sRAX+_Gdqhw@mail.gmail.com>
 <31e99726fa6544fcaac88490de3186e6@SFHDAG6NODE1.st.com>
In-Reply-To: <31e99726fa6544fcaac88490de3186e6@SFHDAG6NODE1.st.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 25 May 2020 14:01:24 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGyjDbemHBOyprx8NzaxOvauhxV40u81Wa=ONE6HfSRSQ@mail.gmail.com>
Message-ID: <CAMj1kXGyjDbemHBOyprx8NzaxOvauhxV40u81Wa=ONE6HfSRSQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] crypto: stm32/crc: protect from concurrent accesses
To: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_050136_151210_D2516E10 
X-CRM114-Status: GOOD (  33.54  )
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Eric Biggers <ebiggers@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 at 13:49, Nicolas TOROMANOFF
<nicolas.toromanoff@st.com> wrote:
>
> > -----Original Message-----
> > From: Ard Biesheuvel <ardb@kernel.org>
> > Sent: Monday, May 25, 2020 11:07 AM
> > To: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>; Eric Biggers
> > <ebiggers@kernel.org>
> > On Mon, 25 May 2020 at 11:01, Nicolas TOROMANOFF
> > <nicolas.toromanoff@st.com> wrote:
> > >
> > > > -----Original Message-----
> > > > From: Ard Biesheuvel <ardb@kernel.org>
> > > > Sent: Monday, May 25, 2020 9:46 AM
> > > > To: Nicolas TOROMANOFF <nicolas.toromanoff@st.com>
> > > > Subject: Re: [PATCH 5/5] crypto: stm32/crc: protect from concurrent
> > > > accesses
> > > >
> > > > On Mon, 25 May 2020 at 09:24, Nicolas TOROMANOFF
> > > > <nicolas.toromanoff@st.com> wrote:
> > > > >
> > > > > Hello,
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Ard Biesheuvel <ardb@kernel.org>
> > > > > > Sent: Friday, May 22, 2020 6:12 PM> On Tue, 12 May 2020 at
> > > > > > 16:13, Nicolas Toromanoff <nicolas.toromanoff@st.com> wrote:
> > > > > > >
> > > > > > > Protect STM32 CRC device from concurrent accesses.
> > > > > > >
> > > > > > > As we create a spinlocked section that increase with buffer
> > > > > > > size, we provide a module parameter to release the pressure by
> > > > > > > splitting critical section in chunks.
> > > > > > >
> > > > > > > Size of each chunk is defined in burst_size module parameter.
> > > > > > > By default burst_size=0, i.e. don't split incoming buffer.
> > > > > > >
> > > > > > > Signed-off-by: Nicolas Toromanoff <nicolas.toromanoff@st.com>
> > > > > >
> > > > > > Would you mind explaining the usage model here? It looks like
> > > > > > you are sharing a CRC hardware accelerator with a synchronous
> > > > > > interface between different users by using spinlocks? You are
> > > > > > aware that this will tie up the waiting CPUs completely during
> > > > > > this time, right? So it would be much better to use a mutex
> > > > > > here. Or perhaps it would make more sense to fall back to a s/w
> > > > > > based CRC routine if the h/w is tied up
> > > > working for another task?
> > > > >
> > > > > I know mutex are more acceptable here, but shash _update() and
> > > > > _init() may be call from any context, and so I cannot take a mutex.
> > > > > And to protect my concurrent HW access I only though about spinlock.
> > > > > Due to possible constraint on CPUs, I add a burst_size option to
> > > > > force slitting long buffer into smaller one, and so decrease time we take
> > the lock.
> > > > > But I didn't though to fallback to software CRC.
> > > > >
> > > > > I'll do a patch on top.
> > > > > In in the burst_update() function I'll use a
> > > > > spin_trylock_irqsave() and use
> > > > software CRC32 if HW is already in use.
> > > > >
> > > >
> > > > Right. I didn't even notice that you were keeping interrupts
> > > > disabled the whole time when using the h/w block. That means that
> > > > any serious use of this h/w block will make IRQ latency go through the roof.
> > > >
> > > > I recommend that you go back to the drawing board on this driver,
> > > > rather than papering over the issues with a spin_trylock(). Perhaps
> > > > it would be better to model it as a ahash (even though the h/w block
> > > > itself is synchronous) and use a kthread to feed in the data.
> > >
> > > I thought when I updated the driver to move to a ahash interface, but
> > > the main usage of crc32 is the ext4 fs, that calls the shash API.
> > > Commit 877b5691f27a ("crypto: shash - remove shash_desc::flags")
> > > removed possibility to sleep in shash callback. (before this commit
> > > and with MAY_SLEEP option set, using a mutex may have been fine).
> > >
> >
> > According to that commit's log, sleeping is never fine for shash(), since it uses
> > kmap_atomic() when iterating over the scatterlist.
>
> Today, we could avoid using kmap_atomic() in shash_ashash_*() APIs (the
> ones that Walks through the scatterlist) by using the
> crypto_ahash_walk_first() function to initialize the shash_ahash walker
> (note that this function is never call in current kernel source [to remove ?]).
> Then shash_ahash_*() functions will call ahash_*() function that use kmap()
> if (walk->flags & CRYPTO_ALG_ASYNC) [flag set by crypto_ahash_walk_first()]
> The last kmap_atomic() will be in the shash_ahash_digest() call in the
> optimize branch (that should be replaced by the no atomic one)
>
> I didn't investigate more this way, because I didn't check the drawback of
> using kmap() instead of kmap_atomic(), I wanted to avoid modifying behavior
> of other drivers and using a function never use elsewhere in kernel scarred
> me ;-).
> If these updates correct visible bugs in the ahash usage of the stm32-crc32
> code [no more "sleep while atomic" traces even with mutex in tests],
> Documentation states that shash API could be called from any context,
> I cannot add mutex in them.
>
> > > By now the solution I see is to use the spin_trylock_irqsave(),
> > > fallback to software crc *AND* capping burst_size to ensure the locked
> > section stay reasonable.
> > >
> > > Does this seems acceptable ?
> > >
> >
> > If the reason for disabling interrupts is to avoid deadlocks, wouldn't the switch
> > to trylock() with a software fallback allow us to keep interrupts enabled?
>
> Right, with the trylock, I don't see why we may need to mask interrupts.
>
>

OK, then the fix should be easy.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
