Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D17A9903
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfAdEIXGAUOvM9zQ+TH73G5cOVOIEmDg/kYF3NmCHsE=; b=oYZLeeAZKYwWim
	49eqoqE7Xyusfd8Ya2L4Hj5faLL3uZK+WiOCiiokmmrpsCP4hE4XBCs0ma57PKSyalbNehPh2/my7
	Mg074txc2etbpRvC0YCj0l3BO9x6lXqDnGEjjXVq4s9dAVlCIiVo6aWLRqtQ6Q4ZMTp8XFdz49fsS
	V6MYbQ+cSwVTQjILPQYyfEhqk/9zcMX5Mhd6FsJseqHpv5qbJTaUWdWC+t+skouDfsoWPvdlnJXKJ
	qUGPMpJ5n0nTJnfho3iBwIhoG+6p4sTwTvJnEa3lIwNrpq6r7LATdJh1rYg9UeYf+V2MXdF050Caj
	qsU83vzTRPoii3cKvFwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ijw-0007IZ-5c; Thu, 05 Sep 2019 03:47:20 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ijn-0007Hs-HB
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:47:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8A30C21391;
 Wed,  4 Sep 2019 23:47:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 04 Sep 2019 23:47:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=iz5b5ME3PsMsS8QeBujZtb3JCi3nja+
 Hla+LmculZwk=; b=b4epihcJys2LL8YoCM/nc8qGbEazvW2vWIO1hIVaP9napuP
 AgLUK/SA4LCbYT07PHOJ76rcWRjJwmhK+SpzqL7QUuBCTXcnnP/NuS/jUcSWKWzR
 AY8hwGjvJfCsQg7OOdgu5uDvLXf2aR/h1d69gfjGE1RPPjYZLKdfY419TQ1VBZHE
 LEj5vLwO/Y31rQ//yYbd4S5Hj8fp7R3T9M8tHJmJxXAgwOVFF6bJwPJ8wjnx2N88
 oKI2W8VJ1Y8Yi/Usv0DAICA8Rs6J/to+LLrz+l2sQWGppJSjp3qsGRg/r6Cv3zGH
 hQI2yfJdSUzasOhqLIEuQ6yOrP/u1ng0xIZuiXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=iz5b5M
 E3PsMsS8QeBujZtb3JCi3nja+Hla+LmculZwk=; b=RSh87SEs4Y5wMEQGhMF4TS
 cTeVYM8QeCyqZt+S3kg5/alKN3LfJRrDYbL4QebKdEuKDXl/WvhnqtRC/LIH9ufS
 YH2RPnAIdDbVRv7NWv0/3BVCF4BB6uzAB0BN7X+Q3aoTaYgUL6OBuKR2I/B+szBf
 CBWcbyXTo06rhy1TceChRX0UlnEP362/efTMCe4Ho+iPbaW/2ZwQwA4sCte2oHj3
 PbkeQV+WaA7MuB63+2wybuenW63wBIt2Q+4LAgcHVm41dBadp3X8dFHqtRwJSvwb
 5rooHlU2LFk+U6icJyVPkgFmKUf/GAGABGAoCC1uMsEyrj9ga+YlfSGpxXXIiy4g
 ==
X-ME-Sender: <xms:O4VwXXAJe39Xm9VrYIewsp4nenufMiJTMOMxHoALQG_Zr48RAi2MZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:O4VwXSE4mYfTEweu3O6KFE0pGmhNb_HFsgwDUiQVeh0YpIveJSvaKg>
 <xmx:O4VwXfsL9wGoQ0JxDaAo2kBs1kK7vFeAGvk_WynV2YxxmiBwhsJyzA>
 <xmx:O4VwXQktE8PQEzKDSfzOWBM1NB6cjn_43xm_-mJXRwKx2Gl7msm2rg>
 <xmx:PIVwXXgFkxGGf64YPijCZE9v8cbsk3HfIs7FmFcR8-D7RIG-x8YgbA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 77709E00A3; Wed,  4 Sep 2019 23:47:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-186-gf4cb3c3-fmstable-20190904v1
Mime-Version: 1.0
Message-Id: <5f3ec58f-d83b-41f9-80ed-35a5434bb985@www.fastmail.com>
In-Reply-To: <20190905011635.15902-1-rashmica.g@gmail.com>
References: <20190905011635.15902-1-rashmica.g@gmail.com>
Date: Thu, 05 Sep 2019 13:17:33 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rashmica Gupta" <rashmica.g@gmail.com>,
 "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 1/4] gpio/aspeed: Fix incorrect number of banks
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_204711_909135_BA85DC2E 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 5 Sep 2019, at 10:46, Rashmica Gupta wrote:
> The current calculation for the number of GPIO banks is only correct if
> the number of GPIOs is a multiple of 32 (if there were 31 GPIOs we would
> currently say there are 0 banks, which is incorrect).
> 
> Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')
> 
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  drivers/gpio/gpio-aspeed.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
> index 9defe25d4721..b83e23aecd18 100644
> --- a/drivers/gpio/gpio-aspeed.c
> +++ b/drivers/gpio/gpio-aspeed.c
> @@ -1165,7 +1165,7 @@ static int __init aspeed_gpio_probe(struct 
> platform_device *pdev)
>  	gpio->chip.base = -1;
>  
>  	/* Allocate a cache of the output registers */
> -	banks = gpio->config->nr_gpios >> 5;
> +	banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
>  	gpio->dcache = devm_kcalloc(&pdev->dev,
>  				    banks, sizeof(u32), GFP_KERNEL);
>  	if (!gpio->dcache)
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
