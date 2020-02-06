Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA27154682
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9R7QgxI1okRqCxR3no5GNmpit1rnoZRHa9S5CuD/kKA=; b=YxUIK+TTwQOiqV
	DI9AFtT+G4qbvLpXELXdTjeggQDk1mQG0lsDBaNbPG6Fp0nTZoN+pUU1CG+RbvK02aDZUbYCSZAHr
	vYvUng6hAS1yMkgh/17t1UjQGwkUyav7Zznm1jpuaWCepXkFrNRKauyLCdT2z3tM7pKOvBN4SwZVP
	lNVKfNeOEeBKMWv7H7bcbHDtotQ0Zpz6BIDLN5AwPgRlVbcpjoeduL6BppzsuruF2JijQpi1ybKTW
	neCBeUQ8RlYvZ814n6CKG2op4Ps/9USOTMzB0HU0J9ZnQOs8moPBIql6b7lj6N/7k/7V1hNV1Q4WN
	sybZrd0pY/Mxz4eg8VuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iziUc-0004Wg-VG; Thu, 06 Feb 2020 14:50:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iziUV-0004Sw-UN
 for linux-arm-kernel@bombadil.infradead.org; Thu, 06 Feb 2020 14:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=wzmTtKEOXxbPV5WWqvMsynodImZrUwQo2fJtIEVyEeY=; b=Po7uQnCjww8mH8psKJE4lxursR
 vA9Baks9VfzRRzQZdGqNAOwowrhtDRK4vWAE+fT+TIxq3vfjuqOIfkb6fH5IM73MOp0vXurKxWC5c
 nN67uENMhCmJ1vfqubnHpAVVG+3Pb/2YuEAXAexNYhQGxqDBjv7tkAu9tkrk0UGCN8zmp28metNoj
 kuYmY+3eP57uo2xpRdvdj78/fhO5DI8UbjbmMitZpZsDCO8FoOV+qTaDQHI6jBcM7i2b0OggwAKoC
 Y6SaK/m7xlFlbp+FJm2GzEjr2c+T3WM45s449D82RlIHbFAKyax5vsLk2j0870IsXcybwTsfdW9Jg
 6kAK3ijw==;
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iziCl-0001QX-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:32:35 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 82EB414E226FC;
 Thu,  6 Feb 2020 06:50:29 -0800 (PST)
Date: Thu, 06 Feb 2020 15:50:25 +0100 (CET)
Message-Id: <20200206.155025.1955610977652855941.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH v2] net: stmmac: fix a possible endless loop
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200206141811.24862-1-zhengdejin5@gmail.com>
References: <20200206141811.24862-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 06 Feb 2020 06:50:31 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_143232_200677_6088D586 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, niklas.cassel@linaro.org,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Thu,  6 Feb 2020 22:18:11 +0800

> It forgot to reduce the value of the variable retry in a while loop
> in the ethqos_configure() function. It may cause an endless loop and
> without timeout.
> 
> Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
> Acked-by: Vinod Koul <vkoul@kernel.org>
> ---
> 
> Vinod Koul and David Miller, Thanks for your comments!
> 
> V2:
> add an appropriate Fixes tag.

Please do not put an empty line between Fixes and other tags.

I have no idea why people often do this.

Anyways, Fixes and other tags are all tags and thus belong together as
an uninterrupted group of text.

Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
