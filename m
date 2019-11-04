Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF5BED6CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoA6nMKNXOxCDWb8u6XjT5W4vC/2F7+t0M5IgyQO2xw=; b=SUbvRaRhPFft3/
	xrNqOVc2vBzVA5me+r/wcggNG+/7wF8ImkLHH8p5WMdGwrbGG7wWI7mJmdz3kTXrd+6PwykXqMkJ+
	SvV49VZj1hLgNOnJfl4qTepvwC6r2CwUDZiUu9Mkzd0UvOSHWLvUJuavQ+Vn6lDnQIRZcGxZabNU0
	59AYYHEqxEJoxIAfE+23YgNHoQML8nKgGiFyZZR3FLml1x3wqeZRaz89epvzKZ7o8j/l19XXR2BKN
	iFjKFHL7cYCrPwUKfBcBYoy5Z/cUEIPwMQxcfYcP4v6isnh4aWKJeuODrXaEGOuvyCWjE8DRMw8Hr
	N/TNevHqcRJOaAvgvZ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQuD-0005oQ-DG; Mon, 04 Nov 2019 01:11:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQu6-0005o2-AA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:11:35 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D51B4222D1;
 Mon,  4 Nov 2019 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572829894;
 bh=9Oa/sZWPuyk4aTCFfeZkZBXLeIf0WxdXMrii3wBcuv8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g7ux+1p7dJ82AZDTQVQlwRtgWpqrw6zDT2JfOLcqVufbOeo7EcafI7G1Yd2N651e2
 R6fNuCO8+xM69qoefI+G8iWvOdQ4wsml+wVh3rmyqeuGq0HPqI5QLldccnDyzUY5xZ
 Os8xd3Ps+7tAydS7p90yPjgiK1k2yQKf39cD+R4M=
Date: Mon, 4 Nov 2019 09:11:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2] clk: imx: imx8mq: fix sys3_pll_out_sels
Message-ID: <20191104011106.GD24620@dragon>
References: <1572231902-30230-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572231902-30230-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_171134_371870_CF12DD33 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 03:08:34AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> It is not correct that sys3_pll_out use sys2_pll1_ref_sel as parent.
> 
> According to the current imx_clk_sccg_pll design, it uses both
> bypass1/2, however set bypass2 as 1 is not correct, because it will
> make sys[x]_pll_out use wrong parent and might access wrong registers.
> 
> So correct bypass2 to 0 and fix sys3_pll_out_sels.
> 
> Fixes: e9dda4af685f ("clk: imx: Refactor entire sccg pll clk")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
