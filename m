Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DA5B3F01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOsh07fWXnmCVQLCbHYOPBYLo5KwBQXAwpcc357NpW0=; b=i0TcQ7gTB1CMvz
	vSQkS4As4PAF22TQ8fqZWyT8mZCkyfpvCJ5cIi4grfG5+jndFHhASM33P98kDLlTwLpHtbdxWeyCm
	I1wgxKRfgP2nN1cFJLUWfVSwSL0QYIaKA39fV95G8F32XpxXPML/pbEQ6lEwubkLfYWsrqIChyulY
	pzG3MnlcjyA7F/HFC2Zr6rMG/0y5TSSwPvw7ekdEKpMI4noA+TmkOXI9Xc7QUrHaBAGBcp9PcXmwC
	5mbXL4okEfNGPb+88218yTp1un1tXGgJ50pekBEl8+6rNivWWiyfJ2LUsv3i5u6aau0Kf+mOFX23i
	/RGwt07GpZ3wMIarBjJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tt6-00030L-Is; Mon, 16 Sep 2019 16:30:04 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tsq-0002yk-Mr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:29:54 +0000
Received: by mail-lj1-f196.google.com with SMTP id 7so540578ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h7narMV9OTYNzOroVWgFd4nRfpeAHkS1DELxNwsQgU8=;
 b=MdVIXUpc9/YU8wr1GzvXXgtQb0JM41RgAsovteHxEROK52BQ+1LWLmENuD03+XBTNz
 4zM9dDaJu0OeYYb0b/TeElwAfS7X8Ke/9fHmODo3ASbKAP2cUwDT+UbH1hVxkqivle5D
 kwoD+navaP8FbSQ+5Itiv/im8KAgDYyUiKiv1u2ImZwBHpHtIUIHDldNd6WUs+IfoBOj
 FZhR5c2ErUj0Og1SsvF6S4TVROQH/wrV0AUbqQT1M8hleXbr/vllvJAV0OwB/xMoZ8/g
 uDEKB+Z8Gt60X7afIucL9CuEVNdW2H5/Gx2xSLQr7QomZYaZX4loKwobDqmiv/8kzPQ4
 n9gg==
X-Gm-Message-State: APjAAAVH/Q1f8gPblxq+05XXVhFAD/hGi2gxsUc9X/K7Wu11IWg4ruGH
 2uua8jZHfq1ewfWYXwc8VV/+v+ARFNnaOcIB5JK+NOYK
X-Google-Smtp-Source: APXvYqwMsOkcphhHTKrF/EiIRSmSKA/fSeeY5GxccGZwHcDrzfqwChNKVRKp/+O1sWchWQ8cn4aBT54W+P4bLyjfZG0=
X-Received: by 2002:a2e:a316:: with SMTP id l22mr101468lje.211.1568651386857; 
 Mon, 16 Sep 2019 09:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo>
 <20190916154336.GA6628@roeck-us.net> <20190916155031.GE7488@ulmo>
In-Reply-To: <20190916155031.GE7488@ulmo>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Sep 2019 18:29:30 +0200
Message-ID: <CAK8P3a1EZi5apOm90B6YW2GzFXsirz5wk-D66daR20oj_TLXNg@mail.gmail.com>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
To: Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_092948_744000_A859CCB4 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 5:50 PM Thierry Reding <thierry.reding@gmail.com> wrote:
> On Mon, Sep 16, 2019 at 08:43:36AM -0700, Guenter Roeck wrote:
> > On Mon, Sep 16, 2019 at 03:49:20PM +0200, Thierry Reding wrote:
> > > On Mon, Sep 16, 2019 at 06:17:01AM -0700, Guenter Roeck wrote:
> > > > On 9/16/19 12:49 AM, Arnd Bergmann wrote:
> > > > > On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > > > > > On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
> > > > > > > From: Thierry Reding <treding@nvidia.com>
> > > > > > >
> > > > > > > Hi everyone,
> > > > > > >
> > > > > > > This small series is preparatory work for a series that I'm working on
> > > > > > > which attempts to establish a formal framework for system restart and
> > > > > > > power off.
> > > > > > >
> > > > > > > Guenter has done a lot of good work in this area, but it never got
> > > > > > > merged. I think this set is a valuable addition to the kernel because
> > > > > > > it converts all odd providers to the established mechanism for restart.
> > > > > > >
> > > > > > > Since this is stretched across both 32-bit and 64-bit ARM, as well as
> > > > > > > PSCI, and given the SoC/board level of functionality, I think it might
> > > > > > > make sense to take this through the ARM SoC tree in order to simplify
> > > > > > > the interdependencies. But it should also be possible to take patches
> > > > > > > 1-4 via their respective trees this cycle and patches 5-6 through the
> > > > > > > ARM and arm64 trees for the next cycle, if that's preferred.
> > > > > > >
> > > > > >
> > > > > > We tried this twice now, and it seems to go nowhere. What does it take
> > > > > > to get it applied ?
> > > > >
> > > > > Can you send a pull request to soc@kernel.org after the merge window,
> > > > > with everyone else on Cc? If nobody objects, I'll merge it through
> > > > > the soc tree.
> > > > >
> > > >
> > > > Sure, I'll rebase and do that.
> > >
> > > I've uploaded a rebased tree here:
> > >
> > >     https://github.com/thierryreding/linux/tree/for-5.5/system-power-reset
> > >
> > > The first 6 patches in that tree correspond to this series. There were a
> > > couple of conflicts I had to resolve and I haven't fully tested the
> > > series yet, but if you haven't done any of the rebasing, the above may
> > > be useful to you.
> > >
> >
> > Maybe Arnd can just use your branch (or rather part of it if you would
> > split it off) since you already did the work ?

The branch needs to be rebased once more as it is currently
based on linux-next.

> Yeah, I can just send the pull request for the 6 patches after -rc1.

Ok, sounds good. I'm also happy to take the remaining patches
in that branch, for the other architectures.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
