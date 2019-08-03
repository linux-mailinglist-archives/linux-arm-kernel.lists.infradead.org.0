Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EC5806F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 17:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peXPjzCu5aVt/s5FfOdi6jPwvQ+8RKJlndkaRDInxZY=; b=TcffWFPxyAZyjA
	P8tRBTxgQMaz1AIFVplvOFoF7xoxY+2JnVYRr8GnLuS+vTVE6NnToTcjtePu7IcJoA3oLbHHSAh0H
	aIuNVu7TYe3kiJblRG3eBanbzcT65Nk+AE4oH1ZMrJvAZLEg4SCHzgiytIY7rZH62Vmtb2nkqg019
	vmj1O2cnE4VCVZ6OfXL61lPjWhMDSkMszCu5/lnuTOxqjdRWe50Q6P0UjKWFiH5x3JoVAKcXBCTYh
	c6ld60Q170yu/nVTFlfUNYr28R32UsoYup+WFBN/gKdWC7UrdWlFPy7HvZWuy6xDdhUJU3jBQQE1Y
	f6fyZ5n8+CERASmwSTWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvab-00087R-73; Sat, 03 Aug 2019 15:04:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htvaO-000875-2f
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 15:04:45 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 013F6206C1;
 Sat,  3 Aug 2019 15:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564844683;
 bh=ZtnQiHcTsMI4Da/gZ9Elzfs6xppHV2apA6OfklfbEJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h8lOkzoJfFXGZDwMchIHpOc6AQo8qhjpkejNS5dA0LNgWnClZe/2sk04GzEYdg5AK
 dXFkrgALO3S2hGAXZLdq256kTh3n9cZXeBnjSsLmqFYLR1ZlsnBsXNIUXb8+PhTgmk
 HxOIDtoDO6/IDwmHa/2RuUlaD2kxDtC2eE2DS6ug=
Date: Sat, 3 Aug 2019 17:04:36 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v3] clk: imx8mq: Mark AHB clock as critical
Message-ID: <20190803150432.GP8870@X250.getinternet.no>
References: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_080444_143839_F034DD13 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Guido Gunther <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:22:55AM +0300, Abel Vesa wrote:
> Initially, the TMU_ROOT clock was marked as critical, which automatically
> made the AHB clock to stay always on. Since the TMU_ROOT clock is not
> marked as critical anymore, following commit:
> 
> 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")

The commit ID is not stable before the commit actually lands mainline.
I could possibly rebase the branch.

> 
> all the clocks that derive from ipg_root clock (and implicitly ahb clock)
> would also have to enable, along with their own gate, the AHB clock.
> 
> But considering that AHB is actually a bus that has to be always on, we mark
> it as critical in the clock provider driver and then all the clocks that
> derive from it can be controlled through the dedicated per IP gate which
> follows after the ipg_root clock.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Tested-by: Daniel Baluta <daniel.baluta@nxp.com>
> Fixes: 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")

Dropped commit ID above and Fixes tag here, and applied the patch. 

Thanks for the fixing.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
