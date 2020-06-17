Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50CB1FC2CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 02:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3niWOcfTxZuI7A9tDaVFiReqg5oLT05VXfr8cddWosc=; b=X1/AoTGVk3znHD
	Ibt86t5zOIpNzlO+RRNjCrDXKWrmy1Z+ft1v+kuSZDg+jrEE6VXucdZORln2FfdudsfMJhuZVD4Jx
	oTOzZ0yZqSJIBqOF60Fb+3uDNUBEwwrHrRSFtgt/hbEZPvnVkbrllbHZdhezlTS1tnQiLl+I5gNIc
	i+u+kpngE1yMiS5JzaGiWRSwkIQmmvcBR65vxdP52E7OhBZ4BpTL/reav3vam5nxcEiKuPYwXZBYw
	wYNoeJWJMxi4kaca/OcimXWu5ZESiMxvyadMZUYocSS1rDusduYrzXbDYjW+5qMrUzB0qc25OF70g
	LPNZvQLIVRIx62EZTcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlM27-00036N-FM; Wed, 17 Jun 2020 00:34:27 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlM1f-0002wZ-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 00:34:02 +0000
IronPort-SDR: JfdR2LCQrj93ZA65A0ydWsAR6CM2EcqPDiEiRRZ9mlzLUn/Ym+WqFRJOy5UvbVbkMJ8eDiTGxp
 wMV27jxTRetg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 17:33:57 -0700
IronPort-SDR: CyQEwOoMGmIi/DSVVpGJbsPvCATzFJnJyAaN0i5FYyJztzpPonwe+qfFaA+meue/A3uxSi61Dj
 E6VlooDkMeWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="273339380"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 17:33:53 -0700
Date: Wed, 17 Jun 2020 08:33:28 +0800
From: Philip Li <philip.li@intel.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
Message-ID: <20200617003328.GB26983@intel.com>
References: <20200609200446.153209-4-linus.walleij@linaro.org>
 <202006101538.mV5c2loX%lkp@intel.com>
 <CACvgo536CxAynhx3zcamS2-e=a7j++X7X66N4zG_L_HrjLk77A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo536CxAynhx3zcamS2-e=a7j++X7X66N4zG_L_HrjLk77A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_173359_307673_D608089F 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 Eric Anholt <eric@anholt.net>, ML dri-devel <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 05:12:51PM +0100, Emil Velikov wrote:
> Hi all,
> 
> Inspired by Linus and my personal confusion with the report, allow me
> to put some suggestions. Followed by an illustrative example.
thanks for all the suggestions, we will take them into consideration
to gradually improve the report.

> 
> On Wed, 10 Jun 2020 at 08:38, kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Linus,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on drm-exynos/exynos-drm-next]
> > [also build test WARNING on drm-intel/for-linux-next tegra-drm/drm/tegra/for-next linus/master v5.7 next-20200609]
> One thing which was always inclear me - is the warning identical in
> all the branches listed.
yes, they contain same warning, we will clarify this.

> 
> > [cannot apply to drm-tip/drm-tip drm/drm-next]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> Reference to the manual tends to be better than an old SO thread.
got it, we will refer to your later example to enhance here.

> 
> > url:    https://github.com/0day-ci/linux/commits/Linus-Walleij/drm-pl111-Credit-where-credit-is-due/20200610-041025
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git exynos-drm-next
> > reproduce: make htmldocs
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> Please do not list old warnings/errors. They only distract and dilute
> what/where the problem is.
early on, there's a request to view the old warning of modpost related
issue in case it is a false positive due to modpost output format changing.

we will think of this to limit to modpost only.

> 
> 
> > vim +1 drivers/gpu/drm/pl111/pl111_drv.c
> >
> > e559355a9da60a Thomas Gleixner 2019-06-01  @1  // SPDX-License-Identifier: GPL-2.0-only
> > bed41005e6174d Tom Cooksey     2017-04-12   2  /*
> > bed41005e6174d Tom Cooksey     2017-04-12   3   * (C) COPYRIGHT 2012-2013 ARM Limited. All rights reserved.
> > bed41005e6174d Tom Cooksey     2017-04-12   4   *
> > bed41005e6174d Tom Cooksey     2017-04-12   5   * Parts of this file were based on sources as follows:
> > bed41005e6174d Tom Cooksey     2017-04-12   6   *
> > bed41005e6174d Tom Cooksey     2017-04-12   7   * Copyright (c) 2006-2008 Intel Corporation
> > bed41005e6174d Tom Cooksey     2017-04-12   8   * Copyright (c) 2007 Dave Airlie <airlied@linux.ie>
> > bed41005e6174d Tom Cooksey     2017-04-12   9   * Copyright (C) 2011 Texas Instruments
> > bed41005e6174d Tom Cooksey     2017-04-12  10   */
> > bed41005e6174d Tom Cooksey     2017-04-12  11
> >
> > :::::: The code at line 1 was first introduced by commit
> > :::::: e559355a9da60a2388893d9e9da66c79fd604b9a treewide: Replace GPLv2 boilerplate/reference with SPDX - rule 443
> >
> > :::::: TO: Thomas Gleixner <tglx@linutronix.de>
> > :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> All of this seems useful when debugging the kernel test robot itself.
> Which in this case is misleading as hell.
thanks, we will check above 4 lines with ::::: to adjust if needed.

> 
> 
> Here is something which is much shorter, with clearer structure and
> reads much easier.
this is very helpful and can provide a different perspective for how
the report is. We will learn from it to imporve the report.

> 
> ---
> Hi Linus,
> 
> This is an automated message from your friendly test robot.
> We've noticed some issues with your patch although being a robot,
> kindly double-check the results.
> 
> Branches:
> [if the warning/errors are the same group them, otherwise split them
> in separate sections]
> 
> - drm-exynos/exynos-drm-next [1]: WARNING
> - drm-intel/for-linux-next [2]: WARNING
> - .... : WARNING
> drivers/gpu/drm/pl111/pl111_drv.c:1: warning: 'ARM PrimeCell PL111
> CLCD Driver' not found
> - tegra-drm/drm/tegra/for-next [3]: WARNING
> some other warning
> - drm-tip/drm-tip [4] drm/drm-next [5]: cannot apply series
> 
> Note: when submitting patches, please use `--base` as documented in
> https://git-scm.com/docs/git-format-patch.
> 
> 
> To reproduce:
>  - wget https://url/to/build/toolchain // when applicable
>  - wget https://url/to/config // when applicable
>  - make htmldocs // use explicit make command instead of magic shell
> script, as seen in the cross build reports
> 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Thank you
> The LKP team
> 
> [1] URI to the drm-exynos/exynos-drm-next repo
> [2] URI to the drm-intel/for-linux-next repo
> [3] URI to the ...
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
