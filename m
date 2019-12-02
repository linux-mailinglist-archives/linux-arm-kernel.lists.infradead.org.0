Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E3D10E750
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=395YOAWtaf117bpOC5TLxP0jSpT+t5zSL071ymgSOjQ=; b=EwJvOqBMPGw1o1
	e1lg8L5K0Lw0dLzatEtbsyOgSq3GkyASG5sMTsny+UPF00ExkeBQFFZTGEZCSAANOh8HB7njLz3Qv
	AvJsIGA3UGFXct6PGnRupmq6elMcCc/KHm1LPRgJ9nsplbhVsqpRaA1wGlO7n+zLepd0VfvTMmEmW
	nZEGs8ULO/mXYVgNqgx5SmbLMac6JyuVyXxATXY7CRXlgGvSM0cd1eFwZQkeylEggrtVFTRTujUNc
	wUDt+vPw5cafqcnvsVn5OYKt++gZtwVXsBHW2xAbhUMIFf0YAdBylQm58d1tF6VS4vzuFST15wyJz
	9EdjPbYDjsrhjWtW/JkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhZp-0005Dp-V1; Mon, 02 Dec 2019 09:01:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhZh-0005Cd-E6
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:00:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E2DE2231B;
 Mon,  2 Dec 2019 09:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575277257;
 bh=tVYMJnp1OdZaMK26bl6SySF2HHbOorpSfPdGqQkO36s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CdVEHvQArOPv081P1hWGHzhguheF0y/Yf2gsA8OdnQkCR7q/PG44qNY07q8GKdnSn
 cGS8aZwyHV5y9HnnItM53YISMZF+tu+BQMvdSYk+nKblP6KrAfEI93bp6VChfuLrlS
 x4r1Z4KPzDTzBkL6w6sRvLJLv53QDM+LvSUtA074=
Date: Mon, 2 Dec 2019 17:00:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/2] clk: imx: clk-divider-gate: typo fix
Message-ID: <20191202090041.GG9767@dragon>
References: <1572862200-29923-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572862200-29923-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_010057_493731_91CBC85D 
X-CRM114-Status: GOOD (  15.39  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 10:11:33AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> resue->reuse
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied it after updating the subject and commit log as below.

    clk: imx: clk-divider-gate: fix a typo in comment
    
    Fix a typo in comment: resue -> reuse.

Shawn

> ---
>  drivers/clk/imx/clk-divider-gate.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-divider-gate.c b/drivers/clk/imx/clk-divider-gate.c
> index 2a8352a316c7..214e18eb2b22 100644
> --- a/drivers/clk/imx/clk-divider-gate.c
> +++ b/drivers/clk/imx/clk-divider-gate.c
> @@ -167,7 +167,7 @@ static const struct clk_ops clk_divider_gate_ops = {
>  };
>  
>  /*
> - * NOTE: In order to resue the most code from the common divider,
> + * NOTE: In order to reuse the most code from the common divider,
>   * we also design our divider following the way that provids an extra
>   * clk_divider_flags, however it's fixed to CLK_DIVIDER_ONE_BASED by
>   * default as our HW is. Besides that it supports only CLK_DIVIDER_READ_ONLY
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
