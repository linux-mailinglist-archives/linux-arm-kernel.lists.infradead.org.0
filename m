Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E826AC7F4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VamCdfDTLJO+8XVNELIIkdvZBW6nwSsYFacslYxbKE=; b=X2zJ1lyhfmjDRU
	IHlQcos0myt/3bwuEUAfjw5fgd53xlqHWMv9iaXyyO1curD9XU5/B/ibOSRLLYgR/nd/Y+5/uNo7G
	R94nEh32IJ6Uc2CpXGtvD/3vYse25H5dTvJ9jMwyhV8L4clpr1DaDRbH85QHdhusJvDlNsBG56OwV
	fdBgMZhsZ4QVR5FrsOH1Yx54ARxHPMaw3fmWrQeYQLIYfJyx+daOE98cTDQyilqeiGJQoSGhS+L9C
	2pzpzw+cGqodFkZnvNMNhi6TmWd34rwbSDSIH/tVrECknvkx+Os8j/rh6Os1Ae3X/eYv8Sf0IEFmB
	9RnlcwpOV82WsZ7cqfzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eDL-00019C-3F; Sat, 07 Sep 2019 17:09:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eCy-00011F-3M
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:09:09 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9A72A805C;
 Sat,  7 Sep 2019 17:09:35 +0000 (UTC)
Date: Sat, 7 Sep 2019 10:09:02 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 3/4] ARM: dts: omap3: bulk convert compatible to be
 explicitly ti,omap3430 or ti,omap3630 or ti,am3517
Message-ID: <20190907170902.GJ52127@atomide.com>
References: <cover.1567839375.git.hns@goldelico.com>
 <2c9eb085606de4a52d73a2461b1997265cdd2ea5.1567839375.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c9eb085606de4a52d73a2461b1997265cdd2ea5.1567839375.git.hns@goldelico.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_100908_204502_8A33D117 
X-CRM114-Status: UNSURE (   8.79  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [190907 06:57]:
> For the ti-cpufreq driver we need a clear separation between omap34 and omap36 families
> since they have different silicon revisions and efuses.
> 
> So far ti,omap3630/ti,omap36xx is just an additional flag to ti,omap3 while omap34 has no
> required entry.
> 
> Therefore we can not match omap34 boards properly.
> 
> This needs to add ti,omap3430 and ti,omap3630 where it is missing.
> 
> We also clean up some instances of missing ti,am3517 so that we can rely on
> seeing either one of:
> 
> ti,am3517
> ti,omap3430
> ti,omap3630
> 
> in addition to ti,omap3.
> 
> We leave ti,omap34xx and ti,omap36xx untouched for compatibility.

Thanks for doing this:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
