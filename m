Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFD3E8DDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rXJKKyD68NZQ0xrp/B9zecAWV0vU+pgTCpkU8jWUsk=; b=lp5mws39naA3Yx
	8DR+oqcUjIbU0csOoqgxH92hrTvZzEqLxYqpCKHCFP0qU8zf4Iue5YYb7AeRWiA4mTfbn/B5D8Tny
	kkH4KujwGcY5YrUmubtv85hUZhUq4QBKxB7ElyH8GEbAEgESNIhxfyGd2XQ6mU1GTfgbHzOIt1goM
	rKdaj9X/Amo+vvMEl6zzfSceUN3hK6M+wMYyjU3bqfG8DYpwIKgBgVFBSDQtbYc0az5zF4hOO5UNp
	JL0ZIjTWhWI3AlXoO3t+VKnTG62PkqgdD45lyHe2QomCfP+8YPgD31H5iuEFLLTP6n98LTQZmXXQe
	4Sr+IpNRZb/HEb4P5ssg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPV6G-0000WR-Sp; Tue, 29 Oct 2019 17:16:08 +0000
Received: from smtprelay0242.hostedemail.com ([216.40.44.242]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPV5w-0000Kj-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:15:50 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id D0DAC18224D66;
 Tue, 29 Oct 2019 17:15:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2904:3138:3139:3140:3141:3142:3352:3622:3865:3867:3871:3872:3873:3874:4250:4321:5007:6678:6737:7875:7903:10004:10400:11232:11658:11914:12043:12048:12297:12438:12740:12760:12895:13019:13069:13311:13357:13439:14181:14659:14721:21080:21365:21451:21627:30045:30054:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: sheet91_31cdff6a4690a
X-Filterd-Recvd-Size: 2120
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Tue, 29 Oct 2019 17:15:42 +0000 (UTC)
Message-ID: <f668de19e156bd7a1bf599d9ce1f9d4f4fca4095.camel@perches.com>
Subject: Re: [PATCH 2/4] thermal: stm32: fix IRQ flood on low threshold
From: Joe Perches <joe@perches.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Pascal Paillet
 <p.paillet@st.com>, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, 
 robh+dt@kernel.org, mark.rutland@arm.com, rui.zhang@intel.com,
 edubezval@gmail.com,  amit.kucheria@verdurent.com,
 david.hernandezsanchez@st.com,  wsa+renesas@sang-engineering.com,
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, Andy Whitcroft
 <apw@canonical.com>
Date: Tue, 29 Oct 2019 10:15:35 -0700
In-Reply-To: <8952e975-3bad-4b7d-49ff-b74af942008c@linaro.org>
References: <20191029164537.1561-1-p.paillet@st.com>
 <20191029164537.1561-3-p.paillet@st.com>
 <8952e975-3bad-4b7d-49ff-b74af942008c@linaro.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_101548_920073_A635EB51 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.242 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-10-29 at 18:11 +0100, Daniel Lezcano wrote:
> On 29/10/2019 17:45, Pascal Paillet wrote:
> > Fix IRQ flood on low threshold by too ways:
> 
> Can you state the issue first ?
> 
> > - improve temperature reading resolution,
> > - add an hysteresis to the low threshold: on low threshold interrupt,
> > it is not possible to get the temperature value that has fired the
> > interrupt. The time to acquire a new value is enough for the CPU to
> > become hotter than the current low threshold.
[]
> > Signed-off-by: Pascal Paillet <p.paillet@st.com>
> > Change-Id: I3b63b8aab38fd651a165c4e69a2d090b3c6f5db3
> 
> Please remove the Change-Id tag.
> 
> Joe, Andy? checkpatch does not see the Change-Id, is it the expected
> behavior?

Yes.  It's after a sign-off so checkpatch doesn't care.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
