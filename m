Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A695E677
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 16:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/pl1HZ06hMxkSf01AUg5RrU/snLLGv3eQR2ntfhTVc=; b=G8J1mEr5QB+sID
	H4CubTtmEuUBcOHBG7ejDooymF06z0Ffgt0GjADMIobSomJM/Kp5BFI2dvdP8uvJjic9I2qZeJuBw
	Wl0lIGVyvtXCiwJQuzTnFmsWrXhJ0cSi8dCglWbBvNbhorRsJBsHHp5hToiVvfUpbn4MsLaltlkjC
	MvOgPuA+u8maDaMdpt/Sb8aCwRT4ItA2SAEHBjtIRrLIH8ThD/GYwOAOen/a3q33Kt28hngaJLuDX
	d+muH/f4yQQEU/F52sCoAVIzyKAWzPWZYs5kkKwZF9dKeSIdwArcCppeC4MNXLkEidj8lpu4Fu5qU
	/X5AL8GrfPLk4UnE6UVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hig9t-0007qh-5U; Wed, 03 Jul 2019 14:22:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hig9g-0007pv-F1
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 14:22:42 +0000
Received: by mail-io1-xd43.google.com with SMTP id e5so811776iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 07:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3jOjcCBZEWo1w1sLHMo+7YDCUkeYC1q2tao/STlCVFc=;
 b=gj1NqSMk5FsHkkWbt1vPKGA6H759JOiNTm55WzGDptuNznkuH8Cf70mK1tbIg4jUGs
 BJP2wSPCVmVas/t415+sHOmOta41zS2jYMqXZBhnvg/k7m9zP7t12JwNNZcJmykd3ppF
 FeiJhLCis6scWAIADX5Sn5ZZcEgMC26sy9NIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3jOjcCBZEWo1w1sLHMo+7YDCUkeYC1q2tao/STlCVFc=;
 b=bnJ6+Jf3VElqbuMY2GQ6VW04eTDZWUzhhWlszVJKmnC6n8fJBomjtI+KuP/+uikNpS
 3rPUF5gY6UQnuKgt+WrWkBqT7DDwyLxZYmQqHNwnSi1AGChvMpxMSyDUC6VsPNRyvfsH
 hGYX7UQYzRrGCZM+6rge7odx64vVHIbvsxRnFLVRwaPangiRbpw5SVBYjdZaxPyYCUJI
 LrX4wuYcAXVR1UZLAX8FLwHllzV4rYsbdDAoHPk9zaB2JNzCMlEVOyyBBHEyCB2FtVN5
 uLnFRibU0xur/L55fyH9f5DNtukl/G9tUck8Y87ORy2Dyw9mGQbgsoRljg47qJejkztC
 Dqcg==
X-Gm-Message-State: APjAAAV7w837z30pMyOJoS0jSpEzqLHs18b/vgS78PVl9spnYYe5TXOc
 aPJG73aH4bqJgzl02ooFYLyfiCrx4KkLbxD9u5ISNw==
X-Google-Smtp-Source: APXvYqz7dfwX/rO1C1CJlykOSigszl+TALdETbQAlr7homcQ7+eKR2HVUrZS/bcVykHb3jNfUNyum1SqZCpa6EsyOhM=
X-Received: by 2002:a05:6638:3d6:: with SMTP id
 r22mr4047585jaq.71.1562163759062; 
 Wed, 03 Jul 2019 07:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
 <20190703124609.21435-2-jagan@amarulasolutions.com>
 <20190703132838.nhewz5wzsijl65s5@flea>
In-Reply-To: <20190703132838.nhewz5wzsijl65s5@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 3 Jul 2019 19:52:27 +0530
Message-ID: <CAMty3ZDyx_RSkU=OndsvzS5reOzab0DBkrarSeHt+-gtsdyKuQ@mail.gmail.com>
Subject: Re: [PATCH 01/25] arm64: dts: allwinner: Switch A64 dts(i) to use
 SPDX identifier
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_072240_942621_BF65B5B7 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 6:58 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Jul 03, 2019 at 06:15:45PM +0530, Jagan Teki wrote:
> > Adopt the SPDX license identifier headers to ease license
> > compliance management on Allwinner A64 dts(i) files.
> >
> > While the text specifies "of the GPL or the X11 license"
> > but the actual license text matches the MIT license as
> > specified at [0]
> >
> > [0] https://spdx.org/licenses/MIT.html
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +------------------
> >  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +------------------
> >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 39 +------------------
> >  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 39 +------------------
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +------------------
> >  9 files changed, 9 insertions(+), 342 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > index 208373efee49..efdd84c362b0 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > @@ -1,43 +1,6 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
>
> You say that this is a GPL2 only license
>
> >  /*
> >   * Copyright (c) 2016 ARM Ltd.
> > - *
> > - * This file is dual-licensed: you can use it either under the terms
> > - * of the GPL or the X11 license, at your option. Note that this dual
> > - * licensing only applies to this file, and not this project as a
> > - * whole.
> > - *
> > - *  a) This library is free software; you can redistribute it and/or
> > - *     modify it under the terms of the GNU General Public License as
> > - *     published by the Free Software Foundation; either version 2 of the
> > - *     License, or (at your option) any later version.
>
> While this is GPL2 or later.

Yes, this is where I was confused with compared to existing
architectures. It seems like it is a call from author of the file or
make GPL-2.0 for generic purpose [1], not really sure.

>
> Also, I'm not sure why we need 25 patches to do that. Can't you just
> send one (there's no even need to separate arm and arm64, since we
> will do only a single PR from now as opposed to what we were doing
> before).

Just to make a clear conversion possible with individual SoC + boards
files, I did based on existing arch's does. np, if require I can send
it in single patch.

[1] https://patchwork.kernel.org/patch/10963113/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
