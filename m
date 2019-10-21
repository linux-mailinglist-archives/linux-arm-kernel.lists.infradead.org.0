Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC152DEA6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HoTJSbvhlOW5wN7qIR4k89+GxLQ3EKjkUp2QaNzO3nA=; b=rl+bWN+tWVxLOr
	lF4OyL0zMZn934oeVQ2TuR+fl2+cCpHFTr0acUrCyWyX4UfyPbvuHfHfRE5/HM19nfsayoMV8HOhM
	aUrqdi2kRbM15RwjiFYeEq2NUL641q3DJ/kNnKSivWP70lxE4xmPImXwB8KcC73o/Jt9rtUf6i0kZ
	GmLQ4mR9MLDKVMsoDEXGZueVSLG6Oz4wV0hrcOl9Hwa4X2ZVpHFlx80sVAImLurZND2udBPcG/7Ze
	jBMUu2GqgshFSHQBmYOLTze+0CxuNNQ1np+960j74lHFi/y268DgEoIjJ4+MI/s0bOh1bsHYAQlWU
	nNWpm9MDP5BSLtuYnL5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVYp-0006US-AQ; Mon, 21 Oct 2019 11:09:15 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVYd-0006Tj-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:09:04 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 04:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="398626868"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 21 Oct 2019 04:08:58 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1iMVYX-0003ab-7l; Mon, 21 Oct 2019 14:08:57 +0300
Date: Mon, 21 Oct 2019 14:08:57 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
Message-ID: <20191021110857.GR32742@smile.fi.intel.com>
References: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
 <20191017064426.30814-1-daniel.vetter@ffwll.ch>
 <20191017070638.GB32742@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017070638.GB32742@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_040903_453913_971C4A00 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Mark Brown <broonie@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 10:06:38AM +0300, Andy Shevchenko wrote:
> On Thu, Oct 17, 2019 at 08:44:26AM +0200, Daniel Vetter wrote:
> > In DMA mode we have a maximum transfer size, past that the driver
> > falls back to PIO (see the check at the top of pxa2xx_spi_transfer_one).
> > Falling back to PIO for big transfers defeats the point of a dma engine,
> > hence set the max transfer size to inform spi clients that they need
> > to do something smarter.
> > =

> > This was uncovered by the drm_mipi_dbi spi panel code, which does
> > large spi transfers, but stopped splitting them after:
> > =

> > commit e143364b4c1774f68e923a5a0bb0fca28ac25888
> > Author: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Date:   Fri Jul 19 17:59:10 2019 +0200
> > =

> >     drm/tinydrm: Remove tinydrm_spi_max_transfer_size()
> > =

> > After this commit the code relied on the spi core to split transfers
> > into max dma-able blocks, which also papered over the PIO fallback issu=
e.
> > =

> > Fix this by setting the overall max transfer size to the DMA limit,
> > but only when the controller runs in DMA mode.
> > =

> =

> Thank you, Daniel!

Mark, can be this applied?

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
