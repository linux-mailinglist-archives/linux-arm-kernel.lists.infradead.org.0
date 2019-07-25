Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E1A759B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osOD/D/tAfOOWttJ5xDF5sTxlH0X5CmwzXhe5BNK4cw=; b=N+MIvyaI5KiKHf
	1R1bGZEzVaEZtdi3SrF2IO4mds5reIvWj9r3sVazMXJmLOJhiocf84yroow0RozzN9/h1Dq3zIMwQ
	aOch3hQpZRYK8YD6s7iVoI6HnOQmyDbLwxjISmnVoeWvXA66gCMiXEz5XquocP0DNfwGlE0dVyQ42
	V1uoPx4DJhFr0FAWaveZz/7KSs+Evo+s4MRklf+T87DmRIviamI28SmTKxxR92BEl4CTTnJFkqBRt
	YRT32I0RcY/enBcAPlbZq1TNNN6kg898aVb/Wj5J7CbFFTP07bH1AgQWuJJMm1i/g58PpzxztZPVL
	JDH3qzLk41xFYyVD0Kjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlNC-0000ZB-Ab; Thu, 25 Jul 2019 21:34:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlMs-0000Xu-Ir; Thu, 25 Jul 2019 21:33:44 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqlMn-00029f-Ju; Thu, 25 Jul 2019 23:33:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
Date: Thu, 25 Jul 2019 23:33:36 +0200
Message-ID: <3386344.sHu1S4gNag@phil>
In-Reply-To: <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
References: <20190620182056.61552-1-dianders@chromium.org>
 <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
 <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_143342_767766_C6E7F075 
X-CRM114-Status: GOOD (  26.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 3. Juli 2019, 06:54:58 CEST schrieb Doug Anderson:
> Hi,
> 
> On Thu, Jun 20, 2019 at 1:31 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
> > >
> > > This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
> > >
> > > This 100 ms mystery delay is not on downstream kernels and no longer
> > > seems needed on upstream kernels either [1].  Presumably something in the
> > > meantime has made things better.  A few possibilities for patches that
> > > have landed in the meantime that could have made this better are
> > > commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> > > proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> > > the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> > > ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
> > >
> > > Let's revert and get our 100 ms back.
> > >
> > > [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > >  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
> > >  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
> > >  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
> > >  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
> > >  4 files changed, 4 deletions(-)
> >
> > Maybe wait before applying.  I've been running reboot tests now with
> > this patch applied (among others) and with enough reboots I managed to
> > see:
> >
> > [    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)
> >
> > I'll see if I can confirm that it's this patch and why things are
> > different compared to downstream.
> 
> OK, I finally got back to this and confirmed:
> 
> 1. The above error is actually somewhat harmless.  The eDP failure
> will be retried automatically despite the scary message.  Specifically
> see the loop in analogix_dp_bridge_enable().  I confirmed that after
> seeing the error the screen came up just fine (I looked at the screen
> in two actual instances but I believe it's pretty much always fine).
> 
> 2. I haven't seen any evidence that the eDP link training happens any
> more often with this revert in place.  Specifically, I see the same
> message in the logs (at what appears to be the same rate) with or
> without this revert.
> 
> 3. Probably the link-training failures here are the same ones we
> debugged for PSR for rk3399-gru-kevin that we fixed by making the eDP
> PCLK rate exactly 24 MHz.  See <https://crrev.com/c/433393> for
> details.  On rk3399-gru-kevin it was super important to resolve the
> root cause of these errors because we had PSR (which meant we were
> constantly taking to the eDP controller).  On rk3288-veyron devices
> with no PSR the retry should be a fine solution and it doesn't seem
> like a good idea to fully rejigger our clock plan to fix the root
> cause.
> 
> 
> NOTE: I saw _one_ case on rk3288-veyron-minnie where the screen looked
> wonky at bootup and I saw the eDP link training error in the logs.
> That's what originally made me cautious.  I haven't been able to
> reproduce this, but presumably I just got super unlucky in that one
> case.  I've left devices rebooting all day at work and haven't seen
> the wonky screen since then.
> 
> 
> Summary: I think this revert is just fine.

it looks like by picking Matthias' cleanups of the veyron displays
first I broke this patch. I guess we just need to remove the
	startup-delay-us = <100000>;
from the panel_regulator in the new rk3288-veyron-edp.dtsi ?


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
