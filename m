Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E974E129D18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 04:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBVnvweqUjZYWjKsbEAwDcAoRli7X+TXrET+wJShHVA=; b=YsXNkYs01wbOX3
	FqwAIVV0+mAEjh1EerXCdqKRTccpm98g9MbpSTDglV8BWd8u2cvWjG0vBZFEbfHWHDtm2MaqyGSQn
	er9N/s/UptOU43GGsKoGwY5ekc23A4pbN/owtTPHvfrUAnDbwKnAr40csn+6wZhP7yQF3XsPxtxzz
	K9bGjY4pGpIWhYerXvW2cQNLuuP/TSxjDs1ppzMSGASC9i52F4Tc8kv9S9SKo7Q60FXgaEgAxsmUM
	Ep7ojOeg9odHShF1Tdn/wj5I69e9UKtCse6fjOxG1+uXyqI9JoOBwlgtK91I61BeO+bMFOuGW5RMv
	lnFZdGp8LcmroJPM3/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijb03-0006ib-9d; Tue, 24 Dec 2019 03:36:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijazs-0006hk-OK; Tue, 24 Dec 2019 03:36:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BB3F206B7;
 Tue, 24 Dec 2019 03:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577158596;
 bh=hKOk/K7hTl+yIynX4qaqBR8jYeq8G7LYQWQa8oBkIlg=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=hHtreC+yvNjl49/8yHJTSGyyOzkmVhJrs1i0vH3I48Q//kO9OhuqlsYbFZGZS7UD9
 qF0SxC4zVszjRT+VAwWZk0iEidiQxCbragcL3l+teGxjSjc766HzB2K4bdsAaELmKj
 qbAK1MUf9hu4AjzTbfwKLPgpXxAodx8v5psEzWvs=
MIME-Version: 1.0
In-Reply-To: <1jlfrcaxmm.fsf@starbuckisacylon.baylibre.com>
References: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
 <1jr214bpl0.fsf@starbuckisacylon.baylibre.com>
 <20191216175015.2A642206EC@mail.kernel.org>
 <1jlfrcaxmm.fsf@starbuckisacylon.baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: Re: [PATCH 0/1] clk: Meson8/8b/8m2: fix the mali clock flags
User-Agent: alot/0.8.1
Date: Mon, 23 Dec 2019 19:36:35 -0800
Message-Id: <20191224033636.1BB3F206B7@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_193636_834019_AC021A4E 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jerome Brunet (2019-12-16 11:17:21)
> 
> On Mon 16 Dec 2019 at 18:50, Stephen Boyd <sboyd@kernel.org> wrote:
> 
> > Quoting Jerome Brunet (2019-12-16 01:13:31)
> >> 
> >> *updated last* which crucial to your use case.
> >> 
> >> I just wonder if this crucial part something CCF guarantee and you can
> >> rely on it ... or if it might break in the future.
> >> 
> >> Stephen, any thoughts on this ?
> >
> > We have problems with the order in which we call the set_rate clk_op.
> > Sometimes clk providers want us to call from leaf to root but instead we
> > call from root to leaf because of implementation reasons. Controlling
> > the order in which clk operations are done is an unsolved problem. But
> > yes, in the future I'd like to see us introduce the vaporware that is
> > coordinated clk rates that would allow clk providers to decide what this
> > order should be, instead of having to do this "root-to-leaf" update.
> > Doing so would help us with the clk dividers that have some parent
> > changing rate that causes the downstream device to be overclocked while
> > we change the parent before the divider.
> >
> > If there are more assumptions like this about how the CCF is implemented
> > then we'll have to be extra careful to not disturb the "normal" order of
> > operations when introducing something that allows clk providers to
> > modify it.
> 
> I understand that CCR would, in theory, allow to define that sort of
> details. Still defining (and documenting) the default behavior would be
> nice.
> 
> So the question is:
>  * Can we rely set_rate() doing a root-to-leaf update until CCR comes
>    around ?
>  * If not, for use cases like the one described by Martin, I guess we
>    are stuck with the notifier ? Or would you have something else to
>    propose ?

I suppose we should just state that clk_set_rate() should do a
root-to-leaf update. It's not like anyone is interested in changing
this behavior. The notifier is not ideal. I've wanted to add a new
clk_op that would cover some amount of the notifier users by having a
'pre_set_rate' clk op that can mux the clk over to something safe or
setup a divider to something that is known to be safe and work. Then we
can avoid having to register for a notifier just to do something right
before the root-to-leaf update happens.

>    
> >
> > Also, isn't CLK_SET_RATE_GATE broken in the case that clk_set_rate()
> > isn't called on that particular clk? I seem to recall that the flag only
> > matters when it's applied to the "leaf" or entry point into the CCF from
> > a consumer API.
> 
> It did but not anymore
> 
> > I've wanted to fix that but never gotten around to it.
> 
> I fixed that already :P
> CLK_SET_RATE_GATE is a special case of clock protect. The clock is
> protecting itself so it is going down through the tree.
> 

Ahaha ok. As you can see I'm trying to forget clock protect ;-)


> 
> > The whole flag sort of irks me because I don't understand what consumers
> > are supposed to do when this flag is set on a clk. How do they discover
> > it?
> 
> Actually (ATM) the consumer is not even aware of it. If a clock with
> CLK_SET_RATE_GATE is enabled, it will return the current rate to
> .round_rate() and .set_rate() ... as if it was fixed.

And then when the clk is disabled it will magically "unstick" and start
to accept the same rate request again?

> 
> > They're supposed to "just know" and turn off the clk first and then
> > call clk_set_rate()?
> 
> ATM, yes ... if CCF cannot switch to another "unlocked" subtree (the
> case here)
> 
> > Why can't the framework do this all in the clk_set_rate() call?
> 
> When there is multiple consumers the behavior would become a bit
> difficult to predict and drivers may have troubles anticipating that,
> maybe, the clock is locked.

Fun times!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
