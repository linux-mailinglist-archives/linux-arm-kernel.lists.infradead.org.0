Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2701219C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gYj+/MfzhF7FS4UlqlQjQ86WD390A7zshcu6o1oR3/0=; b=tsm04D4JnT0KOeF7jbLFpcL8SU
	X6yR2dQcIIVpIrxhm9Zg6805GC58umxUoaAG+jPSfhGvmshScdKs+9fKpKs4oYfH66uJcdpcEHoik
	HCCiGjoesP/bG/x/uULvfO+UUSdaQ0x/hFg1gkz0b3a0JQjhvgPpL7e4r55XbxUlPAO/w6JquoDvi
	YpyJEIZmKGLctSo4yz/layZzUUvIkRaJpIe8GMXJaMmRfwDtkfPHldS/29WHiCvKpOmyO6OrgJHOC
	VQVUu4ZxVnlKDaHvoEAc8Ja7x0SV1hmtBQ7oG2DpKtDj8Svn0rMPBwcEh/zgC8D4ud/ijOYd3CGAx
	hCMwGlew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvs6-0002py-PC; Mon, 16 Dec 2019 19:17:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvrx-0002pJ-4K
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:17:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so524089wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 11:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=TaI0P/S1Bo1801cSTwOrAdNkaWycLWwGESwHFZB6KEs=;
 b=xvdovwieuu2wlweKn+bC82YHPbOfrIQNK/KniqVl/LOyohWKBHwrU797ArnIsfpYZY
 LDDNQlzGxpBkWeBsrQUF+Vap3F/F1x6LCA34Y5i4axTfLB//VFOjbTZgt9DbejVI7bm4
 XqYAlC9Yvz2keoscHo7fRACoo2ZjzY2vZ3hUfDPyXfMTil7mXMp/S1w0khldmBW9z4s/
 0oG//LwoTu0fraVx4xZp5RHcUHxS7cXHkUMSKuPzIyoCMLkX1XqZs620cofxsuYPl5KH
 RL8NhD/FLK1qu812eWtxMIQLTAQgsnH4Z6UKwDhd/MuC/B23GCpOcY/ulUNjenn6ph3+
 w0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=TaI0P/S1Bo1801cSTwOrAdNkaWycLWwGESwHFZB6KEs=;
 b=lr+YBpdb4X4hOo/X3QNw9DO7fji9nNpJ6G5SaNWdwrF4Veiw4oXBcVNEZMXeauBdQH
 CIK4L9U99aAOCd+3vuzgmDuASeGXtYdVaYiUNpgmO2sUJ4z7dYLLno6/ZI4aOkfzLPAE
 cBg24MIZC0yHsmdJGAYzrv2YljWMf98oCS6wBhd64CAROZTW0iTTuQ80Q9HeBWbUJvx5
 9h0VLpLDE7AUYH42Zkl+55Ma7az7gB1fpGKZnJ6iuHBfL5LTz5sFhlaWdjv5YQwL0Hij
 /O1wJMp0dBLK9MlQBW9Pw3KqLNPC+FA8NXAOw7PBwz0F9BFb++PCx2Qn341b/1z6Lrja
 5yRg==
X-Gm-Message-State: APjAAAUHSU73IV+u72dCFWxpeHrQ7IDfKMwwOa+oYrGIIhsQLWefS7Pa
 CRpWG3J7XM4OB6VH/4OXxk5pRg==
X-Google-Smtp-Source: APXvYqxx7C0OjSpuBe4yr998Ep7mXAjBkYmeq2Ns5kTbTRAuKQseJcwGroV2UfloXbHqT0riVdJBkA==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr566525wmg.147.1576523843234;
 Mon, 16 Dec 2019 11:17:23 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id b17sm22647883wrp.49.2019.12.16.11.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 11:17:22 -0800 (PST)
References: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
 <1jr214bpl0.fsf@starbuckisacylon.baylibre.com>
 <20191216175015.2A642206EC@mail.kernel.org>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: Re: [PATCH 0/1] clk: Meson8/8b/8m2: fix the mali clock flags
In-reply-to: <20191216175015.2A642206EC@mail.kernel.org>
Date: Mon, 16 Dec 2019 20:17:21 +0100
Message-ID: <1jlfrcaxmm.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_111725_219970_540D7057 
X-CRM114-Status: GOOD (  32.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


On Mon 16 Dec 2019 at 18:50, Stephen Boyd <sboyd@kernel.org> wrote:

> Quoting Jerome Brunet (2019-12-16 01:13:31)
>> 
>> On Sun 15 Dec 2019 at 22:01, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>> 
>> > While playing with devfreq support for the lima driver I experienced
>> > sporadic (random) system lockups. It turned out that this was in
>> > certain cases when changing the mali clock.
>> >
>> > The Amlogic vendor GPU platform driver (which is responsible for
>> > changing the clock frequency) uses the following pattern when updating
>> > the mali clock rate:
>> > - at initialization: initialize the two mali_0 and mali_1 clock trees
>> >   with a default setting and enable both clocks
>> > - when changing the clock frequency:
>> > -- set HHI_MALI_CLK_CNTL[31] to temporarily use the mali_1 clock output
>> > -- update the mali_0 clock tree (set the mux, divider, etc.)
>> > -- clear HHI_MALI_CLK_CNTL[31] to temporarily use the mali_0 clock
>>                                       ^ no final setting then ? :P
>> >    output again
>> >
>> > With the common clock framework we can even do better:
>> > by setting CLK_SET_RATE_PARENT for the mali_0 and mali_1 output gates
>>                 ^
>> From your patch, I guess you mean CLK_SET_RATE_GATE ?
>> 
>> > we can force the common clock framework to update the "inactive" clock
>> > and then switch to it's output.
>> >
>> > I only tested this patch for a limited time only (approx. 2 hours).
>> > So far I couldn't reproduce the sporadic system lockups with it.
>> > However, broader testing would be great so I would like this to be
>> > applied for -next.
>> 
>> CLK_SET_RATE_GATE guarantees that a clock cannot be updated while in
>> use. While it works at your advantage here, I'm not sure CCF guarantees
>> the assumption this implementation is based on. Some explanation below:
>> 
>> In your case, if it works as you expect when calling set_rate() on the
>> top clock, it goes as this:
>> 
>> - mali0 is use with rate X:
>> - => set_rate(mali_top, Y)
>> - mali0 is in use, cannot change, will round rate Y to X
>> - mali1 is not in use, can provide Y
>> - mali1 is determined to be the new best parent for mali top
>> 
>> So far so good.
>> 
>> - CCF pick the mali1 subtree
>>   *start updating the clock from the root to the leaf*
>> 
>> So the mali top mux, which choose between mali0 and mali1, will be
>> *updated last* which crucial to your use case.
>> 
>> I just wonder if this crucial part something CCF guarantee and you can
>> rely on it ... or if it might break in the future.
>> 
>> Stephen, any thoughts on this ?
>
> We have problems with the order in which we call the set_rate clk_op.
> Sometimes clk providers want us to call from leaf to root but instead we
> call from root to leaf because of implementation reasons. Controlling
> the order in which clk operations are done is an unsolved problem. But
> yes, in the future I'd like to see us introduce the vaporware that is
> coordinated clk rates that would allow clk providers to decide what this
> order should be, instead of having to do this "root-to-leaf" update.
> Doing so would help us with the clk dividers that have some parent
> changing rate that causes the downstream device to be overclocked while
> we change the parent before the divider.
>
> If there are more assumptions like this about how the CCF is implemented
> then we'll have to be extra careful to not disturb the "normal" order of
> operations when introducing something that allows clk providers to
> modify it.

I understand that CCR would, in theory, allow to define that sort of
details. Still defining (and documenting) the default behavior would be
nice.

So the question is:
 * Can we rely set_rate() doing a root-to-leaf update until CCR comes
   around ?
 * If not, for use cases like the one described by Martin, I guess we
   are stuck with the notifier ? Or would you have something else to
   propose ?
   
>
> Also, isn't CLK_SET_RATE_GATE broken in the case that clk_set_rate()
> isn't called on that particular clk? I seem to recall that the flag only
> matters when it's applied to the "leaf" or entry point into the CCF from
> a consumer API.

It did but not anymore

> I've wanted to fix that but never gotten around to it.

I fixed that already :P
CLK_SET_RATE_GATE is a special case of clock protect. The clock is
protecting itself so it is going down through the tree.


> The whole flag sort of irks me because I don't understand what consumers
> are supposed to do when this flag is set on a clk. How do they discover
> it?

Actually (ATM) the consumer is not even aware of it. If a clock with
CLK_SET_RATE_GATE is enabled, it will return the current rate to
.round_rate() and .set_rate() ... as if it was fixed.

> They're supposed to "just know" and turn off the clk first and then
> call clk_set_rate()?

ATM, yes ... if CCF cannot switch to another "unlocked" subtree (the
case here)

> Why can't the framework do this all in the clk_set_rate() call?

When there is multiple consumers the behavior would become a bit
difficult to predict and drivers may have troubles anticipating that,
maybe, the clock is locked.

>
>> 
>> PS: If CCF does guarantee "root-to-leaf" updates, I think this
>> implementation is a clever trick to solve this usual glitch free clock
>> update issue ... much more elegant that the notifier solution we have
>> been using so far.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
