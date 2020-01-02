Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBFA12E70B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 15:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wB1+QFXUHyFlMeJBQHHHXwzneXNh2k0EN9bputm/flE=; b=j/ywgDZmps9Qhi
	YmszDxWIs5cR7m5DlJ1HtyMQtMtGTMxxEqu72WKeP1UmlfTtnxSrHx7rhvjyYEdAQfuMDYxTqGZwk
	gYRayI87w7wEVduiuZ7kRfjG794l+AVE6JuAKxyxVwH3MxzDoBqHS3XQUiPDPmVoQLdX4PKxbYd8c
	kBf+V/EODxu64/LlKd+9P8Mffb9+dJzt3lhZ6iErjbMmKd5D7f5nv9HUPiheCbgrUyOP7x2E6IQdz
	qYigFP/ja+HhTn9H0OAcuMRpIkTVIXUnIHP5eGENWyK5quNxgOUmYUUjymNaYCLgXSWMHo8ZZ0ftU
	x2m4yJ1gb7zGjuGm9fwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in17E-00027j-P5; Thu, 02 Jan 2020 14:06:20 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in177-00026r-KJ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 14:06:15 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id B853A1C25FD; Thu,  2 Jan 2020 15:06:09 +0100 (CET)
Date: Thu, 2 Jan 2020 15:06:09 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: Droid 4 regression in 5.5-rc1, armsoc-soc tree
Message-ID: <20200102140609.7vsfwcjyvbbrmcjx@ucw.cz>
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com> <20200102110025.GA29035@amd>
 <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_060613_966367_429A277F 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marcel Partap <mpartap@gmx.net>, Tony Lindgren <tony@atomide.com>,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Olof Johansson <olof@lixom.net>,
 linux-omap <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> > > > > 5.4-based kernel works ok on my droid 4.
> > > > >
> > > > > 5.5-rc3 based kernel has problems; it reboots when I try to kexec it.
> > > > >
> > > > > Vanilla 5.5-rc3 reboots, too.
> > > > >
> > > > > If you have any ideas, let me know.
> > > >
> > > > I managed to get partial serial dump. This should be 5.5-rc3: And then
> > > > a bit better serial dump (below). But it is silent for few seconds,
> > > > and then it restarts...
> > >
> > > If spi or regulators have problems, nothing will really work..
> >
> > arm-soc merge seems to be responsible:
> >
> > bad 38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6 Merge tag 'armsoc-soc' of
> > good d9e48dc2a71a836f17d1febbedb31470f957edb4 Merge tag
> >

I ended up with this:

pavel@amd:/data/l/k$ git bisect log
# bad: [738d2902773e30939a982c8df7a7f94293659810] Merge
# git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
# good: [219d54332a09e8d8741c1e1982f5eae56099de85] Linux 5.4
git bisect start '738d2902773e' '219d54332a09'
# bad: [46cf053efec6a3a5f343fead837777efe8252a46] Linux 5.5-rc3
git bisect bad 46cf053efec6a3a5f343fead837777efe8252a46
# bad: [e42617b825f8073569da76dc4510bfa019b1c35a] Linux 5.5-rc1
git bisect bad e42617b825f8073569da76dc4510bfa019b1c35a
# good: [9a3d7fd275be4559277667228902824165153c80] Merge tag
# 'driver-core-5.5-rc1' of
# git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core
git bisect good 9a3d7fd275be4559277667228902824165153c80
# good: [0b4295b5e2b9b42f3f3096496fe4775b656c9ba6] io_uring: fix a typo
# in a comment
git bisect good 0b4295b5e2b9b42f3f3096496fe4775b656c9ba6
# good: [056df578c2dcac1e624254567f5df5ddaa223234] Merge tag
# 'arc-5.5-rc1' of
# git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc
git bisect good 056df578c2dcac1e624254567f5df5ddaa223234
# bad: [25cfb0c7de3f14e283a43dcd6de903657f9f98c7] Merge branch
# 'for-next' of
# git://git.kernel.org/pub/scm/linux/kernel/git/gerg/m68knommu
git bisect bad 25cfb0c7de3f14e283a43dcd6de903657f9f98c7
# bad: [38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6] Merge tag 'armsoc-soc'
# of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect bad 38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6
# good: [d9e48dc2a71a836f17d1febbedb31470f957edb4] Merge tag
# 'pwm/for-5.5-rc1' of
# git://git.kernel.org/pub/scm/linux/kernel/git/thierry.reding/linux-pwm
git bisect good d9e48dc2a71a836f17d1febbedb31470f957edb4
# good: [cd4744645959ebfc97e4b0c676006d2d76d34f25] Merge tag
# 'omap-for-v5.5/soc-signed' of
# git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into
# arm/soc
git bisect good cd4744645959ebfc97e4b0c676006d2d76d34f25
# good: [3166c3dd4c87d118cbf66f827f4b41765a0b1ba6] Merge tag
# 'samsung-soc-5.5' of
# https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux into
# arm/soc
git bisect good 3166c3dd4c87d118cbf66f827f4b41765a0b1ba6
# good: [0f3dac611060058524c68dadcc0ddaf923c84d1c] Merge tag
# 'imx-soc-5.5' of
# git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into
# arm/soc
git bisect good 0f3dac611060058524c68dadcc0ddaf923c84d1c
# good: [7b6560b4bc623dd1344de32404fd5a901cd1b28e] OMAP2: fixup doc
# comments in omap_device
git bisect good 7b6560b4bc623dd1344de32404fd5a901cd1b28e
# good: [82b711c251c628bf48f4043e42dab8488d624247] Merge tag
# 'omap-for-v5.5/soc-late-signed' of
# git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into
# arm/soc
git bisect good 82b711c251c628bf48f4043e42dab8488d624247
# good: [ab818f0999dc73af3f966194d087e9f6650f939f] Merge tag
# 'omap-for-v5.5/maintainers-signed' of
# git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into
# arm/soc
git bisect good ab818f0999dc73af3f966194d087e9f6650f939f
# first bad commit: [38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6] Merge tag
# 'armsoc-soc' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc

...and am not sure how to interpret the result, or what to do next :(.

								Pavel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
