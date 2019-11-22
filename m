Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0D0106DE6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 12:04:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHMCWLQQZQN+HP9089sqpt4Ta3Rnxjy8Mz26xCnoW1I=; b=DY4RAHUmodCdtf
	WV33IVIsmcrQp0anxt0pxGGmiVDeOG63Cr2R3y9cIiwTB8GCe8yiwVR52WUV9LzN+6MxgdpeyWuwG
	6UPOeX64lp4ezIN+607dNm+FeTudxpcdJGHnkr1xtfU+CzwbQ6VoR8eatFcmWsP/x1Oy8A43k93et
	rT2jr64HoQv+OAiqbIO660+6awtmcAszbeFmf6AImbp0IxnWohtSxjJDMPXxxZld3zhWj78ZFhAF6
	/6B0MpyoxdVxTe/UxVZArnJUGWoyScAUMMkpc+gIc5sKY8CwFGJZN83h5kXW2it4Hflh9uypiUNoY
	BX3slHup2KMfkJdzZOdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6jf-0007Lm-S5; Fri, 22 Nov 2019 11:04:23 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6jI-0007H8-7i
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 11:04:02 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iY6jF-0004aC-3G; Fri, 22 Nov 2019 19:03:57 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iY6jE-0002fC-Va; Fri, 22 Nov 2019 19:03:57 +0800
Date: Fri, 22 Nov 2019 19:03:56 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH] crypto: sun4i-ss: use crypto_ahash_digestsize
Message-ID: <20191122110356.5vtsqyy7iddh7oo4@gondor.apana.org.au>
References: <20191114105813.13171-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114105813.13171-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_030400_457348_F7CDF2CC 
X-CRM114-Status: UNSURE (   8.82  )
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
Cc: linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 11:58:13AM +0100, Corentin Labbe wrote:
> The size of the digest is different between MD5 and SHA1 so instead of
> using the higher value (5 words), let's use crypto_ahash_digestsize().
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c | 2 +-
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
