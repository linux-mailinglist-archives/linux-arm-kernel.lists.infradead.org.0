Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D170E7B523
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 23:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzYPbRxJvzA4gU4TFWHnIeUlS6ONFZ1TCZX/O6XGkMA=; b=utRLnzkBR8hG1R
	enq5qA8lyiWRGP+OjfBPD+obp9tbC2uMIKac4oe18L0gG3C1c9WhA7shr25CM+/pYy0ERXf09HipF
	NsUWvtEihNz1pnUeomGYWc1BKaAiwGqXKhkn/t5idFLwNUdTHlrBOXsiO9S88cQpbZajpIuTE27qh
	uOcxzbrFJ212uwKG5ucyzSMlTRT72kBWP1BHHzw6NZRRYyv7inyy65aIxJ5hk5z19Pw4HEQYk0zCg
	KPvPfCJjTZ9fNsWBhv3wpI5MCy0zB2N3oCVBx9eYM2eokZX70WIM/GzamsKeIrs9PYS1E5Cay3vtY
	X2dUPQsCDXqYqzapCY+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZqy-0000uu-7Q; Tue, 30 Jul 2019 21:40:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZqr-0000uY-74
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 21:40:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22F8E206E0;
 Tue, 30 Jul 2019 21:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564522808;
 bh=SZSfxS8OeqC//cyK+U9fS3g64U6+kM4axmL/pZ6RfQw=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=g2dt8aQ+Yd3kdmtz5hTDZ9LA/BBYXzSQFMux+T09KThIbnXDTvVW1qbY54VZtsGnx
 Pl9jrFUCO9Kyh6vZl6eCa78fNWgAZZj+vux1D5urvuW2yiKaoFV5mqgoDAcpfjxhPm
 6F8yhHn3zqnRCPiNGI2XjzYk+yksCuNJY+p5CvmY=
MIME-Version: 1.0
In-Reply-To: <20190730183818.mvoo5q3s4xylrqao@fsr-ub1664-175>
References: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
 <20190730175231.B05ED206A2@mail.kernel.org>
 <20190730183818.mvoo5q3s4xylrqao@fsr-ub1664-175>
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v3] clk: imx8mq: Mark AHB clock as critical
User-Agent: alot/0.8.1
Date: Tue, 30 Jul 2019 14:40:07 -0700
Message-Id: <20190730214008.22F8E206E0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_144009_281219_7C6D25CB 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anson Huang <anson.huang@nxp.com>, Guido Gunther <agx@sigxcpu.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2019-07-30 11:38:18)
> On 19-07-30 10:52:30, Stephen Boyd wrote:
> > Quoting Abel Vesa (2019-07-30 00:22:55)
> > > Initially, the TMU_ROOT clock was marked as critical, which automatically
> > > made the AHB clock to stay always on. Since the TMU_ROOT clock is not
> > > marked as critical anymore, following commit:
> > > 
> > > 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")
> > > 
> > > all the clocks that derive from ipg_root clock (and implicitly ahb clock)
> > > would also have to enable, along with their own gate, the AHB clock.
> > > 
> > > But considering that AHB is actually a bus that has to be always on, we mark
> > > it as critical in the clock provider driver and then all the clocks that
> > > derive from it can be controlled through the dedicated per IP gate which
> > > follows after the ipg_root clock.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > > Tested-by: Daniel Baluta <daniel.baluta@nxp.com>
> > > Fixes: 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")
> > > ---
> > > 
> > 
> > Should I just apply this to clk-fixes branch?
> > 
> 
> Nope. The commit 431bdd1df48e is just in -next for now.
> So this has to be taken by Shawn, I think.

Ah ok. I thought it was related to some other problem someone was seeing
in the rc series but you're right, it was just linux-next for them.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
