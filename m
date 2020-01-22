Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B260E14523F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:14:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oetPdAwLco0rhMis9ZIP8D3zkyivzFD5B3c+AIz6cBY=; b=KnPbp/abscuV0A
	dzaWg3FWY81EuMn/9pAHwSjF5SIq8sGYeKmO42GR706mTrJbhqCnhl1Z8bMVfRLKO+znwL6zGF1lZ
	DyLfFr3QQg8DweeAnPndpSrfAQ/zeAnLkzvTo83MoXl8OUcZkH4Xzn+7dJ2859Xbe3P7qWeRS/IC8
	1UzPAhOTX6vNja/tHu5KqRz9gWD/jNkn4niuLa4xUiUcM8PXQsCz5yPdJRvnAg5r6iAjzqBpsSDug
	qkJct6A+weYMX4cHr0f7g1RiYPRpJ/8ScZ70+rWqBbGMfKQNApEmeQiaYPxXMIVA3rjJnjUc16EnP
	JRr3wDDAbpRB0xhYn10g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuD1R-0008PX-NP; Wed, 22 Jan 2020 10:14:05 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuD1G-0008Ou-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:13:56 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iuD15-0000VG-IR; Wed, 22 Jan 2020 18:13:43 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iuD12-00041s-0C; Wed, 22 Jan 2020 18:13:40 +0800
Date: Wed, 22 Jan 2020 18:13:39 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH] crypto: atmel-{aes,sha,tdes} - Retire crypto_platform_data
Message-ID: <20200122101339.3myva6w3l5zhqzwt@gondor.apana.org.au>
References: <20200115125347.269203-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115125347.269203-1-tudor.ambarus@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_021354_597561_2D80B8BB 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.belloni@bootlin.com, peter.ujfalusi@ti.com,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 12:53:53PM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> These drivers no longer need it as they are only probed via DT.
> crypto_platform_data was allocated but unused, so remove it.
> This is a follow up for:
> commit 45a536e3a7e0 ("crypto: atmel-tdes - Retire dma_request_slave_channel_compat()")
> commit db28512f48e2 ("crypto: atmel-sha - Retire dma_request_slave_channel_compat()")
> commit 62f72cbdcf02 ("crypto: atmel-aes - Retire dma_request_slave_channel_compat()")
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/crypto/atmel-aes.c                 | 32 +-------------------
>  drivers/crypto/atmel-sha.c                 | 35 +---------------------
>  drivers/crypto/atmel-tdes.c                | 35 +---------------------
>  include/linux/platform_data/crypto-atmel.h | 23 --------------
>  4 files changed, 3 insertions(+), 122 deletions(-)
>  delete mode 100644 include/linux/platform_data/crypto-atmel.h

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
