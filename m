Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0CDABE9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yE2NNWfDyifRA53UWE/gLo8ZkY85ifY11oiH+pipecM=; b=acKU+jB8wVVQ9l
	uQg2sFn0ZN32I46rm/2JzxqJiemP7HLbOpaSXvqT1vO8OFvgxmXXVdbKHZFLIvyiJWsRQvAYtdPgq
	pKVR1WRTwTQZW12r/XjuVydy2Ow7/WwQn/ow2hPIvL2JnjbzSDBv8mO1ib7KjY3gTQGA7La5FMGKd
	KUFYKAv04hoNm9G3C2Iz3G8wHuqHsLl/LQBeQYmUiS3gX5Ccp2Sd5qSJ4m9w5JtcQwJBCs8nByZB4
	GRCF/cIdu89IHdiGq/3NsAC7fWqCj1Svdfvd4IJ08P8Ts9RX5vEvetARETrBMuxhzvEzqzJzMysmg
	1352JegHZ4zC0GDzNaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Hvp-0008Rw-Fu; Fri, 06 Sep 2019 17:21:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Hve-0008RF-75
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:21:47 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAD3C20838;
 Fri,  6 Sep 2019 17:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567790505;
 bh=ADje3siOrKc3kc72eJWckxUuVI+/07TKsbTBTdCEemg=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=F6Gg7R7VzPr/ErhXep+secgJOYEBq4w1EPvGI9pGvgXLJyGo8svrm/oW7drg/3L4u
 l3sPzoyhGbENPNLTSVFQLrEjB5xpS/XsulalWsinGBLJ2kG5JvxneKC7kQS/BDAewx
 9I6tlGM8NyofUoWppoluz4rzEsTAz6npxf9yJ2Fk=
MIME-Version: 1.0
In-Reply-To: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
References: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V2 1/4] clk: imx: pll14xx: avoid glitch when set rate
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:21:45 -0700
Message-Id: <20190906172145.CAD3C20838@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_102146_276917_65167080 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Quoting Peng Fan (2019-08-26 02:42:14)
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

Please make cover letters for multi-patch series.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
