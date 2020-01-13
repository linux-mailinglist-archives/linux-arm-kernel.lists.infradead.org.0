Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A008D13898F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgwubVQnhJt2ifK17fngcWjQlE7F+L0hKNC5YSBseFw=; b=RGJf/rUxwdeRJi
	dAZS7brN1Q5hC8WMNlLi7HyeR99d1eU5UCQb4JhW23OWbYTQ3K/pCu0bAI8mGZwBYjaDNmVRrmW/k
	afkDVoED1w0onnNhUj8CB9N5Jgv9Jc8WzJ7n73t7Gv//Xcg+fBsVZ93w+gCinIyipxR0yjGaaEzWB
	U0AGrLmykJkY/jyu+JBbYj60FUOlytWzPfkHeuwE3dWPCY2QFID4jGyasLGHeJ2cvRUiunGq7YVw6
	NYv6I9NMgais/Y1JSZsyLagTDU4c/UxHtY00PunI18zBtochAS1CHveaqBgclGwevKLZkrCrdcGq1
	6X21yBc/YEHikzTXB46g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqpzk-0006dd-F8; Mon, 13 Jan 2020 03:02:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqpzb-0006d7-0O
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:02:16 +0000
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA753222D9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 03:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578884533;
 bh=vmEVj5enJCZiojedgEqtFxP7H2B8Bi+4VOBtZfd1p/M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ps91C18lv3+v0+/zKc5VfLfDibRmcFyVna3owj3hk3gN3B7p+F22QBz467uG5sM9V
 gir+2ErgAjLlorCnA+13+QiHeuYOx2NhU7oOQnxY8Nbi1/rntdGKgBUNW8y5WiX39B
 Rw6a4ExlqHGh8noaj2onu5Uaen35DVXbH3MDoOtY=
Received: by mail-wm1-f49.google.com with SMTP id q9so8006584wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 19:02:12 -0800 (PST)
X-Gm-Message-State: APjAAAUWtmhi1HG4HmSo2EARw4Lb1RRsiuyODyJqwVwJxqS1oLxJsM+K
 HWchHgQ/Kc1PLxDHg8JjN1bQclH/mBz2yAq1k34=
X-Google-Smtp-Source: APXvYqwgYsxp5pmwJM2Sd8OXbtek9Nis5X7x1WiYIS3/rc/VZ4glyHglZt0PkZe0s+st7OW2K1xF/BsyTwJtVdK4kps=
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr17472477wmg.110.1578884531334; 
 Sun, 12 Jan 2020 19:02:11 -0800 (PST)
MIME-Version: 1.0
References: <202001120045.BaGKHeel%lkp@intel.com>
 <CA+E=qVdq-zNJDOV_4PXEA_MfvkbXjPbaTVe1S66Zc0FVAdgpMw@mail.gmail.com>
 <CAOesGMh4TaDNCa7-DqGgotjReSFosx1RNDerient7_UA7KWLFQ@mail.gmail.com>
In-Reply-To: <CAOesGMh4TaDNCa7-DqGgotjReSFosx1RNDerient7_UA7KWLFQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 13 Jan 2020 11:02:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v64fj2Cod3RganaOBzufn15=C5E1muzbRgZ=AzLwg9qfJw@mail.gmail.com>
Message-ID: <CAGb2v64fj2Cod3RganaOBzufn15=C5E1muzbRgZ=AzLwg9qfJw@mail.gmail.com>
Subject: Re: [arm-soc:sunxi/dt 49/52] Error:
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:54.19-20 syntax error
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_190215_093540_918A1618 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 ARM-SoC Maintainers <arm@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 3:51 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Sun, Jan 12, 2020 at 11:06 AM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > On Sat, Jan 11, 2020 at 8:57 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi,
> >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git sunxi/dt
> > > head:   6163ce8467052cdfe42581036bc71fe4aac09eab
> > > commit: 7486ee80f62e610053a33e4f94fb04172c09a41a [49/52] arm64: dts: allwinner: a64: add CPU clock to CPU0-3 nodes
> >
> > I can't find sunxi/dt branch in arm-soc tree nor this commit, 'git
> > show 7486ee80f62e610053a33e4f94fb04172c09a41a' complains "fatal: bad
> > object 7486ee80f62e610053a33e4f94fb04172c09a41a"
>
> Yeah, I dropped it based on these failures:
>
> https://lore.kernel.org/linux-arm-kernel/20200111225938.hp6xxr4k7jp7yvv2@localhost/
>
> > > config: arm64-defconfig (attached as .config)
> > > compiler: aarch64-linux-gcc (GCC) 7.5.0
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         git checkout 7486ee80f62e610053a33e4f94fb04172c09a41a
> > >         # save the attached .config to linux build tree
> > >         GCC_VERSION=7.5.0 make.cross ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> Error: arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:54.19-20 syntax error
> >
> > Line 54 references "CLK_CPUX" in sunxi tree sunxi/for-next branch, so
> > I assume that someone merged sunxi/dt-for-5.6, but not
> > sunxi/clk-for-5.6 which exports this clock.
>
> Yeah, Maxime missed the dependency when he sent in the merge request.
> Bindings headers cause pain like this, unfortunately. We often end up
> needing a stable branch for the binding/header change and bring that
> in as a base to both clock and DT branches.

(facepalm) My bad. I missed the fact that this macro was added in this
cycle.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
