Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC78A84292
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 04:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeOFWIp0dvJyiRS0IRUv8vEDPrHCoCezu3+R2RsVnE8=; b=TkXGL1aUg0BSqz
	parIJfBp8phrscU5HKp65v7FmRGRYrjDg1s7L7n3TMBK4MzRyqRfjKZbGXUllLrRJYPF/3mGIrjJ/
	BBD1aQ2UAN45ccs9AXQnw4VSRzYnvjbagqkUiFPJVQFpkwAqWoZ30tPPu4wCklcvs104KHe6FHmMF
	doywJR61Gx+f1/EbTnzCSwLHUPjWRvMzrd58RCpKDZR/71h6Pr/quPmxxwNsuTeRsY+QeMlxVyP83
	g7IgK/ht9krHwGZDJ15BwXBeE0mFrhZ8Uihg7lYFfr3UGXujy7SwxqlqEhES0/aCT9yveOmEQA+yK
	d9dxolSfSyoXeB3DeZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBru-0002uH-8H; Wed, 07 Aug 2019 02:40:02 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBrl-0002tx-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 02:39:55 +0000
Received: by mail-ot1-x343.google.com with SMTP id b7so48159589otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 19:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nsN+W+tHkf9S/q/MOG1TZe/lo7oWSg0iBMLUYKiUCrk=;
 b=CP+Qxzp5jZd1Mkx6ZejekkAiXPXA2GH47NNjCugTTGc3976zYfP0UDboW3YnqurczH
 bOu+MpFAqKP+hopsDl1tShVKYtcWCDcpUinkuZzw/56NiI54NgPfb8hGeVmvE5GR0TOD
 JLx/KkyyVUWqdKyM2WuO9m7As13NFRwxBnisUyq5Q6paUZQHcvS9tZHz72ra9BtAGJAR
 xd+1Rvz7UipkHtAUSWrwBPWxwrO6jRk1/4lU7br7CXuQFDnUVVnYqXAXJMIX7ne9WPum
 aJ5oEKQkaEeJPDgRoyn5sCO0bfWLBHbfyhZ8dIztzkC3tNQLC/bJ3wZCPrFp374ssQOG
 pfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nsN+W+tHkf9S/q/MOG1TZe/lo7oWSg0iBMLUYKiUCrk=;
 b=RuKC/CdZ9Vfzl2SzOwV7t8l6PWuzHqPeELT1LDdlr8ec6upoHlJon4Dq+2Ra4LvJa0
 A1qGiDg3BAmBtS6ov0MODyQbFnKX2eVU9WMKMk4nNqz7uxnOXax9JVpKxFPTpy9wJRtz
 zW+00ZBSTnECj8UWOD1GkvFHkWdYYqwkqRNIM7c3p238txM7mKv+dqYE/2LhZyRrm6YC
 u/o0gjJaNdScW6vAmtxSfp4Y5Fh9mnVeCuRxlB+DvEf84GovJyjROwIohmIa3S0RaGrf
 pkxiZwTg1K7yu3p3PiiryGiebIrPRxK+bsbM3TpKjcOCqFs72sfR+nf/aBY5tXxpjxEb
 6Xhw==
X-Gm-Message-State: APjAAAVkoVXa+lqgLr3rMcdTHzYrgU1FIlGwCf2XZE2vsGlz6Dk5Tz0t
 tNHVTBj6n3bUFfxwlenMP6k+K9PWImNakdM3sFw=
X-Google-Smtp-Source: APXvYqyV/SFOHeCTW6aQCOU24dlwExCHCOpP7wgvYfO87BY8gMtkUzDMJYo/9Vy//o0vWGf7RuC8yI+pXVo2djGLw14=
X-Received: by 2002:a05:6808:8c2:: with SMTP id
 k2mr4642771oij.98.1565145592765; 
 Tue, 06 Aug 2019 19:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
In-Reply-To: <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 6 Aug 2019 19:39:26 -0700
Message-ID: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_193954_010061_14634703 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> >>
> >> Vasily Khoruzhick writes:
> >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>>>
> >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> >>>>> as result 'perf top' shows no events.
> >>>>
> >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> >>>> It could well just be that the interrupt numbers are wrong...
> >>>
> >>> Looks like it does, at least result looks plausible:
> >>
> >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> >>
> >> Unfortunately I wasn't aware that perf stat is a poor test for
> >> the interrupts part of the node, when I added it. So I'm not too
> >> surprised I got it wrong.
> >>
> >> However, it would be unfortunate if the node got removed completely,
> >> because perf stat would not work anymore. Maybe we can only remove
> >> the interrupts or just fix them even if the HW doesn't work?
> >
> > I'm not familiar with PMU driver. Is it possible to get it working
> > without interrupts?
>
> Yup - you get a grumpy message from the driver, it will refuse sampling
> events (the ones which weren't working anyway), and if you measure
> anything for long enough that a counter overflows you'll get wonky
> results. But for counting hardware events over relatively short periods
> it'll still do the job.

I tried to drop interrupts completely from the node but 'perf top' is
still broken. Though now in different way: it complains "cycles: PMU
Hardware doesn't support sampling/overflow-interrupts. Try 'perf
stat'"

Is there any way to make it working?

>
> Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
