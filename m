Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B23D2A25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 14:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LV8p9r6gdsYqTQtCFU9UAG1Ivm+BvAj0qgZJnERbRqY=; b=mYQMt8b7p/NPoG
	82zwD6TYhmiLc+xKSD4iV/p+0jm1NKgtPVS44UvXk1HBFEYWSMz+vDkx+hCT6jjha5iher74QHl8f
	wIyR4XnTjCkOy8j73JfzIYyQv1x3LIRdvDInYTD2Dky4jMGUT6F8b9FzOXSOQXCCLNfyCNj9h0Pm6
	Wf17gus4eVGx2TsHCaPGut6vw46/Qg9OEorF2AxO942PXJqaUx9j64s8br1028NkFBMwDcaYYeLTp
	tiFAyZVTE5u8usOs3tVyWimKvo+D+8/FdubtaUljJnINSHWmzKo7rPoTG0OvZNstZtXYfNPBS4jRH
	9sJIFuCy0QzxsHYmffmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIY0E-0000fr-Rw; Thu, 10 Oct 2019 12:57:10 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIY04-0000em-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 12:57:02 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1iIXzr-0001ts-7h; Thu, 10 Oct 2019 23:56:48 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 10 Oct 2019 23:56:43 +1100
Date: Thu, 10 Oct 2019 23:56:43 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH] crypto: atmel-aes - Fix IV handling when req->nbytes <
 ivsize
Message-ID: <20191010125643.GG31566@gondor.apana.org.au>
References: <20191004085528.12323-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004085528.12323-1-tudor.ambarus@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_055700_935999_F20B2F03 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 08:55:37AM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> commit 394a9e044702 ("crypto: cfb - add missing 'chunksize' property")
> adds a test vector where the input length is smaller than the IV length
> (the second test vector). This revealed a NULL pointer dereference in
> the atmel-aes driver, that is caused by passing an incorrect offset in
> scatterwalk_map_and_copy() when atmel_aes_complete() is called.
> 
> Do not save the IV in req->info of ablkcipher_request (or equivalently
> req->iv of skcipher_request) when req->nbytes < ivsize, because the IV
> will not be further used.
> 
> While touching the code, modify the type of ivsize from int to
> unsigned int, to comply with the return type of
> crypto_ablkcipher_ivsize().
> 
> Fixes: 91308019ecb4 ("crypto: atmel-aes - properly set IV after {en,de}crypt")
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/crypto/atmel-aes.c | 53 ++++++++++++++++++++++++++--------------------
>  1 file changed, 30 insertions(+), 23 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
