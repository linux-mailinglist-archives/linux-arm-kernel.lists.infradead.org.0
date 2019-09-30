Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BACC25CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 19:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z97yHBuJKmiB5IOO2Otqdvil8TxWXkaj97W960mtTWs=; b=JVPtRreX4sZK/E
	RcFfwX7EgwhYpmXhJlkVKXeBL+5a5qnJGIduggBFMsnMTTlOeBwUHjxfLKsVeMQLjt6fhZGi/QNHL
	Y4YbJD0LVFbKB+JXkPtRUH2V5R63qf+K4ItYpgzq8RKTmHhPNdP4E0eglru2imveXjsWtmeR6QbmW
	mzIPuoq/1bMA65TbrT4HHI5anqebTxJlnxTCrq9JF0VkzEIb4bx5WnnVtz2/sFUQU5fQJ8PT0K8CL
	HCil32aHyNKxeCHJBv5IAyMcyYLTO4GToaSS8158ua8qfwk3M/QLYS68y9VrhgB9c4cIM4N5lFb20
	mqsSeASlOhsnmoQ2XVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEza3-0001x5-JP; Mon, 30 Sep 2019 17:35:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEzZt-0001wS-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 17:35:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id z19so40605678ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 10:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i3dwIE3HGnY2ji6BL2lgrdHCeKt8hwvNYITijQeMpag=;
 b=izfFFobeeAuaCN1MYV2cqTTC9SJ2B7X/u+g6CPl+hSPnOUnRbP1/BCohkPY00SKjOS
 ngbgS5eggV73d5N3fvNsmyx4AdZ9BelpEyLZgIOQWjYZ0H/t1h9hwcopTh8luMLUlkAD
 UvFLMMtPQWZq9ybp6G3XRQa3ba3kFxGlWt+PhVFEisFiy/ivTvQCpq4WDb2zRJWntAjY
 RnpfLShbUA0uQ0c6YpBTgnszBbNpKq4tSWd29vid/pr0QWpkPNtc9dlZZOHIWHtbr1I4
 64grZ5gAZJhw0mPO812L2fmFF+Kgqu62rcwu8tU01ioPJdvJ0r7FYafvOLbDi1a734kX
 h+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i3dwIE3HGnY2ji6BL2lgrdHCeKt8hwvNYITijQeMpag=;
 b=VsZ7dX/kdfl1SRIab7Gc38L84CRzJ71odqtQ0eoF+JLJh9Uy0mVmUGxC0Lqa5MXKvm
 MVN9P0F2QoXchdLQRjrXGkLt+bXAp0E2PQWFdKxXhCa6KsrheuWS+3tuEXotOikf2oat
 e8VcstNH4Ey0j8HwY679dOHCwSruSASJmbgp9dQ8Hh/op69zPlFwmVFX6rgKsdBZ9Yz4
 WaiYwfLUt7YBf6ZZqwpqoAFuhO+ykgxUTYOxk7aTC/Wm08CJbNEKZulkZM9XtgU2NWEW
 stqCHy9/ScNGadbh6gxQkQDcRa/tsh6lb19iMnpyMG+ny/RkATaKlUrGCMTExiy+3wTt
 wf3Q==
X-Gm-Message-State: APjAAAUHga5wH6LM8JlgZTTRvlzmrgrPB9pckpFVBHBn2jccWwzx0Xk/
 fWXZ0yuB9LxAR7lFUSl46wM6xbDxNG2XrZKaK+c/Yw==
X-Google-Smtp-Source: APXvYqyXj8WDjHDG8Ly151dv7OzUri8sYlz4HJQ8uFbvR+QF/bAefpHZooDpQz+OMMR2j4tK+jKhsia3WuUY762LNpQ=
X-Received: by 2002:a92:4799:: with SMTP id e25mr22126652ilk.72.1569864912988; 
 Mon, 30 Sep 2019 10:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190911183632.4317-1-krzk@kernel.org>
 <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
 <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
 <20190929175134.fsieffurfdiqhpj2@localhost> <20190930080217.GA23709@pi3>
In-Reply-To: <20190930080217.GA23709@pi3>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 30 Sep 2019 10:35:01 -0700
Message-ID: <CAOesGMi2w9vci+kU=WFHJJBqgz9BM5RJBzqwwrR7k=275w4Tyg@mail.gmail.com>
Subject: Re: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_103517_961416_38FFD49E 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 1:02 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sun, Sep 29, 2019 at 10:51:34AM -0700, Olof Johansson wrote:
> > Hi,
> >
> > On Thu, Sep 12, 2019 at 08:32:47AM +0200, Krzysztof Kozlowski wrote:
> > > On Wed, 11 Sep 2019 at 23:07, Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > Unfortunately the patches were applied right after closing the linux-next.
> > > >
> > > > Hi Krzysztof,
> > > >
> > > > I took a look at these and am not convinced this is right:
> > > >
> > > > > 1. Fix boot of Exynos7 due to wrong address/size of memory node,
> > > >
> > > > The current state is clearly broken and a fix is needed, but
> > > > I'm not sure this is the right fix. Why do you have 32-bit physical
> > > > addressing on a 64-bit chip? I looked at commit ef72171b3621
> > > > that introduced it, and it seems it would be better to just
> > > > revert back to 64-bit addresses.
> > >
> > > We discussed with Marek Szyprowski that either we can go back to
> > > 64-bit addressing or stick to 32. There are not known boards with more
> > > than 4 GB of RAM so from this point of view the choice was irrelevant.
> > > At the end of discussion I mentioned to stick with other arm64 boards
> > > (although not all), so revert to have 64 bit address... but Marek
> > > chosen differently. Since you ask, let's go back with revert.
> > >
> > > >
> > > > > 2. Move GPU under /soc node,
> > > >
> > > > No problem
> > > >
> > > > > 3. Minor cleanup of #address-cells.
> > > >
> > > > IIRC, an interrupt-controller is required to have a #address-cells
> > > > property, even if that is normally zero. I don't remember the
> > > > details, but the gic binding lists it as mandatory, and I think
> > > > the PCI interrupt-map relies on it. I would just drop this patch.
> > >
> > > Indeed, binding requires both address and size cells. I'll drop it.
> >
> > Looking through the history of pending material, I didn't see a new pull for
> > this material. Just checking in to see if there's something we missed?
>
> No, it's me who forgot to resend. I was sure that I rebased the branch
> and created new pull request. However it seems I did not. Let's keep it
> for next merge window... v5.4-rc should be any minute, I guess?

Yeah, we're too late for this merge window but feel free to send it
for next release.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
