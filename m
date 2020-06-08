Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABA1F1ADE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2L0o30XdSDdr294P3N+IxySy3hu84oiVZMT4dNICxjI=; b=jLMbLQKVTiOZIz
	Madq1RBjmmjCsPDYC51DJybN1qMMNXTGjo2uWbbbJeJ4ApczUU2gqJ4MvPoUOMKMup6bxGS1rtt13
	Zls3MNtJiNOK4dzKLkKTUqYzDNHFdDPjjhDll4eE/4iw6SvXjjZh9lN6ah3kZN1XOYrxgPxdAB5cd
	Wj9+RsdoKIn1AUFwNJ3DO36VjPvthUsKoOsAgj8p9cKXPDBagFfMbKQxwnq9+vnM3lgmNp4jv9T3m
	NX9m2fXLfxgFEOf3gr6eORW3jCRKTKq/1NWxXcHBuweQvyEtRGg/fMahMUi0guX5z1Hkb3tk61HAb
	ohVLWR3TwKdAwWQo1WkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIep-0007ZV-Du; Mon, 08 Jun 2020 14:21:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIei-0007Z0-2U
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:21:41 +0000
IronPort-SDR: 0SlpQazigGqyVkMOwbRlHrBM8cetZaWpSnMD5sj1wOQgTTjnwDZxQq+kpESdLCfhdADzN3bAeM
 +wxA+l/oMwhA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 07:21:36 -0700
IronPort-SDR: An2n2uLm1+vEVTo6++u/T0MtO7wh5mYIxtvGU8viOLBy8ztWPL+oXnPNH06jk73F07F7SbY10b
 RFRftU86oNpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="472704374"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jun 2020 07:21:34 -0700
Date: Mon, 8 Jun 2020 22:20:53 +0800
From: Philip Li <philip.li@intel.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [kbuild-all] Re: [PATCH 4/5] arm64: vdso: Add getcpu()
 implementation
Message-ID: <20200608142053.GA11708@intel.com>
References: <20200605131131.16491-5-broonie@kernel.org>
 <202006060044.bdshhJta%lkp@intel.com>
 <20200605163508.GJ5413@sirena.org.uk>
 <e1b2f86e-8eef-3266-8c87-93c6660576e8@intel.com>
 <20200608110901.GA4593@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608110901.GA4593@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_072140_127972_D1782413 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
 Catalin Marinas <catalin.marinas@arm.com>, Li Zhijian <zhijianx.li@intel.com>,
 Andrei Vagin <avagin@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 12:09:01PM +0100, Mark Brown wrote:
> On Mon, Jun 08, 2020 at 03:46:57PM +0800, Li Zhijian wrote:
> > On 6/6/20 12:35 AM, Mark Brown wrote:
> =

> > > > arch/arm64/kernel/vdso/vgettimeofday.c:9:5: warning: no previous pr=
ototype for '__kernel_clock_gettime' [-Wmissing-prototypes]
> > > > 9 | int __kernel_clock_gettime(clockid_t clock,
> > > > |     ^~~~~~~~~~~~~~~~~~~~~~
> =

> > > I'm not seeing this here and what we're doing is in line with the
> > > existing idiom as can be seen from the __kernel_clock_gettime() code
> > > flagging the same thing.  Possibly an old/outdated toolchain?
> =

> > Actually, the origin mail contained 4 warnings,=A0 and only one is *new=
*, as
> > the mail mentioned that
> =

> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> =

> > 0Day/LKP had marked the *new* ones prefixed by '>>'
> =

> My point here is that all the warnings, both old and new, look spurious
> and the new warning comes from following the pattern that generates the
> existing warnings.  I'm not seeing any of those warnings locally or in
> other build services like KernelCI.
Thanks Mark for the input. Here the 0-day kernel bot uses W=3D1 to build wh=
ich
is mentioned as part of reproduce step.

> reproduce (this is a W=3D1 build):

And we just add FAQ at https://github.com/intel/lkp-tests/wiki/LKP-FAQ#how-=
is-one-meant-to-act-on-w1-reports-like--wmissing-prototypes
to explain the the missing-prototypes warning, hope this can provide
extra information.

Thanks

> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
