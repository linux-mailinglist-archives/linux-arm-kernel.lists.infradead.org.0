Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A737B0E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LINDUcK/hKVOH6e2J7juExjhfjcZxhsned08sLS9ebA=; b=dOkW1bY4xh++Iq
	lFCNcRn4l34nF/H5F/qNMcK11pX/S9HpXY+Pahm0l/C4iXnm2vPsYWpjBB/qcnQU7c0e53dtrFtVy
	RjPQlHxtKlpRigpYwXrxVhrCqN4UpKysJw5JcgDADBd6DKqDYsNvzi8/wK7BM5vpDMxCXYFVhMNOI
	f6cYz60Vxt3w4pVaBZc4VUYdYHfHh1Ry44JoTKV3l8MT0golEk9dsl/jha8ephg0Wod4/O3nsD6kl
	4DNfS+qfANLJhccztuM/lu+Fl0QgAng+cEUFW5y9Wv6Q+gv/AIOp1HbrtvR9XzKtMjHtL+PR65QNF
	TY9oY4GcnegTs92mI+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWIj-0000Eh-9U; Tue, 30 Jul 2019 17:52:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWIa-0000EN-8O
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:52:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B05ED206A2;
 Tue, 30 Jul 2019 17:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564509151;
 bh=mnne8HxkQYHe1hsp9tyTFqKx/kwox+EaL9FZPw5xrLU=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=PviEB+rSjDPmiHO/Yq0dWjVAOp2oJKwQX9me32xE8qnRaY4vcp6VXD9TaqQdYmTiz
 ln6GlNsOYWGOdRGyDiUhz2drXlXhkkcvjY0ACUNFUINHjE6tXDr653RDKRsPX2TMzK
 1/lEHd5bTXmNCc2xx2tT19fNHCOEaM5YMIH1VuSo=
MIME-Version: 1.0
In-Reply-To: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
References: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Guido Gunther <agx@sigxcpu.org>,
 Mike Turquette <mturquette@baylibre.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3] clk: imx8mq: Mark AHB clock as critical
User-Agent: alot/0.8.1
Date: Tue, 30 Jul 2019 10:52:30 -0700
Message-Id: <20190730175231.B05ED206A2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_105232_319829_A2EC317C 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
Cc: Abel Vesa <abel.vesa@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Abel Vesa (2019-07-30 00:22:55)
> Initially, the TMU_ROOT clock was marked as critical, which automatically
> made the AHB clock to stay always on. Since the TMU_ROOT clock is not
> marked as critical anymore, following commit:
> 
> 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")
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
> ---
> 

Should I just apply this to clk-fixes branch?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
