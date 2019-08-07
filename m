Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54F084B1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Guf369dXTm30cb+jnEx0vzvpxpwtdK7XfGaHEYWtlAA=; b=hqeUoYJyHr/yWF
	rHesc33E2SEjhAPYR4BeRQoByRScA49jhGBXnlTomsn9fceA/2kRfjFMzQnyfZxcouCE47j8xqtr+
	iYGH1sHHnNuCUUcRKUtdzp2nHN1e0ZEhpgfl1mdEP4adtdTnQ9iFB/p6vfcJYn9ZtV/nQRUn/1eOf
	FKorgBCtBKTURptDAD0Y/zUQFnTBFSyFGXaHOWMjHPKJ18RkDLMeE3euSM1Aqh3g24063C4LYEN42
	MMJFy/H2Ln8h9q7tbmKNKO+lTHiECtquJYH09bzxFnbIYHmJvgSu3g63JWa6VW7mXgDA5X/HkmlUM
	0uGbXbrPjLx+8uo7cOaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKYa-0002H0-Ga; Wed, 07 Aug 2019 11:56:40 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKYL-0002Gf-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:56:26 +0000
X-Originating-IP: 88.168.111.231
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D8BE3E000D;
 Wed,  7 Aug 2019 11:56:14 +0000 (UTC)
Date: Wed, 7 Aug 2019 13:56:14 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-ID: <20190807115614.phm7sbyae6yajkug@flea>
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_045625_274219_69870E37 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > >>
> > >> Vasily Khoruzhick writes:
> > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >>>>
> > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > >>>>> as result 'perf top' shows no events.
> > >>>>
> > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > >>>> It could well just be that the interrupt numbers are wrong...
> > >>>
> > >>> Looks like it does, at least result looks plausible:
> > >>
> > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > >>
> > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > >> the interrupts part of the node, when I added it. So I'm not too
> > >> surprised I got it wrong.
> > >>
> > >> However, it would be unfortunate if the node got removed completely,
> > >> because perf stat would not work anymore. Maybe we can only remove
> > >> the interrupts or just fix them even if the HW doesn't work?
> > >
> > > I'm not familiar with PMU driver. Is it possible to get it working
> > > without interrupts?
> >
> > Yup - you get a grumpy message from the driver, it will refuse sampling
> > events (the ones which weren't working anyway), and if you measure
> > anything for long enough that a counter overflows you'll get wonky
> > results. But for counting hardware events over relatively short periods
> > it'll still do the job.
>
> I tried to drop interrupts completely from the node but 'perf top' is
> still broken. Though now in different way: it complains "cycles: PMU
> Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> stat'"

I have no idea if that's the culprit, but what is the state of the
0x09010000 register?

(in particular, are the bits 16-19 and 24 set or not?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
