Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57441ABEB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cBBIdJoF6snkjONMtEMMWqy7LkqOl39y053NBJ3cmw=; b=jYfgVxiFXgFJvO
	Es1eFwk2698lBqrFdZ3RRYW/UyLrLcuX5ycQUy2lIZXUh8z+HKyHuG419BN6pqNqol8t/7N/WM8Go
	fmCpXS4TKgvc07ndE0KApFqcGRECJGh+HSdhOX1ShpmPw9vDRIlmMnDnRAORW3ow2HFsFOKsblYwG
	Dy+wgvzA8d6/Ggh4YlmmtrkjSf84pS+kSSILmOOoj3YpYhUi/yTjpOfanoRJfcfJTHDz8CMQ3h+DL
	KapBzoSioLVt8NipNGYG+f3Y7uiP9rvM/dtIiVPea4xg+Bta7roxC4fxCLdFSYhzfSg13TUMGEuFb
	OHt3ScORw66wy2H/SpFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Hys-0000KV-PK; Fri, 06 Sep 2019 17:25:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Hyf-0000K7-7v
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:24:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1ED620838;
 Fri,  6 Sep 2019 17:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567790692;
 bh=VFA2y6aGSEi1O7IjtmDRuhV4iW9oDnoUYHFJr+NnkZw=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=2wTQ0bRk+dT5wClH2j/LUxzHRh/DqGD52/v9A6Ct++U/etB+2/+3zj5FvvNZCSqFB
 vKsJpAU8WI43KaV3kjS3zqr7kwZL2KS9jiiANcjo2eqH+QL7lQhtad4nvReOwtFlvL
 infNYS+DXT/9y0hmiCEmYGsUtd2SfQHXH3liB610=
MIME-Version: 1.0
In-Reply-To: <c3e86b5a832a14278e8ba670d51defc70ee78d84.1567590349.git.leonard.crestez@nxp.com>
References: <c3e86b5a832a14278e8ba670d51defc70ee78d84.1567590349.git.leonard.crestez@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: pll14xx: Fix quick switch of S/K parameter
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:24:51 -0700
Message-Id: <20190906172452.D1ED620838@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_102453_305268_F31809AB 
X-CRM114-Status: GOOD (  10.40  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, Viorel Suman <viorel.suman@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-09-04 02:49:18)
> The PLL14xx on imx8m can change the S and K parameter without requiring
> a reset and relock of the whole PLL.
> 
> Fix clk_pll144xx_mp_change register reading and use it for pll1443 as
> well since no reset+relock is required on K changes either.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/clk/imx/clk-pll14xx.c | 40 +++++++----------------------------
>  1 file changed, 8 insertions(+), 32 deletions(-)
> 
> The PLLs are currently table-based and none of the entries differ only
> in S/K so further work would be required to make use of this. The
> prospective user is audio doing tiny freq adjustments and there is no
> standard API for that.

sub-Hz adjustments?

> 
> Lacking users is not a good reason to carry broken code around.

Maybe add a Fixes tag so if anyone wants to use it in LTS kernels there
might be a chance that they'll find this patch mention code they're
using.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
