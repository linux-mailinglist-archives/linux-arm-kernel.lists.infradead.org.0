Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5451E46BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6b2i7kLgauS7CeMy/TcYJCmMj6YcpspR6N5sanfMwo=; b=p3E3sZ46jDH4dB
	v4Qk/mznjzfw6zNHl7TWq/wgbvlMD5A1D5Dnw+Sku1Zzbi+Ymk0KBlsKU2CGuY90EI4Bt6HafeBT8
	1fztcbjHwgDkiPjnBDb1Jko7Rkis9CEG1huWcUBkWEBJNaetBEJb0j7P1Twx+znee9OWvKQHV0qCx
	fee8NQWIeqomQVOWwtp2Hy9Z0ZWxdzO7HdDnLFKVIR7m7dExwZhCSRuiDst1ZJ4LBon5BgCnfUvcg
	yWKjs2ZjpsDosgyfJUgOF4zmkA4tergEu5SlT+bCsora2Fi8IOokaVy1sycQuDsGqYBrLnc3DrUvf
	ze91LXIkDYb8GUtI1oLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvb3-0000uN-W0; Fri, 25 Oct 2019 09:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvan-0000tI-8f
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:09:10 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68E1E21929;
 Fri, 25 Oct 2019 09:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571994549;
 bh=uFG1cMRD5Tz8/465n9rsEA7W+2TvFw3woGFuCUmq66c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sS4E7jSY86V/QEQRf2wcBiJnK740L0brYSrWpZYZfwXbiStuc+EE/veFVPSj5vqWW
 hI5yIV06HrfwU9JKBs4BhFpwG/76VnGpAt2wycyZiUWOUxfjk1fUc+NSJ9HqWN1RNL
 8nrpiNxTSa47S8GZoUDtcQzD3mYQj0Q+98sHgfGU=
Date: Fri, 25 Oct 2019 17:08:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Message-ID: <20191025090850.GK3208@dragon>
References: <1570614940-17239-1-git-send-email-peng.fan@nxp.com>
 <20191025060847.GD3208@dragon>
 <AM0PR04MB4481FA56EFA3C34193241D3D88650@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481FA56EFA3C34193241D3D88650@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_020909_327558_D065B520 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
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
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 06:14:21AM +0000, Peng Fan wrote:
> Hi Shawn,
> 
> > Subject: Re: [PATCH 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
> > 
> > On Wed, Oct 09, 2019 at 09:58:14AM +0000, Peng Fan wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > According Architecture definition guide, SYS_PLL1 is fixed at 800MHz,
> > > SYS_PLL2 is fixed at 1000MHz, so let's use imx_clk_fixed to register
> > > the clocks and drop code that could change the rate.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > 
> > Applied all, thanks.
> 
> I have a v2 https://patchwork.kernel.org/cover/11208131/ patch 
> based on Lenoard's v3 
> https://patchwork.kernel.org/patch/11193189/ to avoid conflicts
> when you apply Lenoard's v3 patch.

Okay, I replaced it with your v2 series.  Thanks!

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
