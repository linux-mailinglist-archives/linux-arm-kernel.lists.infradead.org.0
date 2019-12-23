Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2750C129138
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 04:52:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLsIoHd3Rnk6/zyxBKRBDB54kXjMY2+y2Q3xwqDdD8M=; b=j4Uws+yif4s/zQ
	WdAIMpMpcGVUpccUKmxQp50AwA3yyH+Opo3S5JLrf2utF8JwlPNjQ+zJSWzj9dlQH5Cemu5G1Gyjf
	hYCP8Z3sIEfujjD9Bsng23rGHEtHjT+Z/ofQJl4htxnnjkUB0oHc23LmdeEGtGffcnu+wcYGj6/Lq
	PysZktMNWI+E2unZQRKDSURvbKEATeJwalZ5etS4C2360FJs/zFHnEcuN+/nR8asf5rTyfsY1iSpM
	VDII7DpmxehXHH74owNscq5aTOHuDyFlOmAS+L2ooPw2LvyGOAqR53FR/YyFqsH0AR4IGOQqDzoYO
	1fA2QRxvzezBIj1acbiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijElE-0003gJ-Gv; Mon, 23 Dec 2019 03:52:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijEl4-0003fx-2t
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 03:51:51 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37F5620709;
 Mon, 23 Dec 2019 03:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577073109;
 bh=bNHYhWnRLyUJqAMGEzrDslyGkK0A/ZfjsusSFKmfCQo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qaw0+09Qtj/xcd7pQeSKWf3SgRNGvExU2Qg0W1DxpGjudXqZwR9poa5juZVyQxk5S
 pF/GUWYQgKjLhnN/C8RvBhtDLXOvQgOqdPl1e8vfG5V+kxxElW3yMQSvhDzaZuBEY/
 jIsL4jeOMc11fsCHGMWq16GFFhnNNkBmub/4YFv4=
Date: Mon, 23 Dec 2019 11:51:23 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 0/9] clk: imx8m: switch to clk_hw based API
Message-ID: <20191223035122.GI11523@dragon>
References: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_195150_148548_1B7816AE 
X-CRM114-Status: UNSURE (   9.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 02:58:38AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> This covers v1 https://patchwork.kernel.org/cover/11217881/ and
> v3 https://patchwork.kernel.org/cover/11251585/
> 
> V2:
> Per Leonard's comments, use to_clk helpers
> Add Abel's R-b tag
> Rebased on Shawn's next branch
> 
> This patchset is to convert i.MX8M clk driver to clk_hw based API,
> and add clk_hw helpers that will be used by i.MX8M clk driver.
> 
> Peng Fan (9):
>   clk: imx: clk-pll14xx: Switch to clk_hw based API
>   clk: imx: clk-composite-8m: Switch to clk_hw based API
>   clk: imx: add imx_unregister_hw_clocks
>   clk: imx: add hw API imx_clk_hw_mux2_flags
>   clk: imx: gate3: Switch to clk_hw based API
>   clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>   clk: imx: imx8mn: Switch to clk_hw based API
>   clk: imx: imx8mm: Switch to clk_hw based API
>   clk: imx: imx8mq: Switch to clk_hw based API

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
