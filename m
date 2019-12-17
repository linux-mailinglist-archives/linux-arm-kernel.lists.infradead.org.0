Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1914812350D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQPiq2HIUlakWupZH6ZyXHVgygob0C8bI3Y6PWYMY9w=; b=hggBHpqhjERQZ5
	e+j4k7ydmKIIfydDjjiLJWt2QQQpEEvaDbPWeZY4IS18mP0ksctzH2KKpVsGwn3Mrfhphv86H+zMH
	9azkJw30HIS4NT39l1VVgLcM7tHvtU75IEurZqIgS8wUToZmuwuqt/GYdzq574CHpSQuX9IzcP7gN
	BC+BIhmtwmhCCXnd52aKq0yFbUnlYVij3Hib8mI7ujTyFBGEIZEj90UYMbzypiQQMMPlFXQPEoR5A
	TP4XuIJOzjZ/B8Q9D6h/G87oZGF3GUBwbnWiJm3YEbTTwq9ztQcosrw2jBwx9kPRlkYK5IZHP1WJJ
	WC1usmtVKG0Xpe/Tg65Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHiF-0002l9-QH; Tue, 17 Dec 2019 18:36:51 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHhH-0001x4-E9
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:35:53 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8BE4C8116;
 Tue, 17 Dec 2019 18:36:30 +0000 (UTC)
Date: Tue, 17 Dec 2019 10:35:48 -0800
From: Tony Lindgren <tony@atomide.com>
To: santosh.shilimkar@oracle.com
Subject: Re: [PATCH] soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot
Message-ID: <20191217183548.GE35479@atomide.com>
References: <20191212040314.14753-1-d-gerlach@ti.com>
 <20191217182534.GD35479@atomide.com>
 <05b9f0ff-bbc2-d8a7-3261-54c03a149db8@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05b9f0ff-bbc2-d8a7-3261-54c03a149db8@oracle.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103551_528117_F4928B0A 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-omap@vger.kernel.org, Dave Gerlach <d-gerlach@ti.com>,
 linux-kernel@vger.kernel.org, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* santosh.shilimkar@oracle.com <santosh.shilimkar@oracle.com> [191217 18:33]:
> On 12/17/19 10:25 AM, Tony Lindgren wrote:
> > Hi,
> > 
> > * Dave Gerlach <d-gerlach@ti.com> [191211 20:02]:
> > > Any user of wkup_m3_ipc calls wkup_m3_ipc_get to get a handle and this
> > > checks the value of the static variable m3_ipc_state to see if the
> > > wkup_m3 is ready. Currently this is populated during probe before
> > > rproc_boot has been called, meaning there is a window of time that
> > > wkup_m3_ipc_get can return a valid handle but the wkup_m3 itself is not
> > > ready, leading to invalid IPC calls to the wkup_m3 and system
> > > instability.
> > > 
> > > To avoid this, move the population of the m3_ipc_state variable until
> > > after rproc_boot has succeeded to guarantee a valid and usable handle
> > > is always returned.
> > 
> > Santosh, do you want me to pick this one into my fixes branch?
> > 
> Sure, go ahead.
> 
> Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

OK thanks applying into fixes.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
