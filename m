Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC99E70B88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 23:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8KFd0N4tcq/f014lZg3Hdj46JxX9b5V6QTYEpq4HEc=; b=M3JfEsp4PbUsOW
	/zfd5DjyinW4iVDFoptkbOMdiOG8cSsIn4ZkJ4d9lLx40lUGWMkeWXy8JwrlrxmC0k/lF30PDjaxq
	H+MuLNM5J9ngwLo5zu3znlJZU6LtGxrvw9O28NlDM0AfT3G8ztDw1l2TFVuJHgwzdcsQQuxtrBATA
	Za4Z6Mco4CKeJwmQH1wHtYAu3TzgMUtToIf6ohZIma0n8ZpikDUNX+uZ9isdiASwtUkTMC2TFZ52F
	+GJJj8DEpbsrfSMYSRQabwcilLjCxqHsCPro6BtnwfVQ7jY5wO4bEQpdYNiukwSZbLAkFB7zlScML
	1Sytr8NzjWUa7f3XM/GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpfyA-0007Pw-Uz; Mon, 22 Jul 2019 21:35:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpfxn-0007PI-UX; Mon, 22 Jul 2019 21:35:21 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 910D321900;
 Mon, 22 Jul 2019 21:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563831319;
 bh=DvqIagaTKeWXpuKwat8d9RWOAli9dQa8fn58FFzhj2I=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=GAGVTPyolP5awe7fywjEGXSa+BDWuSSTnWBWAsVtU+GauWTmbacpuxNHMdreyY0QN
 EzQzfqEkaMrycQ3qhWZuX9MbqqicKiRXSufriuxCYMpk8r1iiXujFYdWxPoyQ9eL4f
 9wYmo7SCdgmoiQUleXveC1Ek57aXrsPWQ/3sK3bs=
MIME-Version: 1.0
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
References: <20190627222220.89175-1-nhuck@google.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
To: Nathan Huckleberry <nhuck@google.com>, andy.yan@rock-chips.com,
 heiko@sntech.de, mturquette@baylibre.com, zhangqing@rock-chips.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:35:18 -0700
Message-Id: <20190722213519.910D321900@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_143520_456602_2FD8AD4B 
X-CRM114-Status: GOOD (  10.18  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck@google.com>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nathan Huckleberry (2019-06-27 15:22:20)
> Clang produces the following warning
> 
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> 
> Looks like this variable was never used. Deleting it to remove the
> warning.
> 
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/524
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  drivers/clk/rockchip/clk-rv1108.c | 1 -
>  1 file changed, 1 deletion(-)

Heiko, can you pick this up? Looks like v5.4 material.

> 
> diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> index 96cc6af5632c..5947d3192866 100644
> --- a/drivers/clk/rockchip/clk-rv1108.c
> +++ b/drivers/clk/rockchip/clk-rv1108.c
> @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
>  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
>  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
>  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };
>  PNAME(mux_pll_src_2plls_p)     = { "dpll", "gpll" };
>  PNAME(mux_pll_src_apll_gpll_p) = { "apll", "gpll" };
>  PNAME(mux_aclk_peri_src_p)     = { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
