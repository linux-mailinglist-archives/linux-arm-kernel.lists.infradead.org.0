Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635A43953C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnRUTiyYN6Wj396iF/uy5XXhHdh0Z+GrKyBV227+HJU=; b=f3N2LyCWZpWnEJ
	XgDeMgiM16ldrE9K/3x87FlWu7ewluHEGPpDrrgheJPO3SbLvrcQ2j0zkFl3yM0X/OPX8obzmsYCv
	CjMdtaQF72E/8OrO+NZ4uDsFhKcp4W/SINGeCBPN3DrZw//XFhRt51b4Ig362ekz4aBQLnXIr5LLE
	EZUSu2wbdr6DPe26qhdQCT1u3rQl1CwMueLDJmEy+WDmF7Cpq5UFnqhWE3/v5XSdCEPw7jePh0PvW
	GQ7RaEj5w91Z/XvADMjzZsFEWI2a4y549JLFgCB3O7xNoyKrZ1y7Li/d6TK7z8MkZf69I/K4Wfyct
	Zlj8TVXkfjxdcYo1FGsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZK9O-0002cE-SC; Fri, 07 Jun 2019 19:03:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZK9D-0002bK-Uy; Fri, 07 Jun 2019 19:03:33 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B06020868;
 Fri,  7 Jun 2019 19:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559934211;
 bh=mrL8ZvU1j098gqUDw8JKIJmCCxGU9vpbYH6xVhe34iM=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=aBft8Ng32JulEBE9OCaXF/cfqepkKpawjKLmviZxT4hl2AUj+eStMAu2WpzSfOfr6
 CYtJlXMPERBWssrLSooM/NOAcjFr3wTTXL59aQAzpUKEiVsJuCAco1QNi9mo+uqxI3
 F0zju3tuU/ktvo9M1pqGD5IuNkLFt43gwkfkoHJU=
MIME-Version: 1.0
In-Reply-To: <20190607104533.14700-1-colin.king@canonical.com>
References: <20190607104533.14700-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH][next] clk: bcm2835: fix memork leak on unfree'd pll struct
User-Agent: alot/0.8.1
Date: Fri, 07 Jun 2019 12:03:30 -0700
Message-Id: <20190607190331.8B06020868@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_120332_011543_F2996CAB 
X-CRM114-Status: GOOD (  15.23  )
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Colin King (2019-06-07 03:45:33)
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pll struct is being allocated but not kfree'd on an error return
> path when devm_clk_hw_register fails.  Fix this with a kfree on pll
> if an error occurs.
> 
> Addresses-Coverity: ("Resource leak")
> Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")

I suspect this problem was there before this commit, but OK.

> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/clk/bcm/clk-bcm2835.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index 770bb01f523e..90584deaf416 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -1310,8 +1310,10 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
>         pll->hw.init = &init;
>  
>         ret = devm_clk_hw_register(cprman->dev, &pll->hw);
> -       if (ret)
> +       if (ret) {
> +               kfree(pll);
>                 return NULL;
> +       }
>         return &pll->hw;
>  }

Aren't there more leaks in this driver? 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
