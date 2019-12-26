Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDCE12AB26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/2TPhqiTZsi2D3a7M5Nis8GdKaPhiptp7Yiy/2FIh/k=; b=bpJKnSkydRNEcU0Usa6PxWZTel
	x0Jpdt7KCQBshA/6i4noNar4Rq+dEZ8DMzqyLcMvgIyXXRAzfWkX1k2JPD2jqIzZCcavSpQMPOOJB
	8NJEe+7leX7a1aNSE36i0nP/3VxWw6f95UloBp+9lEDCB6mla8hD+Jo/giV+FQkVg51NKVbT+lQqR
	mA+eJw9aUusuB4T5pRpA8onz6CBw4bdZU6Pas0q8XUqZ/6ewfL+5w4oG5E2ykz44eeC8FYQn2y0Yy
	v421Ad6X3DWm0xxzyvtPwrJQgQU8yDa6b5btZ2X1S4Tdq2rm108R8oplv8dECcTF4n0ab+XiReuKJ
	RR1PIAzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikP6S-0005o2-HS; Thu, 26 Dec 2019 09:06:44 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikP6F-0005mb-Eh
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:06:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so23161980wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 01:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=j+rJoTy0dYbhBsarNtahr7o1qTLApLBfvxcpqlInHlY=;
 b=nvAkBpcLAc37eLjbd+5F1xgcQDzAXQtQeP4B1sH1ZFgFzUItSmCkmKqNGtzXfN6OiW
 6+vCt2bOh/Hvi2EA/v4KzokKHx+eVD4kEpiNrlXY8ahXLo9/mpbjT6liE/YTg9SRSaMm
 utHNu39DVrnNl2QpY6UbC5IN1LV/lnGJIMA92dnSMco8Rift6OtpnErNPXe0Vm/bBVMl
 bRiMpveqWcfgP9B6rlr+oH8hSVUPPVeGMhQwJgQpUBfSc9tHshI32bAeQOEqImwsdvXr
 mmKgunF6XiojdV+75+DvbqIS1xA1MRlzhj2Og/lD9EHpAOWa/zZ36YGNhFuW/Y0gqvmd
 yrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=j+rJoTy0dYbhBsarNtahr7o1qTLApLBfvxcpqlInHlY=;
 b=B1P+Rg/obG4mpPImrKw/imCs+6becpic7+hpqBYnNvlt9tn9H+VqfFuSldu13Wy3aC
 CjIo6xXDsiGjtLrvZdsAJMui+r7LTjF/WbNmetkqOJkUDuwndZZ6tRpkGI+MJlxVPDLq
 rAoylGrczQimtuwNFZ6IIrqKHEYgAQ77oJtjbw4UBdty9ecp1VqCEBOaPuxvwJO8uWnI
 U6KMwhgDfFEpz5u8yaFu+wHdS68s5X9bbV+Y5reJOojwO6w0E/ip5ZTdTa5TkO4RtRHY
 wUPhjCOrdlnSIXnQxv9gaLJH0dmmS2OYrkOzarpJCL8uIK9LqxbTY4JANfWj3vfagNTY
 5MyQ==
X-Gm-Message-State: APjAAAXvu1RYzZfDN2EAlkZNeOBQgow08ic6OMGIdqn0jKBADxLlr1e7
 mW7Ijoru4j6fiLFi+Z6jH5jTLA==
X-Google-Smtp-Source: APXvYqzOwW1G2WbL2PBTGbpeF0gLW3p6XrRVMRXhqGRlF15j/j5EuqDwuC2Ds5c/xELL0O/J7Q24CA==
X-Received: by 2002:adf:b60f:: with SMTP id f15mr41821186wre.372.1577351186530; 
 Thu, 26 Dec 2019 01:06:26 -0800 (PST)
Received: from localhost ([2a01:e0a:1a5:7ee0:1e09:f4bb:719a:3028])
 by smtp.gmail.com with ESMTPSA id g7sm30361342wrq.21.2019.12.26.01.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 01:06:25 -0800 (PST)
References: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
 <1jr214bpl0.fsf@starbuckisacylon.baylibre.com>
 <20191216175015.2A642206EC@mail.kernel.org>
 <1jlfrcaxmm.fsf@starbuckisacylon.baylibre.com>
 <20191224033636.1BB3F206B7@mail.kernel.org>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Subject: Re: [PATCH 0/1] clk: Meson8/8b/8m2: fix the mali clock flags
In-reply-to: <20191224033636.1BB3F206B7@mail.kernel.org>
Date: Thu, 26 Dec 2019 10:06:25 +0100
Message-ID: <1jimm3pib2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_010631_634468_84FA1BC7 
X-CRM114-Status: GOOD (  29.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


On Tue 24 Dec 2019 at 04:36, Stephen Boyd <sboyd@kernel.org> wrote:

> Quoting Jerome Brunet (2019-12-16 11:17:21)
>> 
>> On Mon 16 Dec 2019 at 18:50, Stephen Boyd <sboyd@kernel.org> wrote:
>> 
>> > Quoting Jerome Brunet (2019-12-16 01:13:31)
>> >> 
>> >> *updated last* which crucial to your use case.
>> >> 
>> >> I just wonder if this crucial part something CCF guarantee and you can
>> >> rely on it ... or if it might break in the future.
>> >> 
>> >> Stephen, any thoughts on this ?
>> >
>> > We have problems with the order in which we call the set_rate clk_op.
>> > Sometimes clk providers want us to call from leaf to root but instead we
>> > call from root to leaf because of implementation reasons. Controlling
>> > the order in which clk operations are done is an unsolved problem. But
>> > yes, in the future I'd like to see us introduce the vaporware that is
>> > coordinated clk rates that would allow clk providers to decide what this
>> > order should be, instead of having to do this "root-to-leaf" update.
>> > Doing so would help us with the clk dividers that have some parent
>> > changing rate that causes the downstream device to be overclocked while
>> > we change the parent before the divider.
>> >
>> > If there are more assumptions like this about how the CCF is implemented
>> > then we'll have to be extra careful to not disturb the "normal" order of
>> > operations when introducing something that allows clk providers to
>> > modify it.
>> 
>> I understand that CCR would, in theory, allow to define that sort of
>> details. Still defining (and documenting) the default behavior would be
>> nice.
>> 
>> So the question is:
>>  * Can we rely set_rate() doing a root-to-leaf update until CCR comes
>>    around ?
>>  * If not, for use cases like the one described by Martin, I guess we
>>    are stuck with the notifier ? Or would you have something else to
>>    propose ?
>
> I suppose we should just state that clk_set_rate() should do a
> root-to-leaf update. It's not like anyone is interested in changing
> this behavior. The notifier is not ideal. I've wanted to add a new
> clk_op that would cover some amount of the notifier users by having a
> 'pre_set_rate' clk op that can mux the clk over to something safe or
> setup a divider to something that is known to be safe and work. Then we
> can avoid having to register for a notifier just to do something right
> before the root-to-leaf update happens.
>

Martin,

It looks like a green light to me ;) Just add a detailed comment on the
mali top clock explaining things and it should be alright.

>>    
>> >
>> > Also, isn't CLK_SET_RATE_GATE broken in the case that clk_set_rate()
>> > isn't called on that particular clk? I seem to recall that the flag only
>> > matters when it's applied to the "leaf" or entry point into the CCF from
>> > a consumer API.
>> 
>> It did but not anymore
>> 
>> > I've wanted to fix that but never gotten around to it.
>> 
>> I fixed that already :P
>> CLK_SET_RATE_GATE is a special case of clock protect. The clock is
>> protecting itself so it is going down through the tree.
>> 
>
> Ahaha ok. As you can see I'm trying to forget clock protect ;-)
>
>
>> 
>> > The whole flag sort of irks me because I don't understand what consumers
>> > are supposed to do when this flag is set on a clk. How do they discover
>> > it?
>> 
>> Actually (ATM) the consumer is not even aware of it. If a clock with
>> CLK_SET_RATE_GATE is enabled, it will return the current rate to
>> .round_rate() and .set_rate() ... as if it was fixed.
>
> And then when the clk is disabled it will magically "unstick" and start
> to accept the same rate request again?
>

Exactly

>> 
>> > They're supposed to "just know" and turn off the clk first and then
>> > call clk_set_rate()?
>> 
>> ATM, yes ... if CCF cannot switch to another "unlocked" subtree (the
>> case here)
>> 
>> > Why can't the framework do this all in the clk_set_rate() call?
>> 
>> When there is multiple consumers the behavior would become a bit
>> difficult to predict and drivers may have troubles anticipating that,
>> maybe, the clock is locked.
>
> Fun times!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
