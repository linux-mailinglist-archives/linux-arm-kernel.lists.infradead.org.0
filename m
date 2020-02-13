Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C18915BF57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 14:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvjfghbxwKY81mFG3HvfG9DUp8FrBozzjD4ZqKsEPb8=; b=qM+ybFMbALtNhQ
	M7L5jyBx0oIIzrtyGYK4lcRtyeD89838yrybf1Ocauqoecl3SYyPHvKStSbt+rZe75CplUXd6FcWb
	gNmv3Q9ythxEDmdC1EyYPc6ysYbgR/XM6CYHIcLXzZC/Bu+symsdzStcePG2jUISc+yVZqafNiH8k
	3mnbiripdNowbaBSGnsWgcizDDrtjYEB8Hf0dRbJ7LgX6Jpq3epkRIX5Ozpo6C7umKrUWYX5B1DTD
	4oNcTBK1z8kHyoKXBDexg98duaJfyRrKutx036O1y5bxSAiPFkLajIimGC4qQOBZfKZUNLaALed9a
	lyMHGFB9NrHHJ8hhbemQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EYM-0002sF-IN; Thu, 13 Feb 2020 13:29:14 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EYC-0002rI-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 13:29:06 +0000
Received: by mail-il1-x142.google.com with SMTP id i7so4954260ilr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 05:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yfE2W5LQkoH0UQl9XbqZm7z7YZPx+sJdXqj0cViMT9Y=;
 b=qDPTDEy3Wwk4R4THsiNOjtlrg7zGYl9R2KtnB0Vy98kGWf8Mhue5K04gGadiYjOhJA
 OECkjl7zgSyVTM5gbskiMbTETf+UpRizBu2GA90YYSh00wtnIubUwZNgzlLyxqv322Nt
 2O4mOsjv3IVl5zqbDSjloBWSQzh/bXytjQEREZD1k1BtwrCRwdKPHywgcR/kymjYz59I
 mB1xQVs4tye3cty8HbTxBWFkIilCgdhCURMlPWiJaeR6bR5PO3GCSLb2zqbTt5BJv3Dp
 +Ednjlh1F9uwLcHkarMO30YaCVIN2e+VuOjGcWVFhpclKZrMSP6uuyRaTcFcRftXeUCz
 BdFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yfE2W5LQkoH0UQl9XbqZm7z7YZPx+sJdXqj0cViMT9Y=;
 b=VjEluqBhrkrv9ilO0MiwlweaHBn85a/hwvlGzeo0pxYTIiAYpXrikrnYJhpCZVzKnb
 nf9j2Shy6Dmi+NT3EYyo9GXnTceOau6dJzXewBhcBw/Fx5azeu1ro7vyCa+4aRX06A1c
 p8nyNfHuI8em2yma9FOJx+4C2LX+IOgl7VjBMee41zZm2a3r/Yb9TUmo2vBTgaXLFQgY
 rVCVxR5n6/0DETrR5c3wlys69bG4+ypz5Pu+8eOtJaL6F87yWOgwwPui4uP4JKxFPtkE
 hxQ1ad2RQPqf5Ic81jA7IBdKqc8xwEK+6Bp2fR8fO5QbMFz7zWEb+7blHgPinU1yXr62
 4w4g==
X-Gm-Message-State: APjAAAXCZ4U571PsLzVWv70RFDu3LOd8M+cGCKcT7Dmj1rLfaMInOfMH
 a8FclyyKVmzrv4r5swN7/IV/UHY6WX+4hG7pP+c=
X-Google-Smtp-Source: APXvYqyZADe9aFJTPHWo+2m+qnyTFGMvRJstebqLC899Zq0rrvQgRDaG+VSSVPANdZD+NvJ4x3Rs9wqKM+CNDfEx+4Y=
X-Received: by 2002:a92:5d92:: with SMTP id e18mr15908939ilg.75.1581600543378; 
 Thu, 13 Feb 2020 05:29:03 -0800 (PST)
MIME-Version: 1.0
References: <20200212120237.1332-1-linux.amoon@gmail.com>
 <20200213101744.GA11087@kozik-lap>
In-Reply-To: <20200213101744.GA11087@kozik-lap>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 13 Feb 2020 18:58:51 +0530
Message-ID: <CANAwSgR+PFiE0=FEhDY__FDx+470pe0OsbUXcSG64JDuG++ccQ@mail.gmail.com>
Subject: Re: [PATCHv1 0/2] Add FSYS2 power domain for MMC driver
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_052904_718473_975904C2 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Krzysztof,

On Thu, 13 Feb 2020 at 15:47, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Feb 12, 2020 at 12:02:35PM +0000, Anand Moon wrote:
> > This patches add the power domain for MMC driver,
> > but somehow the suspend/resume feature is broken
> > so any input on how to fix this.
>
> I think S2R was working on XU3-family after Marek's fixes, so you mean
> that these patches break it?
>
Yes I my testing mmc driver failed to come up after suspend.

But I see below in power domain, Just to confirm.
#  cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
domain                          status          slaves
    /device                                             runtime status
----------------------------------------------------------------------
CAM                             off-0
FSYS2                           on
    /devices/platform/soc/10010000.clock-controller/exynos5-subcmu.6.auto
 active
    /devices/platform/soc/12200000.mmc                  active
    /devices/platform/soc/12220000.mmc                  active

# powerdebug -d
FSYS2:
current_state: on
active_time: 29016991 ms
total_idle_time: 4037 ms
Idle States:
             State            Time
             S0               4037
Devices:
         /devices/platform/soc/10010000.clock-controller/exynos5-subcmu.6.auto
         /devices/platform/soc/12200000.mmc
         /devices/platform/soc/12220000.mmc

> Best regards,
> Krzysztof
>
>

-Anand

> >
> > Also on similar lines I tried to add power domain
> > FSYS for usb3 and usb2 nodes but this time
> > it failed to load the kernel, so how can I reslove
> > this issue.
> >
> > -Anand
> >
> > Anand Moon (2):
> >   ARM: dts: exynos: Add FSYS2 power domain to Exynos542x
> >   clk: samsung: exynos542x: Move FSYS2 subsystem clocks to its sub-CMU
> >
> >  arch/arm/boot/dts/exynos5420.dtsi    | 10 ++++++++++
> >  drivers/clk/samsung/clk-exynos5420.c | 24 +++++++++++++++++++++---
> >  2 files changed, 31 insertions(+), 3 deletions(-)
> >
> > --
> > 2.25.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
