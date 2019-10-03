Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC4CADDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zf30AFqdVsLFD+rO2UQg9hAzq920YsnbkGhTxuYDIzA=; b=WTZXL13RdffX+Y
	f/nVQLKen8ib4tA2OJdq1MwuPyuM8BJAXv2v/8J1IzqhWvDzuG3z5tkJ4Q3NjVWvX7C8EMnmNAnn1
	Qe5OG6K+rs0umE6lhqb1bz10n9KRxjypQmbajoIO9ZpJelcwHjP5A0rAjpzh3xWvC+JJ2KL8I5/pQ
	vRdPALlpYGuhqr7bZD5xQkxGlQTNXBTS+l314CS86BWFMCtxMVBdwZ2SRiVEcBQ6Z/TAq49Lq4QY/
	FweSPGusDXxYXjIfd5exLqNFgIXnmNOirgfSjFeKnbLur3RIsF9xze/ifqbJEZh+Y88oviQ4jm1ur
	Z6z00Io17oS8ucoeDw9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5ZH-0001zx-Om; Thu, 03 Oct 2019 18:11:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5Z8-0001ym-TM; Thu, 03 Oct 2019 18:11:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 803B120862;
 Thu,  3 Oct 2019 18:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570126262;
 bh=aArKOWxO0UzBJPgQiYgtFIO0VS3NLn3FEgzr04GaghE=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=sTG8BoNGODYMJh9K8VdkTLOSAFtZXJXm0caFHt36ztIL/MBfhYfFtDzI1Oi6LU0sL
 O1j9gxbPlg8iCQnVT8pMZIipOVO2X+bRYi5fdMJLaH1XMsr/Tl3y6rf1l0WaJpLBh+
 p2KCBMaJK91l7C6g24fwfoT8haHVbqLr8Dx8CycM=
MIME-Version: 1.0
In-Reply-To: <1569553244-3165-3-git-send-email-zhangqing@rock-chips.com>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
 <1569553244-3165-3-git-send-email-zhangqing@rock-chips.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Subject: Re: [PATCH v3 2/5] clk: rockchip: fix up the frac clk get rate error
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 11:11:01 -0700
Message-Id: <20191003181102.803B120862@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_111102_968058_D513AED1 
X-CRM114-Status: GOOD (  12.55  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Elaine Zhang (2019-09-26 20:00:41)
> support fractional divider with only one level parent clock

Please put a lot more description in here. A single sentence doesn't
help anyone understand the motivation for the change.

> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/rockchip/clk.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index fac5a4a3f5c3..8f77c3f9fab7 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -190,16 +190,21 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
>         if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
>             (fd->max_prate && fd->max_prate < p_rate)) {
>                 p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
> -               p_parent_rate = clk_hw_get_rate(p_parent);
> -               *parent_rate = p_parent_rate;
> -               if (fd->max_prate && p_parent_rate > fd->max_prate) {
> -                       div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
> -                       *parent_rate = p_parent_rate / div;
> +               if (!p_parent) {
> +                       *parent_rate = p_rate;
> +               } else {
> +                       p_parent_rate = clk_hw_get_rate(p_parent);
> +                       *parent_rate = p_parent_rate;
> +                       if (fd->max_prate && p_parent_rate > fd->max_prate) {
> +                               div = DIV_ROUND_UP(p_parent_rate,
> +                                                  fd->max_prate);
> +                               *parent_rate = p_parent_rate / div;
> +                       }
>                 }
>  
>                 if (*parent_rate < rate * 20) {
> -                       pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",
> -                              clk_hw_get_name(hw), *parent_rate, rate);
> +                       pr_warn("%s p_rate(%ld) is low than rate(%ld)*20, use integer or half-div\n",
> +                               clk_hw_get_name(hw), *parent_rate, rate);

Hm.. now it's changed to a warning?

>                         *m = 0;
>                         *n = 1;
>                         return;
> -- 
> 1.9.1
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
