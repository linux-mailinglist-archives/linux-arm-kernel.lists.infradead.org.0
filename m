Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1399F4F60
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXXMv7W6eZgA5kYdhoZ7PubwOpRsR6hsqpSJ1XIrPIs=; b=bO+9clVXT5aWmJ
	UGUi+optIQdoKbEiDiCr4swegxXHoD2/Yu9RHLmupQ7hjRVFIFlRt0WrlQyRgPnOTshbV1H/2P0ae
	AGLn5XXrgdp++Um3f+u5f2IgSRsS+OfOSpd4RR/EPU+p5CCFUCIPz2bmQDcvz3AWa+7qxEzoTzxwp
	t7MSxYlCHXLzQJi8IOwqM7teKYv/IazyyLlyf8WZ95/WTFnqEyQxwV77UmX4y6AoY5WF1aMHYzwnM
	HGGIXBjGOwMUFr0NU4R0c4/lJMv0VV1zTvT9W1JpLCunDTDIskrbKDJPCOdLblN0DXfbgHhqNE4LW
	MFNO2zxDY+ypdn/7kLxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT658-00039S-Uk; Fri, 08 Nov 2019 15:21:50 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT64x-00038f-Be
 for linux-arm-kernel@lists.infradead.orG; Fri, 08 Nov 2019 15:21:40 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iT64q-0007NY-Ij; Fri, 08 Nov 2019 23:21:32 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iT64o-0007AV-VB; Fri, 08 Nov 2019 23:21:30 +0800
Date: Fri, 8 Nov 2019 23:21:30 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH] crypto: atmel - Fix selection of CRYPTO_AUTHENC
Message-ID: <20191108152130.k5kftsyqqfjjoifm@gondor.apana.org.au>
References: <20191028073907.pbk6j5fvi7ludbvx@gondor.apana.org.au>
 <20191101164027.22478-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101164027.22478-1-tudor.ambarus@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072139_581353_55AC6E14 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

On Fri, Nov 01, 2019 at 04:40:37PM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The following error is raised when CONFIG_CRYPTO_DEV_ATMEL_AES=y and
> CONFIG_CRYPTO_DEV_ATMEL_AUTHENC=m:
> drivers/crypto/atmel-aes.o: In function `atmel_aes_authenc_setkey':
> atmel-aes.c:(.text+0x9bc): undefined reference to `crypto_authenc_extractkeys'
> Makefile:1094: recipe for target 'vmlinux' failed
> 
> Fix it by moving the selection of CRYPTO_AUTHENC under
> config CRYPTO_DEV_ATMEL_AES.
> 
> Fixes: 89a82ef87e01 ("crypto: atmel-authenc - add support to...")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/crypto/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
