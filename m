Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570C41C4D77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExZ06NCKFzO2UvrXiuyKPdd9kLqERJ7AvUAFninbvRY=; b=gfkNr7NJtWjeeb
	ndtxLcV+xlBJl9PLO4qOKMigwB2BdxApgA7oUbdnfL3I3PV47hhhXVeSuXKt5X5qRomYUFI21mFvm
	2tqmaB7soCVwoFtLIG6NqKS2ith/yE7guiEn0kAoxo/mgoRa3g1HFnSdKZFmQyYVzQ3NszndWY8kl
	9IeY/F3raQMH4Iyx8Ahq/N4Pg2X1Q6yp3HGtuvlemv6RUEXpRS8iViRbV/f7Pd8/FhaDAzsvPW1g4
	ZvtEh/sqyIAHdYW7hB4IHHq+OEifFY0io48EUzrXCciydxve1ydypmazETiI/Vg0lOpMZP95cloVc
	XH1ZdPKr3xnzri4fc42w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpcf-00020u-IN; Tue, 05 May 2020 04:56:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpcY-00020W-QJ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:55:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F1E2206B9;
 Tue,  5 May 2020 04:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588654554;
 bh=OZB+5isnyy69m59BrCmuj7ms/vJuDmzLuMDFPKnl9qA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=dQolMy+wBS73ZC6AuNO6c0NUs6EYQvxPuVXPUDD8HKyG5LmIfqyDsXb4tK18bH1q+
 lO4lS+vhPUVQ0/tg4/kHNtehxP62Fu8jccpA9Uosww5wVQFZmS9zIjxL+yQRyaAgJ2
 LOq9kmbr5jJRA7/D0RVVv4uB6q98y239nM9g5hEM=
MIME-Version: 1.0
In-Reply-To: <1584279836-29825-13-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-13-git-send-email-aisheng.dong@nxp.com>
Subject: Re: [PATCH V6 12/12] clk: imx: scu: unregister clocks if add provider
 failed
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
Date: Mon, 04 May 2020 21:55:53 -0700
Message-ID: <158865455360.11125.17297772155388824388@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_215554_870648_A42EC300 
X-CRM114-Status: GOOD (  14.10  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2020-03-15 06:43:56)
> Unregister clocks if add provider failed
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> ---

Why isn't this squashed in to where it's needed?

> ChangeLog:
> v6: new patch
> ---
>  drivers/clk/imx/clk-imx8qxp.c | 11 +++++++++--
>  drivers/clk/imx/clk-scu.c     | 13 +++++++++++++
>  drivers/clk/imx/clk-scu.h     |  2 ++
>  3 files changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> index 2ec3e0c4749d..e615214495c0 100644
> --- a/drivers/clk/imx/clk-imx8qxp.c
> +++ b/drivers/clk/imx/clk-imx8qxp.c
> @@ -138,10 +138,17 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
>                                 i, PTR_ERR(clks[i]));
>         }
>  
> -       if (clk_cells == 2)
> +       if (clk_cells == 2) {
>                 ret = of_clk_add_hw_provider(ccm_node, imx_scu_of_clk_src_get, imx_scu_clks);
> -       else
> +               if (ret)
> +                       imx_clk_scu_unregister();
> +       } else {
> +               /*
> +                * NOTE: we did not unregister clocks for the legacy way cause
> +                * it will be removed later.

I got confused what 'it' was. I think it's the legacy way entirely.
Maybe say "legacy binding code path doesn't unregister here because..."

> +                */
>                 ret = of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> +       }
>  
>         return ret;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
