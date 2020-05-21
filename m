Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF7C1DD035
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lU8liEEdRLRfYtnO0YkyTFHezQocajballD5+UOwvw=; b=q2707sk+ftLrto
	lyFnUBOTdXUQDIEFnBKQ2xE11wwAN3ElorF3usOo3P8GESgge3Ddxp1c5VTNpnbz7AoyqzzaQ/aSc
	Dl3jBnnvVJ3gGWUp8W6mO7kuYQ3zJXlPk3Av27sFdujLeMadwEFyhEYs5vTalERj9klZGUo3IQK+B
	A5wMRfGznHBF9M9SftDc+uNAYv/VG/nGDiKU1cUJArl8dnYGm3lyUN+TjDiAd+yR+rwKifj8Fqz+Q
	G+A5O7DWi50UGKFiSL8Bs8r7pAKOOrg+xnS+wj39+z+fMc5uO59P2n91NqbqN0/le+gGYVW0XjxQu
	r9E5jGGXK1e86E+0NjxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmME-0007fG-Go; Thu, 21 May 2020 14:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmM3-0007ev-U8
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:39:29 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9660020671;
 Thu, 21 May 2020 14:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590071967;
 bh=LJfKPnC5aOB9d2Qg+2TGMMUcBKRdw6hVYW+KZiMXjZo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o3DA0Ia0pGQGLsKwUqmOPZdyC10/uEg6Ulz4dLSOab83rKMcYK2q/ua8EUcC/O7Px
 7GRtaUFt/6d9xtpl9sSoBZ6kaB6zeUhYDjjzBQeQVG8op3a25D5p6AjaIjdmCo4yu4
 PsuRfawtfxwrYB7U4e5jYwxSS0GJiyaDGwbBNy6Q=
Date: Thu, 21 May 2020 22:39:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [RFC PATCH shawnguo] clk: imx: imx8m_clk_composite_mux_ops can
 be static
Message-ID: <20200521143910.GA24084@dragon>
References: <202005211954.Rc03oK6u%lkp@intel.com>
 <20200521110439.GA55876@f61f8b3f25ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521110439.GA55876@f61f8b3f25ca>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_073927_989151_A2E831BD 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 07:04:39PM +0800, kbuild test robot wrote:
> 
> Fixes: 3f0365dafe32 ("clk: imx: add mux ops for i.MX8M composite clk")
> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---
>  clk-composite-8m.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
> index 8fa60f22d377f..2d9562ebddc3f 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -164,7 +164,7 @@ imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
>  }
>  
>  
> -const struct clk_ops imx8m_clk_composite_mux_ops = {
> +static const struct clk_ops imx8m_clk_composite_mux_ops = {

Amended the change.  Thanks!

Shawn

>  	.get_parent = imx8m_clk_composite_mux_get_parent,
>  	.set_parent = imx8m_clk_composite_mux_set_parent,
>  	.determine_rate = imx8m_clk_composite_mux_determine_rate,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
