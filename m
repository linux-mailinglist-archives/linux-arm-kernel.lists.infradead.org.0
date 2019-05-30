Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D52EABD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU5BFIjZcX38h6cGpth20zRXOO4qcXcS6sbkBzpX8qw=; b=iVdJZQCghZ7f9s
	IjCirnv128TgZnTxBlgRvbj7BBFidXmkD6l7mvYRLYdA5Rm+lWVHShFvx0oEZq9hYh10yFhhJezGY
	k5olzZJ6Nl9KwwsgKfH3RznufIUfGn/kLkcOt2BuXuNa2ALoOr9rPOigyDIysrnsC9bZbrteFZjb3
	q2VY2TGFLM3Ovhe5VIFg0GcUCS0bMM0bI0fnTEaQpgw7HFuPx4Dhptec5jz78V9F73IFRFcYum1oc
	CX5xhUOjDOR1QFiE1ha0gOq9uHSNPEzamIKBLznJekOT+BTETahZLoW21U09mYYOTw/i499juZPx6
	3UIZl22NZLJE3KdrJGyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAtU-0001nu-2j; Thu, 30 May 2019 02:34:16 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAtL-0001nX-N7
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:34:10 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hWAtH-0000Lt-Ia; Thu, 30 May 2019 10:34:03 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hWAtB-00059j-7J; Thu, 30 May 2019 10:33:57 +0800
Date: Thu, 30 May 2019 10:33:57 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [RFC PATCH 1/2] crypto: Allow working with key references
Message-ID: <20190530023357.2mrjtslnka4i6dbl@gondor.apana.org.au>
References: <20190529224844.25203-1-richard@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529224844.25203-1-richard@nod.at>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_193407_897336_CA7CADC2 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david@sigma-star.at, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 12:48:43AM +0200, Richard Weinberger wrote:
> Some crypto accelerators allow working with secure or hidden keys.
> This keys are not exposed to Linux nor main memory. To use them
> for a crypto operation they are referenced with a device specific id.
> 
> This patch adds a new flag, CRYPTO_TFM_REQ_REF_KEY.
> If this flag is set, crypto drivers should tread the key as
> specified via setkey as reference and not as regular key.
> Since we reuse the key data structure such a reference is limited
> by the key size of the chiper and is chip specific.
> 
> TODO: If the cipher implementation or the driver does not
> support reference keys, we need a way to detect this an fail
> upon setkey.
> How should the driver indicate that it supports this feature?
> 
> Signed-off-by: Richard Weinberger <richard@nod.at>

We already have existing drivers doing this.  Please have a look
at how they're doing it and use the same paradigm.  You can grep
for paes under drivers/crypto.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
