Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCC912763B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 08:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfbK+cugG/lP7+rcaG+JuzCG7bCR0CgGOhhgyYzQJts=; b=dwqqbXTAOmm4Jo
	qP7TJWgFgp3LX/uwFIhwFCgyN0hhXLXnL8CXlJZNFEBue4/S6Gwo/r2WVgqSdvkuz+gOrHltMi/++
	EGm/Vv7E4G9TdOmZFvmFumB8FjGB61kR5tcUirrri5+yAE/ITPoxmubR3XWaFhTC+UJ3uRm3OVYoL
	dxMCAw0iF8gbvl3LJlnHhXnF5sxA2WDxm8o50t7tE+NJRJn97MgbOeXcQ5zH3XXT1AGmT6Zm47n9+
	1phmN+XPq5GsIzHWxfp8JiZYQvg1flbRpZeQTTmNY9vJjEAg4wif4m5FJN4K8VT/KByiuKjWE7nfQ
	pn9nI0mF/GzlZelT56zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCOH-0006ag-T4; Fri, 20 Dec 2019 07:08:01 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCO6-0006Zu-Of
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 07:07:52 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iiCO1-000059-7j; Fri, 20 Dec 2019 15:07:45 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iiCO0-0007rP-98; Fri, 20 Dec 2019 15:07:44 +0800
Date: Fri, 20 Dec 2019 15:07:44 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 1/5] crypto: atmel-{aes,sha} - Fix incorrect use of
 dmaengine_terminate_all()
Message-ID: <20191220070744.zovhmup6bbeunlzr@gondor.apana.org.au>
References: <20191213095423.6687-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213095423.6687-1-tudor.ambarus@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_230750_954504_005D2501 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 09:54:42AM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> device_terminate_all() is used to abort all the pending and
> ongoing transfers on the channel, it should be used just in the
> error path.
> 
> Also, dmaengine_terminate_all() is deprecated and one should use
> dmaengine_terminate_async() or dmaengine_terminate_sync(). The method
> is not used in atomic context, use dmaengine_terminate_sync().
> 
> A secondary aspect of this patch is that it luckily avoids a deadlock
> between atmel_aes and at_hdmac.c. While in tasklet with the lock held,
> the dma controller invokes the client callback (dmaengine_terminate_all),
> which tries to get the same lock. The at_hdmac fix would be to drop the
> lock before invoking the client callback, a fix on at_hdmac will follow.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/crypto/atmel-aes.c | 32 ++------------------------------
>  drivers/crypto/atmel-sha.c |  1 -
>  2 files changed, 2 insertions(+), 31 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
