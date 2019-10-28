Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3277E6F51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWWEfqL6UqmIcjvnmf936AQnR/LwPetg08G31m6u7us=; b=niXTSCf9Dtv5QD
	Kyig/Ij9pR6NVfbeYqyECEu+WoxHXDY6gxSNte2QgYwg4YiWBGIQWYtc2vb7+157vzf05NyREtLHw
	/rOKsc5C4QO4IA59BwC68Iw8na+IbWSNhPERTB6Gz9GOyfA8U79FWFqI+mChJu1kGb2HXjeAWPgg7
	a2uvvm+Jpzuk3dya8uXa6VkTLtnAYH1HI+PkXC1HHRbwj/iOxdrQdGOdzLMU9N7vUNych0elVqyDD
	OEwoZC5734KAWgHTEjmPHktDoc/HBeNPRBYJ9fBWvmSBOEvM8Mgp3/bS9L9esjCcvL7X1MAYy1PKF
	UIjT30vdn9pGmKYWOUeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1b5-0000uD-Lz; Mon, 28 Oct 2019 09:45:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1aw-0000te-0Z
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:45:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4920E208C0;
 Mon, 28 Oct 2019 09:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572255949;
 bh=NpA9WFAdCxizCJxZSvAxIdo/i5JN5nJYOoDLmsKAt/I=;
 h=In-Reply-To:References:Cc:From:Subject:To:Date:From;
 b=DTkHA3nnwVaScqXjtw8VkSDfOUDg9xr+lg/z6q4znfjZND4muFY2zzmZ96N83EeeJ
 XiH1eVY/3HLy0okTR/I1fcJKgbFJPsAX13l4O/S00GfCf2BY1BqJ2G3tAo6iHD0azG
 nuhItMbAsrSz4rk88+dvjYNBJN2EJ1xLQWJy9r6A=
MIME-Version: 1.0
In-Reply-To: <f5d2b9c53f1ed5ccb1dd3c6624f56759d92e1689.1571771777.git.leonard.crestez@nxp.com>
References: <f5d2b9c53f1ed5ccb1dd3c6624f56759d92e1689.1571771777.git.leonard.crestez@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx8m: Use SYS_PLL1_800M as intermediate parent of
 CLK_ARM
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 28 Oct 2019 02:45:48 -0700
Message-Id: <20191028094549.4920E208C0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_024550_080667_966AD1CA 
X-CRM114-Status: UNSURE (   9.02  )
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

Quoting Leonard Crestez (2019-10-22 12:21:28)
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
> ---

Applied to clk-fixes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
