Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FC1AC7EF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qqboYr2L2ogXIM46l0RtzOukFccpoXSxGjehGZL6o4=; b=VJQAN8E7pxYY1L
	NY9Q3aDxUziEBMRErvu2vf42LRUDmiOg7yRSp9/3tasY7cWTqVbNZKEk6lbuytNC+vl0tS26hTzf7
	/+x7SseP2HLN9lmoz1In+kb6Tm+afUA5T3KlhD2quYqlC0HKtajpCpuB0xuNsLQqrEm3ghLgmzbH/
	umdKWPA+KC5QaalIdHCGr9Vvw9EK7LE/shWU9a/rIBMSJu/npm2iI6BTLWusNzG6jiDdaKkjKJ1RS
	txcoYkpfl23RJB2V7on+DoYNO9O9lFw4ULDn6Q+E9VPFif8XImOmRTFareDQthNyBG/MUT0+2dtiv
	3UbxBiCmkW8Iz406EHHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eD5-0000uT-EH; Sat, 07 Sep 2019 17:09:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eCl-0000pm-35
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:08:56 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A75FC805C;
 Sat,  7 Sep 2019 17:09:23 +0000 (UTC)
Date: Sat, 7 Sep 2019 10:08:50 -0700
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 2/4] ARM: dts: replace opp-v1 tables by opp-v2 for
 omap34xx and omap36xx
Message-ID: <20190907170850.GI52127@atomide.com>
References: <cover.1567839375.git.hns@goldelico.com>
 <326e1bfe9e7c04346b4fcc0386303d7f93d0ba77.1567839375.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <326e1bfe9e7c04346b4fcc0386303d7f93d0ba77.1567839375.git.hns@goldelico.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_100855_233469_5BA1BD08 
X-CRM114-Status: UNSURE (   8.08  )
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
> In addition, move omap3 from whitelist to blacklist in cpufreq-dt-platdev
> in the same patch, because doing either first breaks operation and
> may make trouble in bisect.
> 
> We also can remove opp-v1 table for omap3-n950-n9 since it is now
> automatically detected.
> 
> We also fix a wrong OPP4 voltage for omap3430 which must be
> 0.6V + 54*12.5mV = 1275mV. Otherwise the twl4030 driver will reject
> this OPP.
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
