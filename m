Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5F286AFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTOMjUs/jSF7LP2N7vkUQ18iJOwtmDUEnXTnYeHoNuY=; b=RitkXvwG6uCfN6
	HEM+wLRwOqCI7Zkkf13YxoyFzAw9YqHRdP/58+tujLSf4wigM+qxpj2MiSsaUmbMndWWWAN/q54jE
	vz1WvvuP9a3Ch3ulkCaGaSEWa4tcj/uCU4QUANdd8CSwllNSWhZOiNH5Ff3NbK/1YBZDR9MH1im6q
	8A1zaB7PLTP+knKfhcEKP81PSixlY2Yk9mATFrUdxJdxfkICWoB8j14KLWw6bi+2XUmTbPgLAjzi0
	HEwUGYYyOEuCN9saxDd+O82GmDIz4E3LXwctW9/2Zfj/k07ikS7x3PnwqTaNiUR0iNiXq+vUn5k8n
	4ApTU8YhBz0WHN6bmNCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoZc-0007Cd-5U; Thu, 08 Aug 2019 19:59:44 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoZU-0007CD-Gb
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:59:38 +0000
Received: by mail-ot1-x341.google.com with SMTP id r6so123542512oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 12:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ugDhB19yfFS0aM3Uabiflvuhd1IgEiF2mzCsiuDbJNc=;
 b=qDzXi76ZNAKXK4lQFoavAMCBscVIGMorp2jaWoL3kVtSz3TqTa4G+ihliJout9i3Df
 LpAx+ydbi+J9NYiWZji56W0wmEF+7viYu5qWsa6E7fVxB0S0YheBaZnFn8bv06f1iuDz
 H5pxb45/5zJWMJP/M7v1/YfYS2IX26bx0YAEoadRGc8T1nV5/sysAMbRX14w+pEzdPPD
 Orf4Q/QBQTMVWqb/n8s5fInfWvEUrfqJxVTlZJ10r0wrXd04JpZpDL7f8hLTa4grYgUF
 z6r0JhMLySJApedvUxZ4/ymu3vvmu3GBLa8v50BO2e/mLxM+IciUURn9zy5mBMxUmnfG
 u+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ugDhB19yfFS0aM3Uabiflvuhd1IgEiF2mzCsiuDbJNc=;
 b=BdCMhMeux5TJsBpDOOLx+Z1Ex3CpctbdoMWET3MnyZ2ibs26YAcAdsXhB8TWIRgkAq
 XhDljzg2amPXz1DPtnOn0K0wzzPJcu4QyeVqgQy/gf3rSIBTH5byqZmHdrvKtJ778tpJ
 x3igApzEOVPAy1aAgLufPaNz2PPMarNgiYzj+COKfCkuqiKPaYJQQhmYOoWWxTsGEX5i
 hShZw4Jm7cUbZSM8SyIas6vffIsacqSaWf6JxVK5lCpOCJjvCI7VphW84nN14fEl3i/d
 j8veknscoG1DKlYJ4XJMw3vDVgwRJu5XPhhlxFqSVxnDP7r/uHs12NIo7hvzpYkWygqc
 2rGQ==
X-Gm-Message-State: APjAAAUcdamZii1I117V9wygVsh53hy4uTSovDX+3WggdvccSH7QwIHU
 g3MNZBJ5NJdYB18igNvYHJPrOXArWwXuZOv2/hQ=
X-Google-Smtp-Source: APXvYqwJHl6GIua1FD+Buo37J7Ag2PpIObNU/B45znxXGNkeq+Zp3GVWvs/NOOJmohm48EnaVw8NqaiLJvd0oEuVFWk=
X-Received: by 2002:a9d:4109:: with SMTP id o9mr13486131ote.353.1565294374038; 
 Thu, 08 Aug 2019 12:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
In-Reply-To: <20190808162628.pthvy3tgf3naj76s@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 8 Aug 2019 12:59:07 -0700
Message-ID: <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_125936_581122_B0887BC6 
X-CRM114-Status: GOOD (  27.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > >
> > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > >>
> > > > > >> Vasily Khoruzhick writes:
> > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > >>>>
> > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > >>>>> as result 'perf top' shows no events.
> > > > > >>>>
> > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > >>>
> > > > > >>> Looks like it does, at least result looks plausible:
> > > > > >>
> > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > >>
> > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > >> surprised I got it wrong.
> > > > > >>
> > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > >
> > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > without interrupts?
> > > > >
> > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > events (the ones which weren't working anyway), and if you measure
> > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > results. But for counting hardware events over relatively short periods
> > > > > it'll still do the job.
> > > >
> > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > stat'"
> > >
> > > I have no idea if that's the culprit, but what is the state of the
> > > 0x09010000 register?
> >
> > What register is that and how do I check it?
>
> It's in the CPUX Configuration block, and the bits are labelled as CPU
> Debug Reset.
>
> And if you have busybox, you can use devmem.

CPUX configuration block is at 0x01700000 according to A64 user
manual, and particular register you're interested in is at 0x01700080,
its value is 0x1110110F.

Bits 16-19 are not defined in user manual and are not set.

> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
