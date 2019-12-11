Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E5F11A7FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJu5y69kV6kywy/UlTb5uVQxHj9J6L6UK4sl5RgJ31c=; b=A1Mmhd3lq+eRUS
	7xi2hXsJhh4vQyxC0hwST/nU5gpbzaZyGAKX8fqNs4qhO8nwUbB6UlkMhsNEM1OlkD5p3hna/1vni
	1vMShqgzeikLGfbkSNwC5OMx95p9IxNecaITgFiPf/lqKS80Jd0qKYmDMT7QD1PCiUyJ6Rt6ISsUn
	VcJlBjy2cnTCvF9lJsiFDStUfzYCD5Ya/HZKSayacKA9OG6rUcYn222Di/Uv5RNZ5T0vOzEf7vupR
	JyqDyJz5VKIOlce41fhke/iyJcmFdShfeBq9WVr2QpZ/S/ZbczI5drbEDmHobeGF0B7rxQxVvejit
	VXZNUUfGv7GxKleuBxiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyZT-0004pL-5O; Wed, 11 Dec 2019 09:46:15 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyZ4-0004cR-6c
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:45:51 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ieyYx-0000W7-Uo; Wed, 11 Dec 2019 17:45:44 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ieyYx-00035r-2s; Wed, 11 Dec 2019 17:45:43 +0800
Date: Wed, 11 Dec 2019 17:45:43 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH 00/16] crypto: atmel - Fixes and cleanup patches
Message-ID: <20191211094542.keqzvpnq7eybvipe@gondor.apana.org.au>
References: <20191205095326.5094-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205095326.5094-1-tudor.ambarus@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_014550_412540_3126EE1A 
X-CRM114-Status: UNSURE (   8.46  )
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 09:53:43AM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Fix AES CTR and other cleanup patches.
> 
> Tudor Ambarus (16):
>   crypto: atmel-tdes: Constify value to write to hw
>   crypto: atmel-{sha,tdes} - Change algorithm priorities
>   crypto: atmel-tdes - Remove unused header includes
>   crypto: atmel-{sha,tdes} - Propagate error from _hw_version_init()
>   crypto: atmel-{aes,sha,tdes} - Drop superfluous error message in
>     probe()
>   crypto: atmel-{aes,sha,tdes} - Rename labels in probe()
>   crypto: atmel-tdes - Remove useless write in Control Register
>   crypto: atmel-tdes - Map driver data flags to Mode Register
>   crypto: atmel-tdes - Drop unnecessary passing of tfm
>   crypto: atmel-{aes,tdes} - Do not save IV for ECB mode
>   crypto: atmel-aes - Fix counter overflow in CTR mode
>   crypto: atmel-aes - Fix saving of IV for CTR mode
>   crypto: atmel-{sha,tdes} - Remove unused 'err' member of driver data
>   crypto: atmel-sha - Void return type for atmel_sha_update_dma_stop()
>   crypto: atmel-aes - Use gcm helper to check authsize
>   crypto: atmel-{aes,sha,tdes} - Group common alg type init in dedicated
>     methods
> 
>  drivers/crypto/atmel-aes.c  | 227 ++++++++++++++-----------------------
>  drivers/crypto/atmel-sha.c  | 102 +++++++----------
>  drivers/crypto/atmel-tdes.c | 270 ++++++++++++++++++++------------------------
>  3 files changed, 247 insertions(+), 352 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
