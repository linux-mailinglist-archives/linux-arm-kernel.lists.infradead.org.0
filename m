Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5506A1F7809
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tG/S8PfOFbLxrSNa+8HumqWGr798r+X+9tk5Cc4bwTU=; b=SMVieU1lGhgAbf
	IJmmJgOTJyR7/HMqmmkIdZbE5EcuBb08s8zQVx641epGiIJrsVF2bITak6gCP8a0VIAaL3nRXGock
	dZjfCQWqvNQiYyzijK0EG8YlfCwh+pa6fTCmEZt869afe6Jle5U7czPDL66V7sgiNzU4wvqT85X2G
	N/NROmzRbAbBsP3YpInwJgvWOcgr3Qqxmtq96cp4/e9tIzKqNhuERMIXjV3vDNTonoW4BRAQN34Z8
	3YD44RdzlBlYQGbuF4Qoulr47N5cRLl1sjLfb1jGL7jpyEvsVhSHZdJOkHAFWovpevXfm8UnfILJx
	Fu4N8ryN8VSLINo5OO5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjizX-0000ng-Oq; Fri, 12 Jun 2020 12:41:03 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjizP-0000nK-Kv
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:40:57 +0000
IronPort-SDR: rHi+7zrIcKnC0/2d/ZYDAfvP2JPediI3C5nfqMX6ZB/E8v4yZPnxN7pz0eWlEfjgCcxxwd7bEh
 9qLbG00xBgHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 05:40:54 -0700
IronPort-SDR: dbq+MThCaK6fC8yMtZnmpkCURF5F8y8eSyAuDAu5LZ9fldwt84yuw3cw3bnvC4UFwmnEYbK2Q5
 O4CqYIcQyWSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="289862274"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by orsmga002.jf.intel.com with ESMTP; 12 Jun 2020 05:40:51 -0700
Date: Fri, 12 Jun 2020 20:40:17 +0800
From: Philip Li <philip.li@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [kbuild-all] Re: [PATCH 4/4] drm: pl111: Update documentation
Message-ID: <20200612124017.GD7636@intel.com>
References: <20200609200446.153209-4-linus.walleij@linaro.org>
 <202006101538.mV5c2loX%lkp@intel.com>
 <CACRpkda+GJpHQjvfjcFfhher+Vfr66DRgf6my2Fx7qg9=-5ATQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkda+GJpHQjvfjcFfhher+Vfr66DRgf6my2Fx7qg9=-5ATQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_054055_693976_7E109A31 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, Maxime Ripard <mripard@kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
Thanks for feedback, this is supposed to check make htmldocs. We will double
check this to fix issue. Sorry for noise.

> 
> Yours,
> Linus Walleij
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
