Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC103FFA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 20:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nSdSba4Jj85hAHB7uQcWkHPxf2QdOD30Ravnwx5ojg=; b=c8Iv7tA0AeTC4u
	ve46EOV+cxomgqNRi5+TQOVokk3QhsFVRmT8RA4KxGBr7xRplDqBJa59+7I2iIX7gjmPoPdVSPQRg
	GzBmDrk8MVOQS9a2xP6RhMOOwbOeQRLRQIbWxLXXaDp23AhsBkUtnIUHrtmINDP3RTruViowWySJa
	AMnFAjUMNUG1zclHGPBupb5bAxrfuqvqYR+KdvAb1SdSC8KfwQ+4jenfaOuQJwoUGTBXucZZ5nKPe
	0eQjm/NzciAtT4Ww5nbtSrgYQItYxWTlnwCRGoiFEwKPxgS94EINfgCCEObIL3c6Uu3vsCGdJXey0
	qs1lMyOQF7OaWaJuiwbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXJK-0000FA-6l; Tue, 30 Apr 2019 18:16:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXJB-0000Ej-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 18:16:51 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAC4020854;
 Tue, 30 Apr 2019 18:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556648209;
 bh=KUP9To48LBrL/wSVFz97QuNsX4v6nv2LPPjDnJTFTzs=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=RfQo/QhbXFzOkMCGW4mgeoJJ9DWbf6F9XwqhCTWMsjWOf8pNLcXWWgD4iJwX7UGsU
 9zZ88Iiz+XS/r2ZYMvemxxajdMosAmc40YHvq6AEnpoCRpN3lxYzUgo1BfrT/c5u40
 6Sz3plrXV89dJ/2NRKfMCWBbeuDZPORX7av8ZeEU=
MIME-Version: 1.0
In-Reply-To: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
References: <1556589033-6080-1-git-send-email-Anson.Huang@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: pllv3: Fix fall through build warning
To: "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Anson Huang <anson.huang@nxp.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <155664820799.168659.12393223246835475198@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 30 Apr 2019 11:16:47 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_111649_923407_16E80613 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-04-29 18:55:18)
> Fix below fall through build warning:
> 
> drivers/clk/imx/clk-pllv3.c:453:21: warning:
> this statement may fall through [-Wimplicit-fallthrough=]
> 
>    pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
>                      ^
> drivers/clk/imx/clk-pllv3.c:454:2: note: here
>   case IMX_PLLV3_AV:
>   ^~~~
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Gustavo says there are two warnings. Please compile test with the right
options, add Reported-by tags when you get bug reports from someone, and
add a Fixes tag and then resend.

>  drivers/clk/imx/clk-pllv3.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> index e892b9a..fbe4fe0 100644
> --- a/drivers/clk/imx/clk-pllv3.c
> +++ b/drivers/clk/imx/clk-pllv3.c
> @@ -451,6 +451,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
>         case IMX_PLLV3_AV_IMX7:
>                 pll->num_offset = PLL_IMX7_NUM_OFFSET;
>                 pll->denom_offset = PLL_IMX7_DENOM_OFFSET;
> +               /* fall through */
>         case IMX_PLLV3_AV:
>                 ops = &clk_pllv3_av_ops;
>                 break;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
