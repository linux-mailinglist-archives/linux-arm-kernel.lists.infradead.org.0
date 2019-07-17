Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8286BB2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoCB0P/TMaSZRuXrByV4r2NxviimVqvmOJwSXGcLnUI=; b=NO9svBCTEB61+4
	W/mOuSbgojpLuIL2kDkiNUSvjFckM4kMpxMiybyBQwCZFH9qJBXQuzvsOdrpOb0roXzgENUFcQ2O9
	uEkz7FyEGuGpFB/ID0FJenVV0SxSjAiHKlUxD2tmBGA25MdWSCEOleqeIk6Lb0LrNxmuaKmqQZ6AO
	xLwz3p6i218cU3pXvmXHZc0ZWAmt0BfEL11gldSR8rnyzZ8kZzOnYe8m+DzKhiWSZLejvS5Oj7fEl
	HfmC16MT7yNFg0oez4Q/G3jRu5blbPQHq+lsd5SxGdgPIz0BwyZT16ZhQAHksO947goTAIgqQbwJF
	DGzw2r0qvXp2E2RM4YIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhqe-00025Y-WC; Wed, 17 Jul 2019 11:11:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhqS-0001zN-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:11:38 +0000
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E66CE2182B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 11:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563361896;
 bh=S+zz2te9bgVDNvvPDBj9cd9KNHESF6XIWx165fsWXKs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SPDEn+XMeskc4LwiBwImwxEarlR2o2Jl8Nrijnk7aK2bRxzh9bVoTr7B3m+SUXK6a
 d8XK/tLtoJ0th/XxsfYz9L1EJLw7fQcYRdOVuDzgLz15pgtE1GBJiIkh3CyDCslpQU
 ZxK2ZmPbMbTZ7hFhEqQk3KgRsRjbc2Xu3Z0vWI44=
Received: by mail-lj1-f171.google.com with SMTP id v24so23229156ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 04:11:35 -0700 (PDT)
X-Gm-Message-State: APjAAAV+WyXezOt4eON7HUubqlBs4ZeobQWfJf5LFNDUK6FX9TNJ6+l2
 nt9S8VXMFgDGGM5HiJWMH4gIxvYZB/PyVvX3efo=
X-Google-Smtp-Source: APXvYqy+wB5Py8UKuQnvHerPK6HtAXuBZ1HjpDkxUA2U6kmM++5iJrx97dB39dcvHvv6RLVbDgvFtdBpKcNBAb8qo7g=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr20875095lje.143.1563361894145; 
 Wed, 17 Jul 2019 04:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-38-l.luba@partner.samsung.com>
 <CAJKOXPfrGgAczQ-=1aE453RpJ9BN10ZDmFcrEMPkNyF6GcGtNA@mail.gmail.com>
 <2fe2e840-f4b2-773b-7d92-4ffb8502d4e6@partner.samsung.com>
 <CAJKOXPd3gm7no-0TnPmgFg+X3FgdiM6ov5rtzFSM6hKEdEzRCg@mail.gmail.com>
 <518c26ca-4254-056c-d6d0-ae1b4b63709c@partner.samsung.com>
In-Reply-To: <518c26ca-4254-056c-d6d0-ae1b4b63709c@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 13:11:22 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfDX06s7eMctbnPabxho2EaWcTM4xAGKCd_+O6jCCDcRQ@mail.gmail.com>
Message-ID: <CAJKOXPfDX06s7eMctbnPabxho2EaWcTM4xAGKCd_+O6jCCDcRQ@mail.gmail.com>
Subject: Re: [PATCH v1 37/50] ARM: dts: exynos: change parent and rate of
 bus_fsys in Exynos5422
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_041136_996456_914729F2 
X-CRM114-Status: GOOD (  28.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 at 13:06, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
>
>
> On 7/17/19 12:45 PM, Krzysztof Kozlowski wrote:
> > On Wed, 17 Jul 2019 at 12:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>>>
> >>>>    &bus_fsys {
> >>>>           devfreq = <&bus_wcore>;
> >>>> +       assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
> >>>> +                         <&clock CLK_DOUT_ACLK200_FSYS>,
> >>>> +                         <&clock CLK_FOUT_DPLL>;
> >>>> +       assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
> >>>> +       assigned-clock-rates = <0>, <240000000>,<1200000000>;
> >>>
> >>> Here and in all other patches:
> >>> I am not entirely sure that this should be here. It looks like
> >>> property of the SoC. Do we expect that buses will be configured to
> >>> different clock rates between different boards? Since the OPP tables
> >>> are shared (they are property of the SoC, not board) then I would
> >>> assume that default frequency is shared as well.
> >> These clocks they all relay on some bootloader configuration. It depends
> >> which version of the bootloader you have, then you might get different
> >> default configuration in the clocks.
> >
> > I do not agree here. This configuration is not dependent on
> > bootloader. Although one bootloader might set the clocks to X and
> > other to Y, but still you provide here valid configuration setting
> > them, e.g. to Y (or to Z). What bootloader set before does not matter
> > because you always override it.
> This exactly the patch set is aim to do: overwrite any bootloader
> configuration which could be wrong set after boot.
> I don't know for how long it is left in such
> 'bootloader-default-clock-settings' but it is not accurate
> configuration. The pattern in the DT to change the clock rates is
> there.

Still it is not the answer to my concerns and questions.

> >
> >> The pattern of changing the parent
> >> or even rate is known in the DT files (or I am missing something).
> >> When you grep for it, you get 168 hits (38 for exynos*):
> >> git grep -n "assigned-clock-rates" ./arch/arm/boot/dts/ | wc -l
> >
> > Yeah, and if you grep per type you got:
> > DTSI: 114
> > DTS: 54
> > so what do you want to say?
> Thus, It could be changed in DT.

Of course, why not. But how this relevant to my question?

> > My thinking is that all the boards have buses configured to the same
> > initial frequency. I am not questioning the use of
> > assigned-clock-rates at all. Just the place...
> It is not only 'initial frequency' as you name it. It has three changes:
> - re-parent to proper PLL
> - changing this PLL rate
> - change the OPPs frequency values to integer values derived from PLL
>
> The initial frequencies will be changed by devfreq governor using OPP
> tables and the load after the whole system boots.

I simplified with "initial frequency" but it does not matter. Let me
try to raise my concerns again, different wording:
All this looks like property of the SoC, not the board, because:
1. the OPPs are already properties of the SoC, not the board (XU3 Lite
is kind of exception but in fact it uses different flavor of
Exynos5422 SoC which we do not model here as separate DTSI),
2. I expect all boards to have the same properties.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
