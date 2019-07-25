Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D2775B45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 01:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZ7oUaaLsOIIpQ0WN5ejxbD7aOiTWHi/MA83Gj7RuGo=; b=L2MPP0GQRuomlQ
	5eST0e8s0bFNT04Yjm758bYxFVNvn0AduPPMESI73Bb3esD3BKvs81NVsIXrNI7vkCpQY0chdtWWL
	xdGKtw8eH5IU2A1JOSdrZ+VdKP0exUbE/2T/oMX/ex0L4QWnXaUJOKsR8+B6NaAalMvkp0Suj4KFE
	A5MwrGBmn5wU1qn96fLNK6+Ixmytx5zMhr9mryTBkC//qSeTy3qITDKD21PLv/+ccw9LXyGcyIEKT
	4VQfz0oXckn/3cimss/tAnXmHOz31PYq/Cmrm4op9n1WslUcoxzO10S0LxK4eZC+5aLO+EQQtCqb7
	PQTlJd0FU4StAyuLXm6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnH2-0008I9-BX; Thu, 25 Jul 2019 23:35:48 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnGj-0008HS-HY
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 23:35:31 +0000
Received: by mail-io1-xd44.google.com with SMTP id j5so96828247ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 16:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FkpQNBEJyUYlZ+foMWEjwOOmDuvJ1KqLXtHOKeziXTU=;
 b=P4GXONjnr2ejlxTjuq3SyzpJD9nBSLIDYncSudn+pYgmDEbwzBYfQ+s1k01XDE9c2T
 DWDFqDVeLm7azJLocwwU2rxApr+ds4l+E3vMIYAJrFqMV6T8SG8WKRbRQc0aHo5wFHLv
 B62GJTBtjmJUkYJ0CJ4UU2A+Bndr5O6Fytp6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FkpQNBEJyUYlZ+foMWEjwOOmDuvJ1KqLXtHOKeziXTU=;
 b=tvasdjdAG/RFXNmK3vYauBMDaMKnViztHSCyXu1JbuswlJBLJFWX6fueuBYtdjdvgl
 SNrLwnlLpUUlhudOc7sPzGxgHQRqd07pIPI0iOgQITNAVKeJiBSDD4SHhOwAVTVMlLV0
 xwxUX4dRx9WVaV1hZ4gHIgmyV6fRZ+rwBXhQZ4fKT5wLxsrevLCegfIorVrWbv1R1G0T
 0raRLQl0VX4dNj9WlJMS7TPhWhoVVrM/XYLfMwIWu5zacyhejZHSphzfDd8TaNb7/job
 hWIcgth0CCelcuiYK+f88ZcEe7/qIPfBoWgGDVbbM4OrFcz2Sx6vqcoUtJ66EDVSJMwz
 EXgQ==
X-Gm-Message-State: APjAAAXVEbiTxObhLtvsT4M+P033IP+t3mQROXSrd3rbpBhg0xFjOpwy
 OyIs8iXrxXTgoSQTiTNLvaAj2NAgJ7Y=
X-Google-Smtp-Source: APXvYqyRrItFrR4oC6lQbA+LpVmYbq7aOHgkU8hV/UmjJylSM01RKNMOi8oUgPsq6sz1yQwS+symXg==
X-Received: by 2002:a02:22c6:: with SMTP id o189mr3707560jao.35.1564097728147; 
 Thu, 25 Jul 2019 16:35:28 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id e26sm43183105iod.10.2019.07.25.16.35.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 16:35:26 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id m24so101015017ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 16:35:26 -0700 (PDT)
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr38028054jan.90.1564097725615; 
 Thu, 25 Jul 2019 16:35:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190620182056.61552-1-dianders@chromium.org>
 <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
 <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
 <3386344.sHu1S4gNag@phil>
In-Reply-To: <3386344.sHu1S4gNag@phil>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 25 Jul 2019 16:35:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XNSc+-a6ytx2fsUnh54g64i6FW+6WsHMFqwEMWbBPZ5Q@mail.gmail.com>
Message-ID: <CAD=FV=XNSc+-a6ytx2fsUnh54g64i6FW+6WsHMFqwEMWbBPZ5Q@mail.gmail.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_163529_609708_84B3E7EF 
X-CRM114-Status: GOOD (  31.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi,

On Thu, Jul 25, 2019 at 2:33 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Mittwoch, 3. Juli 2019, 06:54:58 CEST schrieb Doug Anderson:
> > Hi,
> >
> > On Thu, Jun 20, 2019 at 1:31 PM Doug Anderson <dianders@chromium.org> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
> > > >
> > > > This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
> > > >
> > > > This 100 ms mystery delay is not on downstream kernels and no longer
> > > > seems needed on upstream kernels either [1].  Presumably something in the
> > > > meantime has made things better.  A few possibilities for patches that
> > > > have landed in the meantime that could have made this better are
> > > > commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> > > > proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> > > > the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> > > > ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
> > > >
> > > > Let's revert and get our 100 ms back.
> > > >
> > > > [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
> > > >
> > > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > > ---
> > > >
> > > >  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
> > > >  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
> > > >  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
> > > >  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
> > > >  4 files changed, 4 deletions(-)
> > >
> > > Maybe wait before applying.  I've been running reboot tests now with
> > > this patch applied (among others) and with enough reboots I managed to
> > > see:
> > >
> > > [    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)
> > >
> > > I'll see if I can confirm that it's this patch and why things are
> > > different compared to downstream.
> >
> > OK, I finally got back to this and confirmed:
> >
> > 1. The above error is actually somewhat harmless.  The eDP failure
> > will be retried automatically despite the scary message.  Specifically
> > see the loop in analogix_dp_bridge_enable().  I confirmed that after
> > seeing the error the screen came up just fine (I looked at the screen
> > in two actual instances but I believe it's pretty much always fine).
> >
> > 2. I haven't seen any evidence that the eDP link training happens any
> > more often with this revert in place.  Specifically, I see the same
> > message in the logs (at what appears to be the same rate) with or
> > without this revert.
> >
> > 3. Probably the link-training failures here are the same ones we
> > debugged for PSR for rk3399-gru-kevin that we fixed by making the eDP
> > PCLK rate exactly 24 MHz.  See <https://crrev.com/c/433393> for
> > details.  On rk3399-gru-kevin it was super important to resolve the
> > root cause of these errors because we had PSR (which meant we were
> > constantly taking to the eDP controller).  On rk3288-veyron devices
> > with no PSR the retry should be a fine solution and it doesn't seem
> > like a good idea to fully rejigger our clock plan to fix the root
> > cause.
> >
> >
> > NOTE: I saw _one_ case on rk3288-veyron-minnie where the screen looked
> > wonky at bootup and I saw the eDP link training error in the logs.
> > That's what originally made me cautious.  I haven't been able to
> > reproduce this, but presumably I just got super unlucky in that one
> > case.  I've left devices rebooting all day at work and haven't seen
> > the wonky screen since then.
> >
> >
> > Summary: I think this revert is just fine.
>
> it looks like by picking Matthias' cleanups of the veyron displays
> first I broke this patch. I guess we just need to remove the
>         startup-delay-us = <100000>;
> from the panel_regulator in the new rk3288-veyron-edp.dtsi ?

Oops, I only checked Matthias's change against the current status of
your for-next tree and forgot about this change.  Yes, the
startup-delay should be removed there.  Do you want to resolve that
when applying the patch or would you prefer a resend?

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
