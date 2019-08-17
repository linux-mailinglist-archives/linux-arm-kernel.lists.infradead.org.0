Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64D190C91
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ug7Jn+mmdJwxHtmgh+pIJyJD6SbU+Hf8wOKIDC02Yh0=; b=efEwHP0/6PxrA0
	eUNxo/6X29kkYdJU0aQz/LZ6kTbo+qxRo3WIWhl96CubKAk423kKp+QIRmL8f7EogndaP3gC0aRDJ
	cJuU/omF8FPh5UYTfMcVe4a0Zh2j356r/BShqFPLWZGuQAJzEfhwsXRiVwL7aGjQaf9CRYKpJWchu
	3GIze5o0or+1pTn9fo8TO3Hl4dbu03VyxxwYthGRcTUUMD5GNqqabSOHRickDYbzWa6sreD4BgTQv
	BSMHOgqSvwem3w+dHwfXCjVucPmOz5FWpglUYEwfdK6W/wIN1m/fQc/V2Fj3oiQmcL7jNlGUxeBkI
	zkT88B1qqGaPuoRjRnkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyplW-0000cL-8j; Sat, 17 Aug 2019 03:52:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyplM-0000bx-MK
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:52:21 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 268F32173B;
 Sat, 17 Aug 2019 03:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566013940;
 bh=4oxw9KmagPq4gSAaCNa0UfIBjp21fF7APgvTtgAbfh8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=DcdqOF0UOe9NLgUEeGC/MOUbnT5TQ1k6ns/TnlozI+tFXSveq3eVKqnk4wiQ2O6jZ
 W73j0LpAqXjrYw95uxe7Yrps6KzmDkAayy5sFqqZ08rEd6bj1LY4wYaspvhxwM1IVH
 UYaYJaZczeJrg1PfGnYj4SklLdB80/ZCh2Pmbj2w=
MIME-Version: 1.0
In-Reply-To: <1565866783-19672-5-git-send-email-Anson.Huang@nxp.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
 <1565866783-19672-5-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH 5/6] clk: imx8mn: Add necessary frequency support for ARM
 PLL table
From: Stephen Boyd <sboyd@kernel.org>
To: Anson.Huang@nxp.com, abel.vesa@nxp.com, devicetree@vger.kernel.org,
 festevam@gmail.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, mark.rutland@arm.com,
 mturquette@baylibre.com, rjw@rjwysocki.net, robh+dt@kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org, viresh.kumar@linaro.org
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 20:52:19 -0700
Message-Id: <20190817035220.268F32173B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_205220_752850_CAFD5692 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson.Huang@nxp.com (2019-08-15 03:59:42)
> diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
> index ecd1062..3f1239a 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -82,6 +84,7 @@ static struct imx_pll14xx_clk imx8mn_dram_pll = {
>  static struct imx_pll14xx_clk imx8mn_arm_pll = {
>                 .type = PLL_1416X,
>                 .rate_table = imx8mn_pll1416x_tbl,
> +               .rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),

Why is rate_count added? That's not described in the commit text.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
