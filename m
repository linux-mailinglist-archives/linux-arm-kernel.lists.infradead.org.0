Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246DA6CCF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 12:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di6kz8/f0NJBGM6zeAM/kEmO911N4HlD8PktNttLV2k=; b=mcnX5QTbH7FAN3
	UKsqxQa/m3uuV0i1IUYUdAap+sfqDg64pGEkiVuzymnQvsUmVTIlt++8J8TUkaD3HmdwPlyW6qBPX
	e3FdyQl1U5YRR1Ob/IySylP82oLPLiTcqG/I6BT7LoD8Q9+SaBKaVAWmaOTJXCZuY2ZcvSkObJJcx
	sWmaWfOa+/sW/02HNMOW5SDR4IL4q+7jqezR6MuvZ6S44Q83m5E7yZC3crO8yqzSK+5LaegLIk+6Q
	fV0ugmAc/PboEVVN7SCNWnvMOn9B5oSDlUjjuH1BqwtFbnMhqOixPWDOtJdsqSGp2fDQRJGAnCwkZ
	dw+riJU4KLx1vN37RCvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho3y8-0005YG-6h; Thu, 18 Jul 2019 10:49:00 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho3y0-0005XH-8I
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 10:48:53 +0000
Received: by mail-vs1-xe44.google.com with SMTP id r3so18747267vsr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 03:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NppfMkA9YSp2bcd8lowDgozs69+YWUjU8R8XC2mh2Ng=;
 b=EMo3sNQfR8AxwQbc/nsBmFB2MttmgcYpKR6+imTy+1EG/hxf2H1FX4coJIjBZs9MU4
 T5gfuRfY0RJvbYIUjVknrZr6Eg6Zw3N5HG7aed/9UdUeTX7a1AlUZLU0w2OsoUoEoMMt
 rNcp0hzFlDtjweQ0S7IYVyCrtnbDY7fv+TpkkRIQfdT9q0pWwfYCh9v0s/AYlWjWKojb
 Q+FcvGHicvaXo3IiVCcV9apv0MI03oWm1qSfSilrp9K00e6Am331V9AMy4viOYZqv9JI
 kKEBYgZiDcA6zHuKe3PNvCPdq/SzEDbDaWOug2ZuxcVj6N1EZ6a6yqkw7R+JUtFUrKoi
 rCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NppfMkA9YSp2bcd8lowDgozs69+YWUjU8R8XC2mh2Ng=;
 b=f4U7p1kaa3/ZxMhXMc4Htwxiw5XNlyhYmLKFWgssI4syVaQsz0wmXLa1NZsxO6/ngi
 jUtzo7NITOPT4qqoxTMBvOuVp8WmYB2hj66oJnizYytVyzQjPFHkM4TcADD0dzYOXU+Q
 UWkD+li/nk4pRRYJbe0hPVkMq5tet/Kln1+enQP2Bb8DXDtnImTwztoXl2P0JDAlO/3u
 YK4B/zYBEsy6yt1mVNYXZPrKtULFKkR4L2Yfy9NHH3Ne9My12rYuLA+j5MlDgsvdB0Jz
 lHuP1opEKOv/beXP5ZXzlq85fUgq1NB14+QdvjbOUqna3zH+let0K3nNTUQ7CUL8Ahal
 lh9g==
X-Gm-Message-State: APjAAAXdwfMrkAXLlkI5neyuC6FagBjE1D3d6sTAPhr//04DrBbaZZ1+
 +g/t5jpmC3clql4Tki4gaa/NC2bz7iPbXiKbbFW5Sw==
X-Google-Smtp-Source: APXvYqztqpfIkQ19AlRQPrqfsqTvP4cIR4ExKB8fsNIFkHPM8GZNpANZzIhR9gX186T9JnVglUf6rgxAB2sJLtT7RWg=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr28577969vsp.191.1563446930654; 
 Thu, 18 Jul 2019 03:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-19-ulf.hansson@linaro.org>
 <20190716144744.GB7250@e107155-lin>
In-Reply-To: <20190716144744.GB7250@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Jul 2019 12:48:14 +0200
Message-ID: <CAPDyKFpc26yL6rOnfwawL=eL649NsgTMrF1WrMHZv7AVd=3PCA@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: dts: hikey: Convert to the hierarchical CPU
 topology layout
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_034852_310477_1D4DD0D3 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>, Wei Xu <xuwei5@hisilicon.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 at 16:47, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:23:00PM +0200, Ulf Hansson wrote:
> > To enable the OS to manage last-man standing activities for a CPU, while an
> > idle state for a group of CPUs is selected, let's convert the Hikey
> > platform into using the hierarchical CPU topology layout.
> >
> > Cc: Wei Xu <xuwei5@hisilicon.com>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes:
> >       - None.
> >
> > ---
> >  arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 87 ++++++++++++++++++++---
> >  1 file changed, 76 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> > index 108e2a4227f6..36ff460f428f 100644
> > --- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> > +++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> >       cpus {
>
> [...]
>
> > @@ -70,9 +128,8 @@
> >                       };
> >
> >                       CLUSTER_SLEEP: cluster-sleep {
> > -                             compatible = "arm,idle-state";
> > -                             local-timer-stop;
> > -                             arm,psci-suspend-param = <0x1010000>;
> > +                             compatible = "domain-idle-state";
> > +                             arm,psci-suspend-param = <0x1000000>;
> >                               entry-latency-us = <1000>;
> >                               exit-latency-us = <700>;
> >                               min-residency-us = <2700>;
>
> Again this must be original format and as per PSCI spec, your patch
> changes this cluster sleep state into cluster retention state which I
> think is not what you intended.

If the hierarchical topology is used, the parameter for cluster states
are ORed with the deepest idle state for the CPU.

CPU_SLEEP: 0x0010000
CLUSTER_SLEEP: 0x1000000

After the ORed operation
CLUSTER_SLEEP: 0x1010000

So, this indeed works as expected.

However, are you saying that ORing the state parameters like above has
other problems? I am reading your other replies...

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
