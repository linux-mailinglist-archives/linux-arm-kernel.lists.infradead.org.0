Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7351A7772
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY0gTCh7VmgdyRjkHpEli4YdKmK+BnQWk0+Wpn49iRo=; b=pAjmxx61tslOL5
	gsrty6NCWoJ37m4QEibRDDuxIn2udLP3CEF6FyPfu+e5eSwGx+TuIDGZcO1wM5pNCQE2f9Kxle+tj
	SCfKM52QJPVPQ5GdmFgYYRTo2O6lOkuOHsdP9ehNXVWxn/HXZomrC+aIjstq1jlB5/BuX576kOcVH
	KDtvVZmvu2URfTizsh4GNTlDrtlqzVLbUJBUPrqylutgtSjiWdPDxZl0DTXbK1zydtOr9gy3Q7CnC
	qsr9LncRrHq7MfCmEQCP14bnmkrttoPJ4xUUK6TNH+4NfhQv6mc2Gj528814cs8GO93asbzKt3ugf
	Fewf3BCLy6FC/PZEEG8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHyh-0001kW-0m; Tue, 14 Apr 2020 09:35:35 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHyV-0001jz-Gp; Tue, 14 Apr 2020 09:35:28 +0000
IronPort-SDR: t6uILsKy17G7mkuQMd8k9FpX+K53DhKEsnZUEaOlvN/rg7uVduzCpOADY5qi+9oFysGNJsG91q
 7CNMFv0LGGgQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 02:35:22 -0700
IronPort-SDR: gZMXuRG+DwMXhibMHthYrh9eztu9ABAkZ8OokL5UVQ6tf6XqedvzMK1DckUlttKussD2p8SBql
 /TGa6XZ+NQVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="253148521"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 14 Apr 2020 02:35:12 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jOHyL-000UXS-Gw; Tue, 14 Apr 2020 12:35:13 +0300
Date: Tue, 14 Apr 2020 12:35:13 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v9 05/10] power: supply: bd70528: use linear ranges
Message-ID: <20200414093513.GJ34613@smile.fi.intel.com>
References: <cover.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
 <8dcf498134adb09d88bd16138cdce65e9ffa0bb6.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
 <20200414093243.GI34613@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414093243.GI34613@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_023523_571797_AA40F7C3 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, mazziesaccount@gmail.com,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, mikko.mutanen@fi.rohmeurope.com,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 12:32:43PM +0300, Andy Shevchenko wrote:
> On Tue, Apr 14, 2020 at 11:04:21AM +0300, Matti Vaittinen wrote:
> > Change the bd70528 to use common linear_range code instead of
> > implementing a copy of it in this driver.
> 
> Couple of nits below which you can take as TODO items for the future.
> (Because maintainer is fine with it according to the tags)
> 
> ...
> 
> >  config CHARGER_BD70528
> >  	tristate "ROHM bd70528 charger driver"
> >  	depends on MFD_ROHM_BD70528
> > +	select LINEAR_RANGES
> 
> >  	default n
> 
> At some point you can remove this kind of defaults (see [1] for the details).

Missed reference

[1]: commit 0192f17529fa ("clean up x86 platform driver default values")

> ...
> 
> > +static const struct linear_range current_limit_ranges[] = {
> >  	{
> >  		.min = 5,
> >  		.step = 1,
> > -		.vals = 36,
> > -		.low_sel = 0,
> 
> > +		.min_sel = 0,
> 
> Perhaps it's better to have it aligned with max_sel, i.e. be 0x00.
> Same applies to the rest of a such.
> 
> > +		.max_sel = 0x22,
> >  	},
> 
> ...
> 
> > +static const struct linear_range warm_charge_curr[] = {
> >  	{
> >  		.min = 10,
> >  		.step = 10,
> > -		.vals = 20,
> > -		.low_sel = 0,
> > +		.min_sel = 0,
> > +		.max_sel = 0x12
> 
> Perhaps leaving comma is a good thing to avoid potential churn in the future
> (if any of fields will be added here). Same applies to the reset of a such.
> 
> >  	},
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
