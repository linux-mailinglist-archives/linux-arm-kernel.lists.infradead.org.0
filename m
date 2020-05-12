Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE5E1CF815
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrMZoqSrfiaWXtKqfUMbsVyaQ9hgD5uX7TrAf0+XvAg=; b=PGk//znLLt2Ubt
	nGhDsr24pYI4jT1KSvpe/h5s26Fk0PBh24uYxqitpSAKOYIoDlxFu6aIeK9bO/YsbFneyvxR3sse6
	XS0EfuHnwUlVyoWNm7kUUIQkUGdaEIzud6cTqVYuBKqBh5+rOPg4oCpbAdqlLIc/doMT/5roJ2oqH
	SnFxZ9Kb69JCTRuULvmSEObsu1Oiw+rzAVXrShfkdH1MJ18PEnZBIdaHjbKE94f/sGOO5pjbr2IQl
	nmN4yxTPxRaaA6kqO6CmM9Gm1AWdg0lQRKpDj6PaAW4pxzFNv+cnwpsZVGjuTLTXFVdkWposBAq05
	9JBRNZIuQjg0AZWsGBqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWLO-0005XX-6w; Tue, 12 May 2020 14:57:18 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWLE-0005W3-E2
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:57:09 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C3C078047;
 Tue, 12 May 2020 14:57:49 +0000 (UTC)
Date: Tue, 12 May 2020 07:56:57 -0700
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/15] dt-bindings: timer: add ti, dmtimer compatible for
 for system timers
Message-ID: <20200512145657.GH37466@atomide.com>
References: <20200429215402.18125-1-tony@atomide.com>
 <20200429215402.18125-3-tony@atomide.com>
 <20200512145215.GA23423@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512145215.GA23423@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075708_514365_1BA7D809 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Stephen Boyd <sboyd@kernel.org>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Rob Herring <robh@kernel.org> [200512 14:53]:
> On Wed, 29 Apr 2020 14:53:49 -0700, Tony Lindgren wrote:
> > The TI dual-mode timer can be used for both clocksource and clockevent
> > system timers. We need a way to specify which dual-mode timers are
> > reserved for system timers as there are multiple instances available
> > that may require a board specific configuration.
> > 
> > Let's add a generic compatible "ti,dmtimer" that TIMER_OF_DECLARE can
> > use as suggested by Daniel Lezcano <daniel.lezcano@linaro.org>.
> > 
> > Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >  Documentation/devicetree/bindings/timer/ti,timer.txt | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> 
> Acked-by: Rob Herring <robh@kernel.org>

Looks like this is no longer needed with v3 set in the repost
thread:

"[PATCHv3 00/14] Update omaps to use drivers/clocksource timers"

It now does detection for the preferred system timers based on
the various timer features like you suggested.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
