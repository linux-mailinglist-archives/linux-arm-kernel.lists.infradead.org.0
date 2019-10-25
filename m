Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E326E5003
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJzTGE1UuLdFpz9cOo+BIwbdR682U33c7I/yxX+sYTg=; b=G7bNI0g5H8KJxZ
	08Dav/tG0zZm5mAYJi+NN5ekifryo/ANn0E9ysl7xvc1fxGj5T9lztAztMp5TMvFY/y1Zt8bHLGlB
	Ac53GNm0AcDwqKOvY5RxKsEZpgn3IYFEz39fyr6jMJzJqgS844hGO45wSs71fUSPu+OI3nkKLGNfp
	lUNoIPxt/HXrSzaJYZIfBjHK4BeJlPNk22T86uO/xcwe9N7GQY01WLLUi65/JTnCuvLSsxiVloCTM
	jh3oapqjhkJl42FaT0n8eBMeu52uSkhq2pkXW+SX5rx3pgwzaLDiKF8u1m/7SPkUM2kPNHP5NgXWA
	iK/pV/DgoIHBRME28KZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1PI-0006aU-Ja; Fri, 25 Oct 2019 15:21:40 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1Ou-0006SF-I8
 for linux-arm-kernel@lists.infradead.orG; Fri, 25 Oct 2019 15:21:20 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iO1Oh-0001iE-Jm; Fri, 25 Oct 2019 23:21:03 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iO1Og-0007rP-9o; Fri, 25 Oct 2019 23:21:02 +0800
Date: Fri, 25 Oct 2019 23:21:02 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] crypto: atmel - fix data types for __be{32,64}
Message-ID: <20191025152102.pfyokny5pbwxt4oz@gondor.apana.org.au>
References: <20191016122633.2220-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016122633.2220-1-ben.dooks@codethink.co.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_082117_324597_30090732 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-kernel@lists.codethink.co.uk,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 01:26:33PM +0100, Ben Dooks (Codethink) wrote:
> The driver uses a couple of buffers that seem to
> be __be32 or __be64 fields, but declares them as
> u32. This means there are a number of warnings
> from sparse due to casting to/from __beXXX.
> 
> Fix these by changing the types of the buffer
> and the associated variables.
> 
> drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1059:28: warning: incorrect type in assignment (different base types)
> drivers/crypto/atmel-aes.c:1059:28:    expected unsigned int
> drivers/crypto/atmel-aes.c:1059:28:    got restricted __be32 [usertype]
> drivers/crypto/atmel-aes.c:1550:28: warning: incorrect type in assignment (different base types)
> drivers/crypto/atmel-aes.c:1550:28:    expected unsigned int
> drivers/crypto/atmel-aes.c:1550:28:    got restricted __be32 [usertype]
> drivers/crypto/atmel-aes.c:1561:39: warning: incorrect type in assignment (different base types)
> drivers/crypto/atmel-aes.c:1561:39:    expected unsigned long long [usertype]
> drivers/crypto/atmel-aes.c:1561:39:    got restricted __be64 [usertype]
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
> drivers/crypto/atmel-aes.c:1599:15: warning: incorrect type in assignment (different base types)
> drivers/crypto/atmel-aes.c:1599:15:    expected unsigned int [usertype]
> drivers/crypto/atmel-aes.c:1599:15:    got restricted __be32 [usertype]
> drivers/crypto/atmel-aes.c:1692:17: warning: incorrect type in assignment (different base types)
> drivers/crypto/atmel-aes.c:1692:17:    expected unsigned long long [usertype]
> drivers/crypto/atmel-aes.c:1692:17:    got restricted __be64 [usertype]
> drivers/crypto/atmel-aes.c:1693:17: warning: incorrect type in assignment (different base types)
> drivers/crypto/atmel-aes.c:1693:17:    expected unsigned long long [usertype]
> drivers/crypto/atmel-aes.c:1693:17:    got restricted __be64 [usertype]
> drivers/crypto/atmel-aes.c:1888:63: warning: incorrect type in initializer (different base types)
> drivers/crypto/atmel-aes.c:1888:63:    expected unsigned int
> drivers/crypto/atmel-aes.c:1888:63:    got restricted __le32 [usertype]
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-crypto@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> .. (open list)
> ---
>  drivers/crypto/atmel-aes.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
