Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15D84A66
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsd7KEz3ox1VQXgCkaPviZTmrLeTSaHoarThl7mXwD0=; b=eYvT+wqGU+tvXR
	bl/BLfGQcbM0S3I5ogKw6m8xGymb3LYWohueJceOgB3zFNMTrXEARKUBbWdngAZTHg9bpMUOW16Fd
	ZyWPk3nznr+Bli0glKPlzeGQV5ERlZP+LiRcZ5o2twCXUIozuo6z9Zpoz5GPEJKJ9hUscvRr+561a
	3g1YTEpxPLFMxy+iCLlF9Usc37tzAqt6JXWGAmpnAMVnfISCTFpV5nOXLXMMwA6eJd/6xZM5zR5zp
	nVjyCdCJgzZ4fMPieynYwBrRf+NTGMzajLF9yYvDneP3woaPf7FJ9lAXUckWlQANqyi2vlnBuTtma
	HB3CwHD6Tfb5uykA3hpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJsk-0003J8-Gt; Wed, 07 Aug 2019 11:13:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJsL-0003If-8J
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:13:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E3DD28;
 Wed,  7 Aug 2019 04:13:00 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 155FB3F575;
 Wed,  7 Aug 2019 04:12:58 -0700 (PDT)
Date: Wed, 7 Aug 2019 12:12:57 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-ID: <20190807111256.GC54191@lakrids.cambridge.arm.com>
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_041301_575801_C6E3A52A 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 10:14:39PM +0100, Robin Murphy wrote:
> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > 
> > > Vasily Khoruzhick writes:
> > > > On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > 
> > > > > On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > as result 'perf top' shows no events.
> > > > > 
> > > > > Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > It could well just be that the interrupt numbers are wrong...
> > > > 
> > > > Looks like it does, at least result looks plausible:
> > > 
> > > I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > 
> > > Unfortunately I wasn't aware that perf stat is a poor test for
> > > the interrupts part of the node, when I added it. So I'm not too
> > > surprised I got it wrong.
> > > 
> > > However, it would be unfortunate if the node got removed completely,
> > > because perf stat would not work anymore. Maybe we can only remove
> > > the interrupts or just fix them even if the HW doesn't work?
> > 
> > I'm not familiar with PMU driver. Is it possible to get it working
> > without interrupts?
> 
> Yup - you get a grumpy message from the driver, it will refuse sampling
> events (the ones which weren't working anyway), and if you measure anything
> for long enough that a counter overflows you'll get wonky results. But for
> counting hardware events over relatively short periods it'll still do the
> job.

Even that's stupidly dodgy; a CPU_CYCLES event could easily overflow
several times between the kernel sampling it, so you can lose billions
of events without any idea that happened.

For other PMUs we can fix that with a hrtimer, but I think for a CPU PMU
it has to be at such a high frequency that it imposes a ridiculous
overhead, even assuming we can choose a sufficient frequency. :/

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
