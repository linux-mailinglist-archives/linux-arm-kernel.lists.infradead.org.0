Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E851D7F7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uRKY/vJco4d+egnP+p/2ZCv+Mg796fskLXzXpas3Is=; b=Hi9glJh11NRS4L
	4loaEfRRbruIma4D8mVjhSz5mKEXnzbq7jUHMg8YOug4CE3EgD6yT+CYWlT/wXWhBrbXZ/doUfwDh
	YSx9j60sJegy7u0dWkdp3DGFYGoHxjU10wqxrzUkXgUxYuz+nxdUfCFXKwDrOdRHOG/f9DdKADm1v
	+LlttonbF6rBiAEIcgxsonsXxrcmZpSqOKoCqRdTny3CgFVn03axI0HOBWYLbZ07imLR6rpKG/syH
	y/oFSpx7dKyFlBzvIlPc4rYcp262S4r2pc+XYHWS4XFYjT2gBhyVMlxy6g1+oh7vX7xaJdlMrJ9GB
	fujpBan62bsBG9404ULA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj8u-0000Ix-F3; Mon, 18 May 2020 17:01:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj8Z-0000A5-6D
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:01:15 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A5F0B80CC;
 Mon, 18 May 2020 17:01:51 +0000 (UTC)
Date: Mon, 18 May 2020 10:00:59 -0700
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCHv3 00/14] Update omaps to use drivers/clocksource timers
Message-ID: <20200518170059.GR37466@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
 <340cdd4a-d996-073f-127d-89ce6c05f221@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <340cdd4a-d996-073f-127d-89ce6c05f221@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_100111_327735_92A30AB2 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Daniel Lezcano <daniel.lezcano@linaro.org> [200518 16:59]:
> 
> Hi Tony,
> 
> On 07/05/2020 19:23, Tony Lindgren wrote:
> > Hi all,
> > 
> > Here's v3 series to udpate omaps to use drivers/clocksource timers for
> > the 32k counter and dmtimer, and to remove the old legacy platform code.
> > Please review and test.
> > 
> > I've updated the timer-ti-dm-systimer.c patch based on the comments from
> > Daniel and Rob, and added support for selecting the preferred timers to
> > use.
> > 
> > Then for merging when folks are happy with this series, Daniel if you
> > can please apply the first three patches into an immutable branch it
> > would be great.
> 
> so the clk patch also ?

Oops sorry, just first two are needed as we no longer need the
device tree binding changes :)

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
