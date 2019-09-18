Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7862DB5BA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHUqWrDbrgytZ0Ilw2RHgyz9j6VH5xph4CCpqiiAD6M=; b=nH0U8egzj+V6JD
	ZZ0Fp/iR41ATjOQEG6UHR0jcvADWEdqjSD1K86OhYzOSrNPfNSB+D49K+OUe+a8+Kc82n2aG4PFfY
	u9ohY2NprOBTVMsK+YLwOlhL9D6VFBHEWhrgUMMOcJHCEz84K5oZS+3P5VE/O4vOhd2TboadHJCyp
	nXBaMTowuHEOaCTQ33xcdNlGUT/+yKizG1XjlbP7IjQgNA4TCzdcismq8YomBvzHMbbjmRUgDhNy7
	qRaJOX4xbL79B65xPQwZOP6HenGgoXq2dxuwnvrE45NArHqynF/L2Xsm6SabtOIr9mjXJco01m3Th
	ygqrJXStIwR0anFtPF9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAT87-0007ec-IP; Wed, 18 Sep 2019 06:07:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAT7f-0007Tl-T8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 06:07:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80D9620856;
 Wed, 18 Sep 2019 06:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568786847;
 bh=E+ag569ps4IxsaujNVfAcc3vW6cQZB2utRWUInlFvl0=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=B/mfeL7Z3g0BD3P7reEQqj6Te/mnLzFSu0Pvz0fE/6GvzjN86KfgOUgtZ1xPr3E5+
 SWNCvzUhHFK0swvgEV7ixEftNkjdzASun579pVK6WcSSJbgZWR0a9l4qyHWSDIib6g
 /osvjDj0ZT6mNesNNpUZlMDoQ8tfSOY/MYNCa84E=
MIME-Version: 1.0
In-Reply-To: <1568043491-20680-3-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
 <1568043491-20680-3-git-send-email-peng.fan@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V3 2/4] clk: imx: clk-pll14xx: unbypass PLL by default
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 23:07:26 -0700
Message-Id: <20190918060727.80D9620856@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_230728_084880_E3B18D6D 
X-CRM114-Status: UNSURE (   7.22  )
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

Quoting Peng Fan (2019-09-08 20:39:39)
> From: Peng Fan <peng.fan@nxp.com>
> 
> When registering the PLL, unbypass the PLL.
> The PLL has two bypass control bit, BYPASS and EXT_BYPASS.
> we will expose EXT_BYPASS to clk driver for mux usage, and keep
> BYPASS inside pll14xx usage. The PLL has a restriction that
> when M/P change, need to RESET/BYPASS pll to avoid glitch, so
> we could not expose BYPASS.
> 
> To make it easy for clk driver usage, unbypass PLL which does
> not hurt current function.
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
