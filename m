Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A14110E6D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:20:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTj0tU3sA6E8hjVVLJObYsAQj82cTvDPwJxV8tfL624=; b=F9XS7dPNa1nbYK
	hdiRnEUo/S/NMPa6L7nomN9bjmIeYL9EM/hsBk6Mi6oWcXoPohqwlJpNe3LiecXkey/GQn9uxni5Z
	Nq7xrCXslDOQisocoRKMND8LgwFbzqFEmbzZbQjedh9LY5LzQZrFZPcLK5L8XPSwuW/KDUOdPWwfa
	MKVi/O8toX3NOBNzDnOA4Wu7e/22PTJtiDEH1/DB+o97n5Z9N6oSVMo+RtMIiQl3y97ipTLmWop68
	acBYbYrq3XPTOBF7E9cJv44fnLd2MYIcRqT9VtmDWZGu+pc5+6LSUW46H15JlA/47RO5QT7mTFH9s
	bpH8W4IxJ7ZQQWoGUmJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibgwE-0004rR-Ds; Mon, 02 Dec 2019 08:20:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibgw7-0004qO-1D
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 08:20:04 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6D7F20833;
 Mon,  2 Dec 2019 08:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575274802;
 bh=ugPnad4csUtS5gu9gvNWiYsom6nlpl/ToMIjVCWJbZo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t4VYe/+Oc3UZ1KYFtA1wTahHsh8T/DkBKOAjLV3QmxJ9AQZJD9FuVuoz0zBVP5cJd
 6WDmgdCr0jLI3LnyltUWtEHaHuXSyO4G91iqUGfsOATVp3kxz/wVXVVS13AVMy9U59
 VhUdzsyRQVt1jlLwjP9WO0TNt/hw0WpXKTJtvAd0=
Date: Mon, 2 Dec 2019 16:19:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-composite-8m: add lock to gate/mux
Message-ID: <20191202081948.GD9767@dragon>
References: <1572603166-24594-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572603166-24594-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_002003_113628_45AEBEC3 
X-CRM114-Status: GOOD (  14.08  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
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

On Fri, Nov 01, 2019 at 10:16:19AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There is a lock to diviver in the composite driver, but that's not

s/diviver/divider

> enought. lock to gate/mux are also needed to provide exclusive access

s/enought/enough

> to the register.
> 
> Fixes: d3ff9728134e ("clk: imx: Add imx composite clock")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Other than above typos,

Acked-by: Shawn Guo <shawnguo@kernel.org>

Stephen,

I assume you will take it a fix.  Otherwise, please let me know.

Shawn

> ---
>  drivers/clk/imx/clk-composite-8m.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
> index e0f25983e80f..20f7c91c03d2 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -142,6 +142,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  	mux->reg = reg;
>  	mux->shift = PCG_PCS_SHIFT;
>  	mux->mask = PCG_PCS_MASK;
> +	mux->lock = &imx_ccm_lock;
>  
>  	div = kzalloc(sizeof(*div), GFP_KERNEL);
>  	if (!div)
> @@ -161,6 +162,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  	gate_hw = &gate->hw;
>  	gate->reg = reg;
>  	gate->bit_idx = PCG_CGC_SHIFT;
> +	gate->lock = &imx_ccm_lock;
>  
>  	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
>  			mux_hw, &clk_mux_ops, div_hw,
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
