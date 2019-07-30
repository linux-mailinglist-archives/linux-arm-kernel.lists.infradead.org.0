Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCB7B21A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRMtdePp5varlF4jXT7SStWRusm1Iaw7M4Xb/9qBfwc=; b=OVlcTvR4Jm0pVw
	7EeXmXT5vWMX7umqRS0+M3lBYyAYJK5XhJ9dwY9w4d1zYEQMogyL8alhELfG9OnJGRTpgjrG2o3/V
	EOUiuba3WC31UGS578hCTrgRbgh4GFsoo3Mt+i1T8+x2CwnT1mgfLLalt05NsJ7gTmVfd7a4Sb6x8
	r/jSWVL9fXUy2DpcIZ3XMVpNUmXmn1cvkW8MeDU+Y4WMP5129Xzks24WR56hNqSMaESbEEnRQMNUK
	EcxF/P6qfw/D0M7L7BR1o4PcOJJzZmdmdZ811fVdfuldOj13UW5u49Dx+u4SlafJkZSbpHOeLUcZ1
	Yfiu+umMGlRgjN/JkSdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsX16-0000au-MY; Tue, 30 Jul 2019 18:38:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsX0x-0000aE-NE
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 18:38:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 929D2200742;
 Tue, 30 Jul 2019 20:38:19 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 84A1E200735;
 Tue, 30 Jul 2019 20:38:19 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 69572204D6;
 Tue, 30 Jul 2019 20:38:19 +0200 (CEST)
Date: Tue, 30 Jul 2019 21:38:18 +0300
From: Abel Vesa <abel.vesa@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3] clk: imx8mq: Mark AHB clock as critical
Message-ID: <20190730183818.mvoo5q3s4xylrqao@fsr-ub1664-175>
References: <1564471375-6736-1-git-send-email-abel.vesa@nxp.com>
 <20190730175231.B05ED206A2@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730175231.B05ED206A2@mail.kernel.org>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_113823_898547_8551960E 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 19-07-30 10:52:30, Stephen Boyd wrote:
> Quoting Abel Vesa (2019-07-30 00:22:55)
> > Initially, the TMU_ROOT clock was marked as critical, which automatically
> > made the AHB clock to stay always on. Since the TMU_ROOT clock is not
> > marked as critical anymore, following commit:
> > 
> > 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")
> > 
> > all the clocks that derive from ipg_root clock (and implicitly ahb clock)
> > would also have to enable, along with their own gate, the AHB clock.
> > 
> > But considering that AHB is actually a bus that has to be always on, we mark
> > it as critical in the clock provider driver and then all the clocks that
> > derive from it can be controlled through the dedicated per IP gate which
> > follows after the ipg_root clock.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > Tested-by: Daniel Baluta <daniel.baluta@nxp.com>
> > Fixes: 431bdd1df48e ("clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT")
> > ---
> > 
> 
> Should I just apply this to clk-fixes branch?
> 

Nope. The commit 431bdd1df48e is just in -next for now.
So this has to be taken by Shawn, I think.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
