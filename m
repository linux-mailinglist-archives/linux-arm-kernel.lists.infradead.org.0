Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564D12B8B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlXZ4pi0OBin9wXJFMowi+EvxEqKMaPVez7QH1V6/78=; b=BvJphGCGqAxeiP
	4jPnAH9nQRRRPi8hLc1XDah1nGtpCLHWCtwMMG/DqzS54rQV5dqV03HbRluYUZw1Ukt6OsjBcfjyp
	APU8jfa2s9TDO9IwnxoXUWsxr8X8/WBS+G/lI3S/RHvXKcpVdLqIfvOxJXmA6npkHkRs7xJoLOFvD
	QOThwoSoT1OFD+dKaE5R/hYwa8TeX8jzO36k5eK4arDdx1BSx/KKmAj/Ybgol0I89bHwywEiSLIez
	xpF8NwtC8U4FcfZc9+mbp1P/8AhsOU5LrjoUGgE9d4NZ8bKA801I9J8j4M9W3ibfI7HS2EsnD2ddq
	fdFEa1+uJjX6FHpLexwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIAD-0004j5-Kf; Mon, 27 May 2019 16:07:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIA7-0004iz-Hb
 for linux-arm-kernel@bombadil.infradead.org; Mon, 27 May 2019 16:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=um03Rpui219RAPIykYflBYwIafBl5GoUsJ7nUx/MxV0=; b=l9DZvyHZ3TPutSxgTn19blF3d
 lGeispVw9iVuFUICAVANKj/R+zCM9BrAmphYxq63SApXIKi6E16R1lrdfz8M+qQRrHQFE512qOwVq
 0pr1zxwRVwnknZGQVLbB7Zy4CW0lJAWmvLxNeZmIUOoarRvYseupdDI4KeQ/nqERl0GF9Nfg1G/R+
 3ezHcVuqA3gfsrXGmmMRAfL61ceCc+sG3rorySWq5VDVjR5zTO7jFOyhl7p3VsqzMM3JYKFhroSs4
 bju6ZG5x9JficTpeeicVq6oDSxexCu/+HAGsogwTckJVkR7FzBdqNqTf43kuqcuOWHdvIcX/GbBru
 Sa9c2ilvw==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIA3-0004q4-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 16:07:45 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 37872C0019;
 Mon, 27 May 2019 16:07:03 +0000 (UTC)
Date: Mon, 27 May 2019 18:06:57 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 01/10] dt-bindings: rtc: Move trivial RTC over to trivial
 devices
Message-ID: <20190527160657.GN3274@piout.net>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <20190527120626.GM3274@piout.net>
 <20190527121832.lui2n6vhlemlqy2z@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527121832.lui2n6vhlemlqy2z@flea>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_120743_911299_32690684 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/05/2019 14:18:32+0200, Maxime Ripard wrote:
> Hi Alex,
> 
> On Mon, May 27, 2019 at 02:06:26PM +0200, Alexandre Belloni wrote:
> > On 27/05/2019 14:00:33+0200, Maxime Ripard wrote:
> > > The RTC generic bindings has a bunch of devices that have a pretty simple
> > > binding, with just compatible, reg and optional interrupts properties.
> > >
> >
> > This is not true, they all also support the star-year property, this is
> > why they are not in the trivial-devices file anymore.
> 
> Ok, I misunderstood the binding then.
> 
> Should we create a separate file for the trivial RTC, on the model of
> the trivial-devices but supporting all the RTC properties?
> 

I would say that this is the way forward. Note that all the RTCs support
start-year but you will have to check for the other properties.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
