Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE8936CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 08:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPrlzs2e2gsh4LtHRU2G0K4Cbpq/wg6Jhl8imqPUABQ=; b=n3McxhxyZy9ASP
	ZWEtPsfgr96UCmr1QkJlmcYPf9i9j9gu3UB5mRW1cjC4pizaDCXgwlD3uCNF49tQflIAPy9doWBje
	esBHkevDsJ66tJwkr+nULcuc3X7uhDbzVomnUZxB+mdgdw1Nj20vFMP+tMqEekm1V7ItcnVp6Nv7Z
	LVO4q49GNfUGYwWU3pCBXi7FxfVcYef6Khl857I+LuuelyuDY4bildB1H6pPH877t0PGwRfwE0eGo
	ie1d1ck6nxJfUPh6JKzn7Kt9qgfxhjrah4FmVgN7QiYbV8KY9f78z3mIFEX6ogh5GWdIQcl4gc/9N
	OPeJndDRNLwh29LcFCjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmHx-0001M3-0G; Thu, 06 Jun 2019 06:54:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmHg-0001Fq-Mk
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 06:54:02 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hYmHS-0006ws-IC; Thu, 06 Jun 2019 14:53:46 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hYmHQ-0006kd-Kb; Thu, 06 Jun 2019 14:53:44 +0800
Date: Thu, 6 Jun 2019 14:53:44 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] crypto: ghash - fix unaligned memory access in
 ghash_setkey()
Message-ID: <20190606065344.rknt37tufeojyrbf@gondor.apana.org.au>
References: <20190530175039.195574-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530175039.195574-1-ebiggers@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_235400_894792_F392A260 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stable@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 10:50:39AM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Changing ghash_mod_init() to be subsys_initcall made it start running
> before the alignment fault handler has been installed on ARM.  In kernel
> builds where the keys in the ghash test vectors happened to be
> misaligned in the kernel image, this exposed the longstanding bug that
> ghash_setkey() is incorrectly casting the key buffer (which can have any
> alignment) to be128 for passing to gf128mul_init_4k_lle().
> 
> Fix this by memcpy()ing the key to a temporary buffer.
> 
> Don't fix it by setting an alignmask on the algorithm instead because
> that would unnecessarily force alignment of the data too.
> 
> Fixes: 2cdc6899a88e ("crypto: ghash - Add GHASH digest algorithm for GCM")
> Reported-by: Peter Robinson <pbrobinson@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> Tested-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  crypto/ghash-generic.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
