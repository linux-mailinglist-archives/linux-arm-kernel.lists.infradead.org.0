Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36FB2D34C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 03:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=380kl2LbjWMYiJfwxUoiyPGGYATL3kqdNZLPnLk1l4Y=; b=cgyimfgzA/Bdjp
	L9o6QP0HMIMG7ndo8hLPOPeOE+jqMq2+ckjS++bNSyHY2K5e5EXY4iswpRxYbYU0q+h4/z7TvdlUI
	7VBxnY2C3XZdqSPnkhF+d39m9IaITS+8+Ilh4WqfWud5Wd+Ks8iSqKNNRUMAAj5l6Hu6EjetEtFCk
	onS36LYGilLFtzmhAyduBKT3E4UWHb4iKCgiMVRBeUhJkVXvtK1Gjjp4j/u2iagDiqdUq4u1cQSCI
	aGvExizkRwc6iYOvpAbid4/oRiLn3B5GRfYQtmsXWjAN1viM+va9KlQ6x+rqSmyW91kyr0i3mAe7h
	GCC+70+vASRri5Rx9WnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVnNF-0002zk-Kp; Wed, 29 May 2019 01:27:25 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVnN9-0002zC-40
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 01:27:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 524D02203E;
 Tue, 28 May 2019 21:27:18 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 28 May 2019 21:27:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=ioeB7zHzuIrWPlycdQWlBGq8mtTxytQ
 LMO5+tIc96Og=; b=LS3OzXUPrbKqiJbL/pQVT1MOVVOLo0+E78YZXJwv1DpXruf
 Y3EncH+L0nN+izLmvqtPA83EWSEX+v2552DeODXpV1erb4L+vkGD3nVEBIBZw9sm
 OuR30rXhiCxmfx+LGZjtoViVbT4/FBfs6JiVkrG+iLsij2gpR+riYxtNa8qpFkc0
 gamh++e/Wa9GJ3wpZobvoTlMsrCwjJ+s1YAKOnruIuS3bmIIOMb2xsBsZ4VW3lJj
 Y02sZb4dCrd68pIeF8BSFcutQwq3qCP/dJbmrid5p0xjuakUlkz/b2dFyF0eSqE5
 jqae/CrC6u2XcaDqB2C6PX91ETJ1hQJxr82/s2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ioeB7z
 HzuIrWPlycdQWlBGq8mtTxytQLMO5+tIc96Og=; b=7qswdVOlE1f9vJrwsJhoSE
 jV3vZHzZk0EoBNB+HKPtenBhp5sGO19cz9qrOBv5JoICgK6IIDVBuVdyEdyreiJt
 8gszj6Hpz+pCnLkUH4x1jW/nJ9gw45WZRi2du9T7OZlV44TrvlK/GSmEe8/nyHDl
 40eNjgftT+ttN2I1C/NojHm6nHQAr6EturFeysDAqTT2qBeUbcN5eDbVEGWysR7X
 SVYCAQmVw+eRli37zjajA+2vrjW659hiWQ4ZTTuupzJSSbJT0sgQpH1/DIamN6FW
 6r/4ATUBTk8RIHXda43qaUIZPK4AaxHl++sSQuKB7xMPif67R+Ehw35XlCUk28ZQ
 ==
X-ME-Sender: <xms:9N_tXLiz0FV_kq6p9HMQVm8b9GwTjYANLQpCEKbfhcbreVLkNG6wdQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddviedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:9N_tXLCRm4BGk27OuOe1ur6tyqa-6U06n2BL-N-Z6wL5FEUvaSAuHg>
 <xmx:9N_tXNqMOY8haizNcQXR51DiO96ZyDlZGA7RCousVe5ICapsxn-ebQ>
 <xmx:9N_tXCtIugJuRak_0OyMewJoejHMcP4Ymiu80TXHHI4NBgpy3-x5tw>
 <xmx:9t_tXGV3PMpaR97hvvy9j8WxwcyOGvhcCUp7fC7MjiCi6DXjsFb-pQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C2A78E00A1; Tue, 28 May 2019 21:27:16 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <04f103fb-54b1-4911-8164-44b20bfd1e72@www.fastmail.com>
In-Reply-To: <20190525144153.2028-1-yuehaibing@huawei.com>
References: <20190525144153.2028-1-yuehaibing@huawei.com>
Date: Wed, 29 May 2019 10:57:16 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: YueHaibing <yuehaibing@huawei.com>,
 "Stefan M Schaeckeler" <sschaeck@cisco.com>,
 "Borislav Petkov" <bp@alien8.de>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>, james.morse@arm.com,
 "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH -next] EDAC: aspeed: Remove set but not used variable 'np'
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_182719_298898_5BF0137C 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sun, 26 May 2019, at 00:12, YueHaibing wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/edac/aspeed_edac.c: In function aspeed_probe:
> drivers/edac/aspeed_edac.c:284:22: warning: variable np set but not 
> used [-Wunused-but-set-variable]
> 
> It is never used and can be removed.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  drivers/edac/aspeed_edac.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/edac/aspeed_edac.c b/drivers/edac/aspeed_edac.c
> index 11833c0a5d07..5634437bb39d 100644
> --- a/drivers/edac/aspeed_edac.c
> +++ b/drivers/edac/aspeed_edac.c
> @@ -281,15 +281,11 @@ static int aspeed_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct edac_mc_layer layers[2];
>  	struct mem_ctl_info *mci;
> -	struct device_node *np;
>  	struct resource *res;
>  	void __iomem *regs;
>  	u32 reg04;
>  	int rc;
>  
> -	/* setup regmap */
> -	np = dev->of_node;
> -
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	if (!res)
>  		return -ENOENT;
> -- 
> 2.17.1
> 
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
