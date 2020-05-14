Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1721D2CE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 12:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOszAeZbWZ4FHxskzFHSrP16EnGfBzTmcSAAqNkiS48=; b=B30PQPXYdXSyie
	mOBU247wUP1Y2n1CqWpBevxBnKMkFFEGK1RbUNJDP7PFMk0e4ZDQ5iLnBxtGPsn+9rZmUDjwJr94y
	KoGd3N92/ZAorVRfvVlsIHpcvWNYFjM6/BRT3yb2D4BedW8WIeW4oDEf6QZNy0Lx/DaVs9VeuC6aS
	cx3hxgCdtwOdD6pn0tLgy+hXRrpm7dDw9XjOSyuZxbrO+TmC2txW9OE2j1gmNeEQzL7tNRVnyD5po
	Gthymyrqs2PBrB54fba0HC9rUr5reKsoE5fFZIR3BppKk9xR5tc5WSMrmcixuBKcIVbt6CcgGaonW
	Aczmlb3UIFNTrQrZ5t5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB8x-0004GH-CM; Thu, 14 May 2020 10:31:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB8p-0004G3-ME; Thu, 14 May 2020 10:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vhtzypa8Bx13xatsh1CUSoTcvV4kyL0IlKzEm2ZdrM0=; b=UQTkLxLrAn5v3NF2X27Cum0Wpd
 axsYuIarPaZlpnLGO8WYxzK2/r+nrtp+IfLaZHxzUB+t5NWyOHg/WN/HMED2dg2XWjnJ7XdcbeeSD
 n/U0Z/GEabxrGOTNiGq98DLBZUwCb+TWTa5IojGhC2Vl8+WqBjaPAjxOSYuXJfeF7/ew5C2jExl7m
 +l0Nv4w+t/F+6uFTRAg4YYsXhTbSVo0mKkcpFNdGknsFt+oH8G0TNfaqVU64h/wWjdfWbw59ratjY
 z/2woS10lgbM8R7TkeurXorCK4Nu7Aj6bMru4zJLxYKbzSb6VogAtcyBO2EwbJxbJONdn/Z8ej4Ol
 LQqJYpUQ==;
Received: from mga03.intel.com ([134.134.136.65])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB8f-0002o4-7m; Thu, 14 May 2020 10:31:02 +0000
IronPort-SDR: IdAAql4/iiUWMpk7hV86vrHRGYjJtuFkWLoyyupNA9hfSj7ySEjnPn2PaF7GTha9QOuYZbGZOU
 Amcy94uY+9SQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 03:30:41 -0700
IronPort-SDR: r8Nk4+fFZDhHQX1Zr5aadLZd0qYhhg8PahPl/N9JBp9dR1cRkCMqrCW/Bju5Hl2/p1DmAMRMdf
 RXckwUinazsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="464281101"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2020 03:30:39 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jZB8U-006bX7-7k; Thu, 14 May 2020 13:30:42 +0300
Date: Thu, 14 May 2020 13:30:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v7 2/3] drivers: input: keyboard: Add mtk keypad driver
Message-ID: <20200514103042.GA185537@smile.fi.intel.com>
References: <20200514061747.25466-1-fengping.yu@mediatek.com>
 <20200514061747.25466-3-fengping.yu@mediatek.com>
 <20200514102701.GZ185537@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514102701.GZ185537@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_113053_730082_2CB72DD4 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -6.9 (------)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-6.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 01:27:01PM +0300, Andy Shevchenko wrote:
> On Thu, May 14, 2020 at 02:17:48PM +0800, Fengping Yu wrote:
> > From: "fengping.yu" <fengping.yu@mediatek.com>
> > 
> > This adds matrix keypad support for Mediatek SoCs.
> 
> ...
> 
> > +config KEYBOARD_MTK_KPD
> > +	tristate "MediaTek Keypad Support"
> 
> > +	depends on OF && HAVE_CLK
> 
> What makes it OF dependent?

Actually you missed regmap dependencies or selection. I dunno which one should
be used (IIRC selection).

> > +	help
> > +	  Say Y here if you want to use the keypad on MediaTek SoCs.
> > +	  If unsure, say N.
> > +	  To compile this driver as a module, choose M here: the
> > +	  module will be called mtk-kpd.


-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
