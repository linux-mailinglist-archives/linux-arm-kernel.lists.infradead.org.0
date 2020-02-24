Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB2169DFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 06:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6jEb+oorbppoA41EwTT5Z5BAzeNvXPvsfZNOjHXWcM=; b=lhgWTq9jCoOJ0Z
	KRq71O6WW5zXJ/CuZBeHkx3bzAHUsLKYcRMk/Zr+Wd2wsBZZcKE8gkRByEI8O3vRyo650WoHSx5S3
	1Qyl1/cFvU1+pxT2ENUfOWNZ07p4PuZkD7zU28Ia1DbNP7CnBkKyzQjUx24+dNpBG/nHn6jcieGgU
	IwSeRU0Q6CW8FjL+Ve3CbDoyojj2czr5QYfftPfQn952Bck5S4IO6+QrKPQhHR8yTOidFPZKqTMUw
	sySVyXNP2Z/VP81ZxuFWa9aSg+AL4ln0MhfMzaexElJedWtH01ijF6mz6wEC2mZlpNl0Kh8Si4xmu
	6oN39rtmrBm4O63gLbfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j66dh-00078t-GW; Mon, 24 Feb 2020 05:50:45 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j66co-0005cE-LL
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 05:49:52 +0000
Received: by mail-il1-x142.google.com with SMTP id i7so6713047ilr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 21:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1lY477fOyMq1q33AocdUo5Q0TUJqq9Md6rNGg2za8EE=;
 b=s1jqTubdky1rvJE1VzZdSrkQdnbJhf7/AS1HDlM0stq5HQi88ofA5b7QhrexYrycjD
 8RV4Xp23wk4MGhFSKuu6pTcr+i4FRRLgWuViYPEfHsIBwSKeyqcHKoBDp9R6qRPSn6iH
 MSvT4drDFSIWPW5NGHdn+/LFotJgqLN6XiINJtgkPc5IAJiX5ifvIOYX0X5x0uE51XGF
 +4eluDwp13rawmI3HvVZrfALBMO707xp1mnCIm6gWCRKj1gx1iBko9Cei70VyfSESeSM
 uVghwaqmljkv3K4bmYw8F7L5H8UyxBSNVOPvTqx66oWCT+dK8E25lubaGEi5TrCXCJpm
 T9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1lY477fOyMq1q33AocdUo5Q0TUJqq9Md6rNGg2za8EE=;
 b=mB1DQTOEZkztbS5RHusM3GvXgC6Dw0Ry4xhVV9H9/Sz84sKu0aAZzill8WTPJnWT6f
 saEi1Wse2XunS01YzLlLuVFIb/+Zg1SeJjO9op9cdmwYqgEKY8JmUL0x53gKQ77GHByV
 vBssRHgMKH6U7uT+vSUOfGuWMYdm2fqWpBdGPRPbzvxk0P2oOlLexy7OxyR9mEwg1RdF
 pErR8SMTREtd2YoM1mkM0Ibwcj0Yw842bGvRtSM1/5hqDkmL/Dln6WlrJwgw/i+xzzma
 xD3W8yVnBHRcOJP9cXvneZtnwPYI/qjbkEoqodL0eT0mJjvzWZP41RTaeMpFySqdqfRJ
 dAoA==
X-Gm-Message-State: APjAAAXtNaW+ogm8OMrNgmzkX7t5RfoOueUxBHWsTN6ZXjqja83W9dGg
 5U2jatfMYnfpLKTOCA1dNTZil54I3Is+Fi4WbZE=
X-Google-Smtp-Source: APXvYqwMB5S+cg1wqmxDqgClIocSahfleSU/C//nzCiqKf+hfu0p+G7QBof53DaOqgFzqnvi3H6GZJ+5IkmK+CSLuB4=
X-Received: by 2002:a92:9fdd:: with SMTP id z90mr59039789ilk.6.1582523387848; 
 Sun, 23 Feb 2020 21:49:47 -0800 (PST)
MIME-Version: 1.0
References: <20200212120237.1332-1-linux.amoon@gmail.com>
 <20200213101744.GA11087@kozik-lap>
 <CANAwSgR+PFiE0=FEhDY__FDx+470pe0OsbUXcSG64JDuG++ccQ@mail.gmail.com>
 <20200213154314.GA7215@kozik-lap>
In-Reply-To: <20200213154314.GA7215@kozik-lap>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 24 Feb 2020 11:19:36 +0530
Message-ID: <CANAwSgS7k9sPZ6=WAVVsNUydRS_rfCa4itRvUExQBcQGuPqoDw@mail.gmail.com>
Subject: Re: [PATCHv1 0/2] Add FSYS2 power domain for MMC driver
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_214950_768588_9256B8C1 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
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

Hi Krzysztof,

On Thu, 13 Feb 2020 at 21:13, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Feb 13, 2020 at 06:58:51PM +0530, Anand Moon wrote:
> > hi Krzysztof,
> >
> > On Thu, 13 Feb 2020 at 15:47, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Wed, Feb 12, 2020 at 12:02:35PM +0000, Anand Moon wrote:
> > > > This patches add the power domain for MMC driver,
> > > > but somehow the suspend/resume feature is broken
> > > > so any input on how to fix this.
> > >
> > > I think S2R was working on XU3-family after Marek's fixes, so you mean
> > > that these patches break it?
> > >
> > Yes I my testing mmc driver failed to come up after suspend.
>
> Patches breaking systems should be clearly marked as work in progress,
> e.g.  by using RFC instead of PATCH in the title.
>
> This patchset cannot be applied.
>
Ok

> You probably have to figure out some missing dependencies, e.g. in
> clocks/power domains/pinctrl.
>
I have tried to add some more missing code, but this FSYS2 power domain
power off during suspend and their is no resume after this. Do know why.

[root@alarm ~]# echo N | sudo tee /sys/module/printk/parameters/console_suspend
N
[root@alarm ~]# echo 1 > /sys/power/pm_debug_messages
[root@alarm ~]# time rtcwake -s 60 -m mem
rtcwake: assuming RTC uses UTC ...
rtcwake: wakeup from "mem" using /dev/rtc0 at Mon Feb 24 05:18:02 2020
[   81.955425] PM: suspend entry (deep)
[   81.961793] Filesystems sync: 0.003 seconds
[   81.978051] Freezing user space processes ... (elapsed 0.009 seconds) done.
[   81.993635] OOM killer disabled.
[   81.996531] Freezing remaining freezable tasks ... (elapsed 0.002
seconds) done.
[   82.229718] wake enabled for irq 160
[   82.445441] wake enabled for irq 164
[   82.461752] samsung-pinctrl 13400000.pinctrl: Setting external
wakeup interrupt mask: 0xffffffe7
[   82.481095] Disabling non-boot CPUs ...

My observation, all the device get suspended and USB device come alive
after resume.
since mmc device is in sill in suspended state it dose not resume.

So can we stop the FSYS2 power domain to getting disabled during suspend.
Or is their any other thing I am missing.
How to enable more debug print for power management ?
How can I debug future ?

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
