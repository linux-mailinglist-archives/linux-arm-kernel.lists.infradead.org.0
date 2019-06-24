Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A0850C2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xt97gb44KQ7WG3cv1lxmKqIE52eM9A9Lww4gxF+EHSo=; b=AjQNHN2kFdw7Uq
	3BSeX0PrBDFmj7b/2YwenXYR4lMtzp6RF8UUMad/IdT4AmSdLHBaysdxjaPEiyZz3movFH4BduK1V
	DoEPqvNe820gngQQhe0rVvAPm9mSiAcdxpvR+N4kwjUCG5aaQcGPwe0jDxK9lTGbZXne6c9Sv/ZXe
	y2HHIp4kuWoUh4MiT7PFiJKXwLWiKzUkFGODxy6cNwGzBpAvxTRqnkTkyssqO70anvmvM5GlYoP+A
	Vh7gJdulbZY9AUSjpKBxZ8vOMqNBgUp9bW/brCIQYsAO8q31wuiAA1z3KVfxN7jPJy8DmcD3oBxIq
	W9t0HPxLmuSHvuu3xSSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPFZ-0006xe-Nn; Mon, 24 Jun 2019 13:43:13 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPFM-0006oS-WA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:43:02 +0000
Received: by mail-io1-xd42.google.com with SMTP id n5so2134271ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JAY+HO+se6M27BJLGy2WaRXVtQjt3tup0p+M/AykcYU=;
 b=WqahhA0vGT09ygQXdubtYD5Lz8cEW9fjhcYm97RgfF6N2/isRXcUjN3KMzuLlAScL2
 uB1+yrJlpzeAGIVXLqeyKk4Vv85+P8jeJFXi+iruawOOdanDNRNg8aoHp1CPiDmlYVSC
 6U6VpETeSl0kXNREKCfsI8At3rHRNCu0EpJHK/dETrHs2ALcqFSRc3oLzsWKipgN8xM/
 T1+lJaRW9mkfN/FM8N2bu1xaMckb8WFtWM0ymwCaaUbnCX6j5Wl3/3Fcu7P6cZBagDZm
 qF6gd2YkmuYRFi1rjW+ke9AcQTdaKKhb/17oQHB4k5i+20d0/O1EfWR42JOMSVp5noas
 SpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JAY+HO+se6M27BJLGy2WaRXVtQjt3tup0p+M/AykcYU=;
 b=ALr20y0uRUGKRoIAG56nNtMzLiRSFrk/iYiwd8ZTXj/kAovnwypqaeIH3tMujWw27T
 2NiRh3AqC0A1/qvvkajt6IA5ODgM5+6/TuQBbBZ9xlCiwnBDyN0ifuf3fm2bGQkwfeAZ
 51/bU1DJOdaByOXmF7H90n2OV9gSRvVJyPxZD1XRHeA9s9XMJeJ7gKqn041ATSx4kLhs
 4/dP6mqkE2tl1PGOX2plAoQ6wLRHPjB1120inocy9vr09wX9/E/pvZnTlQiyDULvO9xS
 2wUic7LIi65dqY35PSrBKeKoUeMKIW4nNekEJLrdnEoYarpnfNSk7pYfXxkJpYY6Y+jz
 gKPA==
X-Gm-Message-State: APjAAAUamQpLqEShPs06EXqfKIKNNyzXxdgqMDJ+40yQGMDSTH6x4RPJ
 htqQ9xIgSC+ZrxyiEgcTF0KOla9+fi/OMbuvs814/VHM
X-Google-Smtp-Source: APXvYqypl0IrSyDO/f7SI42d4NpFHa/7OZX0jXNbFpUASMxwh2fx0mJgfs/qVOYaLSUhLwF6DwSrz304TPAq9G/BjWs=
X-Received: by 2002:a5e:c30f:: with SMTP id a15mr8320747iok.246.1561383779652; 
 Mon, 24 Jun 2019 06:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190621155845.7079-1-krzk@kernel.org>
 <20190621155845.7079-3-krzk@kernel.org>
 <CGME20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86@epcas2p3.samsung.com>
 <CANAwSgTFQo8wL5s-djwPXFFOLtTHvRQif6234kFC=23PwMhuEQ@mail.gmail.com>
 <d94a2f99-fb99-c238-7011-9bbb4c0cd90f@samsung.com>
 <CAJKOXPeXELUjsuW9eyGuRj56067qnL-J2Lt4U42mYiyx=X+F_Q@mail.gmail.com>
 <2f58b63e-adf1-7935-8849-f311dc991b84@samsung.com>
In-Reply-To: <2f58b63e-adf1-7935-8849-f311dc991b84@samsung.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 24 Jun 2019 19:12:46 +0530
Message-ID: <CANAwSgTymg=u8oJy4bOoREpY1DvVqav=FfdizumeUJMYhntKaQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] ARM: dts: exynos: Add regulator suspend
 configuration to Odroid XU3/XU4/HC1 family
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_064301_068954_8FA63AC7 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek / Krzysztof,

On Mon, 24 Jun 2019 at 14:31, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> Hi Krzysztof,
>
> On 2019-06-24 09:41, Krzysztof Kozlowski wrote:
> > On Mon, 24 Jun 2019 at 09:20, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> >> On 2019-06-23 18:02, Anand Moon wrote:
> >>> Thanks for this patch. Please add my
> >>>
> >>> Tested-by: Anand Moon <linux.amoon@gmail.com>
> >>>
> >>> [snip]
> >>>
> >>> Could you integrate below small changes into this patch.
> >>> with these below changes suspend and resume work correctly at my end.
> >>>
> >>> [1] XU4_suspendresume.patch
> >>>
> >>> As per S2MPS11B PMIC 1.2.1 Regulator (Features)
> >>> Fix the min max value for *Buck7* and *Buck8*
> >>>
> >>> -- Buck7 (VDD_1.0V_LDO) 1.5 A (1.2 V to 1.5 V, 12.5 mV step, default on 1.35 V)
> >>> -- Buck8 (VDD_1.8V_LDO) 2.5 A (1.8 V to 2.1 V, 12.5 mV step, default on 2.0 V)
> >> Could you elaborate why such change for Buck7 and Buck8 is needed?
> > Anand has here valid point - the constraints in DTS do not match
> > hardware manual. This leads to question whether voltage table in
> > driver is proper... Another point is the voltage itself. The
> > schematics describes them as at specific voltage (1.35 V and 2.0 V)
> > but after boot they are 1.2 V and 1.85 V. Maybe this shift comes from
> > the problem above.
> >
> >>> Also add suspend-off for *Buck9*
> >>> Buck9 internally controls the power of USB hub.
> >>> Adding suspend the this node help proper reset of USB hub on Odroid
> >>> XU4 / HC1/ XU3
> >>> during suspend and resume. Below it the logs from my testing.
> >> Disabling Buck9 in suspend indeed reduces the power consumed by the
> >> board during suspend-to-ram from about 80mA to as little as 7-10mA, what
> >> matches the results of OdroidXU3. Thanks for the hint!
> > Although I did not get what is the difference in the logs (Anand
> > pasted two logs but they look the same) but the power consumption is
> > reason is good enough. I would be happy to put in the changelog entire
> > consumption  difference. I can measure it on XU3-Lite but can you give
> > me the XU4 (before and after)?\
>
>
> HC1:
>
> next-20190620: 120mA (@5V)
> this patchset: 72mA (@5V)
> this patchset + fixup from Anand: 7-10mA (@5V)
>
> XU4 (SDcard):
>
> next-20190620: 88mA (@5V)
> this patchset: 74mA (@5V), sometimes 42mA (@5V)
> this patchset + fixup from Anand: 6-9mA (@5V)
>
>
> XU4 (eMMC):
>
> next-20190620: 100mA (@5V)
> this patchset: 72mA (@5V), sometimes 41mA (@5V)
> this patchset + fixup from Anand: 6-9mA (@5V)
>
>
> Best regards
> --
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
>

Thanks for this results.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
