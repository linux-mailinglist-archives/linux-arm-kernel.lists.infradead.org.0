Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42F1AB7B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 08:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2IMlB2d1W91wV9PuFclJTYFhX1GWmctiFdGEQKMke0=; b=SpDNJtyZjwKLBX
	5I/X7OgguUGjJgBe3fP5WyZ23lAl97HSpoZoBNNsmGpMuxh1MtgEsOMTNNC5ORnQAi2sBVFja4gik
	DW9/Im8rQ3MpgQlvuJ1Uu9t2SsrBrbhS20zpFKokmLaCgXJr4nR5TWEPr0mHYubZzcsSy7QReUD86
	bVokJoTxszf9Zd3MWBlPfRx1glnCkxY43shV7anxpZLz5ayR/OCi7/TNVGqoB/HCvft+v/zJy+1xg
	C2NWL3ZXK/iQ2f+q8KDs2GExSIChuzegiVkPGusNTr/2SjSrBHzoN1HbfYv+zWaFxAaGmLF/kbPNE
	N8Bwu92trQX1Cx8BEyEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOxgB-0000S3-IY; Thu, 16 Apr 2020 06:07:15 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOxg0-0000RC-KL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 06:07:08 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jOxfd-0004Sf-5S; Thu, 16 Apr 2020 16:06:42 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Thu, 16 Apr 2020 16:06:41 +1000
Date: Thu, 16 Apr 2020 16:06:41 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 1/7] crypto: rng - add missing __crypto_rng_cast to the
 rng header
Message-ID: <20200416060640.GA19267@gondor.apana.org.au>
References: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
 <1585943438-862-2-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585943438-862-2-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_230704_947836_EC2003A5 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 07:50:32PM +0000, Corentin Labbe wrote:
> This patch add __crypto_rng_cast() to the rng header like other
> __algo_cast functions.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  include/crypto/rng.h | 5 +++++
>  1 file changed, 5 insertions(+)

This should never be exported.  Either change the driver to use
use crypto_tfm_ctx instead of crypto_rng_ctx, or if you have the
time please convert the rng API over to the new way of doing things
like aead/skcipher.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
