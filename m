Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD631F771B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrAzFnzs2N6PQ7/XIoHUzWyYyUSDO4o7F2myTXAOceg=; b=ud+FgckwTwJQt6
	3DPf42yrBfrVgHah5nuLXX2jDUnw955pNFFRsYOR/pKXjLDVX+l3cub57EU3Zc5x64f7Shsi73+BW
	+zC8Dv5w4XqipCBkWpMifFCjjhOOvIRvAcalCxYzTvMegm1iZ3ZSBuc6EOYkT41ELkqrjILcXeYrr
	wOMZ1QETBr/atbB6LsfDcXCUVIm2bvJXx422g4WbZC+iWOdoMegGDy5KvyB2OZlSaTFLjPIyWPAAS
	UH596arGGDFD0pNKn7QPFBYx2B0uLBz5cQv4e3/gAsOmAAyaG+rGaav2lewgGjBtzf1KW6rAq14zr
	1jziOwPuk2Ui8t5BUN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhdo-0004O6-7A; Fri, 12 Jun 2020 11:14:32 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhde-0004N7-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 11:14:24 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id A265280615;
 Fri, 12 Jun 2020 13:14:09 +0200 (CEST)
Date: Fri, 12 Jun 2020 13:14:07 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 4/4] drm: pl111: Update documentation
Message-ID: <20200612111407.GA175670@ravnborg.org>
References: <20200609200446.153209-4-linus.walleij@linaro.org>
 <202006101538.mV5c2loX%lkp@intel.com>
 <CACRpkda+GJpHQjvfjcFfhher+Vfr66DRgf6my2Fx7qg9=-5ATQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkda+GJpHQjvfjcFfhher+Vfr66DRgf6my2Fx7qg9=-5ATQ@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=G88y7es5 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8 a=uPZiAMpXAAAA:8 a=XIb3VsYlAAAA:20
 a=VwQbUJbxAAAA:8 a=6dwM7mUnwVOcjeBvltYA:9 a=nM94bRtmVEs3FB_u:21
 a=QDOh3YgTua_wtUAx:21 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_041422_599209_129F6E8B 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Russell King <linux@armlinux.org.uk>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus.
On Fri, Jun 12, 2020 at 01:04:02PM +0200, Linus Walleij wrote:
> On Wed, Jun 10, 2020 at 9:38 AM kernel test robot <lkp@intel.com> wrote:
> 
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on drm-exynos/exynos-drm-next]
> > [also build test WARNING on drm-intel/for-linux-next tegra-drm/drm/tegra/for-next linus/master v5.7 next-20200609]
> > [cannot apply to drm-tip/drm-tip drm/drm-next]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Linus-Walleij/drm-pl111-Credit-where-credit-is-due/20200610-041025
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos.git exynos-drm-next
> > reproduce: make htmldocs
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> What on earth was that. The robot reports on a patch only adding a few lines
> of comments as breaking the whole universe, and none of these systems
> even use the PL111.
The patch changes this:
/**
- * DOC: ARM PrimeCell PL111 CLCD Driver
+ * DOC: ARM PrimeCell PL110 and PL111 CLCD Driver

The "DOC: ARM PrimeCell PL111 CLCD Driver" is used by kernel-doc
to match the DOC section.
So this patch caused a new warning when one odes "make htmldocs".

See Documentation/gpu/pl111.rst

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
