Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2FC1B283
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fz3wMCt/QDZPvhdQd2Id7ozBiPwqi3Z16oQKdMPKubQ=; b=h2ALftQbYtf8Wr
	9qOAS86d6HIjhnkf0D2A5M+p0bB63Xmluownc1ZlmeiqrS8MFT7ObiaDsvYHRl+74OH/2D60cBCba
	fXgBUl2xz2D31CAfG+kmI2qAY637Aiuw2/L1+Bve0P8aaRGme4mxsvS2zwSLSYlLxB05zbTreYhW6
	Ka0t9ZbVcffesYMTewpN8nxD+DplVQlvBxUzuI2xJldfYSXN8yW16PsNB1cnKsJ1Q1KENJCKZrJjy
	paBsnUXOZ7OdJOhM/LnX3CxfR4A4P/vsU8AhngepdA7ezIglPdPTfevffzaDCSrDLqPXEUTA2XJmr
	Tgnb/08+FaZE8W5R7o6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ72H-0003EF-CE; Mon, 13 May 2019 09:14:17 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ729-0003D6-PI
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:14:11 +0000
X-IronPort-AV: E=Sophos;i="5.60,465,1549926000"; d="scan'208";a="305784263"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 11:00:01 +0200
Date: Mon, 13 May 2019 10:59:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix comparison of unsigned expression
 warnings
In-Reply-To: <1557732606-14662-1-git-send-email-amelie.delaunay@st.com>
Message-ID: <alpine.DEB.2.20.1905131059440.3616@hadrien>
References: <1557732606-14662-1-git-send-email-amelie.delaunay@st.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_021410_118348_590D7684 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Julia Lawall <julia.lawall@lip6.fr>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, kbuild-all@01.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 13 May 2019, Amelie Delaunay wrote:

> This patch fixes the following warnings:
>
> drivers/pinctrl/pinctrl-stmfx.c:225:5-8: WARNING: Unsigned expression
> compared with zero: dir < 0
> drivers/pinctrl/pinctrl-stmfx.c:231:5-9: WARNING: Unsigned expression
> compared with zero: pupd < 0
> drivers/pinctrl/pinctrl-stmfx.c:228:5-9: WARNING: Unsigned expression
> compared with zero: type < 0
>
> Fixes: 1490d9f841b1 ("pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver")
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/pinctrl/pinctrl-stmfx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
> index bcd8126..3bd5d6f 100644
> --- a/drivers/pinctrl/pinctrl-stmfx.c
> +++ b/drivers/pinctrl/pinctrl-stmfx.c
> @@ -213,7 +213,7 @@ static int stmfx_pinconf_get(struct pinctrl_dev *pctldev,
>  	struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
>  	u32 param = pinconf_to_config_param(*config);
>  	struct pinctrl_gpio_range *range;
> -	u32 dir, type, pupd;
> +	int dir, type, pupd;
>  	u32 arg = 0;
>  	int ret;
>
> --
> 2.7.4
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
