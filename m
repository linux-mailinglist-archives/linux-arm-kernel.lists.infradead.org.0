Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631DCB5BA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krle59iG7ATlOBlMN2rdDCOXGFmDeB0u7rnAgUxATiA=; b=VJ2JCrW4XGggPy
	gtp8V7dcpY+rgybfAoqEw+aMkWK+LtoXFY53DP3EHQ8bkVBJbKGUcdwdabjF1Uy1qjGRfpYpXq6sW
	9SyZk/kLcIdgIR8imPI4iPg+ZrSDXpItAkwfZGZHFzfJF8g4x11tfgPJE+GIxaA0WLItZonqU/KKu
	ZqqBMzNdLqzoouSHcrpIlR/3XFsamS8HaCjD/RHbG1PQ0172Nkdubex6YXk3cAB7ouM/O3MRh8HPL
	hWCNUJSPrKOMz64kRADJsrjmvLz9NW37fBCPRSfuzPqn2ls4+pTnRc0OZ8fyRXUGEIhdmjjuArg4b
	8/ejsAdxvw7Zrd3+MjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAT7p-0007SM-SP; Wed, 18 Sep 2019 06:07:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAT7b-0007S0-Tz
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 06:07:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61E0120856;
 Wed, 18 Sep 2019 06:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568786843;
 bh=AIGreTLnb6bk3q8joO9XO69tVeABHA7b5VsQxkJP7Qk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=PZgRV9uH68lZF9Yfar4tWWII27pZcPdHXgBuaRNuQVd1Cv+QPz6URLR2rzD/j6SpE
 IT0b6IeHE4Dt5kthLM1AdLZ6iqgtXwu+HeYlILr/7u2q79rZUMs3zXR+e6qMGvBQyB
 iGn39550ZKs89ndUK4QihxjtMXYMfKqoVkUshgB4=
MIME-Version: 1.0
In-Reply-To: <1568043491-20680-2-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
 <1568043491-20680-2-git-send-email-peng.fan@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V3 1/4] clk: imx: pll14xx: avoid glitch when set rate
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 23:07:22 -0700
Message-Id: <20190918060723.61E0120856@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_230723_989934_34128BA1 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-09-08 20:39:34)
> From: Peng Fan <peng.fan@nxp.com>
> 
> According to PLL1443XA and PLL1416X spec,
> "When BYPASS is 0 and RESETB is changed from 0 to 1, FOUT starts to
> output unstable clock until lock time passes. PLL1416X/PLL1443XA may
> generate a glitch at FOUT."
> 
> So set BYPASS when RESETB is changed from 0 to 1 to avoid glitch.
> In the end of set rate, BYPASS will be cleared.
> 
> When prepare clock, also need to take care to avoid glitch. So
> we also follow Spec to set BYPASS before RESETB changed from 0 to 1.
> And add a check if the RESETB is already 0, directly return 0;
> 
> Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
