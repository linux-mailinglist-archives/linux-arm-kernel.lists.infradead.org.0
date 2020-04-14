Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E431A7E4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qgt2oJqi0JVMpQmZ/0CeiW3PxuCxqr4HzJCM1ecijo=; b=DjeUS+CDhj1dMz
	z6qu36Qtdm8E5t2kTjFh1U6FfgNO5dL7ZD8kRlJSik1Ou7KpRoTStAYSIw/DFR8rOARP4m5wtpGqR
	xWzfjbmStyLDOa2EW0i3Gl4MT7ETYHrjkQWmTuV8/KzKh7BNYGbZg6iPItdCsGnf/3gYSMeYsYqrK
	49xxYv4zw8Wy1xED+2T3N6ENapSmnCvEA0XkI4JZypqIH8Fl6uzue7JhXtFuh8d3DBaLfjNGcBy0d
	3RVVGLbcF+iZlL/Xj1rO6k9VnU38CDlnLZIHivWMz+kV1r3aUMQGhvPIALwgVnGFx5xqp5+d9QBuT
	JOvxtEEdytVYTlp3d/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLkH-0001hb-EX; Tue, 14 Apr 2020 13:36:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLk8-0001h8-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:36:49 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F63F2063A;
 Tue, 14 Apr 2020 13:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586871408;
 bh=hwrKfBxeK+4AD1ibFnoch7kah+4fJkFJk3wYroT7S0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=skTTgN+rq63uKIs1RVHnvAHkfXTHlRb4q/HJUL3prWhQpva1ix5Y8wQQxe5imin/P
 /Up9D9UF5vipk/nT7gY9M9Oo9qYOo3G03z1zesgxe2LKbGyHtkqUwKRtlhpqAHodM2
 8gOmu4jHZrYIdc8F40rej6Hw+QPT3+tdg7I3bNRw=
Date: Tue, 14 Apr 2020 21:36:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3] clk: imx7ulp: make it easy to change ARM core clk
Message-ID: <20200414133639.GC30676@dragon>
References: <1584347553-2654-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584347553-2654-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_063648_838019_168D6F09 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 sboyd@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 04:32:33PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> ARM clk could only source from divcore or hsrun_divcore.
> 
> Follow what we already used on i.MX7D and i.MX8M SoCs, use
> imx_clk_hw_cpu API. When ARM core is running normaly,
> whether divcore or hwrun_divcore will finally source
> from SPLL_PFD0. However SPLL_PFD0 is marked with CLK_SET_GATE,
> so we need to disable SPLL_PFD0, when configure the rate.
> So add CORE and HSRUN_CORE virtual clk to make it easy to
> configure the clk using imx_clk_hw_cpu API.
> 
> Since CORE and HSRUN_CORE already marked with CLK_IS_CRITICAL, no
> need to set ARM as CLK_IS_CRITICAL. And when set the rate of ARM clk,
> prograting it the parent with CLK_SET_RATE_PARENT will finally set
> the SPLL_PFD0 clk.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
