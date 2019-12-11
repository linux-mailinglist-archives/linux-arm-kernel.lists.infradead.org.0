Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F76211A763
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:37:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftVYzZeoX30GTKxrNz9zyW6BEhMTnoQi0yi10VHFdRo=; b=mSwmFbDzTzJ02J
	XtOtGToJMNfao95yu3nr4r8ItqPnZVeHFaor2mjNa8bhpaF0dcbbXwSNWqOhcrhir0krWEa/hu1xl
	+pQiMLVYPWn2kM6tZ8iiBMUob4zwUa6L2sZlIDtTi5MNaUKKqcKizD+oKlF6QW3fVpNnT/TSqadFz
	bF3EKvR1BaF3N7Sl0mBN4wb3PB49Y4AL9b0rV8+a4V7FvsbYHbVYVhSK8AHIowRB/HppibVkQRltg
	ta5KJj0BF4oSD2VIXI4Tsev8Und0WKVtEawqlPP1OenE8Nv6AJUAHwC56slGaog/a2aZRT5ph+AtY
	lnj4VoJ4XRqwhEdAXnWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyQo-0006r8-F9; Wed, 11 Dec 2019 09:37:18 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyQa-0006mw-Ad
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:37:05 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ieyQR-0008Qx-Cx; Wed, 11 Dec 2019 17:36:55 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ieyQP-0003bR-2n; Wed, 11 Dec 2019 17:36:53 +0800
Date: Wed, 11 Dec 2019 17:36:53 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2 0/3] crypto: atmel - Retire
 dma_request_slave_channel_compat()
Message-ID: <20191211093652.a53uljmw6kns6l4a@gondor.apana.org.au>
References: <20191121101602.21941-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121101602.21941-1-peter.ujfalusi@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_013704_535419_EF8EEB27 
X-CRM114-Status: GOOD (  10.27  )
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
 ludovic.desroches@microchip.com, vkoul@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 12:15:59PM +0200, Peter Ujfalusi wrote:
> Hi,
> 
> Changes since v1:
> - Rebased on next-20191121 to avoid conflict for atmel-aes
> 
> I'm going through the kernel to crack down on dma_request_slave_channel_compat()
> users.
> 
> These drivers no longer needs it as they are only probed via DT and even if they
> would probe in legacy mode, the dma_request_chan() + dma_slave_map must be used
> for supporting non DT boots.
> 
> I have only compile tested the drivers!
> 
> Regards,
> Peter
> ---
> Peter Ujfalusi (3):
>   crypto: atmel-aes - Retire dma_request_slave_channel_compat()
>   crypto: atmel-sha - Retire dma_request_slave_channel_compat()
>   crypto: atmel-tdes - Retire dma_request_slave_channel_compat()
> 
>  drivers/crypto/atmel-aes.c  | 50 ++++++++-----------------------------
>  drivers/crypto/atmel-sha.c  | 39 ++++++-----------------------
>  drivers/crypto/atmel-tdes.c | 47 ++++++++++------------------------
>  3 files changed, 30 insertions(+), 106 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
