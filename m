Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD97121234
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdgzv4TMmWmFLTdIlFVJEV+wibj3VJ2pfsxHpQhXhgU=; b=HFB/JeWYCduCoG
	R/SSG/tiRWhVrIrbFuJnqsnFsRv4x3TFXLK28QUvCbu7cualchv5PxZ8JTxdtH8hrCUCyTOHegklR
	HHp0dK3/Suz5JbrjVO/Ph7lbZb5QFpqPQoshXcqwjB672kDeiUzj24+p+GqVBoTtgBCMec8oBrsSj
	2mKynwJ7eUSrvbCxLaYmz3CDP/Cggyx0CIch7kdfHBXdESCf75V8uKLVyFKQZlUp+h3bC+Zfmferw
	l7A+Gj5fVnhT6ROSBqd72Ge8grupfjV9T+d5aUdJ8l/awV+VQ4xjBCvULZ+gRUYkPNoqRj7y+CZrQ
	vI+4bnt0Ws0L6uuzMxnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguVm-0006Uk-Dq; Mon, 16 Dec 2019 17:50:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguVc-0006TX-4I; Mon, 16 Dec 2019 17:50:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A642206EC;
 Mon, 16 Dec 2019 17:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576518615;
 bh=g8/rjNCZq7LbHvZLvTNNpjZ1plcZnKZdtSsnrwvnKXs=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=hyJriL7F96LxiYiCXXD6CLjvtW73yKVQDMHGaYpoy1QPMrmgRBbgjZQ2CFT5CAg+W
 +KrAVw6jQMk7TdXrDODjsWdn7uaXccTJfRVXit4cex32jK7jAeY7lAXuMDrm0lEvfi
 xm/9xn40U82jAhw/4ZBRdSf9wMSNHaoWdmQdIbhE=
MIME-Version: 1.0
In-Reply-To: <1jr214bpl0.fsf@starbuckisacylon.baylibre.com>
References: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
 <1jr214bpl0.fsf@starbuckisacylon.baylibre.com>
Subject: Re: [PATCH 0/1] clk: Meson8/8b/8m2: fix the mali clock flags
To: Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 16 Dec 2019 09:50:14 -0800
Message-Id: <20191216175015.2A642206EC@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_095016_216766_59536802 
X-CRM114-Status: GOOD (  31.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jerome Brunet (2019-12-16 01:13:31)
> 
> On Sun 15 Dec 2019 at 22:01, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
> 
> > While playing with devfreq support for the lima driver I experienced
> > sporadic (random) system lockups. It turned out that this was in
> > certain cases when changing the mali clock.
> >
> > The Amlogic vendor GPU platform driver (which is responsible for
> > changing the clock frequency) uses the following pattern when updating
> > the mali clock rate:
> > - at initialization: initialize the two mali_0 and mali_1 clock trees
> >   with a default setting and enable both clocks
> > - when changing the clock frequency:
> > -- set HHI_MALI_CLK_CNTL[31] to temporarily use the mali_1 clock output
> > -- update the mali_0 clock tree (set the mux, divider, etc.)
> > -- clear HHI_MALI_CLK_CNTL[31] to temporarily use the mali_0 clock
>                                       ^ no final setting then ? :P
> >    output again
> >
> > With the common clock framework we can even do better:
> > by setting CLK_SET_RATE_PARENT for the mali_0 and mali_1 output gates
>                 ^
> From your patch, I guess you mean CLK_SET_RATE_GATE ?
> 
> > we can force the common clock framework to update the "inactive" clock
> > and then switch to it's output.
> >
> > I only tested this patch for a limited time only (approx. 2 hours).
> > So far I couldn't reproduce the sporadic system lockups with it.
> > However, broader testing would be great so I would like this to be
> > applied for -next.
> 
> CLK_SET_RATE_GATE guarantees that a clock cannot be updated while in
> use. While it works at your advantage here, I'm not sure CCF guarantees
> the assumption this implementation is based on. Some explanation below:
> 
> In your case, if it works as you expect when calling set_rate() on the
> top clock, it goes as this:
> 
> - mali0 is use with rate X:
> - => set_rate(mali_top, Y)
> - mali0 is in use, cannot change, will round rate Y to X
> - mali1 is not in use, can provide Y
> - mali1 is determined to be the new best parent for mali top
> 
> So far so good.
> 
> - CCF pick the mali1 subtree
>   *start updating the clock from the root to the leaf*
> 
> So the mali top mux, which choose between mali0 and mali1, will be
> *updated last* which crucial to your use case.
> 
> I just wonder if this crucial part something CCF guarantee and you can
> rely on it ... or if it might break in the future.
> 
> Stephen, any thoughts on this ?

We have problems with the order in which we call the set_rate clk_op.
Sometimes clk providers want us to call from leaf to root but instead we
call from root to leaf because of implementation reasons. Controlling
the order in which clk operations are done is an unsolved problem. But
yes, in the future I'd like to see us introduce the vaporware that is
coordinated clk rates that would allow clk providers to decide what this
order should be, instead of having to do this "root-to-leaf" update.
Doing so would help us with the clk dividers that have some parent
changing rate that causes the downstream device to be overclocked while
we change the parent before the divider.

If there are more assumptions like this about how the CCF is implemented
then we'll have to be extra careful to not disturb the "normal" order of
operations when introducing something that allows clk providers to
modify it.

Also, isn't CLK_SET_RATE_GATE broken in the case that clk_set_rate()
isn't called on that particular clk? I seem to recall that the flag only
matters when it's applied to the "leaf" or entry point into the CCF from
a consumer API. I've wanted to fix that but never gotten around to it.
The whole flag sort of irks me because I don't understand what consumers
are supposed to do when this flag is set on a clk. How do they discover
it? They're supposed to "just know" and turn off the clk first and then
call clk_set_rate()? Why can't the framework do this all in the
clk_set_rate() call?

> 
> PS: If CCF does guarantee "root-to-leaf" updates, I think this
> implementation is a clever trick to solve this usual glitch free clock
> update issue ... much more elegant that the notifier solution we have
> been using so far.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
