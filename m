Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE31AC7EA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kg1CdFH2otWdoQ1TK2NbFcukX5oPGkkYikGB6rRXYDA=; b=LMcBYlLOQ/FbrA
	QdSYge3uNZiNsURXQriZjoHWJAlPImSS4BED4wqAd8RHa7296LilcOKuXPi9yif4zAKAEWKGZGuBA
	jy5HhzU3ixhn5IV98FrXQeL9QS+w8kQvZ3/gArjs1bV0ooSBBt30xNJfKwMjeUA5kM8tZN1CQuw7s
	54OISYHr30GJ+pzMwSEmHUeYnuD4mXrFKf+x3cbOb1yutIJl9S/+TqwgTRiinwzLjb3bTWpJ8Vye4
	k04GTDO1PzjxUcPOoBOxHDLNLStILph+gshkMhCYLtQftVlrdVpYAAVwToCW02nMq8RzBg+bDXSC2
	OWHXbIOwlkDbBrwd75Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eCn-0000iz-Jg; Sat, 07 Sep 2019 17:08:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eCa-0000i8-O1
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:08:46 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 79F03805C;
 Sat,  7 Sep 2019 17:09:11 +0000 (UTC)
Date: Sat, 7 Sep 2019 10:08:38 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 1/4] cpufreq: ti-cpufreq: add support for omap34xx and
 omap36xx
Message-ID: <20190907170838.GH52127@atomide.com>
References: <cover.1567839375.git.hns@goldelico.com>
 <0eb7129f6148faac0150d6299ac97347484c7125.1567839375.git.hns@goldelico.com>
 <F12B47AA-DED2-4BD9-B144-2463A2AE6094@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F12B47AA-DED2-4BD9-B144-2463A2AE6094@goldelico.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_100844_823014_04ABC038 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-pm@vger.kernel.org, Enric Balletbo i Serra <eballetbo@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [190907 07:38]:
> > Am 07.09.2019 um 08:56 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> > @@ -190,6 +272,11 @@ static const struct of_device_id ti_cpufreq_of_match[] = {
> > 	{ .compatible = "ti,am33xx", .data = &am3x_soc_data, },
> > 	{ .compatible = "ti,am43", .data = &am4x_soc_data, },
> > 	{ .compatible = "ti,dra7", .data = &dra7_soc_data },
> > +	{ .compatible = "ti,omap34xx", .data = &omap34xx_soc_data, },
> > +	{ .compatible = "ti,omap36xx", .data = &omap36xx_soc_data, },
> > +	/* legacy */
> > +	{ .compatible = "ti,omap3430", .data = &omap34xx_soc_data, },
> > +	{ .compatible = "ti,omap3630", .data = &omap36xx_soc_data, },
> 
> Well, I just realized that with the latest DTS changes,
> 
> ti,omap34xx and ti,omap36xx are legacy and
> ti,omap3430 and ti,omap3630 are now official.

Heh :) Anyways, with that changed, this looks good to me:

Reviewed-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
