Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9763412E618
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 13:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hV+gNJYFs9XMmBUS+hqbq09hxoUrgr9V6RmF7zMAex0=; b=sCAI9WjKF9HWVD
	Es21XtXdEO/EFQCj1+ju6487eIUZSnn4Q9g2giWFeNLimNtCxvjDntKpJP+EP86vK5+oZHMvFMUiD
	qTgmNA7BM9js73oAmrJfHbQZvo/YizY/b0OGDknQmiKxDhfwsjh2HVjG4m/4DziuP6O5mbjfZzRbV
	o3GtQZX2F2HlGEwqBm/RBAhWzYK0ZydKtaASBhcMjWg5/NQwgeNqDSaVmtB77VauTBs5UfGcXYeSN
	3YrVzUS2GZKRU0fMrtQ0Ec2k714z9JiwnFmDXuL0hplXDxz5ddP4T5Bk5AAO+3qERjfCgYrddb0tK
	tO5nb9hqO1yzAIJMLFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imzbN-0001Wm-R3; Thu, 02 Jan 2020 12:29:21 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imzbG-0001WC-4B
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 12:29:15 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id A8BD71C25FD; Thu,  2 Jan 2020 13:29:10 +0100 (CET)
Date: Thu, 2 Jan 2020 13:29:10 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: Droid 4 regression in 5.5-rc1, armsoc-soc tree
Message-ID: <20200102122910.zcodrxmkslrpcd2m@ucw.cz>
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com> <20200102110025.GA29035@amd>
 <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_042914_320069_050E63A2 
X-CRM114-Status: GOOD (  12.59  )
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
> Among these, the most likely candidates would be
> 
> 0b491904f053 ARM: OMAP2+: Add missing put_device() call in omapdss_init_of()
> 06bd77f965ae ARM: OMAP2+: make omap44xx_sha0_hwmod and
> omap44xx_l3_main_2__des static
> c145649bf262 ARM: OMAP2+: Configure voltage controller for cpcap to low-speed
> 71065d3fe82d ARM: OMAP2+: Configure voltage controller for retention
> 21a18129edd7 ARM: OMAP2+: Simplify code for clkdm_clock_enable and disable
> 4873843718f9 ARM: OMAP2+: Initialize voltage controller for omap4
> caf8c87d7ff2 ARM: OMAP2+: Allow core oswr for omap4
> 623429d5b901 ARM: OMAP2+: Allow per oswr for omap4
> d44fa156dcb2 ARM: OMAP2+: Configure voltage controller for cpcap
> 32236a84906f ARM: OMAP2+: Update 4430 voltage controller operating points
> ccd369455a23 ARM: OMAP2+: Remove bogus warnings for machines without twl PMIC
> dfc065aa8963 ARM: OMAP2+: Drop bogus wkup domain oswr setting
> 5395b5557acb ARM: OMAP2+: Remove unused wakeup_cpu
> 
> Maybe try reverting these on top of the latest version to narrow it
> down further?

Thanks for your support. I'm continuing the bisect, should have result
soon. (Unless all the "good"s in a row are sign of something strange.)

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


Best regards,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
