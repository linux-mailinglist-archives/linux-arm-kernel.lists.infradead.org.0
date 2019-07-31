Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8247C0B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+t2Sg7FTAs2I5uP/OnVpUhOBRV+/DG9HFb6RkSk1SE=; b=dwi1sK73ODNwd3
	Jv+niRbehtcd0Fp6tp0rhzc5dt+JVEiYAQ6E7wR13j6SZrGqUD5hL1fpXzqkHUbpykYeZPc9F6lCe
	iNICJFD73fgP7A6UuuZQPDxHCrsxx0X48M4EMixGuk0iP1x5JAoNdKmF1DMiQGU+tmVPqXV2XicQV
	lNLyAgWHODyRRPs3aXkiEH+3utoOgYo5NGUBtuboOmtbucZ6P1FfZ39hOvoVqjPVvjZj3FYUCf8tS
	KjOLRjeJLdCA/IVfi/kJOfDeRCIHM6qvHsJHfb6XR2CCZIb+Oe536J61vHAhgDz4BunSxU5D56ZWq
	AXwILre5PRGL3XKyeQUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnMI-0002B1-Gi; Wed, 31 Jul 2019 12:05:30 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnM5-00029h-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:05:18 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 1AVScHoOHG8smU+2JLHkpw75Dn9uq+ogTvKf34gG8Ztu/JmJ6tfStGOMNoiBH1vz5OqSajEDa1
 BzygZno+/BHj10OFyzIgjXcvsDwpGCfq5jw2rhep9Q/u7YrxEwDWZfkBeO9ZtEu0cWKqLnewIl
 OUE8OQW4p6ltTC2r8zF7GdLxg6qnZ4T3EwuBnt1+RZy6U14iwIam6KQ9bkQ0ymQvvM7KI10VZx
 yH6S+rRlUYYW6UQbKkT1dHsl3QBG0GpTYrhc3Yf3HTDVjayYIgGeDXcsIXFynfbYPLHhnk0pxg
 ntE=
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="41849008"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 05:05:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 05:05:15 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 05:05:14 -0700
Date: Wed, 31 Jul 2019 14:04:20 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] crypto: atmel-sha204a: Use device-managed registration API
Message-ID: <20190731120420.4lqguk22ua5r2tqo@M43218.corp.atmel.com>
Mail-Followup-To: Chuhong Yuan <hslester96@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190723071934.12528-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723071934.12528-1-hslester96@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_050517_283904_67249215 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 03:19:36PM +0800, Chuhong Yuan wrote:
> 
> Use devm_hwrng_register to get rid of manual
> unregistration.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

> ---
>  drivers/crypto/atmel-sha204a.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/crypto/atmel-sha204a.c b/drivers/crypto/atmel-sha204a.c
> index ea0d2068ea4f..c96c14e7dab1 100644
> --- a/drivers/crypto/atmel-sha204a.c
> +++ b/drivers/crypto/atmel-sha204a.c
> @@ -109,7 +109,7 @@ static int atmel_sha204a_probe(struct i2c_client *client,
>  	i2c_priv->hwrng.read = atmel_sha204a_rng_read;
>  	i2c_priv->hwrng.quality = 1024;
>  
> -	ret = hwrng_register(&i2c_priv->hwrng);
> +	ret = devm_hwrng_register(&client->dev, &i2c_priv->hwrng);
>  	if (ret)
>  		dev_warn(&client->dev, "failed to register RNG (%d)\n", ret);
>  
> @@ -127,7 +127,6 @@ static int atmel_sha204a_remove(struct i2c_client *client)
>  
>  	if (i2c_priv->hwrng.priv)
>  		kfree((void *)i2c_priv->hwrng.priv);
> -	hwrng_unregister(&i2c_priv->hwrng);
>  
>  	return 0;
>  }
> -- 
> 2.20.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
