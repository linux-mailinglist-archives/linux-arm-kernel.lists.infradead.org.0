Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7DBE6E53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Kcm3+i+eBlr8DEJFQrlP1UhyR/Q0STOTftXYp46vbs=; b=r/YA6fHE2Xy183
	iEnNNHMTIMbEE8LkXDGrb0DwQNSrO7wVCz6aPlAOuQg9m0jTQYcScJpheAceLjNoMZmbFkpNdPCdV
	RcaZZUM5QsMqUd1GLP1G0ta/derOn8rpp77wRGtiZrDmPuOdcra94ff97lGXuL3+3sKNk0/pL8Ott
	Qk1d7LVhqAUfn+O96T666i6gAUAjWM0bdBdNpC0Vht50xegsBVaNC01iWHckR0LbCTQWMVtCOoI2Y
	ktSkfmsCcL8D3j+vSK84vw27HKvbvxA36Cz9KlukqG3zYGVMBYdwqws64lBniqritbZ6bndWyH9fN
	BBQHTBoQOhebgbit8h3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP0Vf-0003VE-4V; Mon, 28 Oct 2019 08:36:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP0VR-0003Us-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 08:36:06 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 913C220650;
 Mon, 28 Oct 2019 08:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572251765;
 bh=YSz7TfslhiFwmoaN1bPaiGLyGWgIdmnawIFyeNvBbtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VfjtwdY4B4l+k3YieRfLebQ0T/q+/R30MRXAiyVe1v/8sglkt3uLbuGJ3YPOeyopS
 xdSTCV2Q2HDdWnpA8UBTp7WNAoTfQZ50T7ThHZFTsb3z2rIUwmPT3lPNivgD58PKlk
 yhm87rSAYBKqgAVQ+DE/PUgkfNEhwzzwRp3Y5gQA=
Date: Mon, 28 Oct 2019 16:35:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx8m: Use SYS_PLL1_800M as intermediate parent of
 CLK_ARM
Message-ID: <20191028083539.GT16985@dragon>
References: <f5d2b9c53f1ed5ccb1dd3c6624f56759d92e1689.1571771777.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5d2b9c53f1ed5ccb1dd3c6624f56759d92e1689.1571771777.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_013605_549175_6165CEAB 
X-CRM114-Status: GOOD (  10.80  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 10:21:28PM +0300, Leonard Crestez wrote:
> During cpu frequency switching the main "CLK_ARM" is reparented to an
> intermediate "step" clock. On imx8mm and imx8mn the 24M oscillator is
> used for this purpose but it is extremely slow, increasing wakeup
> latencies to the point that i2c transactions can timeout and system
> becomes unresponsive.
> 
> Fix by switching the "step" clk to SYS_PLL1_800M, matching the behavior
> of imx8m cpufreq drivers in imx vendor tree.
> 
> This bug was not immediately apparent because upstream arm64 defconfig
> uses the "performance" governor by default so no cpufreq transitions
> happen.
> 
> Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
> Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Acked-by: Shawn Guo <shawnguo@kernel.org>

Stephen,

I assume that you will pick up this one as a fix.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
